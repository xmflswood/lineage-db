/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_castle
-- ----------------------------
CREATE TABLE `server_castle` (
  `castle_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL DEFAULT '',
  `war_time` datetime DEFAULT NULL,
  `tax_rate` int(11) NOT NULL DEFAULT '0',
  `public_money` bigint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `castle_id` (`castle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_castle` VALUES ('1', '肯特城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('2', '妖魔城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('3', '风木城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('4', '奇岩城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('5', '海音城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('6', '侏儒城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('7', '亚丁城', '2008-09-15 00:00:00', '0', '0');
INSERT INTO `server_castle` VALUES ('8', '狄亚得要塞', '2008-09-15 00:00:00', '0', '1237');
