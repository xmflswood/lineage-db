/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_quest
-- ----------------------------
CREATE TABLE `server_quest` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `questname` varchar(45) NOT NULL DEFAULT '$' COMMENT '任务NAMEID',
  `questclass` varchar(45) DEFAULT '0',
  `queststart` tinyint(1) NOT NULL DEFAULT '0' COMMENT '任务是否启用',
  `del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '任务是否可以删除',
  `questuser` int(10) DEFAULT '1024' COMMENT '可执行职业',
  `questlevel` int(10) NOT NULL DEFAULT '1024' COMMENT '可执行等级',
  `difficulty` int(10) DEFAULT '1' COMMENT '任务难度(必须执行的过程数量)',
  `note` varchar(255) DEFAULT '说明:',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_quest` VALUES ('101', '王族的自知', 'CrownLv15_1', '1', '0', '1', '15', '3', '说明:王族的自知 (王族15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('102', '艾莉亚的请求', 'CrownLv30_1', '1', '0', '1', '30', '3', '说明:艾莉亚的请求 (王族30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('103', '王族的信念', 'CrownLv45_1', '1', '0', '1', '45', '6', '说明:王族的信念 (王族45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('104', '小恶魔的可疑行动', 'CrownLv50_1', '1', '0', '1', '50', '3', '说明:小恶魔的可疑行动 (王族50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('106', '瑞奇的抵抗', 'KnightLv15_1', '1', '0', '2', '15', '2', '说明:瑞奇的抵抗 (骑士15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('107', '拯救被幽禁的吉姆', 'KnightLv30_1', '1', '0', '2', '30', '8', '说明:拯救被幽禁的吉姆 (骑士30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('108', '骑士的证明', 'KnightLv45_1', '1', '0', '2', '45', '5', '说明:骑士的证明 (骑士45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('109', '精灵们的骚动', 'KnightLv50_1', '1', '0', '2', '50', '4', '说明:精灵们的骚动 (骑士50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('110', '安塔瑞斯栖息地', 'ADLv80_1', '1', '1', '127', '80', '2', '说明:安塔瑞斯栖息地 (全职业80级任务副本)');
INSERT INTO `server_quest` VALUES ('111', '远征队的遗物', 'ElfLv15_1', '1', '0', '4', '15', '6', '说明:远征队的遗物 (妖精15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('112', '欧斯的先见之明', 'ElfLv15_2', '1', '0', '4', '15', '2', '说明:欧斯的先见之明 (妖精15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('113', '达克马勒的威胁', 'ElfLv30_1', '1', '0', '4', '30', '2', '说明:达克马勒的威胁 (妖精30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('114', '妖精的任务', 'ElfLv45_1', '1', '0', '4', '45', '7', '说明:妖精的任务 (妖精45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('115', '妖精族传说中的弓', 'ElfLv45_2', '1', '1', '4', '45', '8', '说明:妖精族传说中的弓 (妖精45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('116', '协助间谍大逃亡', 'ElfLv50_1', '1', '0', '4', '50', '6', '说明:协助间谍大逃亡 (妖精50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('117', '法利昂栖息地', 'ADLv80_2', '1', '1', '127', '80', '2', '说明:法利昂栖息地 (全职业80级任务副本)');
INSERT INTO `server_quest` VALUES ('118', '詹姆的请求', 'WizardLv15_1', '1', '0', '8', '15', '1', '说明:詹姆的请求 (法师15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('119', '不死族的叛徒', 'WizardLv30_1', '1', '0', '8', '30', '5', '说明:不死族的叛徒 (法师30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('120', '法师的考验', 'WizardLv45_1', '1', '0', '8', '45', '4', '说明:法师的考验 (法师45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('121', '取回间谍的报告书', 'WizardLv50_1', '1', '0', '8', '50', '3', '说明:取回间谍的报告书 (法师50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('122', '不死魔族再生的秘密', 'CKEWLv50_1', '1', '0', '15', '50', '4', '说明:不死魔族再生的秘密 (王族,骑士,妖精,法师50级以上官方任务-50级后半段)');
INSERT INTO `server_quest` VALUES ('123', '皮尔斯的忧郁', 'DarkElfLv15_1', '1', '1', '16', '15', '1', '说明:皮尔斯的忧郁 (黑暗妖精15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('124', '妖魔的侵入', 'DarkElfLv15_2', '1', '0', '16', '15', '2', '说明:妖魔的侵入 (黑暗妖精15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('125', '同族的背叛', 'DarkElfLv30_1', '1', '0', '16', '30', '3', '说明:同族的背叛 (黑暗妖精30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('126', '纠正错误的观念', 'DarkElfLv45_1', '1', '0', '16', '45', '6', '说明:纠正错误的观念 (黑暗妖精45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('127', '寻找黑暗之星', 'DarkElfLv50_1', '1', '0', '16', '50', '6', '说明:寻找黑暗之星 (黑暗妖精50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('128', '暗黑的武器，死神之证', 'DarkElfLv50_2', '1', '0', '16', '50', '1', '说明:暗黑的武器，死神之证 (黑暗妖精50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('129', '行迹可疑的妖魔们', 'DragonKnightLv15_1', '1', '0', '32', '15', '2', '说明:行迹可疑的妖魔们 (龙骑士15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('130', '妖魔密使首领的情报', 'DragonKnightLv30_1', '1', '0', '32', '30', '2', '说明:妖魔密使首领的情报 (龙骑士30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('131', '与幻术士缔结同盟', 'DragonKnightLv45_1', '1', '0', '32', '45', '5', '说明:与幻术士缔结同盟 (龙骑士45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('132', '时空彼端的线索', 'DragonKnightLv50_1', '1', '0', '32', '50', '5', '说明:时空彼端的线索 (龙骑士50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('133', '眠龙洞穴污染的来源', 'IllusionistLv15_1', '1', '0', '64', '15', '2', '说明:眠龙洞穴污染的来源 (幻术士15级以上官方任务)');
INSERT INTO `server_quest` VALUES ('134', '艾尔摩战场的轨迹', 'IllusionistLv30_1', '1', '0', '64', '30', '4', '说明:艾尔摩战场的轨迹 (幻术士30级以上官方任务)');
INSERT INTO `server_quest` VALUES ('135', '白蚁出现的理由', 'IllusionistLv45_1', '1', '0', '64', '45', '4', '说明:白蚁出现的理由 (幻术士45级以上官方任务)');
INSERT INTO `server_quest` VALUES ('136', '时空彼端的线索', 'IllusionistLv50_1', '1', '0', '64', '50', '5', '说明:时空彼端的线索 (幻术士50级以上官方任务)');
INSERT INTO `server_quest` VALUES ('138', '帮助罗伊逃脱', 'EWLv40_1', '1', '1', '12', '40', '2', '说明:帮助罗伊逃脱(等级40以上官方任务)');
INSERT INTO `server_quest` VALUES ('140', '击退妖魔的契约', 'ALv15_1', '1', '1', '127', '15', '2', '说明:击退妖魔的契约(全职业15级任务)');
INSERT INTO `server_quest` VALUES ('141', '魔法书的合成', 'ALv40_1', '1', '1', '127', '40', '2', '说明:魔法书的合成(全职业40级任务)');
INSERT INTO `server_quest` VALUES ('142', '毒蛇之牙的名号', 'ALv45_1', '1', '1', '127', '45', '5', '说明:毒蛇之牙的名号(全职业45级任务)');
INSERT INTO `server_quest` VALUES ('143', '穿越时空的探险', 'Chapter00', '1', '1', '127', '45', '1', '说明:穿越时空的探险(秘谭)');
INSERT INTO `server_quest` VALUES ('144', '魔法师．哈汀(故事)', 'Chapter01', '1', '1', '127', '45', '6', '说明:魔法师．哈汀(故事)(秘谭)');
