const fs = require('fs');
const path = require('path');

// 文件路径
const etcitemPath = path.join('./etcitem.sql');
const outputPath = path.join('./doll_shop_insert.sql');

// 读取etcitem.sql文件
const etcitemContent = fs.readFileSync(etcitemPath, 'utf-8');

// 正则匹配INSERT语句，提取item_id, name, classname
// 格式: INSERT INTO `etcitem` VALUES ('item_id', 'name', 'classname', ...);
const insertRegex = /INSERT INTO `etcitem` VALUES \('(\d+)',\s*'([^']*)',\s*'([^']*)'/g;

const dollItems = [];
let match;

while ((match = insertRegex.exec(etcitemContent)) !== null) {
    const itemId = match[1];
    const name = match[2];
    const classname = match[3];
    
    // 筛选classname为"doll.Magic_Doll"的记录
    if (classname === 'doll.Magic_Doll') {
        dollItems.push({ itemId, name });
    }
}

// 生成insert.sql内容
let outputContent = `-- 魔法娃娃商店列表
-- 自动生成时间: ${new Date().toLocaleString('zh-CN')}
-- 来源: etcitem.sql (classname = 'doll.Magic_Doll')
-- 记录数: ${dollItems.length}

`;

let index = 8; // index从8开始

dollItems.forEach(item => {
    outputContent += `INSERT INTO \`shop_cn\` VALUES ('${index}', '86121', '${item.itemId}', '${item.name}', '1', '1');\n`;
    index++;
});

// 确保输出目录存在
const outputDir = path.dirname(outputPath);
if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
}

// 写入文件
fs.writeFileSync(outputPath, outputContent, 'utf-8');

console.log(`生成完成!`);
console.log(`找到 ${dollItems.length} 条魔法娃娃记录`);
console.log(`输出文件: ${outputPath}`);

if (dollItems.length === 0) {
    console.log('\n提示: 未找到classname为"doll.Magic_Doll"的记录');
    console.log('请确保etcitem.sql中包含此类数据，例如:');
    console.log("INSERT INTO `etcitem` VALUES ('55016', '魔法娃娃：王族(公主)', 'doll.Magic_Doll', ...);");
}