/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:18:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_vip
-- ----------------------------
CREATE TABLE `character_vip` (
  `char_obj_id` int(10) unsigned NOT NULL,
  `overtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`char_obj_id`),
  KEY `char_id` (`char_obj_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
