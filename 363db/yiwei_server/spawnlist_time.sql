/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:27:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for spawnlist_time
-- ----------------------------
CREATE TABLE `spawnlist_time` (
  `npc_id` int(11) NOT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `delete_at_endtime` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `spawnlist_time` VALUES ('45912', '18:00:00', '04:00:00', '1');
INSERT INTO `spawnlist_time` VALUES ('45913', '18:00:00', '04:00:00', '1');
INSERT INTO `spawnlist_time` VALUES ('45914', '18:00:00', '04:00:00', '1');
INSERT INTO `spawnlist_time` VALUES ('45915', '18:00:00', '04:00:00', '1');
INSERT INTO `spawnlist_time` VALUES ('45916', '18:00:00', '04:00:00', '1');
