/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_event_spawn
-- ----------------------------
CREATE TABLE `server_event_spawn` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eventid` int(10) NOT NULL DEFAULT '0',
  `none` varchar(45) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '1',
  `npc_templateid` int(10) NOT NULL DEFAULT '0',
  `group_id` int(10) NOT NULL DEFAULT '0',
  `locx1` int(10) NOT NULL DEFAULT '0',
  `locy1` int(10) NOT NULL DEFAULT '0',
  `locx2` int(10) NOT NULL DEFAULT '0',
  `locy2` int(10) NOT NULL DEFAULT '0',
  `heading` int(10) unsigned NOT NULL DEFAULT '0',
  `respawn_delay` int(10) unsigned NOT NULL DEFAULT '0',
  `mapid` int(10) NOT NULL DEFAULT '0',
  `movement_distance` int(10) unsigned NOT NULL DEFAULT '100',
  `near_spawn` int(10) NOT NULL DEFAULT '1' COMMENT '召唤时是否闪避PC 0:不闪避 1:闪避',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40852 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_event_spawn` VALUES ('40003', '1', '赛西', '1', '70035', '0', '33525', '32851', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40004', '1', '波金', '1', '70041', '0', '33516', '32857', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40005', '1', '波丽', '1', '70042', '0', '33528', '32873', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40011', '4', '传送师(商店村)', '1', '91053', '0', '32722', '32847', '0', '0', '0', '0', '350', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40012', '4', '传送师(商店村)', '1', '91053', '0', '32755', '32867', '0', '0', '2', '0', '340', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40013', '4', '传送师(威顿)', '1', '91053', '0', '33709', '32499', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40014', '4', '传送师(欧瑞)', '1', '91053', '0', '34063', '32278', '0', '0', '5', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40015', '4', '传送师(亚丁)', '1', '91053', '0', '33934', '33351', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40016', '4', '传送师(说话之岛)', '1', '91053', '0', '32583', '32922', '0', '0', '4', '0', '0', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40017', '4', '传送师(风木)', '1', '91053', '0', '32640', '33204', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40018', '4', '传送师(银骑士村庄)', '1', '91053', '0', '33080', '33385', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40019', '4', '传送师(亚丁)', '1', '91053', '0', '33964', '33252', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40020', '4', '传送师(海音)', '1', '91053', '0', '33613', '33257', '0', '0', '7', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40021', '4', '传送师(奇岩)', '1', '91053', '0', '33437', '32795', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40022', '4', '传送师(古鲁丁)', '1', '91053', '0', '32611', '32732', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40023', '4', '传送师(商店村)', '1', '91053', '0', '32730', '32788', '0', '0', '4', '0', '360', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40024', '4', '传送师(商店村)', '1', '91053', '0', '32736', '32810', '0', '0', '2', '0', '370', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40025', '4', '传送师', '1', '91053', '0', '32851', '32939', '0', '0', '4', '0', '630', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40033', '4', '传送师', '1', '91053', '0', '32715', '32831', '0', '0', '6', '0', '350', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40038', '4', '传送师(肯特)', '1', '91053', '0', '33050', '32783', '0', '0', '0', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40058', '8', '亚丁商团(奇岩商店村)', '1', '99999', '0', '32689', '32834', '0', '0', '5', '0', '350', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40059', '8', '亚丁商团(古鲁丁商店村)', '1', '99999', '0', '32789', '32845', '0', '0', '6', '0', '340', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40060', '8', '亚丁商团(欧瑞商店村)', '1', '99999', '0', '32743', '32787', '0', '0', '6', '0', '360', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40061', '8', '亚丁商团', '1', '99999', '0', '32859', '32929', '0', '0', '4', '0', '630', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40062', '8', '亚丁商团', '1', '99999', '0', '32868', '32929', '0', '0', '4', '0', '630', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40262', '22', '英雄风云榜', '0', '80029', '0', '33063', '33402', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40263', '22', '杀手风云榜', '0', '80026', '0', '33063', '33393', '0', '0', '5', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40264', '22', '财富风云榜', '0', '80027', '0', '33063', '33396', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40265', '22', '血盟风云榜', '0', '80028', '0', '33063', '33399', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40307', '52', '银行管理员', '0', '50002', '0', '33449', '32792', '0', '0', '5', '0', '4', '0', '0');
INSERT INTO `server_event_spawn` VALUES ('40308', '52', '银行管理员', '0', '50002', '0', '33074', '33396', '0', '0', '5', '0', '4', '0', '0');
INSERT INTO `server_event_spawn` VALUES ('40835', '40', '天上圣母', '0', '91100', '0', '33445', '32796', '0', '0', '5', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40851', '40', '天上圣母', '0', '91100', '0', '33539', '32842', '0', '0', '5', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40314', '31', '托售管理员(欧瑞商店村)', '0', '70535', '0', '32749', '32794', '0', '0', '6', '0', '360', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40313', '31', '托售管理员(奇岩商店村)', '0', '70535', '0', '32679', '32839', '0', '0', '4', '0', '350', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40315', '31', '托售管理员(银骑士商店村)', '0', '70535', '0', '32735', '32800', '0', '0', '6', '0', '370', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40442', '37', '物品升级专员', '0', '91141', '0', '33422', '32809', '0', '0', '6', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40170', '53', '回忆蜡烛向导露露', '1', '71251', '0', '32610', '32775', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40171', '4', '传送师(奇岩)', '1', '91053', '0', '33449', '32807', '0', '0', '4', '0', '4', '0', '1');
INSERT INTO `server_event_spawn` VALUES ('40172', '8', '亚丁商团', '1', '99999', '0', '33436', '32810', '0', '0', '4', '0', '4', '0', '1');
