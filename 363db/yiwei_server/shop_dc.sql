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

-- 饰品强化卷轴
INSERT INTO `shop_dc` VALUES ('7', '81289', '49148', '饰品强化卷轴', '1', '1');

-- ============================================
-- 验证查询（可选执行）
-- SELECT * FROM `shop_dc`;
-- SELECT * FROM `etcitem` WHERE `item_id` = '81289';
-- ============================================