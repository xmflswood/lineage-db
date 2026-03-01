/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:27:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for weapon_power
-- ----------------------------
CREATE TABLE `weapon_power` (
  `weapon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '武器编号',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `add_dmg_min` int(10) NOT NULL DEFAULT '0' COMMENT '追加伤害最小质',
  `add_dmg_max` int(10) NOT NULL DEFAULT '1' COMMENT '追加伤害最大质',
  PRIMARY KEY (`weapon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=555019 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `weapon_power` VALUES ('100146', '流星锤', '0', '3');
INSERT INTO `weapon_power` VALUES ('100143', '战斧', '0', '3');
INSERT INTO `weapon_power` VALUES ('100132', '神官魔杖', '0', '3');
INSERT INTO `weapon_power` VALUES ('100114', '威严权杖', '0', '3');
INSERT INTO `weapon_power` VALUES ('100107', '深红长矛', '0', '3');
INSERT INTO `weapon_power` VALUES ('100103', '戟', '0', '3');
INSERT INTO `weapon_power` VALUES ('100102', '露西锤', '0', '3');
INSERT INTO `weapon_power` VALUES ('100157', '银光钢爪', '0', '3');
INSERT INTO `weapon_power` VALUES ('100164', '暗黑钢爪', '0', '3');
INSERT INTO `weapon_power` VALUES ('100169', '猎人之弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100212', '海神三叉戟', '0', '3');
INSERT INTO `weapon_power` VALUES ('100207', '炼狱钢爪', '0', '3');
INSERT INTO `weapon_power` VALUES ('100204', '深红之弩', '0', '3');
INSERT INTO `weapon_power` VALUES ('100189', '暗黑十字弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100181', '尤米弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100180', '十字弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100172', '弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100170', '精灵弓', '0', '3');
INSERT INTO `weapon_power` VALUES ('100099', '精灵之矛', '0', '3');
INSERT INTO `weapon_power` VALUES ('100098', '阔矛', '0', '3');
INSERT INTO `weapon_power` VALUES ('100037', '大马士革刀', '0', '3');
INSERT INTO `weapon_power` VALUES ('100029', '银长剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100028', '精灵短剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100027', '弯刀', '0', '3');
INSERT INTO `weapon_power` VALUES ('100025', '银剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100009', '奥里哈鲁根短剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100008', '米索莉短剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100005', '精灵匕首', '0', '3');
INSERT INTO `weapon_power` VALUES ('100041', '武士刀', '0', '3');
INSERT INTO `weapon_power` VALUES ('100042', '细剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100095', '矛', '0', '3');
INSERT INTO `weapon_power` VALUES ('100084', '暗黑双刀', '0', '3');
INSERT INTO `weapon_power` VALUES ('100074', '银光双刀', '0', '3');
INSERT INTO `weapon_power` VALUES ('100064', '巨剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100062', '武官双手剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100057', '瑟鲁基之剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100052', '双手剑', '0', '3');
INSERT INTO `weapon_power` VALUES ('100049', '武官之刃', '0', '3');
INSERT INTO `weapon_power` VALUES ('100004', '匕首', '0', '3');
INSERT INTO `weapon_power` VALUES ('60', '末日刀', '100', '200');
