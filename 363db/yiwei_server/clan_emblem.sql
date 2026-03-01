/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:18:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for clan_emblem
-- ----------------------------
CREATE TABLE `clan_emblem` (
  `clan_id` int(10) NOT NULL DEFAULT '0',
  `emblemicon` blob NOT NULL,
  `update` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`clan_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
