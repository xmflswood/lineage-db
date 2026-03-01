/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:22:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for npcscore
-- ----------------------------
CREATE TABLE `npcscore` (
  `npcid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `score` int(10) DEFAULT '0',
  PRIMARY KEY (`npcid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 3072 kB';

-- ----------------------------
-- Records 
-- ----------------------------
