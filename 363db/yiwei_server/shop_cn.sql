/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:26:04
*/

## shop_cn 表完整 SQL 配置

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_cn
-- ----------------------------
DROP TABLE IF EXISTS `shop_cn`;
CREATE TABLE `shop_cn` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `npc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `selling_price` int(10) NOT NULL DEFAULT '1',
  `pack_count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91041 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records - 奇怪的商人(86121) 天宝商店物品配置
-- ----------------------------

-- 1. 四种属性强化卷（售价 1 天宝）
INSERT INTO `shop_cn` VALUES ('1', '86121', '41429', '风之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('2', '86121', '41430', '地之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('3', '86121', '41431', '水之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('4', '86121', '41432', '火之武器强化卷轴', '1', '1');

-- 2. 魔法娃娃的袋子（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('5', '86121', '41247', '魔法娃娃的袋子', '30', '1');

-- 3. 洗血药水（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('6', '86121', '44019', '洗血药水', '30', '1');

-- 4. 回忆蜡烛（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('7', '86121', '49142', '回忆蜡烛', '30', '1');

INSERT INTO `shop_cn` VALUES ('8', '86121', '55082', '猖狂的橘炽娃娃蓝炙', '1', '1');
