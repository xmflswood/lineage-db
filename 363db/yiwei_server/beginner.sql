/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:16:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for beginner
-- ----------------------------
CREATE TABLE `beginner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_id` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `charge_count` int(10) NOT NULL DEFAULT '0',
  `enchantlvl` int(6) NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `activate` char(1) NOT NULL DEFAULT 'A',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1525 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `beginner` VALUES ('1', '40308', '10000000', '0', '0', '金币', 'A', '0');
INSERT INTO `beginner` VALUES ('2', '40117', '100', '0', '0', '银骑士村庄指定传送卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('3', '40079', '100', '0', '0', '传送回家的卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('4', '40100', '100', '0', '0', '瞬间移动卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('5', '140100', '100', '0', '0', '瞬间移动卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('6', '44156', '1', '0', '0', '经验值 魔法卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('7', '182', '1', '0', '10', '古老的弩枪', 'A', '0');
INSERT INTO `beginner` VALUES ('8', '67', '1', '0', '10', '古老的巨剑', 'A', '0');
INSERT INTO `beginner` VALUES ('9', '68', '1', '0', '10', '古老的剑', 'A', '0');
INSERT INTO `beginner` VALUES ('10', '84', '1', '0', '10', '暗黑双刀', 'A', '0');
INSERT INTO `beginner` VALUES ('11', '117', '1', '0', '10', '蕾雅魔杖', 'A', '0');
INSERT INTO `beginner` VALUES ('12', '273', '1', '0', '10', '蓝宝石奇古兽', 'A', '0');
INSERT INTO `beginner` VALUES ('13', '271', '1', '0', '10', '破灭者锁链剑', 'A', '0');
INSERT INTO `beginner` VALUES ('14', '20092', '1', '0', '10', '古老的皮盔甲', 'A', '0');
INSERT INTO `beginner` VALUES ('15', '20093', '1', '0', '10', '古老的长袍', 'A', '0');
INSERT INTO `beginner` VALUES ('16', '20094', '1', '0', '10', '古老的鳞甲', 'A', '0');
INSERT INTO `beginner` VALUES ('17', '20095', '1', '0', '10', '古老的金属盔甲', 'A', '0');
INSERT INTO `beginner` VALUES ('18', '20085', '1', '0', '10', 'T恤', 'A', '0');
INSERT INTO `beginner` VALUES ('19', '20044', '1', '0', '10', '蓝海贼头巾', 'A', '0');
INSERT INTO `beginner` VALUES ('20', '20182', '1', '0', '10', '手套', 'A', '0');
INSERT INTO `beginner` VALUES ('21', '20073', '1', '0', '10', '精灵斗篷', 'A', '0');
INSERT INTO `beginner` VALUES ('22', '20192', '1', '0', '10', '皮长靴', 'A', '0');
INSERT INTO `beginner` VALUES ('23', '20236', '1', '0', '10', '精灵盾牌', 'A', '0');
INSERT INTO `beginner` VALUES ('24', '20264', '1', '0', '10', '力量项链', 'A', '0');
INSERT INTO `beginner` VALUES ('25', '20280', '1', '0', '10', '灭魔戒指', 'A', '0');
INSERT INTO `beginner` VALUES ('26', '20280', '1', '0', '10', '灭魔戒指', 'A', '0');
INSERT INTO `beginner` VALUES ('27', '20281', '1', '0', '10', '变形控制戒指', 'A', '0');
INSERT INTO `beginner` VALUES ('28', '20284', '1', '0', '10', '召唤控制戒指', 'A', '0');
INSERT INTO `beginner` VALUES ('29', '20314', '1', '0', '10', '古代巨人戒指', 'A', '0');
INSERT INTO `beginner` VALUES ('30', '21013', '1', '0', '10', '宽容耳环', 'A', '0');
INSERT INTO `beginner` VALUES ('31', '40024', '500', '0', '0', '古代终极体力恢复剂', 'A', '0');
INSERT INTO `beginner` VALUES ('32', '40018', '100', '0', '0', '强化绿色药水', 'A', '0');
INSERT INTO `beginner` VALUES ('33', '40733', '100', '0', '0', '名誉货币', 'A', '0');
INSERT INTO `beginner` VALUES ('34', '40088', '100', '0', '0', '变形卷轴', 'A', '0');
INSERT INTO `beginner` VALUES ('35', '44070', '5000', '0', '0', '天宝', 'A', '0');
INSERT INTO `beginner` VALUES ('36', '44071', '100000', '0', '0', '在线币', 'A', '0');
INSERT INTO `beginner` VALUES ('37', '49295', '1', '0', '0', '奇岩传送符', 'A', '0');
