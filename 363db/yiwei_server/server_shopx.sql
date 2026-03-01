/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_shopx
-- ----------------------------
CREATE TABLE `server_shopx` (
  `itemid` int(10) NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT '说明:',
  PRIMARY KEY (`itemid`),
  KEY `id` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=49524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_shopx` VALUES ('44070', '天宝');
