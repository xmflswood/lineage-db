-- 将类型为 earring, ring, belt, amulet 的物品的 safenchant 字段设为 0
-- 执行前请备份数据

-- 查看将要修改的记录
SELECT item_id, name, type, safenchant 
FROM armor 
WHERE type IN ('earring', 'ring', 'belt', 'amulet');

-- 更新 safenchant 字段为 0
UPDATE armor 
SET safenchant = 0 
WHERE type IN ('earring', 'ring', 'belt', 'amulet');

-- 确认修改结果
SELECT item_id, name, type, safenchant 
FROM armor 
WHERE type IN ('earring', 'ring', 'belt', 'amulet');