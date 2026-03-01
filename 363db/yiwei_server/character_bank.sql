/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:16:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_bank
-- ----------------------------
CREATE TABLE `character_bank` (
  `account_name` varchar(45) NOT NULL,
  `adena_count` bigint(10) NOT NULL DEFAULT '0',
  `pass` varchar(10) NOT NULL,
  `settime` datetime NOT NULL,
  PRIMARY KEY (`account_name`),
  KEY `char_id` (`account_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
