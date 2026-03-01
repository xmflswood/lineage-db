/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_item_power
-- ----------------------------
CREATE TABLE `character_item_power` (
  `item_obj_id` int(10) unsigned NOT NULL,
  `hole_count` int(10) unsigned NOT NULL DEFAULT '0',
  `hole_1` int(10) NOT NULL DEFAULT '0',
  `hole_2` int(10) NOT NULL DEFAULT '0',
  `hole_3` int(10) NOT NULL DEFAULT '0',
  `hole_4` int(10) NOT NULL DEFAULT '0',
  `hole_5` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_obj_id`),
  KEY `char_id` (`item_obj_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
