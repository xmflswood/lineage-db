/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_items_time
-- ----------------------------
CREATE TABLE `character_items_time` (
  `itemr_obj_id` int(11) NOT NULL DEFAULT '0',
  `usertime` datetime NOT NULL,
  PRIMARY KEY (`itemr_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
