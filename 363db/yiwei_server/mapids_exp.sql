/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:21:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for mapids_exp
-- ----------------------------
CREATE TABLE `mapids_exp` (
  `mapid` int(10) NOT NULL DEFAULT '0',
  `locationname` varchar(45) DEFAULT NULL,
  `exp` double(10,2) unsigned NOT NULL DEFAULT '1.00',
  `min` int(10) NOT NULL DEFAULT '1',
  `max` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
