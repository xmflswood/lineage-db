/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:16:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_buff
-- ----------------------------
CREATE TABLE `character_buff` (
  `char_obj_id` int(10) NOT NULL DEFAULT '0',
  `skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `remaining_time` int(10) NOT NULL DEFAULT '0',
  `poly_id` int(10) DEFAULT '0',
  PRIMARY KEY (`char_obj_id`,`skill_id`),
  KEY `char_obj_id` (`char_obj_id`,`skill_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB; MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
