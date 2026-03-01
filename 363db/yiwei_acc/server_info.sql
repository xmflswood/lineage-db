/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_acc
Target Host: localhost
Target Database: yiwei_acc
Date: 2013-4-23 22:28:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_info
-- ----------------------------
CREATE TABLE `server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `minid` int(10) DEFAULT '1000000' COMMENT '预设最小ID编号',
  `maxid` int(10) DEFAULT NULL COMMENT '目前已用最大ID编号',
  `start` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '服务器 启动状态',
  `ip` varchar(50) DEFAULT '0.0.0.0',
  `port` varchar(50) DEFAULT '2000',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 3072 kB';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_info` VALUES ('1', '300000', '0', '1', '127.0.0.1', '2000');
