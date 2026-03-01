
-- ----------------------------
-- Table structure for character_teleport_config
-- ----------------------------
CREATE TABLE `character_teleport_config` (
  `object_id` int(10) NOT NULL DEFAULT '0',
  `max_size` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob,
  PRIMARY KEY (`object_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
