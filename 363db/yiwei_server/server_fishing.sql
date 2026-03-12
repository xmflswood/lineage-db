/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_fishing
-- ----------------------------
CREATE TABLE `server_fishing` (
  `itemid` int(10) NOT NULL DEFAULT '0' COMMENT '物品编号',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `randomint` int(10) NOT NULL DEFAULT '1000000' COMMENT '比对用机率',
  `random` int(10) NOT NULL DEFAULT '1000' COMMENT '机率',
  `count` int(10) NOT NULL DEFAULT '1' COMMENT '给予数量',
  `bait` int(10) NOT NULL DEFAULT '2' COMMENT '需要鱼饵的数量',
  PRIMARY KEY (`itemid`),
  KEY `id` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=49524 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_fishing` VALUES ('41296', '鲷鱼', '1000000', '600000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41297', '鲑鱼', '1000000', '600000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41301', '发红光的鱼', '1000000', '9000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41302', '发绿光的鱼', '1000000', '9000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41303', '发蓝光的鱼', '1000000', '9000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41304', '发白光的鱼', '1000000', '450000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41306', '破碎的戒指', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41307', '破碎的项链', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41305', '破碎的耳环', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21051', '泡水的头具', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21052', '泡水的斗篷', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21053', '泡水的盔甲', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21054', '泡水的手套', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21055', '泡水的靴子', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('21056', '泡水的盾牌', '1000000', '150000', '1', '2');
INSERT INTO `server_fishing` VALUES ('41252', '珍奇的乌龟', '1000000', '9000', '1', '2');
