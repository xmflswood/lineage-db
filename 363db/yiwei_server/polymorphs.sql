/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:23:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for polymorphs
-- ----------------------------
CREATE TABLE `polymorphs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `polyid` int(11) DEFAULT NULL,
  `minlevel` int(11) DEFAULT NULL,
  `weaponequip` int(11) DEFAULT NULL,
  `armorequip` int(11) DEFAULT NULL,
  `isSkillUse` int(11) DEFAULT NULL,
  `cause` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9992 DEFAULT CHARSET=utf8 COMMENT='MyISAM free: 10240 kB';

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `polymorphs` VALUES ('945', 'milkcow', '945', '1', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('947', 'deer', '947', '1', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('979', 'wild boar', '979', '1', '0', '0', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3906', 're orc', '3906', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3860', 'bow orc', '3860', '1', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3861', 'goblin', '3861', '1', '751', '913', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3862', 'kobolds', '3862', '1', '751', '913', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3863', 're dwarf', '3863', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3864', 'orc fighter', '3864', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3865', 're werewolf', '3865', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3904', 'stone golem', '3904', '1', '751', '145', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('29', 'floating eye', '29', '1', '0', '0', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('1037', 'giant ant', '1037', '1', '0', '136', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('1039', 'giant ant soldier', '1039', '1', '0', '136', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3866', 'gandi orc', '3866', '10', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3867', 'rova orc', '3867', '10', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3868', 'atuba orc', '3868', '10', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3869', 'dudamara orc', '3869', '10', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3870', 'neruga orc', '3870', '10', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2374', 're skeleton', '2374', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2377', 'skeleton pike polymorph', '2377', '10', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3871', 're skeleton archer', '3871', '1', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2376', 'skeleton axeman polymorph', '2376', '10', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('95', 'shelob', '95', '10', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3872', 'zombie', '3872', '10', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3873', 're ghoul', '3873', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2378', 'spartoi polymorph', '2378', '10', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3874', 're lycanthrope', '3874', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('146', 're ungoliant', '146', '1', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3875', 'ghast', '3875', '10', '751', '945', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3876', 'bugbear', '3876', '10', '751', '945', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('951', 'cerberus', '951', '15', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('1047', 'scorpion', '1047', '15', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3877', 'ogre', '3877', '15', '1791', '913', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3878', 'troll', '3878', '15', '751', '545', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3879', 'elder', '3879', '15', '751', '0', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3880', 'king bugbear', '3880', '15', '751', '945', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2323', 'orc scout polymorph', '2323', '15', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2386', 'minotaur i morph', '2386', '15', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2387', 'giant a morph', '2387', '15', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2385', 'yeti morph', '2385', '15', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3630', 'cyclops', '3630', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3631', 'griffon', '3631', '40', '0', '32', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3632', 're cockatrice', '3632', '1', '0', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3633', 'ettin', '3633', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3881', 'dark elder', '3881', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3884', 'necromancer3', '3884', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3885', 'necromancer4', '3885', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3882', 'necromancer1', '3882', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3883', 'necromancer2', '3883', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3634', 'assassin', '3634', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3887', 'darkelf carrier', '3887', '45', '1791', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3888', 'baphomet', '3888', '50', '751', '954', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3905', 'beleth', '3905', '50', '751', '954', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3784', 'death knight', '3784', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2284', 'dark elf polymorph', '2284', '52', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3945', 're gelatincube', '3945', '1', '751', '0', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3950', 're middle oum', '3950', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2384', 'succubus morph', '2384', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4918', 'bandit bow morph', '4918', '40', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4925', 'elmor soldier morph', '4925', '40', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3886', 'lesser demon', '3886', '45', '751', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4917', 'darkelf ranger morph', '4917', '45', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4920', 'elmor general morph', '4920', '45', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3102', 'great minotaur morph', '3102', '50', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4919', 'darkelf guard morph', '4919', '50', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4922', 'guardian armor morph', '4922', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4924', 'darkelf spear morph', '4924', '50', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4926', 'darkelf wizard morph', '4926', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3103', 'barlog morph', '3103', '52', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4921', 'darkelf general morph', '4921', '52', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4932', 'assassin master morph', '4932', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3890', 'ancient black knight morph', '3890', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3891', 'ancient black mage morph', '3891', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3892', 'ancient black scouter morph', '3892', '55', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5727', 'ancient black assassin morph', '5727', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3893', 'ancient silver knight morph', '3893', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3894', 'ancient silver mage morph', '3894', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3895', 'ancient silver scouter morph', '3895', '60', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5730', 'ancient silver assassin morph', '5730', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3896', 'ancient gold knight morph', '3896', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3897', 'ancient gold mage morph', '3897', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3898', 'ancient gold scouter morph', '3898', '65', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5733', 'ancient gold assassin morph', '5733', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3899', 'ancient platinum knight morph', '3899', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3900', 'ancient platinum mage morph', '3900', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3901', 'ancient platinum scouter morph', '3901', '70', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5736', 'ancient platinum assassin morph', '5736', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2501', 'jack o lantern', '2501', '1', '751', '417', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('2388', 'death', '2388', '1', '0', '32', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3952', 'vampire', '3952', '1', '0', '32', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4767', 'rabbit', '4767', '1', '0', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4769', 'carrot rabbit', '4769', '1', '0', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4928', 'high collie', '4928', '1', '0', '2', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4929', 'high raccoon', '4929', '1', '0', '2', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('938', 'beagle', '938', '1', '0', '2', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2064', 'snowman', '2064', '1', '0', '1027', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4227', 'hakama', '4227', '1', '0', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3750', 'haregi', '3750', '1', '0', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3664', 'baranka', '3664', '1', '704', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5719', 'manekineko', '5719', '1', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6010', 'red orc', '6010', '1', '0', '1', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('6089', 'drake morph', '6089', '1', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4000', 'knight vald morph', '4000', '1', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4001', 'iris morph', '4001', '1', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4002', 'paperman morph', '4002', '1', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4004', 'succubus queen morph', '4004', '1', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5184', 'red uniform', '5184', '1', '0', '8', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5186', 'blue uniform', '5186', '1', '0', '8', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('4186', 'robber bone', '4186', '1', '751', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4188', 'robber bone head', '4188', '1', '751', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('4190', 'robber bone soldier', '4190', '1', '256', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('6002', 'spirit of earth boss', '6002', '1', '8', '0', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6080', 'princess horse', '6080', '1', '16', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6094', 'prince horse', '6094', '1', '16', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6137', 'death 52', '6137', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6140', 'darkelf 52', '6140', '52', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6136', 'barlog 52', '6136', '52', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6139', 'general 52', '6139', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6138', 'assassin 52', '6138', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6267', 'neo black knight', '6267', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6268', 'neo black mage', '6268', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6269', 'neo black scouter', '6269', '55', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6279', 'neo black assassin', '6279', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6142', 'death 55', '6142', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6145', 'darkelf 55', '6145', '55', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6141', 'barlog 55', '6141', '55', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6144', 'general 55', '6144', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6143', 'assassin 55', '6143', '55', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6270', 'neo silver knight', '6270', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6271', 'neo silver mage', '6271', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6272', 'neo silver scouter', '6272', '60', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6280', 'neo silver assassin', '6280', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6147', 'death 60', '6147', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6150', 'darkelf 60', '6150', '60', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6146', 'barlog 60', '6146', '60', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6149', 'general 60', '6149', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6148', 'assassin 60', '6148', '60', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6273', 'neo gold knight', '6273', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6274', 'neo gold mage', '6274', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6275', 'neo gold scouter', '6275', '65', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6281', 'neo gold assassin', '6281', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6152', 'death 65', '6152', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6155', 'darkelf 65', '6155', '65', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6151', 'barlog 65', '6151', '65', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6154', 'general 65', '6154', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6153', 'assassin 65', '6153', '65', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6276', 'neo platinum knight', '6276', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6277', 'neo platinum mage', '6277', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6278', 'neo platinum scouter', '6278', '70', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6282', 'neo platinum assassin', '6282', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6157', 'death 70', '6157', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6160', 'darkelf 70', '6160', '70', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6156', 'barlog 70', '6156', '70', '1791', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6159', 'general 70', '6159', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6158', 'assassin 70', '6158', '70', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6284', 'Haunted House jack o lantern', '6284', '1', '0', '0', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('3902', 'Kelenis Morph', '3902', '1', '43', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('3903', 'Ken Lauhel Morph', '3903', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5645', 'Halloween Pumpkin', '5645', '1', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('5976', 'high bear', '5976', '1', '751', '2', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('6086', 'Rabor Born Head', '6086', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6087', 'Rabor Born archer', '6087', '1', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6088', 'Rabor Born knife', '6088', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6400', 'Halloween jack o lantern', '6400', '1', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6034', 'priest of corruption', '6034', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6035', 'quest lesser demon', '6035', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6894', 'awake', '6894', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9987', 'spearm 52', '7332', '52', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9988', 'spearm 55', '7338', '55', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9989', 'spearm 60', '7339', '60', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9990', 'spearm 65', '7340', '65', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9991', 'spearm 70', '7341', '70', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6882', 'king 70', '6882', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6883', 'queen 70', '6883', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6884', 'kinght 70', '6884', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6885', 'wkinght 70', '6885', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6886', 'elf 70', '6886', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6887', 'welf 70', '6887', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6888', 'mage 70', '6888', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6889', 'wmage 70', '6889', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6890', 'delf 70', '6890', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6891', 'wdelf 70', '6891', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('7163', 'dkinght 70', '7163', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('7164', 'wdkinght 70', '7164', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('7165', 'lis 70', '7165', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('7166', 'wlis 70', '7166', '70', '4095', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('6503', 'cat', '6503', '15', '4095', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('7061', 'xmasman', '7061', '15', '4095', '4095', '0', '7', null);
INSERT INTO `polymorphs` VALUES ('8817', 'young ken lauel', '8817', '75', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8774', 'young kelenis', '8774', '75', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8900', 'young helvine', '8900', '75', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8851', 'young dantes', '8851', '75', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9205', 'death 75', '9205', '75', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9011', 'spearm 75', '9011', '75', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9225', 'darkelf 75', '9225', '75', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8812', 'young gunter', '8812', '80', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9003', 'young joewoo', '9003', '80', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8913', 'young gilian', '8913', '80', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8978', 'young bluedica', '8978', '80', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9206', 'death 80', '9206', '80', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9012', 'spearm 80', '9012', '80', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('9226', 'darkelf 80', '9226', '80', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8860', 're orc scout', '8860', '1', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8859', 're bugbear', '8859', '1', '751', '945', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('2437', 're giant ant', '1037', '1', '0', '136', '0', '7', 'SRC:2437=>thatmystyle (UID: 3602)');
INSERT INTO `polymorphs` VALUES ('2438', 're giant ant soldier', '1039', '1', '0', '136', '0', '7', 'SRC:2438=>thatmystyle (UID: 3602)');
INSERT INTO `polymorphs` VALUES ('8858', 're ghast', '8858', '1', '751', '945', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8865', 're lizardman', '8865', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8866', 're kiwi parrot', '8866', '1', '0', '954', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8868', 're wild fang', '8868', '1', '0', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8863', 're raccoon', '8863', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8864', 're owlbear', '8864', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8867', 're ratman', '8867', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8862', 're dragon fly', '8862', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8861', 're succubus', '8861', '1', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8781', 're guard sword', '8781', '30', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8782', 're darkelf carrier', '8782', '30', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8783', 're darkelf assassin', '3634', '30', '751', '4095', '1', '7', 'SRC:8783=>thatmystyle (UID: 3602)');
INSERT INTO `polymorphs` VALUES ('8784', 're elder', '8784', '30', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8785', 're orc axe', '8785', '30', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8786', 're bandit bow', '8786', '30', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8787', 're guard chief', '8787', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8788', 're guard spear', '8788', '40', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8789', 're hose', '8789', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8790', 're dark elder', '8790', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8791', 're bandit axe', '8791', '40', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8792', 're darkelf ranger', '8792', '40', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8793', 're cargo', '8793', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8794', 're darkelf spear', '8794', '45', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8795', 're blaze', '8795', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8796', 're black wizard', '8796', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8797', 're dwarf boss', '8797', '45', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8798', 're darkelf thief', '8798', '45', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8799', 're black knight chief', '8799', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8800', 're black knight', '8800', '50', '1080', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8801', 're assassin master', '8801', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8802', 're baphomet', '8802', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8803', 're minotaur', '8803', '50', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8804', 're darkelf guard', '8804', '50', '256', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8805', 're dreik', '8805', '52', '192', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8806', 're xinclair', '8806', '52', '751', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8807', 're great minotaur', '8807', '52', '8', '4095', '1', '7', null);
INSERT INTO `polymorphs` VALUES ('8808', 're darkelf bow', '8808', '52', '256', '4095', '1', '7', null);
