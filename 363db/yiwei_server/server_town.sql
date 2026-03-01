/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_town
-- ----------------------------
CREATE TABLE `server_town` (
  `town_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `leader_id` int(10) unsigned NOT NULL DEFAULT '0',
  `leader_name` varchar(45) DEFAULT NULL,
  `tax_rate` int(10) unsigned NOT NULL DEFAULT '0',
  `tax_rate_reserved` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_money` int(10) unsigned NOT NULL DEFAULT '0',
  `sales_money_yesterday` int(10) unsigned NOT NULL DEFAULT '0',
  `town_tax` int(10) unsigned NOT NULL DEFAULT '0',
  `town_fix_tax` int(10) unsigned NOT NULL DEFAULT '0',
  `none` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`town_id`),
  KEY `town_id` (`town_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_town` VALUES ('1', '说话之岛村庄', '0', null, '0', '0', '100', '7520', '0', '152', null);
INSERT INTO `server_town` VALUES ('2', '银骑士村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('3', '古鲁丁村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('4', '燃柳村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('5', '风木村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('6', '肯特村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('7', '奇岩村庄', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('8', '海音村', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('9', '威顿村', '0', null, '0', '0', '0', '0', '0', '0', null);
INSERT INTO `server_town` VALUES ('10', '欧瑞村', '0', null, '0', '0', '0', '0', '0', '0', null);
