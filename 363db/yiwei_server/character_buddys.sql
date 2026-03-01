/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:16:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_buddys
-- ----------------------------
CREATE TABLE `character_buddys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(10) NOT NULL DEFAULT '0',
  `buddy_id` int(10) unsigned NOT NULL DEFAULT '0',
  `buddy_name` varchar(45) NOT NULL,
  PRIMARY KEY (`char_id`,`buddy_id`),
  KEY `key_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25548 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB; MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
