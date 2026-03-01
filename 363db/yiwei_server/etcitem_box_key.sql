/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:20:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for etcitem_box_key
-- ----------------------------
CREATE TABLE `etcitem_box_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_itemid` int(10) NOT NULL DEFAULT '0' COMMENT '需要使用的开启物件编号',
  `box_item_id` int(10) NOT NULL DEFAULT '0' COMMENT '物品编号',
  `get_item_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '物品名称',
  `randomint` int(10) NOT NULL DEFAULT '1000000' COMMENT '比对用机率',
  `random` int(10) NOT NULL DEFAULT '1000' COMMENT '机率',
  `min_count` int(10) NOT NULL DEFAULT '1' COMMENT '给予数量(最少)',
  `max_count` int(10) NOT NULL DEFAULT '1' COMMENT '给予数量(最多)',
  `out` tinyint(1) NOT NULL DEFAULT '0' COMMENT '公告',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1694 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `etcitem_box_key` VALUES ('385', '56070', '56071', '40053', '高品质红宝石', '1000000', '60000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('386', '56070', '56071', '40054', '高品质蓝宝石', '1000000', '60000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('387', '56070', '56071', '40055', '高品质绿宝石', '1000000', '60000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('407', '56069', '56071', '40044', '钻石', '1000000', '130000', '3', '3', '0');
INSERT INTO `etcitem_box_key` VALUES ('408', '56069', '56071', '40045', '红宝石', '1000000', '130000', '3', '3', '0');
INSERT INTO `etcitem_box_key` VALUES ('409', '56069', '56071', '40046', '蓝宝石', '1000000', '130000', '3', '3', '0');
INSERT INTO `etcitem_box_key` VALUES ('410', '56069', '56071', '40047', '绿宝石', '1000000', '130000', '3', '3', '0');
INSERT INTO `etcitem_box_key` VALUES ('411', '56069', '56071', '40048', '品质钻石', '1000000', '80000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('412', '56069', '56071', '40049', '品质红宝石', '1000000', '80000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('413', '56069', '56071', '40050', '品质蓝宝石', '1000000', '80000', '1', '1', '0');
INSERT INTO `etcitem_box_key` VALUES ('414', '56069', '56071', '40051', '品质绿宝石', '1000000', '80000', '1', '1', '0');
