/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:18:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for clan_data
-- ----------------------------
CREATE TABLE `clan_data` (
  `clan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clan_name` varchar(45) NOT NULL DEFAULT '',
  `leader_id` int(10) unsigned NOT NULL DEFAULT '0',
  `leader_name` varchar(45) NOT NULL DEFAULT '',
  `hascastle` int(10) unsigned NOT NULL DEFAULT '0',
  `hashouse` int(10) unsigned NOT NULL DEFAULT '0',
  `clanskill` tinyint(1) NOT NULL DEFAULT '0',
  `skilltime` datetime DEFAULT NULL,
  PRIMARY KEY (`clan_id`),
  KEY `clan_id` (`clan_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1497859423 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
