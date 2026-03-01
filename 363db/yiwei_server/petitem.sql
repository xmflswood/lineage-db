/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:43
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for petitem
-- ----------------------------
CREATE TABLE `petitem` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(45) NOT NULL DEFAULT '',
  `hitmodifier` int(3) NOT NULL DEFAULT '0',
  `dmgmodifier` int(3) NOT NULL DEFAULT '0',
  `ac` int(3) NOT NULL DEFAULT '0',
  `add_str` int(2) NOT NULL DEFAULT '0',
  `add_con` int(2) NOT NULL DEFAULT '0',
  `add_dex` int(2) NOT NULL DEFAULT '0',
  `add_int` int(2) NOT NULL DEFAULT '0',
  `add_wis` int(2) NOT NULL DEFAULT '0',
  `add_hp` int(10) NOT NULL DEFAULT '0',
  `add_mp` int(10) NOT NULL DEFAULT '0',
  `add_sp` int(10) NOT NULL DEFAULT '0',
  `m_def` int(2) NOT NULL DEFAULT '0',
  `isweapon` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ishigher` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40767 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `petitem` VALUES ('40749', '猎犬之牙(宠物武器)', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40750', '破灭之牙(宠物武器)', '-3', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40751', '斗犬之牙(宠物武器)', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40752', '黄金之牙(宠物武器)', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40756', '神之牙(宠物武器)', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40757', '钢铁之牙(宠物武器)', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40758', '胜利之牙(宠物武器)', '2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `petitem` VALUES ('40761', '宠物皮盔甲(宠物防具)', '0', '0', '-4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40762', '宠物骷髅盔甲(宠物防具)', '0', '0', '-7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40763', '宠物钢铁盔甲(宠物防具)', '0', '0', '-8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40764', '宠物米索莉盔甲(宠物防具)', '0', '0', '-12', '0', '0', '0', '1', '1', '0', '0', '0', '10', '0', '0');
INSERT INTO `petitem` VALUES ('40765', '宠物十字盔甲(宠物防具)', '0', '0', '-13', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40766', '宠物链甲(宠物防具)', '0', '0', '-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `petitem` VALUES ('40754', '不灭之牙(宠物武器)', '-2', '2', '0', '3', '0', '0', '0', '0', '10', '0', '1', '0', '1', '1');
INSERT INTO `petitem` VALUES ('40753', '黑暗之牙 (宠物武器)', '0', '2', '0', '2', '0', '1', '0', '0', '0', '5', '0', '0', '1', '1');
INSERT INTO `petitem` VALUES ('40755', '龙之牙(宠物武器)', '3', '0', '0', '0', '0', '0', '1', '0', '0', '5', '2', '0', '1', '1');
INSERT INTO `petitem` VALUES ('40759', '宠物光明盔甲(宠物防具)', '0', '0', '-40', '5', '0', '0', '0', '0', '80', '0', '0', '0', '0', '1');
INSERT INTO `petitem` VALUES ('40760', '宠物祝福盔甲(宠物防具)', '0', '0', '-35', '0', '0', '1', '3', '0', '0', '50', '0', '10', '0', '1');
