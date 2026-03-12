const fs = require('fs');
const path = require('path');

// 读取weapon.sql文件
const sqlFilePath = ('./weapon.sql');
const outputFilePath = ('./weapon_organized.sql');

try {
    const content = fs.readFileSync(sqlFilePath, 'utf-8');
    
    // 分离表结构和数据
    const lines = content.split('\n');
    let tableStructure = [];
    let insertStatements = [];
    let inStructure = true;
    
    for (const line of lines) {
        if (line.trim().startsWith('INSERT INTO')) {
            inStructure = false;
            insertStatements.push(line);
        } else if (inStructure) {
            tableStructure.push(line);
        } else {
            insertStatements.push(line);
        }
    }
    
    console.log(`找到 ${insertStatements.length} 条INSERT语句`);
    
    // 提取所有数据行并解析type
    const records = [];
    const typeSet = new Set();
    
    // 正则匹配INSERT语句中的VALUES部分
    const valuesRegex = /INSERT INTO `weapon` VALUES \(([^;]+)\);?/;
    
    for (const stmt of insertStatements) {
        const match = stmt.match(valuesRegex);
        if (match) {
            const valuesStr = match[1];
            // 解析VALUES中的字段
            const fields = parseValues(valuesStr);
            
            if (fields.length >= 5) {
                const type = fields[4]; // type字段是第5个字段（索引4）
                typeSet.add(type);
                records.push({
                    type: type,
                    originalLine: stmt.trim(),
                    fields: fields
                });
            }
        }
    }
    
    // 输出找到的所有type类型
    const types = Array.from(typeSet).sort();
    console.log('\n发现以下type类型:');
    types.forEach(t => console.log(`  - ${t}`));
    console.log(`\n共 ${types.length} 种类型\n`);
    
    // 按type分组
    const groupedRecords = {};
    for (const type of types) {
        groupedRecords[type] = records.filter(r => r.type === type);
    }
    
    // 生成整理后的SQL文件
    let output = [];
    
    // 添加表结构
    output.push('/*');
    output.push('MySQL Data Transfer - Organized by Type');
    output.push(`Source File: weapon.sql`);
    output.push(`Generated: ${new Date().toLocaleString()}`);
    output.push('*/');
    output.push('');
    output.push('SET FOREIGN_KEY_CHECKS=0;');
    output.push('-- ----------------------------');
    output.push('-- Table structure for weapon');
    output.push('-- ----------------------------');
    
    // 提取CREATE TABLE语句
    const createTableStart = tableStructure.findIndex(line => line.includes('CREATE TABLE'));
    const createTableEnd = tableStructure.findIndex((line, idx) => idx > createTableStart && line.trim().startsWith(')'));
    
    if (createTableStart !== -1 && createTableEnd !== -1) {
        output.push(...tableStructure.slice(createTableStart, createTableEnd + 2));
    }
    
    output.push('');
    
    // 按type排序输出INSERT语句
    for (const type of types) {
        output.push(`-- ----------------------------`);
        output.push(`-- Records for type: ${type} (${groupedRecords[type].length} records)`);
        output.push(`-- ----------------------------`);
        
        for (const record of groupedRecords[type]) {
            output.push(record.originalLine);
        }
        output.push('');
    }
    
    // 写入输出文件
    fs.writeFileSync(outputFilePath, output.join('\n'), 'utf-8');
    console.log(`\n整理后的SQL文件已生成: ${outputFilePath}`);
    
    // 同时生成一个JSON格式的统计报告
    const reportPath = path.join(__dirname, '..', 'sql', 'db表及示例', 'yiwei_server', 'weapon_report.json');
    const report = {
        totalRecords: records.length,
        typesCount: types.length,
        types: {}
    };
    
    for (const type of types) {
        report.types[type] = {
            count: groupedRecords[type].length,
            items: groupedRecords[type].map(r => ({
                item_id: r.fields[0],
                name: r.fields[1]
            }))
        };
    }
    
    fs.writeFileSync(reportPath, JSON.stringify(report, null, 2), 'utf-8');
    console.log(`统计报告已生成: ${reportPath}`);
    
} catch (error) {
    console.error('处理文件时出错:', error.message);
}

/**
 * 解析SQL VALUES字符串，处理引号内的逗号
 */
function parseValues(valuesStr) {
    const fields = [];
    let current = '';
    let inQuotes = false;
    let i = 0;
    
    while (i < valuesStr.length) {
        const char = valuesStr[i];
        
        if (char === "'" && (i === 0 || valuesStr[i-1] !== '\\')) {
            inQuotes = !inQuotes;
            // 不添加引号到current中
        } else if (char === ',' && !inQuotes) {
            fields.push(current.trim());
            current = '';
        } else {
            current += char;
        }
        i++;
    }
    
    // 添加最后一个字段
    if (current.trim()) {
        fields.push(current.trim());
    }
    
    return fields;
}
