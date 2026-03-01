/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:20:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for etcitem_doll_power
-- ----------------------------
CREATE TABLE `etcitem_doll_power` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classname` varchar(45) NOT NULL DEFAULT '0',
  `type1` int(10) NOT NULL DEFAULT '0',
  `type2` int(10) unsigned NOT NULL DEFAULT '0',
  `type3` int(10) NOT NULL DEFAULT '0',
  `note` varchar(150) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `etcitem_doll_power` VALUES ('1', 'Doll_Ac', '-1', '0', '0', 'AC-1');
INSERT INTO `etcitem_doll_power` VALUES ('2', 'Doll_Ac', '-2', '0', '0', 'AC-2');
INSERT INTO `etcitem_doll_power` VALUES ('3', 'Doll_Ac', '-3', '0', '0', 'AC-3');
INSERT INTO `etcitem_doll_power` VALUES ('4', 'Doll_Ac', '-4', '0', '0', 'AC-4');
INSERT INTO `etcitem_doll_power` VALUES ('5', 'Doll_Hp', '10', '0', '0', 'HP+10');
INSERT INTO `etcitem_doll_power` VALUES ('6', 'Doll_Hp', '15', '0', '0', 'HP+15');
INSERT INTO `etcitem_doll_power` VALUES ('7', 'Doll_Hp', '20', '0', '0', 'HP+20');
INSERT INTO `etcitem_doll_power` VALUES ('8', 'Doll_Hp', '25', '0', '0', 'HP+25');
INSERT INTO `etcitem_doll_power` VALUES ('9', 'Doll_Hp', '30', '0', '0', 'HP+30');
INSERT INTO `etcitem_doll_power` VALUES ('10', 'Doll_Hp', '35', '0', '0', 'HP+35');
INSERT INTO `etcitem_doll_power` VALUES ('11', 'Doll_Hp', '40', '0', '0', 'HP+40');
INSERT INTO `etcitem_doll_power` VALUES ('12', 'Doll_Hp', '45', '0', '0', 'HP+45');
INSERT INTO `etcitem_doll_power` VALUES ('13', 'Doll_Hp', '50', '0', '0', 'HP+50');
INSERT INTO `etcitem_doll_power` VALUES ('14', 'Doll_Mp', '10', '0', '0', 'MP+10');
INSERT INTO `etcitem_doll_power` VALUES ('15', 'Doll_Mp', '15', '0', '0', 'MP+15');
INSERT INTO `etcitem_doll_power` VALUES ('16', 'Doll_Mp', '20', '0', '0', 'MP+20');
INSERT INTO `etcitem_doll_power` VALUES ('17', 'Doll_Mp', '25', '0', '0', 'MP+25');
INSERT INTO `etcitem_doll_power` VALUES ('18', 'Doll_Mp', '30', '0', '0', 'MP+30');
INSERT INTO `etcitem_doll_power` VALUES ('19', 'Doll_Mp', '35', '0', '0', 'MP+35');
INSERT INTO `etcitem_doll_power` VALUES ('20', 'Doll_Mp', '40', '0', '0', 'MP+40');
INSERT INTO `etcitem_doll_power` VALUES ('21', 'Doll_Mp', '45', '0', '0', 'MP+45');
INSERT INTO `etcitem_doll_power` VALUES ('22', 'Doll_Mp', '50', '0', '0', 'MP+50');
INSERT INTO `etcitem_doll_power` VALUES ('23', 'Doll_HpTR', '10', '32', '0', '每32秒，体力恢复10');
INSERT INTO `etcitem_doll_power` VALUES ('24', 'Doll_HpTR', '15', '32', '0', '每32秒，体力恢复15');
INSERT INTO `etcitem_doll_power` VALUES ('25', 'Doll_HpTR', '20', '32', '0', '每32秒，体力恢复20');
INSERT INTO `etcitem_doll_power` VALUES ('26', 'Doll_HpTR', '25', '32', '0', '每32秒，体力恢复25');
INSERT INTO `etcitem_doll_power` VALUES ('27', 'Doll_HpTR', '10', '64', '0', '每64秒，体力恢复10');
INSERT INTO `etcitem_doll_power` VALUES ('28', 'Doll_HpTR', '15', '64', '0', '每64秒，体力恢复15');
INSERT INTO `etcitem_doll_power` VALUES ('29', 'Doll_HpTR', '20', '64', '0', '每64秒，体力恢复20');
INSERT INTO `etcitem_doll_power` VALUES ('30', 'Doll_HpTR', '25', '64', '0', '每64秒，体力恢复25');
INSERT INTO `etcitem_doll_power` VALUES ('31', 'Doll_HpTR', '30', '64', '0', '每64秒，体力恢复30');
INSERT INTO `etcitem_doll_power` VALUES ('32', 'Doll_HpTR', '35', '64', '0', '每64秒，体力恢复35');
INSERT INTO `etcitem_doll_power` VALUES ('33', 'Doll_HpTR', '40', '64', '0', '每64秒，体力恢复40');
INSERT INTO `etcitem_doll_power` VALUES ('34', 'Doll_HpTR', '45', '64', '0', '每64秒，体力恢复45');
INSERT INTO `etcitem_doll_power` VALUES ('35', 'Doll_HpTR', '50', '64', '0', '每64秒，体力恢复50');
INSERT INTO `etcitem_doll_power` VALUES ('36', 'Doll_HpTR', '55', '64', '0', '每64秒，体力恢复55');
INSERT INTO `etcitem_doll_power` VALUES ('37', 'Doll_HpTR', '60', '64', '0', '每64秒，体力恢复60');
INSERT INTO `etcitem_doll_power` VALUES ('38', 'Doll_MpTR', '5', '32', '0', '每32秒，魔力恢复5');
INSERT INTO `etcitem_doll_power` VALUES ('39', 'Doll_MpTR', '10', '32', '0', '每32秒，魔力恢复10');
INSERT INTO `etcitem_doll_power` VALUES ('40', 'Doll_MpTR', '15', '32', '0', '每32秒，魔力恢复15');
INSERT INTO `etcitem_doll_power` VALUES ('41', 'Doll_MpTR', '6', '64', '0', '每64秒，魔力恢复6');
INSERT INTO `etcitem_doll_power` VALUES ('42', 'Doll_MpTR', '8', '64', '0', '每64秒，魔力恢复8');
INSERT INTO `etcitem_doll_power` VALUES ('43', 'Doll_MpTR', '9', '64', '0', '每64秒，魔力恢复9');
INSERT INTO `etcitem_doll_power` VALUES ('44', 'Doll_MpTR', '10', '64', '0', '每64秒，魔力恢复10');
INSERT INTO `etcitem_doll_power` VALUES ('45', 'Doll_MpTR', '12', '64', '0', '每64秒，魔力恢复12');
INSERT INTO `etcitem_doll_power` VALUES ('46', 'Doll_MpTR', '14', '64', '0', '每64秒，魔力恢复14');
INSERT INTO `etcitem_doll_power` VALUES ('47', 'Doll_MpTR', '15', '64', '0', '每64秒，魔力恢复15');
INSERT INTO `etcitem_doll_power` VALUES ('48', 'Doll_MpTR', '18', '64', '0', '每64秒，魔力恢复18');
INSERT INTO `etcitem_doll_power` VALUES ('49', 'Doll_MpTR', '21', '64', '0', '每64秒，魔力恢复21');
INSERT INTO `etcitem_doll_power` VALUES ('50', 'Doll_MpR', '2', '0', '0', '魔力恢复量+2');
INSERT INTO `etcitem_doll_power` VALUES ('51', 'Doll_Dmg', '1', '0', '0', '额外攻击点数+1');
INSERT INTO `etcitem_doll_power` VALUES ('52', 'Doll_Dmg', '2', '0', '0', '额外攻击点数+2');
INSERT INTO `etcitem_doll_power` VALUES ('53', 'Doll_Dmg', '3', '0', '0', '额外攻击点数+3');
INSERT INTO `etcitem_doll_power` VALUES ('54', 'Doll_Dmg', '4', '0', '0', '额外攻击点数+4');
INSERT INTO `etcitem_doll_power` VALUES ('55', 'Doll_Dmg', '5', '0', '0', '额外攻击点数+5');
INSERT INTO `etcitem_doll_power` VALUES ('56', 'Doll_Dmg', '6', '0', '0', '额外攻击点数+6');
INSERT INTO `etcitem_doll_power` VALUES ('57', 'Doll_Hit', '1', '0', '0', '攻击成功+1');
INSERT INTO `etcitem_doll_power` VALUES ('58', 'Doll_Hit', '2', '0', '0', '攻击成功+2');
INSERT INTO `etcitem_doll_power` VALUES ('59', 'Doll_Hit', '3', '0', '0', '攻击成功+3');
INSERT INTO `etcitem_doll_power` VALUES ('60', 'Doll_Hit', '4', '0', '0', '攻击成功+4');
INSERT INTO `etcitem_doll_power` VALUES ('61', 'Doll_Hit', '5', '0', '0', '攻击成功+5');
INSERT INTO `etcitem_doll_power` VALUES ('62', 'Doll_Hit', '6', '0', '0', '攻击成功+6');
INSERT INTO `etcitem_doll_power` VALUES ('63', 'Doll_DmgR', '15', '3', '0', '3%机率，攻击力+15');
INSERT INTO `etcitem_doll_power` VALUES ('64', 'Doll_DmgR', '15', '5', '0', '5%机率，攻击力+15');
INSERT INTO `etcitem_doll_power` VALUES ('65', 'Doll_Weight', '0', '2', '0', '负重能力+2%');
INSERT INTO `etcitem_doll_power` VALUES ('66', 'Doll_Weight', '0', '7', '0', '负重能力+7%');
INSERT INTO `etcitem_doll_power` VALUES ('67', 'Doll_Weight', '10', '0', '0', '现有负重 /1.1');
INSERT INTO `etcitem_doll_power` VALUES ('68', 'Doll_Weight', '12', '0', '0', '现有负重 /1.12');
INSERT INTO `etcitem_doll_power` VALUES ('69', 'Doll_Weight', '14', '0', '0', '现有负重 /1.14');
INSERT INTO `etcitem_doll_power` VALUES ('70', 'Doll_Weight', '16', '0', '0', '现有负重 /1.16');
INSERT INTO `etcitem_doll_power` VALUES ('71', 'Doll_Weight', '18', '0', '0', '现有负重 /1.18');
INSERT INTO `etcitem_doll_power` VALUES ('72', 'Doll_Weight', '20', '0', '0', '现有负重 /1.2');
INSERT INTO `etcitem_doll_power` VALUES ('73', 'Doll_Exp', '10', '0', '0', '狩猎经验值 x1.1');
INSERT INTO `etcitem_doll_power` VALUES ('74', 'Doll_DmgBow', '1', '0', '0', '远距离攻击+1');
INSERT INTO `etcitem_doll_power` VALUES ('75', 'Doll_DmgBow', '2', '0', '0', '远距离攻击+2');
INSERT INTO `etcitem_doll_power` VALUES ('76', 'Doll_DmgBow', '3', '0', '0', '远距离攻击+3');
INSERT INTO `etcitem_doll_power` VALUES ('77', 'Doll_DmgBow', '4', '0', '0', '远距离攻击+4');
INSERT INTO `etcitem_doll_power` VALUES ('78', 'Doll_DmgBow', '5', '0', '0', '远距离攻击+5');
INSERT INTO `etcitem_doll_power` VALUES ('79', 'Doll_DmgBow', '6', '0', '0', '远距离攻击+6');
INSERT INTO `etcitem_doll_power` VALUES ('80', 'Doll_HitBow', '1', '0', '0', '远距离命中+1');
INSERT INTO `etcitem_doll_power` VALUES ('81', 'Doll_HitBow', '2', '0', '0', '远距离命中+2');
INSERT INTO `etcitem_doll_power` VALUES ('82', 'Doll_HitBow', '3', '0', '0', '远距离命中+3');
INSERT INTO `etcitem_doll_power` VALUES ('83', 'Doll_HitBow', '4', '0', '0', '远距离命中+4');
INSERT INTO `etcitem_doll_power` VALUES ('84', 'Doll_HitBow', '5', '0', '0', '远距离命中+5');
INSERT INTO `etcitem_doll_power` VALUES ('85', 'Doll_DmgDown', '1', '0', '0', '伤害减免+1');
INSERT INTO `etcitem_doll_power` VALUES ('86', 'Doll_DmgDown', '2', '0', '0', '伤害减免+2');
INSERT INTO `etcitem_doll_power` VALUES ('87', 'Doll_DmgDown', '3', '0', '0', '伤害减免+3');
INSERT INTO `etcitem_doll_power` VALUES ('88', 'Doll_DmgDown', '4', '0', '0', '伤害减免+4');
INSERT INTO `etcitem_doll_power` VALUES ('89', 'Doll_DmgDown', '5', '0', '0', '伤害减免+5');
INSERT INTO `etcitem_doll_power` VALUES ('90', 'Doll_DmgDown', '6', '0', '0', '伤害减免+6');
INSERT INTO `etcitem_doll_power` VALUES ('91', 'Doll_DmgDownR', '15', '4', '0', '4%机率，伤害减免+15');
INSERT INTO `etcitem_doll_power` VALUES ('92', 'Doll_Regist_Blind', '1', '0', '0', '暗黑耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('93', 'Doll_Regist_Blind', '3', '0', '0', '暗黑耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('94', 'Doll_Regist_Blind', '5', '0', '0', '暗黑耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('95', 'Doll_Regist_Blind', '7', '0', '0', '暗黑耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('96', 'Doll_Regist_Blind', '10', '0', '0', '暗黑耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('97', 'Doll_Regist_Freeze', '1', '0', '0', '寒冰耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('98', 'Doll_Regist_Freeze', '3', '0', '0', '寒冰耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('99', 'Doll_Regist_Freeze', '5', '0', '0', '寒冰耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('100', 'Doll_Regist_Freeze', '7', '0', '0', '寒冰耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('101', 'Doll_Regist_Freeze', '10', '0', '0', '寒冰耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('102', 'Doll_Regist_Sleep', '1', '0', '0', '睡眠耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('103', 'Doll_Regist_Sleep', '3', '0', '0', '睡眠耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('104', 'Doll_Regist_Sleep', '5', '0', '0', '睡眠耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('105', 'Doll_Regist_Sleep', '7', '0', '0', '睡眠耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('106', 'Doll_Regist_Sleep', '10', '0', '0', '睡眠耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('107', 'Doll_Regist_Stone', '1', '0', '0', '石化耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('108', 'Doll_Regist_Stone', '3', '0', '0', '石化耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('109', 'Doll_Regist_Stone', '5', '0', '0', '石化耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('110', 'Doll_Regist_Stone', '7', '0', '0', '石化耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('111', 'Doll_Regist_Stone', '10', '0', '0', '石化耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('112', 'Doll_Regist_Stun', '1', '0', '0', '昏迷耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('113', 'Doll_Regist_Stun', '3', '0', '0', '昏迷耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('114', 'Doll_Regist_Stun', '5', '0', '0', '昏迷耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('115', 'Doll_Regist_Stun', '7', '0', '0', '昏迷耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('116', 'Doll_Regist_Stun', '10', '0', '0', '昏迷耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('117', 'Doll_Regist_Sustain', '1', '0', '0', '支撑耐性+1');
INSERT INTO `etcitem_doll_power` VALUES ('118', 'Doll_Regist_Sustain', '3', '0', '0', '支撑耐性+3');
INSERT INTO `etcitem_doll_power` VALUES ('119', 'Doll_Regist_Sustain', '5', '0', '0', '支撑耐性+5');
INSERT INTO `etcitem_doll_power` VALUES ('120', 'Doll_Regist_Sustain', '7', '0', '0', '支撑耐性+7');
INSERT INTO `etcitem_doll_power` VALUES ('121', 'Doll_Regist_Sustain', '10', '0', '0', '支撑耐性+10');
INSERT INTO `etcitem_doll_power` VALUES ('122', 'Doll_Stat_Cha', '1', '0', '0', '魅力+1');
INSERT INTO `etcitem_doll_power` VALUES ('123', 'Doll_Stat_Cha', '2', '0', '0', '魅力+2');
INSERT INTO `etcitem_doll_power` VALUES ('124', 'Doll_Stat_Cha', '3', '0', '0', '魅力+3');
INSERT INTO `etcitem_doll_power` VALUES ('125', 'Doll_Stat_Con', '1', '0', '0', '体质+1');
INSERT INTO `etcitem_doll_power` VALUES ('126', 'Doll_Stat_Con', '2', '0', '0', '体质+2');
INSERT INTO `etcitem_doll_power` VALUES ('127', 'Doll_Stat_Con', '3', '0', '0', '体质+3');
INSERT INTO `etcitem_doll_power` VALUES ('128', 'Doll_Stat_Dex', '1', '0', '0', '敏捷+1');
INSERT INTO `etcitem_doll_power` VALUES ('129', 'Doll_Stat_Dex', '2', '0', '0', '敏捷+2');
INSERT INTO `etcitem_doll_power` VALUES ('130', 'Doll_Stat_Dex', '3', '0', '0', '敏捷+3');
INSERT INTO `etcitem_doll_power` VALUES ('131', 'Doll_Stat_Int', '1', '0', '0', '智力+1');
INSERT INTO `etcitem_doll_power` VALUES ('132', 'Doll_Stat_Int', '2', '0', '0', '智力+2');
INSERT INTO `etcitem_doll_power` VALUES ('133', 'Doll_Stat_Int', '3', '0', '0', '智力+3');
INSERT INTO `etcitem_doll_power` VALUES ('134', 'Doll_Stat_Str', '1', '0', '0', '力量+1');
INSERT INTO `etcitem_doll_power` VALUES ('135', 'Doll_Stat_Str', '2', '0', '0', '力量+2');
INSERT INTO `etcitem_doll_power` VALUES ('136', 'Doll_Stat_Str', '3', '0', '0', '力量+3');
INSERT INTO `etcitem_doll_power` VALUES ('137', 'Doll_Stat_Wis', '1', '0', '0', '精神+1');
INSERT INTO `etcitem_doll_power` VALUES ('138', 'Doll_Stat_Wis', '2', '0', '0', '精神+2');
INSERT INTO `etcitem_doll_power` VALUES ('139', 'Doll_Stat_Wis', '3', '0', '0', '精神+3');
INSERT INTO `etcitem_doll_power` VALUES ('140', 'Doll_Speed', '0', '0', '0', '人物速度 x1.33(1段加速)');
INSERT INTO `etcitem_doll_power` VALUES ('141', 'Doll_Water', '0', '0', '0', '能在水底呼吸');
INSERT INTO `etcitem_doll_power` VALUES ('142', 'Doll_Evasion', '1', '0', '0', '低机率，回避攻击一次 1%');
INSERT INTO `etcitem_doll_power` VALUES ('143', 'Doll_Evasion', '2', '0', '0', '低机率，回避攻击一次 2%');
INSERT INTO `etcitem_doll_power` VALUES ('144', 'Doll_Evasion', '3', '0', '0', '低机率，回避攻击一次 3%');
INSERT INTO `etcitem_doll_power` VALUES ('145', 'Doll_Sp', '1', '0', '0', '魔法攻击+1');
INSERT INTO `etcitem_doll_power` VALUES ('146', 'Doll_Sp', '2', '0', '0', '魔法攻击+2');
INSERT INTO `etcitem_doll_power` VALUES ('147', 'Doll_Sp', '3', '0', '0', '魔法攻击+3');
INSERT INTO `etcitem_doll_power` VALUES ('148', 'Doll_Mr', '1', '0', '0', '抗魔+1');
INSERT INTO `etcitem_doll_power` VALUES ('149', 'Doll_Mr', '2', '0', '0', '抗魔+2');
INSERT INTO `etcitem_doll_power` VALUES ('150', 'Doll_Mr', '3', '0', '0', '抗魔+3');
INSERT INTO `etcitem_doll_power` VALUES ('151', 'Doll_DefenseEarth', '5', '0', '0', '地属性增加5');
INSERT INTO `etcitem_doll_power` VALUES ('152', 'Doll_DefenseEarth', '10', '0', '0', '地属性增加10');
INSERT INTO `etcitem_doll_power` VALUES ('153', 'Doll_DefenseEarth', '15', '0', '0', '地属性增加15');
INSERT INTO `etcitem_doll_power` VALUES ('154', 'Doll_DefenseFire', '5', '0', '0', '火属性增加5');
INSERT INTO `etcitem_doll_power` VALUES ('155', 'Doll_DefenseFire', '10', '0', '0', '火属性增加10');
INSERT INTO `etcitem_doll_power` VALUES ('156', 'Doll_DefenseFire', '15', '0', '0', '火属性增加15');
INSERT INTO `etcitem_doll_power` VALUES ('157', 'Doll_DefenseWater', '5', '0', '0', '水属性增加5');
INSERT INTO `etcitem_doll_power` VALUES ('158', 'Doll_DefenseWater', '10', '0', '0', '水属性增加10');
INSERT INTO `etcitem_doll_power` VALUES ('159', 'Doll_DefenseWater', '15', '0', '0', '水属性增加15');
INSERT INTO `etcitem_doll_power` VALUES ('160', 'Doll_DefenseWind', '5', '0', '0', '风属性增加5');
INSERT INTO `etcitem_doll_power` VALUES ('161', 'Doll_DefenseWind', '10', '0', '0', '风属性增加10');
INSERT INTO `etcitem_doll_power` VALUES ('162', 'Doll_DefenseWind', '15', '0', '0', '风属性增加15');
INSERT INTO `etcitem_doll_power` VALUES ('163', 'Doll_Mr', '4', '0', '0', '抗魔+4');
INSERT INTO `etcitem_doll_power` VALUES ('164', 'Doll_Mr', '6', '0', '0', '抗魔+6');
INSERT INTO `etcitem_doll_power` VALUES ('165', 'Doll_Mr', '8', '0', '0', '抗魔+8');
INSERT INTO `etcitem_doll_power` VALUES ('166', 'Doll_Mr', '10', '0', '0', '抗魔+10');
INSERT INTO `etcitem_doll_power` VALUES ('167', 'Doll_Mr', '12', '0', '0', '抗魔+12');
INSERT INTO `etcitem_doll_power` VALUES ('168', 'Doll_DmgDownR', '10', '4', '0', '4%机率，怪物伤害减免+10');
INSERT INTO `etcitem_doll_power` VALUES ('169', 'Doll_DmgDownR', '5', '4', '0', '4%机率，怪物伤害减免+5');
INSERT INTO `etcitem_doll_power` VALUES ('170', 'Doll_GetItem', '600', '40308', '100', '每10分钟给予金币100');
INSERT INTO `etcitem_doll_power` VALUES ('171', 'Doll_Skill', '29', '10', '0', '1%机率施展“缓速术”');
INSERT INTO `etcitem_doll_power` VALUES ('172', 'Doll_Skill', '74', '10', '0', '1%机率施展“流星雨”');
INSERT INTO `etcitem_doll_power` VALUES ('173', 'Doll_Add_Skill', '26', '0', '0', '通畅');
INSERT INTO `etcitem_doll_power` VALUES ('174', 'Doll_Add_Skill', '42', '0', '0', '体魄');
INSERT INTO `etcitem_doll_power` VALUES ('178', 'Doll_Add_Skill', '149', '0', '0', '风之神射');
INSERT INTO `etcitem_doll_power` VALUES ('175', 'Doll_Add_Skill', '48', '0', '0', '祝福魔法武器');
INSERT INTO `etcitem_doll_power` VALUES ('176', 'Doll_Add_Skill', '151', '0', '0', '大地防护');
INSERT INTO `etcitem_doll_power` VALUES ('177', 'Doll_Add_Skill', '148', '0', '0', '火焰武器');
INSERT INTO `etcitem_doll_power` VALUES ('179', 'Doll_Add_Skill', '168', '0', '0', '钢铁防护');
INSERT INTO `etcitem_doll_power` VALUES ('180', 'Doll_Add_Skill', '163', '0', '0', '烈焰武器');
INSERT INTO `etcitem_doll_power` VALUES ('181', 'Doll_Add_Skill', '166', '0', '0', '暴风神射');
