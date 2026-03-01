/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:17:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_gambling
-- ----------------------------
CREATE TABLE `character_gambling` (
  `id` int(10) NOT NULL DEFAULT '0',
  `adena` bigint(10) unsigned NOT NULL DEFAULT '0',
  `rate` double(5,2) NOT NULL DEFAULT '0.00',
  `gamblingno` varchar(50) NOT NULL,
  `outcount` int(10) NOT NULL DEFAULT '0',
  `r` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
