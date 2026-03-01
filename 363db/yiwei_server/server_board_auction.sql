/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:24:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for server_board_auction
-- ----------------------------
CREATE TABLE `server_board_auction` (
  `house_id` int(10) unsigned NOT NULL DEFAULT '0',
  `house_name` varchar(45) NOT NULL DEFAULT '',
  `house_area` int(10) unsigned NOT NULL DEFAULT '0',
  `deadline` datetime DEFAULT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT '0',
  `location` varchar(45) NOT NULL DEFAULT '',
  `old_owner` varchar(45) NOT NULL DEFAULT '',
  `old_owner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bidder` varchar(45) NOT NULL DEFAULT '',
  `bidder_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`house_id`),
  KEY `house_id` (`house_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `server_board_auction` VALUES ('262145', '$1242 1$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  1', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262146', '$1242 2$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  2', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262147', '$1242 3$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  3', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262148', '$1242 4$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  4', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262149', '$1242 5$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  5', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262150', '$1242 6$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  6', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262151', '$1242 7$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  7', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262152', '$1242 8$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  8', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262153', '$1242 9$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  9', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262154', '$1242 10$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  10', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262155', '$1242 11$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  11', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262156', '$1242 12$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  12', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262157', '$1242 13$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  13', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262158', '$1242 14$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  14', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262159', '$1242 15$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  15', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262160', '$1242 16$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  16', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262161', '$1242 17$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  17', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262162', '$1242 18$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  18', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262163', '$1242 19$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  19', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262164', '$1242 20$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  20', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262165', '$1242 21$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  21', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262166', '$1242 22$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  22', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262167', '$1242 23$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  23', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262168', '$1242 24$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  24', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262169', '$1242 25$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  25', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262170', '$1242 26$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  26', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262171', '$1242 27$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  27', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262172', '$1242 28$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  28', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262173', '$1242 29$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  29', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262175', '$1242 31$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  31', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262176', '$1242 32$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  32', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262177', '$1242 33$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  33', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262178', '$1242 34$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  34', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262179', '$1242 35$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  35', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262180', '$1242 36$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  36', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262181', '$1242 37$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  37', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262182', '$1242 38$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  38', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262184', '$1242 40$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  40', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262185', '$1242 41$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  41', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262186', '$1242 42$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  42', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262187', '$1242 43$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  43', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262188', '$1242 44$1195', '120', '2012-06-29 13:00:00', '100000', '$1242  44', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262189', '$1242 45$1195', '78', '2012-06-29 13:00:00', '100000', '$1242  45', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327681', '$1513 1$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  1', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327682', '$1513 2$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  2', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327683', '$1513 3$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  3', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327684', '$1513 4$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  4', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327685', '$1513 5$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  5', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327686', '$1513 6$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  6', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327687', '$1513 7$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  7', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327688', '$1513 8$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  8', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327689', '$1513 9$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  9', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327690', '$1513 10$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  10', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('327691', '$1513 11$1195', '0', '2012-06-29 13:00:00', '100000', '$1513  11', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524289', '$381 1$1195', '48', '2012-06-29 13:00:00', '100000', '$381  1', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524290', '$381 2$1195', '71', '2012-06-29 13:00:00', '100000', '$381  2', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524291', '$381 3$1195', '48', '2012-06-29 13:00:00', '100000', '$381  3', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524292', '$381 4$1195', '48', '2012-06-29 13:00:00', '100000', '$381  4', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524293', '$381 5$1195', '82', '2012-06-29 13:00:00', '100000', '$381  5', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('524294', '$381 6$1195', '40', '2012-06-29 13:00:00', '100000', '$381  6', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262174', '$1242 29$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  30', '', '0', '', '0');
INSERT INTO `server_board_auction` VALUES ('262183', '$1242 39$1195', '45', '2012-06-29 13:00:00', '100000', '$1242  39', '', '0', '', '0');
