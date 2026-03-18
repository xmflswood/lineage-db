/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:26:04
*/

## shop_cn 表完整 SQL 配置

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_cn
-- ----------------------------
DROP TABLE IF EXISTS `shop_cn`;
CREATE TABLE `shop_cn` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `npc_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `selling_price` int(10) NOT NULL DEFAULT '1',
  `pack_count` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91041 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records - 奇怪的商人(86121) 天宝商店物品配置
-- ----------------------------

-- 1. 四种属性强化卷（售价 1 天宝）
INSERT INTO `shop_cn` VALUES ('1', '86121', '41429', '风之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('2', '86121', '41430', '地之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('3', '86121', '41431', '水之武器强化卷轴', '1', '1');
INSERT INTO `shop_cn` VALUES ('4', '86121', '41432', '火之武器强化卷轴', '1', '1');

-- 2. 魔法娃娃的袋子（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('5', '86121', '41247', '魔法娃娃的袋子', '30', '1');

-- 3. 洗血药水（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('6', '86121', '44019', '洗血药水', '30', '1');

-- 4. 回忆蜡烛（售价 30 天宝）
INSERT INTO `shop_cn` VALUES ('7', '86121', '49142', '回忆蜡烛', '30', '1');


INSERT INTO `shop_cn` VALUES ('8', '86121', '55016', '王族公主', '1', '1');
INSERT INTO `shop_cn` VALUES ('9', '86121', '55015', '王族王子', '1', '1');
INSERT INTO `shop_cn` VALUES ('10', '86121', '55014', '变形怪', '1', '1');
INSERT INTO `shop_cn` VALUES ('11', '86121', '55013', '亚力安', '1', '1');
INSERT INTO `shop_cn` VALUES ('12', '86121', '55025', '龙骑士男龙骑士', '1', '1');
INSERT INTO `shop_cn` VALUES ('13', '86121', '55024', '黑暗妖精女黑暗妖精', '1', '1');
INSERT INTO `shop_cn` VALUES ('14', '86121', '55012', '石头高仑', '1', '1');
INSERT INTO `shop_cn` VALUES ('15', '86121', '55011', '奎斯坦修', '1', '1');
INSERT INTO `shop_cn` VALUES ('16', '86121', '55010', '长者', '1', '1');
INSERT INTO `shop_cn` VALUES ('17', '86121', '55009', '史巴托', '1', '1');
INSERT INTO `shop_cn` VALUES ('18', '86121', '55008', '经验公主', '1', '1');
INSERT INTO `shop_cn` VALUES ('19', '86121', '55007', '蛇女', '1', '1');
INSERT INTO `shop_cn` VALUES ('20', '86121', '55006', '雪怪', '1', '1');
INSERT INTO `shop_cn` VALUES ('21', '86121', '55005', '希尔戴丝', '1', '1');
INSERT INTO `shop_cn` VALUES ('22', '86121', '55004', '巫妖', '1', '1');
INSERT INTO `shop_cn` VALUES ('23', '86121', '55003', '魔法娃娃稻草人 ', '1', '1');
INSERT INTO `shop_cn` VALUES ('24', '86121', '55002', '野狼宝宝', '1', '1');
INSERT INTO `shop_cn` VALUES ('25', '86121', '55001', '小思克巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('26', '86121', '55000', '肥肥', '1', '1');
INSERT INTO `shop_cn` VALUES ('27', '86121', '55023', '黑暗妖精男黑暗妖精', '1', '1');
INSERT INTO `shop_cn` VALUES ('28', '86121', '55022', '法师女法师', '1', '1');
INSERT INTO `shop_cn` VALUES ('29', '86121', '55021', '法师男法师', '1', '1');
INSERT INTO `shop_cn` VALUES ('30', '86121', '55020', '妖精女妖精', '1', '1');
INSERT INTO `shop_cn` VALUES ('31', '86121', '55019', '妖精男妖精', '1', '1');
INSERT INTO `shop_cn` VALUES ('32', '86121', '55018', '骑士女骑士', '1', '1');
INSERT INTO `shop_cn` VALUES ('33', '86121', '55017', '骑士男骑士', '1', '1');
INSERT INTO `shop_cn` VALUES ('34', '86121', '55026', '龙骑士女龙骑士', '1', '1');
INSERT INTO `shop_cn` VALUES ('35', '86121', '55027', '幻术士男幻术师', '1', '1');
INSERT INTO `shop_cn` VALUES ('36', '86121', '55028', '幻术士女幻术师', '1', '1');
INSERT INTO `shop_cn` VALUES ('37', '86121', '55029', '美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('38', '86121', '55030', '努力的美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('39', '86121', '55031', '聪明的美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('40', '86121', '55032', '聪颖的美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('41', '86121', '55033', '发光的美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('42', '86121', '55034', '光彩照人的美人鱼', '1', '1');
INSERT INTO `shop_cn` VALUES ('43', '86121', '55035', '魔法娃娃阿鲁巴  ', '1', '1');
INSERT INTO `shop_cn` VALUES ('44', '86121', '55036', '努力的阿鲁巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('45', '86121', '55037', '聪明的阿鲁巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('46', '86121', '55038', '聪颖的阿鲁巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('47', '86121', '55039', '发光的阿鲁巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('48', '86121', '55040', '光彩照人的阿鲁巴', '1', '1');
INSERT INTO `shop_cn` VALUES ('49', '86121', '55041', '巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('50', '86121', '55042', '努力的巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('51', '86121', '55043', '聪明的巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('52', '86121', '55044', '聪颖的巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('53', '86121', '55045', '发光的巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('54', '86121', '55046', '光彩照人的巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('55', '86121', '55047', '独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('56', '86121', '55048', '努力的独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('57', '86121', '55049', '聪明的独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('58', '86121', '55050', '聪颖的独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('59', '86121', '55051', '发光的独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('60', '86121', '55052', '光彩照人的独眼巨人魔法娃娃', '1', '1');
INSERT INTO `shop_cn` VALUES ('61', '86121', '55053', '橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('62', '86121', '55054', '燃烧的橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('63', '86121', '55055', '猛烈的橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('64', '86121', '55056', '爆发的橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('65', '86121', '55057', '雷厉的橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('66', '86121', '55058', '猖狂的橘炽娃娃红火', '1', '1');
INSERT INTO `shop_cn` VALUES ('67', '86121', '55059', '橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('68', '86121', '55060', '燃烧的橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('69', '86121', '55061', '猛烈的橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('70', '86121', '55062', '爆发的橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('71', '86121', '55063', '雷厉的橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('72', '86121', '55064', '猖狂的橘炽娃娃黄焰', '1', '1');
INSERT INTO `shop_cn` VALUES ('73', '86121', '55065', '橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('74', '86121', '55066', '燃烧的橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('75', '86121', '55067', '猛烈的橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('76', '86121', '55068', '爆发的橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('77', '86121', '55069', '雷厉的橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('78', '86121', '55070', '猖狂的橘炽娃娃绿光', '1', '1');
INSERT INTO `shop_cn` VALUES ('79', '86121', '55071', '橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('80', '86121', '55072', '燃烧的橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('81', '86121', '55073', '猛烈的橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('82', '86121', '55074', '爆发的橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('83', '86121', '55075', '雷厉的橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('84', '86121', '55076', '猖狂的橘炽娃娃飞龙', '1', '1');
INSERT INTO `shop_cn` VALUES ('85', '86121', '55077', '橘炽娃娃蓝炙', '1', '1');
INSERT INTO `shop_cn` VALUES ('86', '86121', '55078', '燃烧的橘炽娃娃蓝炙', '1', '1');
INSERT INTO `shop_cn` VALUES ('87', '86121', '55079', '猛烈的橘炽娃娃蓝炙', '1', '1');
INSERT INTO `shop_cn` VALUES ('88', '86121', '55080', '爆发的橘炽娃娃蓝炙', '1', '1');
INSERT INTO `shop_cn` VALUES ('89', '86121', '55081', '雷厉的橘炽娃娃蓝炙', '1', '1');
INSERT INTO `shop_cn` VALUES ('90', '86121', '55082', '猖狂的橘炽娃娃蓝炙', '1', '1');
