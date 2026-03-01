/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:16:55
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_config
-- ----------------------------
CREATE TABLE `character_config` (
  `object_id` int(10) NOT NULL DEFAULT '0',
  `length` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob,
  PRIMARY KEY (`object_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
