/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:25:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_item_power_update
-- ----------------------------
CREATE TABLE `server_item_power_update` (
  `itemid` int(10) NOT NULL DEFAULT '0' COMMENT '要升级的物品ITEMID',
  `nedid` int(10) NOT NULL DEFAULT '0' COMMENT '需要的强化卷编号',
  `type_id` int(10) NOT NULL DEFAULT '0' COMMENT '群组ID',
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '群组排序',
  `mode` int(10) NOT NULL DEFAULT '0' COMMENT '0:无 1:强化失败会倒退 2:强化失败会消失',
  `random` int(10) NOT NULL DEFAULT '0' COMMENT '强化机率(1/1000)',
  `note` varchar(255) DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`itemid`,`type_id`,`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_item_power_update` VALUES ('55029', '60219', '16', '0', '0', '1000', '魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55030', '60219', '16', '1', '0', '1000', '努力的魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55031', '60219', '16', '2', '1', '600', '聪明的魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55032', '60219', '16', '3', '1', '500', '聪颖的魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55033', '60219', '16', '4', '1', '250', '发光的魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55034', '0', '16', '5', '4', '100', '光彩照人的魔法娃娃：美人鱼  ');
INSERT INTO `server_item_power_update` VALUES ('55035', '60219', '17', '0', '0', '1000', '魔法娃娃 : 阿鲁巴  ');
INSERT INTO `server_item_power_update` VALUES ('55036', '60219', '17', '1', '0', '1000', '努力的魔法娃娃：阿鲁巴');
INSERT INTO `server_item_power_update` VALUES ('55037', '60219', '17', '2', '1', '600', '聪明的魔法娃娃：阿鲁巴');
INSERT INTO `server_item_power_update` VALUES ('55038', '60219', '17', '3', '1', '500', '聪颖的魔法娃娃：阿鲁巴');
INSERT INTO `server_item_power_update` VALUES ('55039', '60219', '17', '4', '1', '250', '发光的魔法娃娃：阿鲁巴');
INSERT INTO `server_item_power_update` VALUES ('55040', '0', '17', '5', '4', '100', '光彩照人的魔法娃娃：阿鲁巴');
INSERT INTO `server_item_power_update` VALUES ('55041', '60219', '18', '0', '0', '1000', '巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55042', '60219', '18', '1', '0', '1000', '努力的巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55043', '60219', '18', '2', '1', '600', '聪明的 巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55044', '60219', '18', '3', '1', '500', '聪颖的 巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55045', '60219', '18', '4', '1', '250', '发光的巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55046', '0', '18', '5', '4', '100', '光彩照人的巨人魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55047', '60219', '19', '0', '0', '1000', '独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55048', '60219', '19', '1', '0', '1000', '努力的独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55049', '60219', '19', '2', '1', '600', '聪明的 独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55050', '60219', '19', '3', '1', '500', '聪颖的 独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55051', '60219', '19', '4', '1', '250', '发光的独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55052', '0', '19', '5', '4', '100', '光彩照人的独眼巨人 魔法娃娃  ');
INSERT INTO `server_item_power_update` VALUES ('55053', '60219', '20', '0', '0', '1000', '橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55054', '60219', '20', '1', '0', '1000', '燃烧的橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55055', '60219', '20', '2', '1', '600', '猛烈的橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55056', '60219', '20', '3', '1', '500', '爆发的橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55057', '60219', '20', '4', '1', '250', '雷厉的橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55058', '0', '20', '5', '4', '100', '猖狂的橘炽娃娃：红火');
INSERT INTO `server_item_power_update` VALUES ('55059', '60219', '21', '0', '0', '1000', '橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55060', '60219', '21', '1', '0', '1000', '燃烧的橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55061', '60219', '21', '2', '1', '600', '猛烈的橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55062', '60219', '21', '3', '1', '500', '爆发的橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55063', '60219', '21', '4', '1', '250', '雷厉的橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55064', '0', '21', '5', '4', '100', '猖狂的橘炽娃娃：黄焰');
INSERT INTO `server_item_power_update` VALUES ('55065', '60219', '22', '0', '0', '1000', '橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55066', '60219', '22', '1', '0', '1000', '燃烧的橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55067', '60219', '22', '2', '1', '600', '猛烈的橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55068', '60219', '22', '3', '1', '500', '爆发的橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55069', '60219', '22', '4', '1', '250', '雷厉的橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55070', '0', '22', '5', '4', '100', '猖狂的橘炽娃娃：绿光');
INSERT INTO `server_item_power_update` VALUES ('55071', '60219', '23', '0', '0', '1000', '橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55072', '60219', '23', '1', '0', '1000', '燃烧的橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55073', '60219', '23', '2', '1', '600', '猛烈的橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55074', '60219', '23', '3', '1', '500', '爆发的橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55075', '60219', '23', '4', '1', '250', '雷厉的橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55076', '0', '23', '5', '4', '100', '猖狂的橘炽娃娃：飞龙');
INSERT INTO `server_item_power_update` VALUES ('55077', '60219', '24', '0', '0', '1000', '橘炽娃娃：蓝炙');
INSERT INTO `server_item_power_update` VALUES ('55078', '60219', '24', '1', '0', '1000', '燃烧的橘炽娃娃：蓝炙');
INSERT INTO `server_item_power_update` VALUES ('55079', '60219', '24', '2', '1', '600', '猛烈的橘炽娃娃：蓝炙');
INSERT INTO `server_item_power_update` VALUES ('55080', '60219', '24', '3', '1', '500', '爆发的橘炽娃娃：蓝炙');
INSERT INTO `server_item_power_update` VALUES ('55081', '60219', '24', '4', '1', '250', '雷厉的橘炽娃娃：蓝炙');
INSERT INTO `server_item_power_update` VALUES ('55082', '0', '24', '5', '4', '100', '猖狂的橘炽娃娃：蓝炙');
