const fs = require('fs');
const path = require('path');

// 读取SQL文件
const inputFile = path.join(__dirname, 'shop.sql');
const outputFile = path.join(__dirname, 'shop_processed.sql');

const content = fs.readFileSync(inputFile, 'utf-8');
const lines = content.split('\n');

// 存储不同类型的INSERT语句
let normalLines = [];      // 普通行
let lines99999 = [];       // npc_id为99999的行
let lines81288 = [];       // npc_id为81288的行

// 正则表达式匹配INSERT语句并提取npc_id
const insertRegex = /INSERT INTO `shop` VALUES \('(\d+)'/;

const outputLines = lines.map(line => {
    // 只处理INSERT语句
    if (line.startsWith('INSERT INTO `shop` VALUES')) {
        const match = line.match(insertRegex);
        if (match) {
            const npcId = match[1];
            
            // 删除npc_id为1的行
            if (npcId === '1') {
                return null; // 标记为删除
            }
            
            // npc_id为99999的放到末尾（在81288前面）
            if (npcId === '99999') {
                lines99999.push(line);
                return null; // 从原位置移除
            }
            
            // npc_id为81288的放到最后
            if (npcId === '81288') {
                lines81288.push(line);
                return null; // 从原位置移除
            }
        }
    }
    return line;
}).filter(line => line !== null);

// 在文件末尾添加99999和81288的行（99999在前，81288在后）
const finalContent = outputLines
    .concat(lines99999)
    .concat(lines81288)
    .join('\n');

// 写入新文件
fs.writeFileSync(outputFile, finalContent, 'utf-8');

console.log('处理完成！');
console.log(`- 删除了 npc_id=1 的行`);
console.log(`- 移动了 ${lines99999.length} 行 npc_id=99999 到末尾（81288前面）`);
console.log(`- 移动了 ${lines81288.length} 行 npc_id=81288 到末尾`);
console.log(`输出文件: ${outputFile}`);