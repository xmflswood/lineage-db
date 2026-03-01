/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_board
-- ----------------------------
CREATE TABLE `server_board` (
  `id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(16) DEFAULT NULL,
  `date` varchar(16) DEFAULT NULL,
  `title` varchar(16) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
