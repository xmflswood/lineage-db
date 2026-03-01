/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_acc
Target Host: localhost
Target Database: yiwei_acc
Date: 2013-4-23 22:28:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for accounts
-- ----------------------------
CREATE TABLE `accounts` (
  `login` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `lastactive` datetime DEFAULT NULL,
  `access_level` int(11) DEFAULT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `host` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否连线服务器',
  `character_slot` int(2) unsigned NOT NULL DEFAULT '0',
  `spw` varchar(12) NOT NULL,
  `warehouse` int(10) NOT NULL DEFAULT '-256',
  `server_no` int(10) NOT NULL DEFAULT '0' COMMENT '登入服务器编号',
  PRIMARY KEY (`login`),
  KEY `login` (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 3072 kB';

-- ----------------------------
-- Records 
-- ----------------------------
