/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:19:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for droplist_map
-- ----------------------------
CREATE TABLE `droplist_map` (
  `mobid` int(6) unsigned NOT NULL DEFAULT '0',
  `mapid` int(6) NOT NULL DEFAULT '0',
  `itemid` int(6) unsigned NOT NULL DEFAULT '0',
  `min` int(4) unsigned NOT NULL DEFAULT '0',
  `max` int(4) unsigned NOT NULL DEFAULT '0',
  `chance` int(8) unsigned NOT NULL DEFAULT '0',
  `note` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`mobid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
