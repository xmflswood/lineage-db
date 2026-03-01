/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_acc
Target Host: localhost
Target Database: yiwei_acc
Date: 2013-4-23 22:28:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for ban_ip
-- ----------------------------
CREATE TABLE `ban_ip` (
  `ip` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 3072 kB';

-- ----------------------------
-- Records 
-- ----------------------------
