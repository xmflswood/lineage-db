/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:18:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for character_shop
-- ----------------------------
CREATE TABLE `character_shop` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_obj_id` int(11) NOT NULL DEFAULT '0',
  `user_obj_id` int(10) unsigned NOT NULL DEFAULT '0',
  `adena` int(10) unsigned NOT NULL DEFAULT '0',
  `overtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '結束模式 0:出售中 1:已售出元寶未領回 2:已售出元寶領回 3:未售出道具未領回 4:未售出道具以領回',
  `none` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_obj_id` (`item_obj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17300 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB; MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
