/**
 * 检查 shop.sql 中是否存在套利漏洞
 * 规则：检查是否有物品的 selling_price <= purchasing_price
 * 
 * 使用方法：node scripts/check_shop_price.js
 */

const fs = require('fs');
const path = require('path');

// shop.sql 文件路径
const SHOP_SQL_PATH = path.join('./shop.sql');

// 读取文件内容
const content = fs.readFileSync(SHOP_SQL_PATH, 'utf-8');

// 解析 INSERT 语句的正则
const insertRegex = /INSERT INTO `shop` VALUES \('(\d+)', '(\d+)', '(\d+)', '(-?\d+)', '(\d+)', '(-?\d+)'\);/g;

// 存储 item_id -> max_purchasing_price 的映射
const maxPurchasingPrice = new Map();

// 存储所有记录用于第二遍扫描
const records = [];

// 第一遍扫描：建立 max_purchasing_price 映射
let match;
while ((match = insertRegex.exec(content)) !== null) {
    const [_, npc_id, item_id, order_id, selling_price, pack_count, purchasing_price] = match;
    
    const npcId = parseInt(npc_id, 10);
    const itemId = parseInt(item_id, 10);
    const orderId = parseInt(order_id, 10);
    const sellingPrice = parseInt(selling_price, 10);
    const packCount = parseInt(pack_count, 10);
    const purchasingPrice = parseInt(purchasing_price, 10);
    
    // 存储记录
    records.push({ npcId, itemId, orderId, sellingPrice, packCount, purchasingPrice });
    
    // 更新最大收购价（只记录正数）
    if (purchasingPrice > 0) {
        const currentMax = maxPurchasingPrice.get(itemId) || 0;
        if (purchasingPrice > currentMax) {
            maxPurchasingPrice.set(itemId, purchasingPrice);
        }
    }
}

console.log('========================================');
console.log('商店价格套利漏洞检查报告');
console.log('========================================');
console.log(`总记录数: ${records.length}`);
console.log(`有收购价的物品数: ${maxPurchasingPrice.size}`);
console.log('');

// 第二遍扫描：检查套利漏洞
const issues = [];

for (const record of records) {
    // 只检查有出售价的记录（selling_price > 0）
    if (record.sellingPrice > 0) {
        const maxPurchase = maxPurchasingPrice.get(record.itemId);
        
        // 如果该物品有收购价，且出售价 <= 最大收购价，则存在套利漏洞
        if (maxPurchase !== undefined && record.sellingPrice < maxPurchase) {
            issues.push({
                ...record,
                maxPurchasingPrice: maxPurchase
            });
        }
    }
}

// 输出结果
if (issues.length === 0) {
    console.log('✅ 未发现套利漏洞！所有物品的出售价都高于收购价。');
} else {
    console.log(`⚠️  发现 ${issues.length} 条套利漏洞记录：`);
    console.log('');
    console.log('格式: [物品ID] NPC_ID | 出售价 <= 最高收购价');
    console.log('----------------------------------------');
    
    // 按 item_id 分组显示
    const groupedIssues = new Map();
    for (const issue of issues) {
        if (!groupedIssues.has(issue.itemId)) {
            groupedIssues.set(issue.itemId, []);
        }
        groupedIssues.get(issue.itemId).push(issue);
    }
    
    for (const [itemId, items] of groupedIssues) {
        console.log(`\n物品 ID: ${itemId} (共 ${items.length} 条)`);
        const maxPurchase = items[0].maxPurchasingPrice;
        console.log(`  最高收购价: ${maxPurchase}`);
        console.log('  存在问题的出售记录:');
        for (const item of items) {
            const profit = maxPurchase - item.sellingPrice;
            console.log(`    NPC ${item.npcId}: 出售价 ${item.sellingPrice} (可获利 ${profit})`);
        }
    }
    
    console.log('');
    console.log('========================================');
    console.log('建议：调整上述物品的出售价或收购价，确保出售价 > 收购价');
}

console.log('');
console.log('检查完成！');