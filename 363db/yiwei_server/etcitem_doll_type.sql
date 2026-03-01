/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:20:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for etcitem_doll_type
-- ----------------------------
CREATE TABLE `etcitem_doll_type` (
  `itemid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '对应的物品编号',
  `note` varchar(100) DEFAULT '中文注解',
  `powers` varchar(255) NOT NULL DEFAULT '' COMMENT '能力阵列',
  `need` varchar(100) NOT NULL DEFAULT '' COMMENT '耗材编号阵列',
  `count` varchar(100) NOT NULL DEFAULT '' COMMENT '耗材数量阵列',
  `time` int(10) unsigned NOT NULL DEFAULT '1800' COMMENT '可召唤时间(秒)',
  `gfxid` int(10) NOT NULL DEFAULT '0' COMMENT '外型代号',
  `nameid` varchar(50) NOT NULL DEFAULT '$',
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `etcitem_doll_type` VALUES ('55000', '魔法娃娃：肥肥', '72', '41246', '50', '1800', '6100', '$5223');
INSERT INTO `etcitem_doll_type` VALUES ('55001', '魔法娃娃：小思克巴', '47', '41246', '50', '1800', '5919', '$5224');
INSERT INTO `etcitem_doll_type` VALUES ('55002', '魔法娃娃：野狼宝宝', '63', '41246', '50', '1800', '6096', '$5222');
INSERT INTO `etcitem_doll_type` VALUES ('55003', '魔法娃娃 : 稻草人  ', '81,58,13,18', '41246', '50', '1800', '7050', '$9591');
INSERT INTO `etcitem_doll_type` VALUES ('55004', '魔法娃娃：巫妖', '145', '41246', '50', '1800', '7053', '$2110');
INSERT INTO `etcitem_doll_type` VALUES ('55005', '魔法娃娃：希尔戴丝', '33', '41246', '50', '1800', '6477', '$1429');
INSERT INTO `etcitem_doll_type` VALUES ('55006', '魔法娃娃：雪怪', '100', '41246', '50', '1800', '6480', '$6416');
INSERT INTO `etcitem_doll_type` VALUES ('55007', '魔法娃娃：蛇女', '33', '41246', '50', '1800', '6483', '$7450');
INSERT INTO `etcitem_doll_type` VALUES ('55008', '魔法娃娃：王族(公主旧)', '73,173,174,176,177', '41246', '50', '1800', '5933', '$7493');
INSERT INTO `etcitem_doll_type` VALUES ('55009', '魔法娃娃：史巴托', '52', '41246', '50', '1800', '7257', '$7399');
INSERT INTO `etcitem_doll_type` VALUES ('55010', '魔法娃娃：长老', '47', '41246', '50', '1800', '6443', '$5414');
INSERT INTO `etcitem_doll_type` VALUES ('55011', '魔法娃娃：奎斯坦修', '63', '41246', '50', '1800', '6449', '$5415');
INSERT INTO `etcitem_doll_type` VALUES ('55012', '魔法娃娃：石头高仑', '91', '41246', '50', '1800', '6452', '$5416');
INSERT INTO `etcitem_doll_type` VALUES ('55013', '魔法娃娃：亚力安', '74,80', '41246', '50', '1800', '7047', '$7510');
INSERT INTO `etcitem_doll_type` VALUES ('55014', '魔法娃娃：变形怪', '', '41246', '50', '1800', '7516', '$1554');
INSERT INTO `etcitem_doll_type` VALUES ('55015', '魔法娃娃：王族(王子)', '125,134,67,24', '41246', '1', '1800', '9635', '$12257');
INSERT INTO `etcitem_doll_type` VALUES ('55016', '魔法娃娃：王族(公主)', '125,134,67,38', '41246', '1', '1800', '9638', '$12258');
INSERT INTO `etcitem_doll_type` VALUES ('55017', '魔法娃娃：骑士(男骑士)', '126,67,24', '41246', '1', '1800', '9411', '$12259');
INSERT INTO `etcitem_doll_type` VALUES ('55018', '魔法娃娃：骑士(女骑士)', '126,67,38', '41246', '1', '1800', '9414', '$12260');
INSERT INTO `etcitem_doll_type` VALUES ('55019', '魔法娃娃：妖精(男妖精)', '129,67,24', '41246', '1', '1800', '9398', '$12263');
INSERT INTO `etcitem_doll_type` VALUES ('55020', '魔法娃娃：妖精(女妖精)', '129,67,38', '41246', '1', '1800', '9401', '$12264');
INSERT INTO `etcitem_doll_type` VALUES ('55021', '魔法娃娃：法师(男法师)', '132,67,24', '41246', '1', '1800', '9381', '$12261');
INSERT INTO `etcitem_doll_type` VALUES ('55022', '魔法娃娃：法师(女法师)', '132,67,38', '41246', '1', '1800', '9377', '$12262');
INSERT INTO `etcitem_doll_type` VALUES ('55023', '魔法娃娃：黑暗妖精(男黑暗妖精)', '134,128,67,24', '41246', '1', '1800', '9391', '$12265');
INSERT INTO `etcitem_doll_type` VALUES ('55024', '魔法娃娃：黑暗妖精(女黑暗妖精)', '134,128,67,38', '41246', '1', '1800', '9395', '$12266');
INSERT INTO `etcitem_doll_type` VALUES ('55025', '魔法娃娃：龙骑士(男龙骑士)', '135,67,24', '41246', '1', '1800', '9388', '$12267');
INSERT INTO `etcitem_doll_type` VALUES ('55026', '魔法娃娃：龙骑士(女龙骑士)', '135,67,38', '41246', '1', '1800', '9385', '$12268');
INSERT INTO `etcitem_doll_type` VALUES ('55027', '魔法娃娃：幻术士(男幻术师)', '131,137,67,24', '41246', '1', '1800', '9404', '$12269');
INSERT INTO `etcitem_doll_type` VALUES ('55028', '魔法娃娃：幻术士(女幻术师)', '131,137,67,38', '41246', '1', '1800', '9407', '$12270');
INSERT INTO `etcitem_doll_type` VALUES ('55029', '魔法娃娃：美人鱼  ', '141,16', '41246', '50', '1800', '8650', '$11468');
INSERT INTO `etcitem_doll_type` VALUES ('55030', '努力的魔法娃娃：美人鱼  ', '141,17,42', '41246', '50', '1800', '8694', '$11469');
INSERT INTO `etcitem_doll_type` VALUES ('55031', '聪明的魔法娃娃：美人鱼  ', '141,18,42', '41246', '50', '1800', '8695', '$11470');
INSERT INTO `etcitem_doll_type` VALUES ('55032', '聪颖的魔法娃娃：美人鱼  ', '141,19,42,50', '41246', '50', '1800', '8696', '$11471');
INSERT INTO `etcitem_doll_type` VALUES ('55033', '发光的魔法娃娃：美人鱼  ', '141,20,42,50', '41246', '50', '1800', '8653', '$11472');
INSERT INTO `etcitem_doll_type` VALUES ('55034', '光彩照人的魔法娃娃：美人鱼  ', '141,22,42,50,171', '41246', '50', '1800', '8656', '$11473');
INSERT INTO `etcitem_doll_type` VALUES ('55035', '魔法娃娃 : 阿鲁巴  ', '140,67', '41246', '50', '1800', '8741', '$10191');
INSERT INTO `etcitem_doll_type` VALUES ('55036', '努力的魔法娃娃：阿鲁巴', '140,68,24', '41246', '50', '1800', '8748', '$11537');
INSERT INTO `etcitem_doll_type` VALUES ('55037', '聪明的魔法娃娃：阿鲁巴', '140,69,24', '41246', '50', '1800', '8749', '$11538');
INSERT INTO `etcitem_doll_type` VALUES ('55038', '聪颖的魔法娃娃：阿鲁巴', '140,70,24', '41246', '50', '1800', '8750', '$11539');
INSERT INTO `etcitem_doll_type` VALUES ('55039', '发光的魔法娃娃：阿鲁巴', '140,71,24,51', '41246', '50', '1800', '8743', '$11540');
INSERT INTO `etcitem_doll_type` VALUES ('55040', '光彩照人的魔法娃娃：阿鲁巴', '140,72,24,51,170', '41246', '50', '1800', '8744', '$11541');
INSERT INTO `etcitem_doll_type` VALUES ('55041', '巨人魔法娃娃  ', '1,6,14,107', '41246', '50', '1800', '8539', '$11542');
INSERT INTO `etcitem_doll_type` VALUES ('55042', '努力的巨人魔法娃娃  ', '2,7,15,107', '41246', '50', '1800', '8543', '$11543');
INSERT INTO `etcitem_doll_type` VALUES ('55043', '聪明的 巨人魔法娃娃  ', '3,8,16,107', '41246', '50', '1800', '8544', '$11544');
INSERT INTO `etcitem_doll_type` VALUES ('55044', '聪颖的 巨人魔法娃娃  ', '3,9,17,107', '41246', '50', '1800', '8546', '$11545');
INSERT INTO `etcitem_doll_type` VALUES ('55045', '发光的巨人魔法娃娃  ', '4,11,18,107', '41246', '50', '1800', '8542', '$11546');
INSERT INTO `etcitem_doll_type` VALUES ('55046', '光彩照人的巨人魔法娃娃  ', '4,13,20,107,134,125', '41246', '50', '1800', '8545', '$11547');
INSERT INTO `etcitem_doll_type` VALUES ('55047', '独眼巨人 魔法娃娃  ', '1,6,14,117', '41246', '50', '1800', '8549', '$11548');
INSERT INTO `etcitem_doll_type` VALUES ('55048', '努力的独眼巨人 魔法娃娃  ', '2,7,15,117', '41246', '50', '1800', '8601', '$11549');
INSERT INTO `etcitem_doll_type` VALUES ('55049', '聪明的 独眼巨人 魔法娃娃  ', '3,8,16,117', '41246', '50', '1800', '8603', '$11550');
INSERT INTO `etcitem_doll_type` VALUES ('55050', '聪颖的 独眼巨人 魔法娃娃  ', '3,9,17,117', '41246', '50', '1800', '8697', '$11551');
INSERT INTO `etcitem_doll_type` VALUES ('55051', '发光的独眼巨人 魔法娃娃  ', '4,11,18,117', '41246', '50', '1800', '8600', '$11552');
INSERT INTO `etcitem_doll_type` VALUES ('55052', '光彩照人的独眼巨人 魔法娃娃  ', '4,13,20,117,134,128', '41246', '50', '1800', '8602', '$11553');
INSERT INTO `etcitem_doll_type` VALUES ('55053', '橘炽娃娃：红火', '57', '41246', '50', '1800', '9693', '$12590');
INSERT INTO `etcitem_doll_type` VALUES ('55054', '燃烧的橘炽娃娃：红火', '57,51,5', '41246', '50', '1800', '9694', '$12591');
INSERT INTO `etcitem_doll_type` VALUES ('55055', '猛烈的橘炽娃娃：红火', '58,51,6', '41246', '50', '1800', '9695', '$12592');
INSERT INTO `etcitem_doll_type` VALUES ('55056', '爆发的橘炽娃娃：红火', '58,52,7', '41246', '50', '1800', '9696', '$12593');
INSERT INTO `etcitem_doll_type` VALUES ('55057', '雷厉的橘炽娃娃：红火', '59,53,8', '41246', '50', '1800', '9697', '$12594');
INSERT INTO `etcitem_doll_type` VALUES ('55058', '猖狂的橘炽娃娃：红火', '61,55,10', '41246', '50', '1800', '9698', '$12595');
INSERT INTO `etcitem_doll_type` VALUES ('55059', '橘炽娃娃：黄焰', '74', '41246', '50', '1800', '10266', '$12596');
INSERT INTO `etcitem_doll_type` VALUES ('55060', '燃烧的橘炽娃娃：黄焰', '74,80', '41246', '50', '1800', '9684', '$12597');
INSERT INTO `etcitem_doll_type` VALUES ('55061', '猛烈的橘炽娃娃：黄焰', '74,81', '41246', '50', '1800', '9685', '$12598');
INSERT INTO `etcitem_doll_type` VALUES ('55062', '爆发的橘炽娃娃：黄焰', '75,81', '41246', '50', '1800', '9690', '$12599');
INSERT INTO `etcitem_doll_type` VALUES ('55063', '雷厉的橘炽娃娃：黄焰', '76,82', '41246', '50', '1800', '9691', '$12600');
INSERT INTO `etcitem_doll_type` VALUES ('55064', '猖狂的橘炽娃娃：黄焰', '78,84,6,15', '41246', '50', '1800', '9692', '$12601');
INSERT INTO `etcitem_doll_type` VALUES ('55065', '橘炽娃娃：绿光', '41', '41246', '50', '1800', '9699', '$12584');
INSERT INTO `etcitem_doll_type` VALUES ('55066', '燃烧的橘炽娃娃：绿光', '42,14', '41246', '50', '1800', '9700', '$12585');
INSERT INTO `etcitem_doll_type` VALUES ('55067', '猛烈的橘炽娃娃：绿光', '43,14', '41246', '50', '1800', '9701', '$12586');
INSERT INTO `etcitem_doll_type` VALUES ('55068', '爆发的橘炽娃娃：绿光', '45,15,65', '41246', '50', '1800', '9702', '$12587');
INSERT INTO `etcitem_doll_type` VALUES ('55069', '雷厉的橘炽娃娃：绿光', '46,16,65', '41246', '50', '1800', '9703', '$12588');
INSERT INTO `etcitem_doll_type` VALUES ('55070', '猖狂的橘炽娃娃：绿光', '49,18,66,87', '41246', '50', '1800', '9704', '$12589');
INSERT INTO `etcitem_doll_type` VALUES ('55071', '橘炽娃娃：飞龙', '85,51,74', '41246', '50', '1800', '10256', '$12577');
INSERT INTO `etcitem_doll_type` VALUES ('55072', '燃烧的橘炽娃娃：飞龙', '86,52,75', '41246', '50', '1800', '9679', '燃烧的橘炽娃娃：飞龙');
INSERT INTO `etcitem_doll_type` VALUES ('55073', '猛烈的橘炽娃娃：飞龙', '87,53,76', '41246', '50', '1800', '9680', '猛烈的橘炽娃娃：飞龙');
INSERT INTO `etcitem_doll_type` VALUES ('55074', '爆发的橘炽娃娃：飞龙', '88,54,77', '41246', '50', '1800', '9681', '爆发的橘炽娃娃：飞龙');
INSERT INTO `etcitem_doll_type` VALUES ('55075', '雷厉的橘炽娃娃：飞龙', '89,55,78', '41246', '50', '1800', '9682', '雷厉的橘炽娃娃：飞龙');
INSERT INTO `etcitem_doll_type` VALUES ('55076', '猖狂的橘炽娃娃：飞龙', '90,56,79', '41246', '50', '1800', '9683', '猖狂的橘炽娃娃：飞龙');
INSERT INTO `etcitem_doll_type` VALUES ('55077', '橘炽娃娃：蓝炙', '', '41246', '50', '1800', '9705', '$12578');
INSERT INTO `etcitem_doll_type` VALUES ('55078', '燃烧的橘炽娃娃：蓝炙', '149', '41246', '50', '1800', '9706', '$12579');
INSERT INTO `etcitem_doll_type` VALUES ('55079', '猛烈的橘炽娃娃：蓝炙', '163', '41246', '50', '1800', '9707', '$12580');
INSERT INTO `etcitem_doll_type` VALUES ('55080', '爆发的橘炽娃娃：蓝炙', '164,169', '41246', '50', '1800', '9708', '$12581');
INSERT INTO `etcitem_doll_type` VALUES ('55081', '雷厉的橘炽娃娃：蓝炙', '165,168', '41246', '50', '1800', '9709', '$12582');
INSERT INTO `etcitem_doll_type` VALUES ('55082', '猖狂的橘炽娃娃：蓝炙', '91,167', '41246', '50', '1800', '9710', '$12583');
