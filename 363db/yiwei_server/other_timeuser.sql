/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_timeuser
-- ----------------------------
CREATE TABLE `other_timeuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
