/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:22:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_cn_shop
-- ----------------------------
CREATE TABLE `other_cn_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(45) NOT NULL,
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `selling_price` int(45) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pcobjid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `town_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
