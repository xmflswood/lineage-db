/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_topc
-- ----------------------------
CREATE TABLE `other_topc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) DEFAULT NULL COMMENT '物品名稱',
  `itemcount` bigint(11) DEFAULT '0' COMMENT '數量',
  `pcobjid` int(11) DEFAULT '0' COMMENT '賣出者OBJID',
  `pcname` varchar(50) DEFAULT NULL COMMENT '賣出者名稱',
  `srcpcobjid` int(11) DEFAULT '0' COMMENT '買入者OBJID',
  `srcpcname` varchar(50) DEFAULT NULL COMMENT '買入者名稱',
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1619 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
