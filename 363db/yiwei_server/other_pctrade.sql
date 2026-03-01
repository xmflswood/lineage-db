/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_pctrade
-- ----------------------------
CREATE TABLE `other_pctrade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(50) DEFAULT NULL COMMENT '買入物品名稱',
  `itemobjid` int(11) DEFAULT '0' COMMENT '買入物品OBJID',
  `itemadena` int(11) DEFAULT '0' COMMENT '單件物品買入金額',
  `itemcount` bigint(11) DEFAULT '0' COMMENT '買入數量',
  `pcobjid` int(11) DEFAULT '0' COMMENT '買入者OBJID',
  `pcname` varchar(50) DEFAULT NULL COMMENT '買入者名稱',
  `srcpcobjid` int(11) DEFAULT '0' COMMENT '賣出者OBJID(個人商店)',
  `srcpcname` varchar(50) DEFAULT NULL COMMENT '賣出者名稱(個人商店)',
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
