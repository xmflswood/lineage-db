/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_pets
-- ----------------------------
CREATE TABLE `character_pets` (
  `item_obj_id` int(10) unsigned NOT NULL DEFAULT '0',
  `objid` int(10) unsigned NOT NULL DEFAULT '0',
  `npcid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `lvl` int(10) unsigned NOT NULL DEFAULT '0',
  `hp` int(10) unsigned NOT NULL DEFAULT '0',
  `mp` int(10) unsigned NOT NULL DEFAULT '0',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `lawful` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_obj_id`),
  KEY `item_obj_id` (`item_obj_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
