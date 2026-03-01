/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_quests
-- ----------------------------
CREATE TABLE `character_quests` (
  `char_id` int(10) unsigned NOT NULL,
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_step` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest_id`),
  KEY `char_id` (`char_id`,`quest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
