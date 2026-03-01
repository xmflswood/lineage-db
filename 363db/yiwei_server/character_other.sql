/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_other
-- ----------------------------
CREATE TABLE `character_other` (
  `char_obj_id` int(10) NOT NULL DEFAULT '0',
  `hpup` int(10) unsigned NOT NULL DEFAULT '0',
  `mpup` int(10) unsigned NOT NULL DEFAULT '0',
  `score` int(10) NOT NULL DEFAULT '0',
  `title` int(10) NOT NULL DEFAULT '0',
  `color` int(10) NOT NULL DEFAULT '0',
  `usemap` int(11) NOT NULL DEFAULT '-1',
  `usemaptime` int(11) NOT NULL DEFAULT '0',
  `uplevel` int(10) NOT NULL DEFAULT '0',
  `clanskill` int(10) NOT NULL DEFAULT '0',
  `deathCount` int(10) NOT NULL DEFAULT '0',
  `killCount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_obj_id`),
  KEY `char_obj_id` (`char_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB; MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
