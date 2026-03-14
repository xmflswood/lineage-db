/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:28:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for weapon_skill
-- ----------------------------
CREATE TABLE `weapon_skill` (
  `weapon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `note` varchar(255) DEFAULT NULL,
  `probability` int(11) unsigned NOT NULL DEFAULT '0',
  `fix_damage` int(11) unsigned NOT NULL DEFAULT '0',
  `random_damage` int(11) unsigned NOT NULL DEFAULT '0',
  `area` int(11) NOT NULL DEFAULT '0',
  `skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_time` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_id` int(11) unsigned NOT NULL DEFAULT '0',
  `effect_target` int(11) unsigned NOT NULL DEFAULT '0',
  `arrow_type` int(11) unsigned NOT NULL DEFAULT '0',
  `attr` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`weapon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=555019 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `weapon_skill` VALUES ('47', '沉默之剑', '5', '5', '5', '0', '64', '16', '2177', '0', '0', '0');
INSERT INTO `weapon_skill` VALUES ('54', '克特之剑', '5', '5', '5', '0', '0', '0', '10', '0', '0', '8');
INSERT INTO `weapon_skill` VALUES ('58', '死亡骑士的烈炎之剑', '5', '5', '5', '0', '0', '0', '1811', '0', '0', '2');
INSERT INTO `weapon_skill` VALUES ('76', '伦德双刀', '5', '5', '5', '0', '0', '0', '1805', '0', '0', '1');
INSERT INTO `weapon_skill` VALUES ('121', '冰之女王魔杖', '5', '5', '5', '0', '0', '0', '1810', '0', '0', '4');
INSERT INTO `weapon_skill` VALUES ('203', '炎魔的双手剑', '5', '5', '5', '2', '0', '0', '762', '0', '0', '2');
INSERT INTO `weapon_skill` VALUES ('205', '炽炎天使弓', '5', '5', '5', '0', '0', '0', '6288', '0', '1', '0');
INSERT INTO `weapon_skill` VALUES ('190', '沙哈之弓', '5', '5', '5', '0', '0', '0', '10', '0', '0', '2');
