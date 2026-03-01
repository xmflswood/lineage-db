/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_item_time
-- ----------------------------
CREATE TABLE `server_item_time` (
  `itemid` int(10) NOT NULL,
  `h` int(10) DEFAULT '3' COMMENT '可用时间(小时)',
  `other` varchar(255) DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `id` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=49524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_item_time` VALUES ('37002', '1', '凹槽 10%获取卡');
INSERT INTO `server_item_time` VALUES ('37003', '1', '凹槽 15%获取卡');
INSERT INTO `server_item_time` VALUES ('37004', '1', '凹槽 20%获取卡');
INSERT INTO `server_item_time` VALUES ('37001', '1', '凹槽 5%获取卡');
INSERT INTO `server_item_time` VALUES ('37005', '1', '凹槽 100%获取卡');
