/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-25 20:56:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_event
-- ----------------------------
CREATE TABLE `server_event` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(45) NOT NULL DEFAULT '0',
  `eventclass` varchar(45) NOT NULL DEFAULT '0',
  `eventstart` tinyint(1) NOT NULL DEFAULT '0',
  `eventother` varchar(512) NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT '说明:',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_event` VALUES ('1', '奇岩赌场系统', 'GamblingSet', '0', '60,1,44070', '说明:每场比赛间隔时间(分钟),奇岩赌场 下注额,下注物品');
INSERT INTO `server_event` VALUES ('53', '回忆蜡烛系统', 'BaseResetSet', '1', '30', '说明:回忆蜡烛系统 使用后HP/MP保留百分比(1/100)');
INSERT INTO `server_event` VALUES ('3', '无线大赛系统', 'UbSet', '0', '0', '说明:无');
INSERT INTO `server_event` VALUES ('4', '传送师', 'SpawnOtherSet', '1', '0', '说明:用来召唤传送师');
INSERT INTO `server_event` VALUES ('6', '新手支援npc系统', 'SpawnOtherSet', '1', '0', '说明:无');
INSERT INTO `server_event` VALUES ('8', '亚丁商团系统', 'SpawnOtherSet', '1', '0', '说明:无');
INSERT INTO `server_event` VALUES ('9', '血盟技能系统', 'ClanSkillSet', '1', '0', '说明:武器幻化(光环)开关 0:关 1:开');
INSERT INTO `server_event` VALUES ('10', '全职技能导师系统', 'SkillTeacherSet', '1', '44,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,87,91,191,218,132,146,164,153,173,175,174,157,134,105,102', '说明:不开放学习的技能编号 使用\",\"分隔');
INSERT INTO `server_event` VALUES ('16', '服务器辅助说明', 'NewServerSet', '0', '10', '说明:无');
INSERT INTO `server_event` VALUES ('22', '风云榜系统', 'Ranking4', '1', '0', '说明:无');
INSERT INTO `server_event` VALUES ('31', '拍卖管理者', 'ShopXSet', '1', '10,3,50,50000', '说明:手续费,寄售时间(天),最低出售价,最高出售价');
INSERT INTO `server_event` VALUES ('47', '任务/副本系统', 'QuestSet', '1', '0', '说明:');
INSERT INTO `server_event` VALUES ('11', '连线奖励系统', 'OnlineGiftSet', '1', '20, 3#44070#100, 1#44070#150', '说明:连线奖励系统');
INSERT INTO `server_event` VALUES ('52', '银行管理员系统', 'BankSet', '1', '500000000,600000000,40308,5,0.05', '说明:银行储蓄上限,银行存款上限(加入利息),发放利息时间 (单位:分),银行利率(%)');
INSERT INTO `server_event` VALUES ('40', '天上圣母系统', 'MazuSet', '1', '0', '说明:启动天上圣母系统');
INSERT INTO `server_event` VALUES ('39', '凹槽系统', 'PowerItemSet', '1', '10,2,3', '说明:强化成功机率(1/1000),防具最大凹槽数量,武器最大凹槽数量(最大凹槽数量不能超过5)');
INSERT INTO `server_event` VALUES ('44', '特殊属性', 'FeatureItemSet', '1', 'true', '说明:启动特殊属性攻击');
INSERT INTO `server_event` VALUES ('37', '升级装备系统', 'ItemUpdateSet', '1', 'true', '说明:是否提供原始装备附加属性保留 true:是 false:否(不提供可堆叠物件交换)');
