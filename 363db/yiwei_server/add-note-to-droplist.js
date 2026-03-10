/**
 * Node.js脚本：给droplist.sql添加note字段
 * 
 * 功能：
 * 1. 从etcitem.sql、weapon.sql、armor.sql中提取item_id到name的映射
 * 2. 使用Map缓存映射关系
 * 3. 给droplist.sql的每行INSERT语句添加note字段
 */

const fs = require('fs');
const path = require('path');

// 配置文件路径（相对于脚本所在目录）
const SCRIPT_DIR = __dirname;
const CONFIG = {
    droplistFile: path.join(SCRIPT_DIR, './droplist.sql'),
    etcitemFile: path.join(SCRIPT_DIR, './etcitem.sql'),
    weaponFile: path.join(SCRIPT_DIR, './weapon.sql'),
    armorFile: path.join(SCRIPT_DIR, './armor.sql'),
    outputFile: path.join(SCRIPT_DIR, './droplist_with_note.sql')
};

// 物品ID到名称的映射缓存
const itemIdToNameMap = new Map();

/**
 * 从SQL文件中解析item_id和name的映射
 * @param {string} filePath SQL文件路径
 * @returns {Map<string, string>} item_id -> name 的映射
 */
function parseItemFile(filePath) {
    const itemMap = new Map();
    
    if (!fs.existsSync(filePath)) {
        console.log(`警告: 文件不存在 ${filePath}`);
        return itemMap;
    }
    
    const content = fs.readFileSync(filePath, 'utf-8');
    const lines = content.split('\n');
    
    // 匹配 INSERT INTO `表名` VALUES ('item_id', 'name', ...);
    const insertRegex = /INSERT INTO `\w+` VALUES \('(\d+)',\s*'([^']*)'/i;
    
    for (const line of lines) {
        const match = line.match(insertRegex);
        if (match) {
            const itemId = match[1];
            const name = match[2];
            if (itemId && name) {
                itemMap.set(itemId, name);
            }
        }
    }
    
    return itemMap;
}

/**
 * 初始化物品名称缓存
 * 按顺序从etcitem、weapon、armor加载，已存在的key不会被覆盖
 */
function initItemNameCache() {
    console.log('正在加载物品名称映射...');
    
    // 按顺序加载三个表
    const files = [
        { path: CONFIG.etcitemFile, name: 'etcitem.sql' },
        { path: CONFIG.weaponFile, name: 'weapon.sql' },
        { path: CONFIG.armorFile, name: 'armor.sql' }
    ];
    
    for (const file of files) {
        const itemMap = parseItemFile(file.path);
        let addedCount = 0;
        
        for (const [itemId, name] of itemMap) {
            // 只添加不存在的key，保证按顺序优先级
            if (!itemIdToNameMap.has(itemId)) {
                itemIdToNameMap.set(itemId, name);
                addedCount++;
            }
        }
        
        console.log(`  - ${file.name}: 读取 ${itemMap.size} 条，新增 ${addedCount} 条映射`);
    }
    
    console.log(`总计缓存 ${itemIdToNameMap.size} 个物品名称映射\n`);
}

/**
 * 根据itemId获取物品名称
 * @param {string} itemId 物品ID
 * @returns {string} 物品名称，找不到返回'未知物品'
 */
function getItemName(itemId) {
    if (itemIdToNameMap.has(itemId)) {
        return itemIdToNameMap.get(itemId);
    }
    return '未知物品';
}

/**
 * 处理droplist.sql文件，添加note字段
 */
function processDroplist() {
    console.log('正在处理 droplist.sql...');
    
    if (!fs.existsSync(CONFIG.droplistFile)) {
        console.error(`错误: droplist.sql 文件不存在 ${CONFIG.droplistFile}`);
        return;
    }
    
    const content = fs.readFileSync(CONFIG.droplistFile, 'utf-8');
    // 处理Windows换行符，移除\r
    const lines = content.split('\n').map(line => line.trimEnd());
    const outputLines = [];
    
    // 匹配 INSERT INTO `droplist` VALUES ('mobId', 'itemId', 'min', 'max', 'chance');
    // 注意：有些行可能已经有note字段，有些可能没有
    // match[1]=mobId, match[2]=itemId, match[3]=min, match[4]=max, match[5]=chance
    const insertRegex = /^INSERT INTO `droplist` VALUES \('(\d+)',\s*'(\d+)',\s*'(\d+)',\s*'(\d+)',\s*'(\d+)'\);?$/;
    const insertWithNoteRegex = /^INSERT INTO `droplist` VALUES \('(\d+)',\s*'(\d+)',\s*'(\d+)',\s*'(\d+)',\s*'(\d+)',\s*'[^']*'\);/;
    
    let processedCount = 0;
    let skippedCount = 0;
    let unknownCount = 0;
    
    for (const line of lines) {
        // 检查是否是INSERT语句（不带note的）
        const match = line.match(insertRegex);
        
        if (match) {
            const mobId = match[1];
            const itemId = match[2]; // itemId是第二个值
            const min = match[3];
            const max = match[4];
            const chance = match[5];
            
            // 获取物品名称
            const itemName = getItemName(itemId);
            
            if (itemName === '未知物品') {
                unknownCount++;
            }
            
            // 构建新的INSERT语句，添加note字段
            // 注意：需要转义name中的单引号
            const escapedName = itemName.replace(/'/g, "''");
            const newLine = `INSERT INTO \`droplist\` VALUES ('${mobId}', '${itemId}', '${min}', '${max}', '${chance}', '${escapedName}');`;
            
            outputLines.push(newLine);
            processedCount++;
        } else {
            // 检查是否已经有note字段的INSERT语句
            if (line.match(insertWithNoteRegex)) {
                // 已经有note字段，保持原样
                outputLines.push(line);
                skippedCount++;
            } else {
                // 非INSERT语句，保持原样
                outputLines.push(line);
            }
        }
    }
    
    // 写入输出文件
    const outputContent = outputLines.join('\n');
    fs.writeFileSync(CONFIG.outputFile, outputContent, 'utf-8');
    
    console.log(`处理完成!`);
    console.log(`  - 处理 INSERT 语句: ${processedCount} 条`);
    console.log(`  - 跳过(已有note): ${skippedCount} 条`);
    console.log(`  - 未知物品数量: ${unknownCount} 条`);
    console.log(`\n输出文件: ${CONFIG.outputFile}`);
}

/**
 * 主函数
 */
function main() {
    console.log('========================================');
    console.log('  Droplist Note 字段添加工具');
    console.log('========================================\n');
    
    // 检查是否传入了自定义路径参数
    const args = process.argv.slice(2);
    if (args.length >= 4) {
        CONFIG.droplistFile = path.resolve(args[0]);
        CONFIG.etcitemFile = path.resolve(args[1]);
        CONFIG.weaponFile = path.resolve(args[2]);
        CONFIG.armorFile = path.resolve(args[3]);
        if (args.length >= 5) {
            CONFIG.outputFile = path.resolve(args[4]);
        } else {
            // 默认输出到droplist.sql同目录
            CONFIG.outputFile = path.join(path.dirname(CONFIG.droplistFile), 'droplist_with_note.sql');
        }
        console.log('使用自定义文件路径:');
        console.log(`  droplist: ${CONFIG.droplistFile}`);
        console.log(`  etcitem: ${CONFIG.etcitemFile}`);
        console.log(`  weapon: ${CONFIG.weaponFile}`);
        console.log(`  armor: ${CONFIG.armorFile}`);
        console.log(`  output: ${CONFIG.outputFile}\n`);
    }
    
    // 1. 初始化物品名称缓存
    initItemNameCache();
    
    // 2. 处理droplist.sql
    processDroplist();
    
    console.log('\n完成!');
}

// 运行主函数
main();