/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:22:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for other_gmcommand
-- ----------------------------
CREATE TABLE `other_gmcommand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gmobjid` int(11) NOT NULL,
  `gmname` varchar(45) NOT NULL DEFAULT '0',
  `cmd` varchar(45) NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `town_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
