/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:26:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for shop_cn
-- ----------------------------
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
-- Records 
-- ----------------------------
