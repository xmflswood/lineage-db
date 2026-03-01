/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:21:15
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for mapids_level
-- ----------------------------
CREATE TABLE `mapids_level` (
  `mapid` int(10) NOT NULL DEFAULT '0',
  `locationname` varchar(45) DEFAULT NULL,
  `min` int(10) NOT NULL DEFAULT '0',
  `max` int(10) NOT NULL DEFAULT '158',
  `locx` int(10) NOT NULL DEFAULT '0',
  `locy` int(10) NOT NULL DEFAULT '0',
  `tomapid` int(10) NOT NULL DEFAULT '0',
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `mapids_level` VALUES ('68', '歌唱之岛', '0', '13', '32574', '32944', '0', '说话之岛');
INSERT INTO `mapids_level` VALUES ('69', '隐藏之谷', '0', '13', '33080', '33392', '4', '银骑士村庄');
INSERT INTO `mapids_level` VALUES ('777', '不死魔族抛弃之地', '0', '52', '34043', '32184', '4', '象牙塔前');
INSERT INTO `mapids_level` VALUES ('778', '原生魔族抛弃之地', '0', '52', '32608', '33178', '4', '风木村庄');
INSERT INTO `mapids_level` VALUES ('779', '原生魔族抛弃之地', '0', '52', '32608', '33178', '4', '风木村庄');
INSERT INTO `mapids_level` VALUES ('2005', '隐藏之谷', '0', '13', '33080', '33392', '0', '银骑士村庄');
