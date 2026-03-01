/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_msg_item_id
-- ----------------------------
CREATE TABLE `server_msg_item_id` (
  `itemid` int(10) NOT NULL DEFAULT '0' COMMENT '要公告的物品編號',
  `note` varchar(255) DEFAULT '0',
  PRIMARY KEY (`itemid`),
  KEY `id` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=49524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
