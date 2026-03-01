/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_item_update
-- ----------------------------
CREATE TABLE `server_item_update` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0' COMMENT '要升级的物品ITEMID',
  `toid` int(10) NOT NULL DEFAULT '0' COMMENT '可升级的物品ITEMID',
  `needids` varchar(50) NOT NULL DEFAULT '40308' COMMENT '升级需要消耗的物品',
  `needcounts` varchar(50) NOT NULL DEFAULT '1' COMMENT '升级需要消耗的物品数量',
  `other` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_item_update` VALUES ('1', '1', '2', '40308', '10', '欧西斯匕首->骰子匕首 需要金币10');
INSERT INTO `server_item_update` VALUES ('2', '1', '3', '40308', '20', '欧西斯匕首->短剑的剑身 需要金币20');
INSERT INTO `server_item_update` VALUES ('3', '1', '4', '40308,44070', '30,5', '欧西斯匕首->匕首 需要金币30 元宝5');
