-- 每周在线币奖励功能
-- 在 character_other 表中增加 weekly_coin_claimed 字段
-- 用于标记角色本周是否已领取在线币奖励
-- 0: 未领取  1: 已领取

-- 添加字段
ALTER TABLE `character_other` ADD COLUMN `weekly_coin_claimed` INT(11) NOT NULL DEFAULT 0 COMMENT '每周在线币领取标记 0:未领取 1:已领取';

-- 如果执行成功，以下查询应该能看到新字段
-- SHOW COLUMNS FROM `character_other` LIKE 'weekly_coin_claimed';