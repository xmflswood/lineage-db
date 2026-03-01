/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_acc
Target Host: localhost
Target Database: yiwei_acc
Date: 2013-5-6 15:45:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for commands
-- ----------------------------
CREATE TABLE `commands` (
  `name` varchar(255) NOT NULL,
  `access_level` int(10) NOT NULL DEFAULT '200',
  `class_name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `commands` VALUES ('echo', '200', 'L1Echo', '重新启用监听', '1');
INSERT INTO `commands` VALUES ('setting', '200', 'L1Status', '重置指定人物属性(参数:对象 - 属性(参考说明) - 变更质)', '1');
INSERT INTO `commands` VALUES ('summon', '100', 'L1Summon', '召唤宠物(参数:npcid))', '0');
INSERT INTO `commands` VALUES ('cleaning', '100', 'L1DeleteGroundItem', '删除地面物品', '0');
INSERT INTO `commands` VALUES ('addskill', '100', 'L1AddSkill', '赋予该GM职业所有技能', '0');
INSERT INTO `commands` VALUES ('level', '100', 'L1Level', '变更该GM人物等级', '0');
INSERT INTO `commands` VALUES ('loc', '100', 'L1Loc', '取回目前座标资料', '0');
INSERT INTO `commands` VALUES ('desc', '100', 'L1Describe', '显示人物附加属性(参数:人物名称)', '1');
INSERT INTO `commands` VALUES ('who', '100', 'L1Who', '显示线上实际人数', '1');
INSERT INTO `commands` VALUES ('allbuff', '200', 'L1AllBuff', '全技能状态(参数:对象(gm,all))', '0');
INSERT INTO `commands` VALUES ('speed', '200', 'L1Speed', '赋予GM加速状态', '0');
INSERT INTO `commands` VALUES ('adena', '200', 'L1Adena', '创造金币(参数:数量)', '0');
INSERT INTO `commands` VALUES ('hpbar', '200', 'L1HpBar', '显示物件血条(参数:ON显示/关闭OFF)', '0');
INSERT INTO `commands` VALUES ('resettrap', '200', 'L1ResetTrap', '重新配置陷阱', '0');
INSERT INTO `commands` VALUES ('reloadtrap', '200', 'L1ReloadTrap', '重新载入陷阱', '0');
INSERT INTO `commands` VALUES ('showtrap', '200', 'L1ShowTrap', '显示陷阱位置(参数:on显示/off关闭显示)', '0');
INSERT INTO `commands` VALUES ('gfxid', '200', 'L1GfxId', '显示指定图形(参数:图形编号 - 延伸数量)', '0');
INSERT INTO `commands` VALUES ('hometown', '200', 'L1HomeTown', '启用贡献度系统(参数:daily(日处理)/monthly(月处理))', '1');
INSERT INTO `commands` VALUES ('gm', '200', 'L1GM', '隐藏显示GM属性', '0');
INSERT INTO `commands` VALUES ('shutdown', '200', 'L1Shutdown', '关机指令(参数:now()/abort()/倒数秒数)', '1');
INSERT INTO `commands` VALUES ('item', '200', 'L1CreateItem', '创造物品(参数:物品编号 - 数量 - 追加质)', '0');
INSERT INTO `commands` VALUES ('itemset', '200', 'L1CreateItemSet', '取得预设套件(参数:套件编号)', '0');
INSERT INTO `commands` VALUES ('buff', '200', 'L1Buff', '附加给予指定状态(参数:对象(me,all) - 技能编号)', '0');
INSERT INTO `commands` VALUES ('chat', '200', 'L1Chat', '广播限制(参数:on(取消广播限制)/off(设置广播限制))', '1');
INSERT INTO `commands` VALUES ('chatng', '200', 'L1ChatNG', '禁言(参数:人物名称 - 秒数)', '1');
INSERT INTO `commands` VALUES ('skick', '200', 'L1SKick', '解除卡点(参数:人物名称)', '1');
INSERT INTO `commands` VALUES ('kick', '200', 'L1Kick', '踢除下线(参数:人物名称/选单)', '1');
INSERT INTO `commands` VALUES ('powerkick', '200', 'L1PowerKick', '封锁IP/MAC(参数:人物名称/选单)', '1');
INSERT INTO `commands` VALUES ('accbankick', '200', 'L1AccountBanKick', '帐号封锁(参数:帐号)', '1');
INSERT INTO `commands` VALUES ('poly', '200', 'L1Poly', '变身指令(参数:人物名称 - 变身代号)', '0');
INSERT INTO `commands` VALUES ('ress', '200', 'L1Ress', 'GM治疗结界', '0');
INSERT INTO `commands` VALUES ('death', '200', 'L1Kill', '杀死指定人物(参数:人物名称/选单)', '1');
INSERT INTO `commands` VALUES ('gmroom', '200', 'L1GMRoom', 'GM指定移动座标(参数:座标编号)', '0');
INSERT INTO `commands` VALUES ('topc', '200', 'L1ToPC', '移动座标至指定人物身边(参数:人物名称/选单)', '0');
INSERT INTO `commands` VALUES ('move', '200', 'L1Move', '移动至指定座标边(参数:LOCX - LOCY - MAPID)', '0');
INSERT INTO `commands` VALUES ('weather', '200', 'L1ChangeWeather', '游戏天气控制(参数:控制代号)', '1');
INSERT INTO `commands` VALUES ('tospawn', '200', 'L1ToSpawn', '移动往指定召唤编号的NPC所在位置(参数:召唤表编号)', '0');
INSERT INTO `commands` VALUES ('f', '200', 'L1Favorite', '快速指令纪录(参数:set(设置)/show(目前设置))', '0');
INSERT INTO `commands` VALUES ('recall', '200', 'L1Recall', '召唤玩家(参数:ALL(全部玩家)/人物名称/选单)', '0');
INSERT INTO `commands` VALUES ('partyrecall', '200', 'L1PartyRecall', '召唤队伍(参数:人物名称/选单)', '0');
INSERT INTO `commands` VALUES ('invisible', '200', 'L1Invisible', '启用/取消GM隐身', '0');
INSERT INTO `commands` VALUES ('spawn', '200', 'L1SpawnCmd', '召唤NPC(参数:NPCID - 数量 - 范围)', '0');
INSERT INTO `commands` VALUES ('help', '100', 'L1CommandHelp', '显示管理指令群', '1');
INSERT INTO `commands` VALUES ('color', '200', 'L1Color', 'GM名称变色', '0');
INSERT INTO `commands` VALUES ('buffkick', '200', 'L1BuffKick', '删除已存人物保留技能(参数:人物objid/选单)', '0');
INSERT INTO `commands` VALUES ('spr', '200', 'L1Spr', '取回指定图形速度设置(参数:图形编号)', '1');
INSERT INTO `commands` VALUES ('gfxidpc', '200', 'L1GfxIdInPc', '产生动画物件(参数:动画编号)', '0');
INSERT INTO `commands` VALUES ('acc', '200', 'L1Acc', '取回指定帐号资料(参数:帐号)', '1');
INSERT INTO `commands` VALUES ('db', '200', 'L1Db', '变更经验直倍率(参数:倍率)', '1');
INSERT INTO `commands` VALUES ('IL', '200', 'L1ILL', '取回GM分身', '0');
INSERT INTO `commands` VALUES ('killnpc', '200', 'L1KillNpc', '杀死画面中 NPC', '0');
INSERT INTO `commands` VALUES ('msg', '200', 'L1AtkMsg', '开启/关闭 GM攻击讯息', '0');
INSERT INTO `commands` VALUES ('port', '200', 'L1Port', '关闭/开启指定监听端口(参数:stop/start 端口编号)', '1');
INSERT INTO `commands` VALUES ('movex', '200', 'L1MoveX', '测试未知地图', '0');
INSERT INTO `commands` VALUES ('tomap', '200', 'L1ToMap', '指定地图传送(参数:地图编号)', '0');
INSERT INTO `commands` VALUES ('polyme', '200', 'L1PolyMe', 'GM变身指令(参数:变身代号)', '0');
INSERT INTO `commands` VALUES ('html', '200', 'L1Html', '显示指定HTML', '0');
INSERT INTO `commands` VALUES ('pcm', '200', 'L1pcm', 'PC清单', '0');
INSERT INTO `commands` VALUES ('ipm', '200', 'L1ipm', '封锁清单', '0');
INSERT INTO `commands` VALUES ('delgfxid', '200', 'L1GfxIdDel', '删除产生动画物件', '0');
INSERT INTO `commands` VALUES ('bn', '200', 'L1BanUser', '外挂处分(参数:人物名称 - 分钟)', '0');
INSERT INTO `commands` VALUES ('gc', '200', 'L1GC', '核心资源回收', '1');
INSERT INTO `commands` VALUES ('npc', '200', 'L1NpcSet', '设置定点NPC(参数:NPC编号)', '0');
INSERT INTO `commands` VALUES ('id', '200', 'L1ShowNpcid', '显示物件资讯', '0');
INSERT INTO `commands` VALUES ('cn', '200', 'L1CN', '指定帐号加入指定物品(参数:帐号 - 物品编号 - 数量)', '1');
INSERT INTO `commands` VALUES ('ipmx', '200', 'L1ipmx', '暂时封锁清单', '0');
INSERT INTO `commands` VALUES ('check', '200', 'Check', '测试用', '0');
