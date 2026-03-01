/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:19:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for drop_item
-- ----------------------------
CREATE TABLE `drop_item` (
  `item_id` int(10) NOT NULL DEFAULT '0',
  `drop_rate` float unsigned NOT NULL DEFAULT '0',
  `drop_amount` float unsigned NOT NULL DEFAULT '0',
  `note` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
