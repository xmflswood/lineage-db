/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:18:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_warehouse
-- ----------------------------
CREATE TABLE `character_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(13) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `count` bigint(11) DEFAULT NULL,
  `is_equipped` int(11) DEFAULT NULL,
  `enchantlvl` int(11) DEFAULT NULL,
  `is_id` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `charge_count` int(11) DEFAULT NULL,
  `remaining_time` int(11) DEFAULT NULL,
  `last_used` datetime DEFAULT NULL,
  `bless` int(11) DEFAULT NULL,
  `attr_enchant_kind` int(11) DEFAULT NULL,
  `attr_enchant_level` int(11) DEFAULT NULL,
  `gamno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `key_id` (`account_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1497857891 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
