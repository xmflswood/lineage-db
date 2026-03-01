/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_castle_war_gift
-- ----------------------------
CREATE TABLE `server_castle_war_gift` (
  `castle_id` int(10) NOT NULL DEFAULT '0' COMMENT '城堡编号',
  `note` varchar(250) NOT NULL COMMENT '说明',
  `itemid` int(10) NOT NULL DEFAULT '0' COMMENT '给予奖励物品编号',
  `count` int(10) NOT NULL DEFAULT '1' COMMENT '给予奖励物品数量',
  `recover` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '该物品是否回收 0:不回收 1:回收',
  PRIMARY KEY (`castle_id`,`itemid`),
  KEY `castle_id` (`castle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_castle_war_gift` VALUES ('1', '肯特城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('2', '妖魔城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('3', '风木城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('4', '奇岩城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('5', '海音城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('6', '侏儒城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('7', '亚丁城', '40308', '1000000', '0');
INSERT INTO `server_castle_war_gift` VALUES ('8', '狄亚得要塞', '40308', '1000000', '0');
