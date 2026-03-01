/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:36
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_quest_maps
-- ----------------------------
CREATE TABLE `server_quest_maps` (
  `mapid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '-1' COMMENT '该地图可进入时间限制 单位:秒(-1无限制)',
  `users` int(10) NOT NULL DEFAULT '8' COMMENT '允许一次进入人数(-1无限制)',
  `note` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mapid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_quest_maps` VALUES ('217', '600', '8', '变种巨蚁地监');
INSERT INTO `server_quest_maps` VALUES ('201', '600', '1', '法师试炼地监');
INSERT INTO `server_quest_maps` VALUES ('22', '600', '1', '杰瑞德的试炼地监');
INSERT INTO `server_quest_maps` VALUES ('211', '300', '1', '黑暗妖精地监');
INSERT INTO `server_quest_maps` VALUES ('213', '600', '1', '达克马勒地监');
INSERT INTO `server_quest_maps` VALUES ('302', '300', '1', '赛菲亚地监');
INSERT INTO `server_quest_maps` VALUES ('306', '600', '1', '黑暗妖精试炼地监');
INSERT INTO `server_quest_maps` VALUES ('2000', '1800', '4', '再生圣殿 1楼/2楼/3楼');
INSERT INTO `server_quest_maps` VALUES ('2004', '600', '1', '异界奎斯特');
INSERT INTO `server_quest_maps` VALUES ('1005', '1800', '8', '安塔瑞斯 洞穴');
INSERT INTO `server_quest_maps` VALUES ('1011', '1800', '8', '法利昂 洞穴');
INSERT INTO `server_quest_maps` VALUES ('38', '600', '1', '高等召唤兽');
INSERT INTO `server_quest_maps` VALUES ('9000', '-1', '5', '从前的说话之岛');
