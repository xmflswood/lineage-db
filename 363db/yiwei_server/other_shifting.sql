/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_shifting
-- ----------------------------
CREATE TABLE `other_shifting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `srcObjid` int(10) NOT NULL,
  `srcItemid` int(10) NOT NULL,
  `srcName` varchar(50) NOT NULL,
  `newObjid` int(10) NOT NULL,
  `newItemid` int(10) NOT NULL,
  `newName` varchar(50) NOT NULL,
  `enchantLevel` int(10) NOT NULL,
  `attrEnchant` varchar(50) NOT NULL,
  `weaponSkill` varchar(255) NOT NULL,
  `pcObjid` int(10) NOT NULL,
  `pcName` varchar(50) NOT NULL,
  `tgPcObjid` int(10) NOT NULL,
  `tgPcName` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `note` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
