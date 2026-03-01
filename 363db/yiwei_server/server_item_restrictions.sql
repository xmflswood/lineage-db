/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_item_restrictions
-- ----------------------------
CREATE TABLE `server_item_restrictions` (
  `itemid` int(10) NOT NULL,
  `other` varchar(255) DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `id` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=49524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
