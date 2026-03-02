DROP TABLE IF EXISTS `shop_dc`;
CREATE TABLE `shop_dc` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `npc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `selling_price` int(10) NOT NULL DEFAULT '1',
  `pack_count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91041 DEFAULT CHARSET=utf8;

-- 3. 插入代充货币商店物品配置
-- 四种属性强化卷（售价 1 代充货币）
INSERT INTO `shop_dc` VALUES ('1', '81289', '41429', '风之武器强化卷轴', '1', '1');
INSERT INTO `shop_dc` VALUES ('2', '81289', '41430', '地之武器强化卷轴', '1', '1');
INSERT INTO `shop_dc` VALUES ('3', '81289', '41431', '水之武器强化卷轴', '1', '1');
INSERT INTO `shop_dc` VALUES ('4', '81289', '41432', '火之武器强化卷轴', '1', '1');

-- 魔法娃娃的袋子（售价 30 代充货币）
INSERT INTO `shop_dc` VALUES ('5', '81289', '41247', '魔法娃娃的袋子', '30', '1');

-- 洗血药水（售价 30 代充货币）
INSERT INTO `shop_dc` VALUES ('6', '81289', '44019', '洗血药水', '30', '1');

-- 回忆蜡烛（售价 30 代充货币）
INSERT INTO `shop_dc` VALUES ('7', '81289', '49142', '回忆蜡烛', '30', '1');

-- ============================================
-- 验证查询（可选执行）
-- SELECT * FROM `shop_dc`;
-- SELECT * FROM `etcitem` WHERE `item_id` = '81289';
-- ============================================