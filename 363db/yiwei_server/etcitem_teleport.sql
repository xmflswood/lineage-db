/*
MySQL Data Transfer
Source Host: localhost
Source Database: yiwei_server
Target Host: localhost
Target Database: yiwei_server
Date: 2013-4-23 22:20:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for etcitem_teleport
-- ----------------------------
CREATE TABLE `etcitem_teleport` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `locx` int(10) unsigned NOT NULL DEFAULT '0',
  `locy` int(10) unsigned NOT NULL DEFAULT '0',
  `mapid` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5000561 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `etcitem_teleport` VALUES ('40121', '指定传送(矿物洞穴)', '32733', '32985', '330', '0');
INSERT INTO `etcitem_teleport` VALUES ('40801', '指定传送(黄昏山脉)', '34270', '33094', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40802', '指定传送(亚丁城庭园)', '34090', '33294', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40803', '指定传送(镜子森林)', '33709', '33307', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40804', '指定传送(巴拉卡斯栖息地)', '32723', '32796', '67', '0');
INSERT INTO `etcitem_teleport` VALUES ('40805', '指定传送(法利昂栖息地)', '32769', '32833', '65', '0');
INSERT INTO `etcitem_teleport` VALUES ('40806', '指定传送(林德拜尔栖息地)', '34035', '33011', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40807', '指定传送(海音洞穴3F)', '32727', '32808', '61', '0');
INSERT INTO `etcitem_teleport` VALUES ('40808', '指定传送(海音洞穴4F)', '32804', '32869', '63', '0');
INSERT INTO `etcitem_teleport` VALUES ('40809', '指定传送(火窟)', '33660', '32465', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40810', '指定传送(龙之谷入口)', '33432', '32522', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40811', '指定传送(沙漠)', '32861', '33255', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40812', '指定传送(欧瑞枪兵之地)', '34039', '32476', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40813', '指定传送(远古战场)', '32736', '32708', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40814', '指定传送(食尸地)', '32842', '32945', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40815', '指定传送(风木地监1F)', '32810', '32723', '23', '0');
INSERT INTO `etcitem_teleport` VALUES ('40816', '指定传送(风木地监2F)', '32809', '32812', '24', '0');
INSERT INTO `etcitem_teleport` VALUES ('40817', '指定传送(巨蚁洞穴)', '32738', '32799', '49', '0');
INSERT INTO `etcitem_teleport` VALUES ('40818', '指定传送(巨蚁洞穴)', '32740', '32802', '50', '0');
INSERT INTO `etcitem_teleport` VALUES ('40819', '指定传送(巨蚁女皇栖息地)', '32742', '32856', '543', '0');
INSERT INTO `etcitem_teleport` VALUES ('40820', '指定传送(象牙塔5F)', '32772', '32805', '79', '0');
INSERT INTO `etcitem_teleport` VALUES ('40821', '指定传送(象牙塔6F)', '32748', '32802', '80', '0');
INSERT INTO `etcitem_teleport` VALUES ('40822', '指定传送(象牙塔7F)', '32766', '32849', '81', '0');
INSERT INTO `etcitem_teleport` VALUES ('40823', '指定传送(象牙塔8F)', '32742', '32798', '82', '0');
INSERT INTO `etcitem_teleport` VALUES ('40824', '指定传送(骑士洞穴2F)', '32802', '32815', '26', '0');
INSERT INTO `etcitem_teleport` VALUES ('40825', '指定传送(骑士洞穴3F)', '32807', '32812', '27', '0');
INSERT INTO `etcitem_teleport` VALUES ('40826', '指定传送(骑士洞穴4F)', '32799', '32798', '28', '0');
INSERT INTO `etcitem_teleport` VALUES ('40827', '指定传送(奇岩地监2F)', '32809', '32793', '54', '0');
INSERT INTO `etcitem_teleport` VALUES ('40828', '指定传送(奇岩地监3F)', '32734', '32728', '55', '0');
INSERT INTO `etcitem_teleport` VALUES ('40829', '指定传送(奇岩地监4F)', '32770', '32730', '56', '0');
INSERT INTO `etcitem_teleport` VALUES ('40830', '指定传送(古鲁丁地监3F)', '32798', '32754', '9', '0');
INSERT INTO `etcitem_teleport` VALUES ('40831', '指定传送(古鲁丁地监4F)', '32764', '32773', '10', '0');
INSERT INTO `etcitem_teleport` VALUES ('40832', '指定传送(古鲁丁地监5F)', '32729', '32724', '11', '0');
INSERT INTO `etcitem_teleport` VALUES ('40833', '指定传送(古鲁丁地监6F)', '32805', '32725', '12', '0');
INSERT INTO `etcitem_teleport` VALUES ('40834', '指定传送(古鲁丁地监7F)', '32730', '32726', '13', '0');
INSERT INTO `etcitem_teleport` VALUES ('40835', '指定传送(龙之谷地监1F)', '32740', '32777', '30', '0');
INSERT INTO `etcitem_teleport` VALUES ('40836', '指定传送(龙之谷地监2F)', '32760', '32781', '31', '0');
INSERT INTO `etcitem_teleport` VALUES ('40837', '指定传送(龙之谷地监3F)', '32709', '32818', '32', '0');
INSERT INTO `etcitem_teleport` VALUES ('40838', '指定传送(龙之谷地监4F)', '32669', '32869', '33', '0');
INSERT INTO `etcitem_teleport` VALUES ('40839', '指定传送(龙之谷地监5F)', '32746', '32802', '35', '0');
INSERT INTO `etcitem_teleport` VALUES ('40840', '指定传送(龙之谷地监6F)', '32663', '32846', '36', '0');
INSERT INTO `etcitem_teleport` VALUES ('40841', '指定传送(安塔瑞斯栖息地)', '32692', '32827', '37', '0');
INSERT INTO `etcitem_teleport` VALUES ('40842', '指定传送(风木大门前方)', '32585', '33409', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40843', '指定传送(风木沙漠)', '32763', '33349', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('40844', '指定传送(布鲁迪卡洞穴)', '32739', '32801', '305', '0');
INSERT INTO `etcitem_teleport` VALUES ('40846', '指定传送(拉斯塔巴德地下洞穴1F)', '32761', '32822', '307', '0');
INSERT INTO `etcitem_teleport` VALUES ('40847', '指定传送(拉斯塔巴德地下洞穴2F)', '32750', '32824', '308', '0');
INSERT INTO `etcitem_teleport` VALUES ('40848', '指定传送(拉斯塔巴德地下洞穴3F)', '32757', '32836', '309', '0');
INSERT INTO `etcitem_teleport` VALUES ('40849', '指定传送(再生的圣所1F)', '32730', '32860', '2000', '0');
INSERT INTO `etcitem_teleport` VALUES ('40850', '指定传送(再生的圣所2F)', '32731', '32800', '2001', '0');
INSERT INTO `etcitem_teleport` VALUES ('40851', '指定传送(再生的圣所4F)', '32736', '32811', '2003', '0');
INSERT INTO `etcitem_teleport` VALUES ('40852', '指定传送(欧姆地监)', '32737', '32900', '310', '0');
INSERT INTO `etcitem_teleport` VALUES ('40853', '大洞穴移动卷轴', '32572', '32663', '400', '0');
INSERT INTO `etcitem_teleport` VALUES ('40854', '指定传送(魔族神殿)', '32929', '32995', '410', '0');
INSERT INTO `etcitem_teleport` VALUES ('40855', '指定传送(精灵墓穴)', '32922', '32812', '430', '0');
INSERT INTO `etcitem_teleport` VALUES ('40856', '指定传送(海贼岛)', '32422', '33074', '440', '0');
INSERT INTO `etcitem_teleport` VALUES ('40857', '指定传送(拉斯塔巴德正门)', '32658', '32853', '450', '0');
INSERT INTO `etcitem_teleport` VALUES ('41425', '沉默洞穴指定传送卷轴', '32851', '32904', '304', '0');
INSERT INTO `etcitem_teleport` VALUES ('42001', '指定传送(吉尔塔斯)', '32845', '32863', '535', '0');
INSERT INTO `etcitem_teleport` VALUES ('42002', '指定传送(水晶洞穴1F)', '32743', '32833', '72', '0');
INSERT INTO `etcitem_teleport` VALUES ('42003', '指定传送(水晶洞穴2F)', '32782', '32736', '73', '0');
INSERT INTO `etcitem_teleport` VALUES ('42004', '指定传送(水晶洞穴3F)', '32728', '32815', '74', '0');
INSERT INTO `etcitem_teleport` VALUES ('42005', '指定传送(象牙塔1F)', '32771', '32822', '75', '0');
INSERT INTO `etcitem_teleport` VALUES ('42006', '指定传送(肯特地监1F)', '32720', '33088', '240', '0');
INSERT INTO `etcitem_teleport` VALUES ('42007', '指定传送(遗忘之岛)', '32828', '32848', '70', '0');
INSERT INTO `etcitem_teleport` VALUES ('42008', '指定传送(肯特地监2F)', '32759', '32884', '241', '0');
INSERT INTO `etcitem_teleport` VALUES ('42009', '指定传送(肯特地监3F)', '32808', '32918', '242', '0');
INSERT INTO `etcitem_teleport` VALUES ('42010', '指定传送(肯特地监4F)', '32742', '32857', '243', '0');
INSERT INTO `etcitem_teleport` VALUES ('42011', '指定传送(集会场1F)', '32726', '32847', '451', '0');
INSERT INTO `etcitem_teleport` VALUES ('42012', '指定传送(突击队训练场1F)', '32726', '32824', '452', '0');
INSERT INTO `etcitem_teleport` VALUES ('42013', '指定传送(魔兽军王办公室1F)', '32725', '32851', '453', '0');
INSERT INTO `etcitem_teleport` VALUES ('42014', '指定传送(野兽操练室1F)', '32726', '32872', '454', '0');
INSERT INTO `etcitem_teleport` VALUES ('42016', '指定传送(魔兽训练场1F)', '32726', '32852', '455', '0');
INSERT INTO `etcitem_teleport` VALUES ('42017', '指定传送(梦幻岛)', '32633', '32817', '303', '0');
INSERT INTO `etcitem_teleport` VALUES ('42018', '指定传送(魔兽召唤室1F)', '32756', '32869', '456', '0');
INSERT INTO `etcitem_teleport` VALUES ('42019', '指定传送(黑暗的结界1F)', '32664', '32853', '457', '0');
INSERT INTO `etcitem_teleport` VALUES ('42020', '指定传送(黑魔法修炼场2F)', '32811', '32819', '460', '0');
INSERT INTO `etcitem_teleport` VALUES ('42021', '指定传送(古代巨人之墓)', '32771', '32870', '400', '0');
INSERT INTO `etcitem_teleport` VALUES ('42022', '指定传送(欲望洞穴)', '32738', '32811', '600', '0');
INSERT INTO `etcitem_teleport` VALUES ('42023', '指定传送(宠物之岛)', '32613', '32955', '0', '0');
INSERT INTO `etcitem_teleport` VALUES ('42024', '指定传送(肯特正义神殿)', '33119', '32933', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('42025', '指定传送(古鲁丁邪恶神殿)', '32887', '32652', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('42026', '指定传送(反王肯恩栖息地)', '34090', '33261', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('42027', '底比斯沙漠', '32623', '32896', '780', '0');
INSERT INTO `etcitem_teleport` VALUES ('42028', '指定传送(古鲁丁地监7F)', '32727', '32745', '13', '0');
INSERT INTO `etcitem_teleport` VALUES ('42029', '傲慢之塔移动卷轴(100F)', '32731', '32856', '200', '0');
INSERT INTO `etcitem_teleport` VALUES ('42030', '傲慢之塔移动卷轴(90F)', '32722', '32827', '190', '0');
INSERT INTO `etcitem_teleport` VALUES ('42031', '傲慢之塔移动卷轴(80F)', '32724', '32822', '180', '0');
INSERT INTO `etcitem_teleport` VALUES ('42032', '傲慢之塔移动卷轴(70F)', '32720', '32821', '170', '0');
INSERT INTO `etcitem_teleport` VALUES ('42033', '傲慢之塔移动卷轴(60F)', '32720', '32821', '160', '0');
INSERT INTO `etcitem_teleport` VALUES ('42035', '傲慢之塔移动卷轴(50F)', '32796', '32796', '150', '0');
INSERT INTO `etcitem_teleport` VALUES ('42036', '傲慢之塔移动卷轴(40F)', '32800', '32800', '140', '0');
INSERT INTO `etcitem_teleport` VALUES ('42037', '傲慢之塔移动卷轴(30F)', '32800', '32800', '130', '0');
INSERT INTO `etcitem_teleport` VALUES ('42038', '傲慢之塔移动卷轴(20F)', '32800', '32800', '120', '0');
INSERT INTO `etcitem_teleport` VALUES ('42039', '傲慢之塔移动卷轴(10F)', '32800', '32800', '110', '0');
INSERT INTO `etcitem_teleport` VALUES ('42040', '指定传送(海贼岛地监1F)', '32738', '32740', '441', '0');
INSERT INTO `etcitem_teleport` VALUES ('42041', '指定传送(海贼岛地监2F)', '32861', '32732', '442', '0');
INSERT INTO `etcitem_teleport` VALUES ('42042', '指定传送(海贼岛地监3F)', '32864', '32782', '443', '0');
INSERT INTO `etcitem_teleport` VALUES ('42043', '指定传送(地底湖)', '32803', '33049', '420', '0');
INSERT INTO `etcitem_teleport` VALUES ('42044', '指定传送(说话岛练功区)', '32563', '32898', '0', '0');
INSERT INTO `etcitem_teleport` VALUES ('42045', '底比斯金字塔B点', '32927', '32846', '781', '0');
INSERT INTO `etcitem_teleport` VALUES ('42046', '底比斯金字塔C点', '32984', '32747', '781', '0');
INSERT INTO `etcitem_teleport` VALUES ('42047', '指定传送(再生的圣所3F)', '32812', '32872', '2002', '0');
INSERT INTO `etcitem_teleport` VALUES ('42048', '指定传送(欧姆地监)', '32806', '32814', '310', '0');
INSERT INTO `etcitem_teleport` VALUES ('42049', '指定传送范跑跑爹地家', '32828', '32848', '70', '0');
INSERT INTO `etcitem_teleport` VALUES ('42050', '地狱之旅门票', '32701', '32777', '666', '0');
INSERT INTO `etcitem_teleport` VALUES ('42051', '指定传送(暗影神殿外面)', '32676', '32960', '521', '0');
INSERT INTO `etcitem_teleport` VALUES ('42052', '指定传送(暗影神殿1楼)', '32657', '32896', '522', '0');
INSERT INTO `etcitem_teleport` VALUES ('42053', '指定传送(暗影神殿2楼)', '32700', '32896', '523', '0');
INSERT INTO `etcitem_teleport` VALUES ('42054', '指定传送(暗影神殿3楼)', '32691', '32894', '524', '0');
INSERT INTO `etcitem_teleport` VALUES ('42055', '指定传送(污浊之地)', '32982', '32808', '244', '0');
INSERT INTO `etcitem_teleport` VALUES ('42056', '指定传送(奇岩隐藏宫殿1楼)', '32805', '32793', '248', '0');
INSERT INTO `etcitem_teleport` VALUES ('42057', '指定传送(奇岩隐藏宫殿2楼)', '32808', '32857', '249', '0');
INSERT INTO `etcitem_teleport` VALUES ('42058', '指定传送(奇岩隐藏宫殿3楼)', '32808', '32865', '250', '0');
INSERT INTO `etcitem_teleport` VALUES ('42059', '指定传送(奇岩隐藏宫殿4楼)', '32809', '32806', '251', '0');
INSERT INTO `etcitem_teleport` VALUES ('42060', '指定传送(海音封闭地监1楼)', '32746', '32861', '252', '0');
INSERT INTO `etcitem_teleport` VALUES ('42061', '指定传送(海音封闭地监2楼)', '32756', '32860', '253', '0');
INSERT INTO `etcitem_teleport` VALUES ('42062', '指定传送(海音封闭地监3楼)', '32615', '32795', '254', '0');
INSERT INTO `etcitem_teleport` VALUES ('42063', '指定传送(铁门废弃矿坑1楼)', '32680', '32795', '255', '0');
INSERT INTO `etcitem_teleport` VALUES ('42064', '指定传送(铁门废弃矿坑2楼)', '32696', '32794', '256', '0');
INSERT INTO `etcitem_teleport` VALUES ('42065', '指定传送(亚丁地下墓穴1楼)', '32660', '32800', '257', '0');
INSERT INTO `etcitem_teleport` VALUES ('42066', '指定传送(亚丁地下墓穴2楼)', '32800', '32799', '258', '0');
INSERT INTO `etcitem_teleport` VALUES ('42067', '指定传送(亚丁地下墓穴3楼)', '32733', '32790', '259', '0');
INSERT INTO `etcitem_teleport` VALUES ('42068', '指定传送(亚丁地下墓穴4楼)', '32681', '32972', '258', '0');
INSERT INTO `etcitem_teleport` VALUES ('42069', '指定传送(冒险者洞窟1楼)', '32667', '32808', '1', '0');
INSERT INTO `etcitem_teleport` VALUES ('42070', '指定传送(冒险者洞窟2楼)', '32665', '32789', '2', '0');
INSERT INTO `etcitem_teleport` VALUES ('42071', '指定传送(海底隧道)', '32998', '32807', '14', '0');
INSERT INTO `etcitem_teleport` VALUES ('42072', '指定传送(眠龙洞穴1楼)', '32803', '32725', '19', '0');
INSERT INTO `etcitem_teleport` VALUES ('42073', '指定传送(眠龙洞穴2楼)', '32765', '32797', '20', '0');
INSERT INTO `etcitem_teleport` VALUES ('42074', '指定传送(眠龙洞穴3楼)', '32730', '32737', '21', '0');
INSERT INTO `etcitem_teleport` VALUES ('42075', '指定传送(黑暗结界2楼左方)', '32662', '32851', '467', '0');
INSERT INTO `etcitem_teleport` VALUES ('42076', '指定传送(黑暗结界2楼右方)', '32659', '32872', '468', '0');
INSERT INTO `etcitem_teleport` VALUES ('42077', '指定传送(黑暗结界3楼)', '32722', '32795', '536', '0');
INSERT INTO `etcitem_teleport` VALUES ('42078', '指定传送(黑暗庭院广场)', '32847', '32793', '532', '0');
INSERT INTO `etcitem_teleport` VALUES ('42079', '指定传送(黑暗结界长老会议厅)', '32733', '32872', '534', '0');
INSERT INTO `etcitem_teleport` VALUES ('42080', '指定传送(海贼岛后半部)', '32824', '32872', '480', '0');
INSERT INTO `etcitem_teleport` VALUES ('42081', '指定传送(船舶之墓上层)', '32843', '32693', '550', '0');
INSERT INTO `etcitem_teleport` VALUES ('42083', '指定传送(海音鳄鱼岛)', '33501', '33205', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('42084', '指定传送(欲望洞窟水之领域)', '32830', '32822', '604', '0');
INSERT INTO `etcitem_teleport` VALUES ('42085', '指定传送(欲望洞窟火之领域)', '32835', '32822', '605', '0');
INSERT INTO `etcitem_teleport` VALUES ('42086', '指定传送(欲望洞窟风之领域)', '32757', '32842', '606', '0');
INSERT INTO `etcitem_teleport` VALUES ('42087', '指定传送(欲望洞窟地之领域)', '32773', '32835', '607', '0');
INSERT INTO `etcitem_teleport` VALUES ('42088', '底比斯沙漠范跑跑', '32626', '32900', '780', '0');
INSERT INTO `etcitem_teleport` VALUES ('42089', '底比斯金字塔A点', '32742', '32828', '781', '0');
INSERT INTO `etcitem_teleport` VALUES ('42090', '底比斯金字塔祭坛', '32735', '32831', '782', '0');
INSERT INTO `etcitem_teleport` VALUES ('42091', '龙骑士村庄', '32779', '32887', '1001', '0');
INSERT INTO `etcitem_teleport` VALUES ('42092', '幻术师村庄', '32841', '32856', '1000', '0');
INSERT INTO `etcitem_teleport` VALUES ('42093', '欲望洞穴入口', '32758', '32794', '600', '0');
INSERT INTO `etcitem_teleport` VALUES ('42094', '炎魔房间', '32682', '32831', '603', '0');
INSERT INTO `etcitem_teleport` VALUES ('42095', '黑暗妖精圣地中部', '32648', '32921', '535', '0');
INSERT INTO `etcitem_teleport` VALUES ('42096', '魔族抛弃地上', '32832', '32761', '778', '0');
INSERT INTO `etcitem_teleport` VALUES ('42097', '魔族抛弃地下', '32891', '32728', '779', '0');
INSERT INTO `etcitem_teleport` VALUES ('42098', '不死族抛弃地', '32555', '32899', '777', '0');
INSERT INTO `etcitem_teleport` VALUES ('49182', '妖精森林瞬间移动卷轴', '32803', '32725', '19', '0');
INSERT INTO `etcitem_teleport` VALUES ('49183', '欧瑞村庄瞬间移动卷轴', '34039', '32476', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('49184', '风木村庄瞬间移动卷轴', '32617', '33201', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('49185', '威顿村庄瞬间移动卷轴', '33705', '32504', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('44071', '新手练功传送卷', '32860', '32895', '3041', '0');
INSERT INTO `etcitem_teleport` VALUES ('49301', '新手练功传送卷(新手礼包)', '32860', '32895', '3041', '0');
INSERT INTO `etcitem_teleport` VALUES ('49294', '古鲁丁村庄指定传送卷轴(新手礼包)', '32612', '32734', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('49295', '奇岩传送符', '33442', '32797', '4', '0');
INSERT INTO `etcitem_teleport` VALUES ('44157', '指定传送(污浊竞技场)', '32707', '32690', '632', '0');
