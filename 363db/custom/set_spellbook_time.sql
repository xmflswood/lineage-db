-- ============================================================================
-- MySQL 5.7 脚本：将所有技能书的 delay_time 设置为 0
-- 功能：移除技能书(魔法书)学习延迟，允许连续学习多本技能书
-- 作者：自动生成
-- 日期：2026-03-08
-- ============================================================================

-- 查看当前技能书的延迟时间设置
SELECT 
    item_id,
    name_id,
    name,
    item_type,
    delay_id,
    delay_time
FROM etcitem 
WHERE item_type = 'spellbook'
ORDER BY item_id;

-- 更新所有技能书的延迟时间为 0（无延迟）
UPDATE etcitem 
SET delay_time = 0
WHERE item_type = 'spellbook';

-- 显示更新影响的行数
SELECT ROW_COUNT() AS '更新记录数';

-- 验证更新结果
SELECT 
    item_id,
    name_id,
    name,
    item_type,
    delay_id,
    delay_time
FROM etcitem 
WHERE item_type = 'spellbook'
ORDER BY item_id;

-- ============================================================================
-- 说明：
-- 1. delay_time = 0 表示物品使用无延迟
-- 2. 如果需要恢复延迟，可以通过数据库备份还原，或重新设置具体的延迟毫秒数
-- 3. 建议：更新前先备份 etcitem 表
-- ============================================================================

-- 备份命令（可选执行）：
-- CREATE TABLE etcitem_backup_20260308 AS SELECT * FROM etcitem;

-- 如需恢复备份（可选执行）：
-- UPDATE etcitem e
-- INNER JOIN etcitem_backup_20260308 b ON e.item_id = b.item_id
-- SET e.delay_time = b.delay_time
-- WHERE e.item_type = 'spellbook';