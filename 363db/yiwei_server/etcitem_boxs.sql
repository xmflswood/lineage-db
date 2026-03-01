/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:20:18
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for etcitem_boxs
-- ----------------------------
CREATE TABLE `etcitem_boxs` (
  `box_item_id` int(10) NOT NULL DEFAULT '0' COMMENT '盒子编号',
  `get_item_id` int(10) NOT NULL DEFAULT '0' COMMENT '给予物品编号',
  `name` varchar(100) DEFAULT NULL COMMENT '物品名称',
  `count` int(10) NOT NULL DEFAULT '1' COMMENT '给予数量',
  `use_type` int(10) NOT NULL DEFAULT '127' COMMENT '领取职业 王族:1 骑士:2  精灵:4 法师:8 黑妖:16 龙骑:32 幻术:64',
  PRIMARY KEY (`box_item_id`,`get_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `etcitem_boxs` VALUES ('41405', '40308', '守护团奖金 => 金币', '1000', '127');
INSERT INTO `etcitem_boxs` VALUES ('41001', '40308', '守护团奖金 => 金币', '200', '127');
INSERT INTO `etcitem_boxs` VALUES ('41410', '40308', '雷奥纳的袋子 => 金币', '4000', '127');
INSERT INTO `etcitem_boxs` VALUES ('41409', '40308', '雷奥纳的袋子 => 金币', '2600', '127');
INSERT INTO `etcitem_boxs` VALUES ('41408', '40308', '雷奥纳的袋子 => 金币', '1700', '127');
INSERT INTO `etcitem_boxs` VALUES ('41407', '40308', '雷奥纳的袋子 => 金币', '1000', '127');
INSERT INTO `etcitem_boxs` VALUES ('40632', '40308', '雷奥纳的袋子 => 金币', '300', '127');
INSERT INTO `etcitem_boxs` VALUES ('41406', '40308', '雷奥纳的袋子 => 金币', '500', '127');
INSERT INTO `etcitem_boxs` VALUES ('40570', '40228', '艾莉亚的回报 => 魔法书(呼唤盟友)', '1', '1');
INSERT INTO `etcitem_boxs` VALUES ('40570', '20051', '艾莉亚的回报 => 君主的威严', '1', '1');
INSERT INTO `etcitem_boxs` VALUES ('40571', '40648', '刺客首领的箱子 => 生锈的刺客之剑', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40571', '40595', '刺客首领的箱子=> 死亡之证(黑暗精灵)', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40582', '40583', '安迪亚之袋 => 安迪亚之信', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40553', '40276', '布鲁迪卡之袋 => 黑暗精灵水晶(暗影闪避)', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40553', '20195', '布鲁迪卡之袋=> 影子长靴', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40588', '40243', '妖精族宝物 => 精灵水晶(召唤属性精灵)', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40588', '20084', '妖精族宝物=> 精灵T恤', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40528', '65', '守护神之袋 => 天空之剑', '1', '2');
INSERT INTO `etcitem_boxs` VALUES ('40528', '40597', '守护神之袋=> 破损的调查簿', '1', '2');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40561', '暗杀名单之袋=> 肯特村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40560', '暗杀名单之袋=> 风木村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40559', '暗杀名单之袋=> 亚丁城镇', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40558', '暗杀名单之袋=> 奇岩村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40557', '暗杀名单之袋 => 古鲁丁村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40598', '40268', '康之袋 => 提炼魔石', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40598', '20004', '康之袋=> 影子面具', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40599', '20055', '塔拉斯的魔法袋 => 玛那斗篷', '1', '8');
INSERT INTO `etcitem_boxs` VALUES ('40599', '133', '塔拉斯的魔法袋=> 古代人的智慧', '1', '8');
INSERT INTO `etcitem_boxs` VALUES ('40546', '40245', '马沙之袋=> 召唤强力属性精灵', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40546', '20171', '马沙之袋=> 召唤强力属性精灵', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40546', '192', '马沙之袋 => 水之竖琴', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('41002', '40444', '矿物袋子 => 黑色米索莉原石', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('40568', '40578', '神秘的袋子 =>  灵魂水晶(红)骑士', '1', '1');
INSERT INTO `etcitem_boxs` VALUES ('40568', '40577', '神秘的袋子 =>  灵魂水晶(黑)法师', '1', '1');
INSERT INTO `etcitem_boxs` VALUES ('40568', '40576', '神秘的袋子 =>  灵魂水晶(白)妖精', '1', '1');
INSERT INTO `etcitem_boxs` VALUES ('41242', '41082', '妖魔宝物袋 => 妖魔尖牙项链', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('41242', '41081', '妖魔宝物袋 => 妖魔尖牙', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('41242', '40930', '妖魔宝物袋 => 烤肉', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('41004', '41005', '拉布罗的袋子 => 复活与永生之誓约书', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('40545', '40270', '伦得之袋 => 黑暗精灵水晶(行走加速)', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40545', '20164', '伦得之袋 => 影子手套', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40702', '40701', '小袋子 =>小藏宝图', '1', '127');
INSERT INTO `etcitem_boxs` VALUES ('40548', '40533', '古代亡灵之袋 => 古代钥匙(下半部)', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40548', '192', '古代亡灵之袋 => 水精灵之弓(水之竖琴)', '1', '4');
INSERT INTO `etcitem_boxs` VALUES ('40528', '40537', '守护神之袋=> 古代的遗物', '1', '2');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40562', '暗杀名单之袋=> 海音村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('40556', '40563', '暗杀名单之袋=> 燃柳村', '1', '16');
INSERT INTO `etcitem_boxs` VALUES ('41242', '41085', '妖魔宝物袋 => 预言家珍珠', '1', '127');
