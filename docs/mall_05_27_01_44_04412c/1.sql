/* HuiShiOA Backup SQL File 
 Version: v1.2 
 Time: 2015-05-27 01:44:49
 HuiShiOA: http://www.huishisoft.com*/



DROP TABLE IF EXISTS huishi_act;
CREATE TABLE `huishi_act` (
  `act_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '市场活动id',
  `cat_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `where` varchar(255) NOT NULL COMMENT '地点',
  `act_stime` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `act_etime` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `summary` text COMMENT '简单概述',
  `content` text COMMENT '内容',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `banner` varchar(500) DEFAULT NULL COMMENT '内页横幅图',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `link_url` varchar(255) NOT NULL COMMENT '课件等下载url',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1显示，0隐藏',
  `click` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `city` varchar(10) DEFAULT NULL COMMENT '城市索引CODE',
  PRIMARY KEY (`act_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

INSERT INTO huishi_act VALUES('10','0','Inventor工程导向设计流程','厦门日华国际大厦301','1397052000','1397064600','','','','','1','2014-04-01 11:50:40','http://','1','287','');
INSERT INTO huishi_act VALUES('11','0','Revit 的BIM设计流程及思想介绍','厦门日华国际大厦301','1397656800','1397669400','','<div>\n	<span style=\"line-height:2;font-size:13px;\">14:00~14:50 &nbsp;BIM核心思想介绍</span><br />\n<span style=\"line-height:2;font-size:13px;\"> 15:00~15:50 &nbsp;Revit的BIM设计流程</span><br />\n<span style=\"line-height:2;font-size:13px;\"> 16:00~16:50 &nbsp;Revit介绍及基础知识</span><br />\n<span style=\"line-height:2;font-size:13px;\"> 17:00~17:30 &nbsp;讨论交流&nbsp;</span>\n</div>','','','1','2014-04-04 14:47:09','http://','1','384','');
INSERT INTO huishi_act VALUES('12','0','三维设计整体解决方案','厦门日华国际大厦301','1401894000','1401903000','','<p>\n	<span style=\"font-size:13px;line-height:2;\">1、设计工作的现状和未来</span>\n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">2、</span><span style=\"font-size:13px;line-height:2;\">三维软件可以做什么</span>\n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">3、</span><span style=\"font-size:13px;line-height:2;\">数字样机技术</span>\n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">4、</span><span style=\"font-size:13px;line-height:2;\">Inventor体验与分享</span><br />\n	<div>\n		<br />\n	</div>\n<br />\n	<div>\n		<br />\n	</div>\n</p>','','','1','2014-05-06 16:08:05','http://','1','438','');

DROP TABLE IF EXISTS huishi_act_cat;
CREATE TABLE `huishi_act_cat` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cat_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `parent_id` int(10) NOT NULL DEFAULT '0' COMMENT '父id ， -1为系统分类',
  `sort_order` tinyint(1) NOT NULL DEFAULT '0' COMMENT '分类排序',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

INSERT INTO huishi_act_cat VALUES('1','新产品体验活动','0','1');
INSERT INTO huishi_act_cat VALUES('2','行业解决方案研讨会','0','2');
INSERT INTO huishi_act_cat VALUES('3','讲座活动','0','3');
INSERT INTO huishi_act_cat VALUES('13','发布会','0','4');

DROP TABLE IF EXISTS huishi_admin_log;
CREATE TABLE `huishi_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `log_time` datetime DEFAULT NULL COMMENT '日志时间',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '管理员id',
  `admin_name` varchar(255) DEFAULT NULL,
  `log_info` varchar(255) NOT NULL DEFAULT '' COMMENT '日志内容',
  `ip_address` varchar(15) NOT NULL DEFAULT '' COMMENT '记录ip',
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8;

INSERT INTO huishi_admin_log VALUES('1','2014-12-17 23:29:45','0','','修改培训：22','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('2','2014-12-17 23:30:24','0','','修改培训：24','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('3','2014-12-17 23:31:33','0','','修改培训：45','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('4','2014-12-17 23:33:05','0','','修改培训：48','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('5','2014-12-18 17:08:52','0','','修改培训：54','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('6','2014-12-18 17:09:23','0','','修改培训：53','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('7','2014-12-18 17:10:33','0','','修改培训：54','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('8','2014-12-18 17:15:32','0','','修改培训：54','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('9','2014-12-18 17:15:45','0','','修改培训：53','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('10','2014-12-18 17:21:24','0','','修改bpm项目：86','27.159.35.60');
INSERT INTO huishi_admin_log VALUES('11','2014-12-18 18:02:53','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('12','2014-12-18 18:03:26','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('13','2014-12-18 18:04:30','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('14','2014-12-18 19:33:37','0','','添加BPM文档：1','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('15','2014-12-18 21:30:35','0','','修改bpm项目：218','27.159.35.60');
INSERT INTO huishi_admin_log VALUES('16','2014-12-18 21:46:27','0','','添加bpm项目：','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('17','2014-12-18 22:51:45','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('18','2014-12-18 22:52:07','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('19','2014-12-18 22:54:43','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('20','2014-12-18 23:48:44','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('21','2014-12-18 23:51:42','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('22','2014-12-18 23:51:49','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('23','2014-12-18 23:53:18','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('24','2014-12-18 23:53:50','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('25','2014-12-18 23:54:19','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('26','2014-12-19 01:01:40','0','','修改视频：2','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('27','2014-12-19 01:02:02','0','','修改视频：1','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('28','2014-12-19 01:02:15','0','','修改视频：6','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('29','2014-12-19 01:02:36','0','','修改视频：7','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('30','2014-12-19 01:44:34','0','','修改培训：49','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('31','2014-12-19 18:03:52','0','','修改BPM账户：1','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('32','2014-12-19 18:10:46','0','','修改bpm项目：214','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('33','2014-12-19 18:11:10','0','','修改bpm项目：195','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('34','2014-12-19 18:14:15','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('35','2014-12-19 18:14:20','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('36','2014-12-19 18:14:46','0','','修改bpm项目：9','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('37','2014-12-19 18:15:39','0','','修改bpm项目：195','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('38','2014-12-19 18:20:31','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('39','2014-12-19 18:20:45','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('40','2014-12-19 18:21:08','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('41','2014-12-19 18:21:30','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('42','2014-12-19 18:21:52','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('43','2014-12-19 18:22:53','0','','修改bpm项目：218','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('44','2014-12-19 18:23:02','0','','修改bpm项目：219','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('45','2014-12-19 18:24:32','0','','修改bpm项目：213','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('46','2014-12-19 18:24:52','0','','修改bpm项目：216','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('47','2014-12-19 18:24:59','0','','修改bpm项目：217','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('48','2014-12-19 18:25:09','0','','修改bpm项目：217','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('49','2014-12-19 18:25:17','0','','修改bpm项目：217','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('50','2014-12-19 18:28:25','0','','修改bpm项目：219','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('51','2014-12-19 18:30:21','0','','修改bpm项目：219','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('52','2014-12-19 18:32:47','0','','修改bpm项目：191','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('53','2014-12-19 18:49:09','0','','修改bpm项目：191','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('54','2014-12-19 18:52:54','0','','修改bpm项目：43','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('55','2014-12-19 19:04:55','0','','修改视频：2','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('56','2014-12-19 23:10:29','0','','修改视频：2','27.154.154.83');
INSERT INTO huishi_admin_log VALUES('57','2014-12-22 19:30:05','0','','添加培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('58','2014-12-22 19:41:42','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('59','2014-12-22 19:51:39','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('60','2014-12-22 19:57:04','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('61','2014-12-22 19:58:25','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('62','2014-12-22 20:00:22','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('63','2014-12-22 20:02:00','1','admin','添加讲师：109','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('64','2014-12-22 20:03:07','1','admin','添加BPM账户：1','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('65','2014-12-22 20:03:15','1','admin','修改BPM账户：1','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('66','2014-12-22 20:03:29','0','','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('67','2014-12-22 20:04:06','1','admin','','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('68','2014-12-22 20:04:24','1','admin','','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('69','2014-12-22 21:41:04','0','','修改bpm项目：195','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('70','2014-12-22 21:42:10','0','','修改bpm项目：197','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('71','2014-12-22 21:42:40','0','','修改bpm项目：198','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('72','2014-12-22 22:00:28','1','admin','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('73','2014-12-22 22:11:33','1','admin','修改培训：56','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('74','2014-12-22 22:27:45','1','admin','添加培训：57','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('75','2014-12-22 22:36:02','1','admin','修改培训：57','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('76','2014-12-22 22:37:33','1','admin','修改培训：57','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('77','2014-12-22 22:38:29','1','admin','修改培训：57','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('78','2014-12-23 19:28:23','0','','添加bpm项目：','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('79','2014-12-23 23:33:12','0','','添加bpm项目：','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('80','2014-12-23 23:41:07','0','','修改培训：15','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('81','2014-12-23 23:42:34','0','','修改bpm项目：218','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('82','2014-12-23 23:42:49','0','','修改bpm项目：219','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('83','2014-12-23 23:43:04','0','','修改bpm项目：218','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('84','2014-12-24 00:23:09','0','','修改培训：15','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('85','2014-12-24 00:29:50','0','','修改bpm项目：214','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('86','2014-12-24 03:30:09','0','','修改培训：16','121.204.236.186');
INSERT INTO huishi_admin_log VALUES('87','2014-12-24 03:30:25','0','','修改培训：15','121.204.236.186');
INSERT INTO huishi_admin_log VALUES('88','2014-12-24 17:26:59','0','','修改bpm项目：55','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('89','2014-12-24 17:30:51','0','','修改bpm项目：56','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('90','2014-12-24 17:35:57','0','','修改bpm项目：58','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('91','2014-12-24 17:36:03','0','','修改bpm项目：59','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('92','2014-12-24 17:36:09','0','','修改bpm项目：57','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('93','2014-12-24 17:36:38','0','','修改bpm项目：60','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('94','2014-12-24 17:36:45','0','','修改bpm项目：61','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('95','2014-12-24 17:37:00','0','','修改bpm项目：61','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('96','2014-12-24 17:37:05','0','','修改bpm项目：61','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('97','2014-12-24 17:37:12','0','','修改bpm项目：62','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('98','2014-12-24 17:37:17','0','','修改bpm项目：63','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('99','2014-12-24 17:37:22','0','','修改bpm项目：64','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('100','2014-12-24 17:37:27','0','','修改bpm项目：65','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('101','2014-12-24 17:37:32','0','','修改bpm项目：66','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('102','2014-12-24 17:38:50','0','','修改bpm项目：83','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('103','2014-12-24 17:39:02','0','','修改bpm项目：89','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('104','2014-12-24 18:03:04','0','','修改bpm项目：92','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('105','2014-12-24 19:17:46','0','','修改bpm项目：87','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('106','2014-12-24 22:38:53','0','','修改bpm项目：171','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('107','2014-12-24 22:39:03','0','','修改bpm项目：172','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('108','2014-12-24 22:39:16','0','','修改bpm项目：173','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('109','2014-12-24 22:57:17','0','','修改bpm项目：139','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('110','2014-12-24 22:57:28','0','','修改bpm项目：140','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('111','2014-12-24 22:57:38','0','','修改bpm项目：141','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('112','2014-12-24 22:58:39','0','','修改bpm项目：53','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('113','2014-12-24 22:58:46','0','','修改bpm项目：54','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('114','2014-12-24 22:59:03','0','','修改bpm项目：54','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('115','2014-12-24 22:59:16','0','','修改bpm项目：80','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('116','2014-12-24 22:59:24','0','','修改bpm项目：81','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('117','2014-12-24 23:06:06','0','','修改bpm项目：198','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('118','2014-12-24 23:06:18','0','','修改bpm项目：204','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('119','2014-12-24 23:06:27','0','','修改bpm项目：205','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('120','2014-12-24 23:09:09','0','','修改bpm项目：105','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('121','2014-12-24 23:22:21','0','','添加BPM文档：3','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('122','2014-12-25 00:24:53','0','','添加BPM文档：3','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('123','2014-12-25 00:35:35','0','','修改bpm项目：218','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('124','2014-12-25 00:37:30','0','','修改bpm项目：219','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('125','2014-12-25 01:37:04','1','admin','','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('126','2014-12-25 01:37:50','1','admin','','117.30.93.33');
INSERT INTO huishi_admin_log VALUES('127','2014-12-25 17:19:00','0','','修改bpm项目：95','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('128','2014-12-25 20:20:22','0','','修改培训：46','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('129','2014-12-25 23:06:46','0','','添加bpm项目：','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('130','2014-12-25 23:07:34','0','','修改bpm项目：222','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('131','2014-12-25 23:07:49','0','','修改bpm项目：222','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('132','2014-12-26 00:28:47','0','','修改视频：2','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('133','2014-12-26 00:42:40','0','','修改培训：24','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('134','2014-12-26 00:52:19','0','','修改bpm项目：94','120.42.20.96');
INSERT INTO huishi_admin_log VALUES('135','2014-12-26 02:45:46','0','','修改视频：2','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('136','2014-12-26 03:20:34','0','','修改培训：24','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('137','2014-12-26 03:20:50','0','','修改培训：24','121.207.181.160');
INSERT INTO huishi_admin_log VALUES('138','2014-12-26 18:17:32','0','','添加培训：58','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('139','2014-12-26 18:23:28','0','','修改培训：58','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('140','2014-12-26 18:35:21','0','','修改培训：57','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('141','2014-12-26 19:35:10','0','','修改培训：58','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('142','2014-12-26 19:41:29','0','','添加培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('143','2014-12-26 19:41:46','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('144','2014-12-26 19:45:12','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('145','2014-12-26 19:47:51','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('146','2014-12-26 19:56:59','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('147','2014-12-26 19:57:48','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('148','2014-12-26 20:02:35','0','','修改bpm项目：220','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('149','2014-12-26 20:02:48','0','','修改bpm项目：221','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('150','2014-12-26 20:05:33','0','','修改bpm项目：220','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('151','2014-12-26 20:05:40','0','','修改bpm项目：221','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('152','2014-12-26 20:08:10','0','','修改培训：59','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('153','2014-12-26 22:03:59','0','','修改BPM账户：1','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('154','2014-12-26 22:08:02','0','','修改BPM账户：18','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('155','2014-12-26 22:17:27','0','','修改BPM账户：18','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('156','2014-12-26 22:20:21','0','','修改BPM账户：18','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('157','2014-12-26 22:28:33','1','admin','','120.36.195.47');
INSERT INTO huishi_admin_log VALUES('158','2014-12-29 17:02:20','0','','修改bpm项目：220','117.30.128.98');
INSERT INTO huishi_admin_log VALUES('159','2014-12-29 18:49:33','0','','修改培训：20','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('160','2014-12-29 18:49:52','0','','修改培训：21','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('161','2014-12-29 18:50:17','0','','修改培训：27','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('162','2014-12-31 17:05:44','0','','修改bpm项目：221','117.30.128.98');
INSERT INTO huishi_admin_log VALUES('163','2015-01-04 19:58:04','0','','添加bpm公告：7','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('164','2015-01-04 19:58:33','0','','修改bpm公告：7','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('165','2015-01-04 19:59:02','0','','修改bpm公告：7','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('166','2015-01-04 20:42:36','0','','修改bpm项目：142','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('167','2015-01-04 20:42:51','0','','修改bpm项目：107','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('168','2015-01-04 20:43:14','0','','修改bpm项目：175','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('169','2015-01-04 20:43:28','0','','修改bpm项目：176','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('170','2015-01-04 20:45:28','0','','修改bpm项目：56','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('171','2015-01-04 20:45:41','0','','修改bpm项目：85','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('172','2015-01-04 21:54:51','0','','修改bpm项目：221','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('173','2015-01-04 21:55:06','0','','修改bpm项目：221','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('174','2015-01-04 21:55:26','0','','修改bpm项目：220','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('175','2015-01-04 22:55:30','0','','修改bpm项目：222','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('176','2015-01-04 22:58:22','0','','修改BPM账户：3','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('177','2015-01-04 22:58:48','0','','修改BPM账户：3','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('178','2015-01-04 23:25:48','0','','修改bpm项目：222','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('179','2015-01-04 23:30:27','0','','修改bpm项目：221','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('180','2015-01-04 23:35:08','0','','修改bpm项目：216','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('181','2015-01-04 23:35:53','0','','修改bpm项目：197','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('182','2015-01-04 23:36:19','0','','修改bpm项目：214','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('183','2015-01-04 23:36:25','0','','修改bpm项目：222','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('184','2015-01-04 23:48:20','0','','添加bpm项目：','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('185','2015-01-04 23:52:44','0','','修改bpm项目：221','220.160.131.171');
INSERT INTO huishi_admin_log VALUES('186','2015-01-05 19:04:55','0','','修改培训：16','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('187','2015-01-05 19:05:11','0','','修改培训：46','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('188','2015-01-05 19:05:27','0','','修改培训：51','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('189','2015-01-05 19:05:45','0','','修改培训：52','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('190','2015-01-05 19:05:45','0','','修改培训：52','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('191','2015-01-05 19:06:25','0','','修改培训：56','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('192','2015-01-05 19:06:45','0','','修改培训：48','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('193','2015-01-05 20:56:45','0','','添加bpm项目：','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('194','2015-01-05 23:29:24','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('195','2015-01-05 23:33:10','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('196','2015-01-05 23:33:24','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('197','2015-01-05 23:33:44','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('198','2015-01-05 23:33:51','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('199','2015-01-05 23:34:01','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('200','2015-01-07 01:21:57','0','','修改BPM账户：1','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('201','2015-01-07 03:13:32','0','','添加直播：216','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('202','2015-01-07 03:16:49','0','','添加直播：218','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('203','2015-01-07 03:25:23','0','','添加BPM文档：3','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('204','2015-01-07 03:25:30','0','','修改直播：58','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('205','2015-01-07 03:28:23','0','','修改直播：58','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('206','2015-01-07 03:29:05','0','','修改bpm项目：67','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('207','2015-01-07 03:29:23','0','','修改bpm项目：67','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('208','2015-01-07 04:46:39','0','','添加直播：245','117.30.95.120');
INSERT INTO huishi_admin_log VALUES('209','2015-01-07 22:36:10','0','','修改视频：1','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('210','2015-01-07 22:37:01','0','','修改视频：1','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('211','2015-01-07 22:37:08','0','','修改视频：2','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('212','2015-01-07 22:37:18','0','','修改视频：6','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('213','2015-01-07 22:37:27','0','','修改视频：7','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('214','2015-01-08 00:05:04','0','','修改bpm项目：242','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('215','2015-01-08 00:06:28','0','','修改bpm项目：243','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('216','2015-01-08 00:17:24','0','','修改bpm项目：244','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('217','2015-01-08 00:17:40','0','','修改bpm项目：243','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('218','2015-01-08 00:17:57','0','','修改bpm项目：242','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('219','2015-01-08 00:18:18','0','','修改bpm项目：243','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('220','2015-01-08 00:18:26','0','','修改bpm项目：245','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('221','2015-01-08 00:19:43','0','','修改bpm项目：242','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('222','2015-01-08 00:20:38','0','','修改bpm项目：225','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('223','2015-01-08 00:29:46','0','','修改bpm项目：227','117.30.131.136');
INSERT INTO huishi_admin_log VALUES('224','2015-01-08 00:30:09','0','','修改bpm项目：235','117.30.131.136');
INSERT INTO huishi_admin_log VALUES('225','2015-01-08 00:31:02','0','','修改bpm项目：235','117.30.131.136');
INSERT INTO huishi_admin_log VALUES('226','2015-01-08 17:38:03','0','','修改bpm项目：242','27.159.34.192');
INSERT INTO huishi_admin_log VALUES('227','2015-01-08 19:27:30','0','','修改培训：48','117.30.131.136');
INSERT INTO huishi_admin_log VALUES('228','2015-01-09 04:45:12','0','','修改bpm项目：272','117.30.128.76');
INSERT INTO huishi_admin_log VALUES('229','2015-01-09 23:56:33','0','','修改BPM账户：1','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('230','2015-01-09 23:56:47','0','','修改BPM账户：1','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('231','2015-01-12 23:23:25','0','','添加bpm项目：','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('232','2015-01-13 17:24:07','0','','修改bpm项目：272','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('233','2015-01-13 17:24:24','0','','修改bpm项目：243','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('234','2015-01-13 17:24:42','0','','修改bpm项目：272','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('235','2015-01-13 17:25:07','0','','修改bpm项目：227','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('236','2015-01-13 17:25:19','0','','修改bpm项目：235','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('237','2015-01-13 17:25:34','0','','修改bpm项目：228','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('238','2015-01-13 18:09:02','0','','添加BPM账户：1','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('239','2015-01-13 18:50:58','1','admin',':89','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('240','2015-01-13 18:51:16','1','admin','：89','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('241','2015-01-13 18:54:05','1','admin','修改BPM账户：19','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('242','2015-01-13 18:55:39','1','admin','：89','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('243','2015-01-13 19:06:44','1','admin','修改BPM账户：19','120.42.115.146');
INSERT INTO huishi_admin_log VALUES('244','2015-01-13 21:17:27','0','','修改bpm项目：246','27.159.16.98');
INSERT INTO huishi_admin_log VALUES('245','2015-01-13 22:29:16','0','','添加优惠方案：11','223.104.6.173');
INSERT INTO huishi_admin_log VALUES('246','2015-01-14 21:49:47','0','','修改bpm项目：136','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('247','2015-01-14 21:49:55','0','','修改bpm项目：127','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('248','2015-01-14 21:50:01','0','','修改bpm项目：128','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('249','2015-01-14 22:47:05','1','admin',':90','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('250','2015-01-15 00:48:34','0','','添加bpm公告：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('251','2015-01-15 01:22:30','0','','添加bpm邮件模板：1','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('252','2015-01-15 01:23:30','0','','修改bpm邮件模板：1','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('253','2015-01-15 17:59:17','1','admin',':91','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('254','2015-01-15 18:26:01','0','','修改bpm项目：244','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('255','2015-01-15 18:26:14','0','','修改bpm项目：262','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('256','2015-01-15 18:26:24','0','','修改bpm项目：259','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('257','2015-01-15 18:26:48','0','','修改bpm项目：251','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('258','2015-01-15 18:27:00','0','','修改bpm项目：260','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('259','2015-01-15 18:27:34','0','','修改bpm项目：245','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('260','2015-01-15 18:27:43','0','','修改bpm项目：263','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('261','2015-01-15 18:28:26','0','','修改bpm项目：238','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('262','2015-01-15 18:28:43','0','','修改bpm项目：229','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('263','2015-01-15 18:29:00','0','','修改bpm项目：246','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('264','2015-01-15 18:29:07','0','','修改bpm项目：264','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('265','2015-01-15 18:29:44','0','','修改bpm项目：113','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('266','2015-01-15 18:30:12','0','','修改bpm项目：228','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('267','2015-01-15 23:21:08','0','','添加视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('268','2015-01-15 23:27:17','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('269','2015-01-15 23:29:57','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('270','2015-01-15 23:30:09','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('271','2015-01-15 23:31:04','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('272','2015-01-15 23:31:55','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('273','2015-01-15 23:33:41','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('274','2015-01-16 00:07:11','0','','添加视频：9','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('275','2015-01-16 00:10:50','0','','修改视频：8','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('276','2015-01-16 00:24:45','0','','修改bpm项目：273','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('277','2015-01-16 01:13:12','0','','修改视频：9','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('278','2015-01-16 18:22:07','1','admin',':92','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('279','2015-01-16 22:43:43','0','','添加视频：10','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('280','2015-01-16 22:43:57','0','','修改视频：10','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('281','2015-01-16 22:55:38','0','','添加视频：11','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('282','2015-01-16 23:02:13','0','','修改视频：11','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('283','2015-01-16 23:02:22','0','','修改视频：10','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('284','2015-01-17 00:58:33','1','admin','','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('285','2015-01-17 00:58:49','1','admin','','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('286','2015-01-17 00:58:53','1','admin','','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('287','2015-01-17 01:18:51','1','admin','添加直播：256','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('288','2015-01-17 01:23:02','1','admin','添加直播：256','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('289','2015-01-19 17:33:26','0','','添加直播：271','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('290','2015-01-19 19:13:57','1','admin',':93','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('291','2015-01-19 23:20:18','0','','修改bpm项目：245','27.154.20.91');
INSERT INTO huishi_admin_log VALUES('292','2015-01-19 23:25:04','0','','修改bpm项目：242','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('293','2015-01-19 23:25:16','0','','修改bpm项目：82','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('294','2015-01-19 23:25:25','0','','修改bpm项目：54','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('295','2015-01-19 23:26:57','0','','修改bpm项目：54','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('296','2015-01-19 23:27:07','0','','修改bpm项目：83','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('297','2015-01-19 23:27:19','0','','修改bpm项目：55','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('298','2015-01-19 23:27:30','0','','修改bpm项目：84','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('299','2015-01-19 23:28:08','0','','修改bpm项目：100','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('300','2015-01-19 23:28:17','0','','修改bpm项目：101','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('301','2015-01-19 23:29:26','0','','修改bpm项目：164','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('302','2015-01-19 23:34:30','0','','修改bpm项目：54','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('303','2015-01-20 00:44:02','0','','修改视频：11','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('304','2015-01-20 04:22:39','1','admin','：9','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('305','2015-01-20 04:23:31','1','admin','：9','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('306','2015-01-20 04:31:33','1','admin','：9','59.57.178.111');
INSERT INTO huishi_admin_log VALUES('307','2015-01-21 23:40:02','0','','修改bpm项目：251','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('308','2015-01-21 23:40:15','0','','修改bpm项目：260','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('309','2015-01-21 23:40:22','0','','修改bpm项目：113','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('310','2015-01-21 23:42:30','0','','修改bpm项目：245','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('311','2015-01-21 23:42:41','0','','修改bpm项目：263','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('312','2015-01-21 23:44:10','0','','修改bpm项目：229','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('313','2015-01-21 23:44:17','0','','修改bpm项目：238','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('314','2015-01-21 23:44:58','0','','修改bpm项目：246','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('315','2015-01-21 23:45:13','0','','修改bpm项目：277','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('316','2015-01-21 23:52:11','0','','修改bpm项目：214','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('317','2015-01-22 00:07:27','0','','修改bpm项目：225','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('318','2015-01-22 00:08:08','0','','修改bpm项目：220','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('319','2015-01-22 00:11:01','0','','修改bpm项目：278','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('320','2015-01-22 01:24:11','0','','修改bpm项目：252','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('321','2015-01-22 01:24:18','0','','修改bpm项目：239','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('322','2015-01-22 01:24:39','0','','修改bpm项目：115','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('323','2015-01-22 01:25:14','0','','修改bpm项目：247','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('324','2015-01-22 01:25:35','0','','修改bpm项目：265','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('325','2015-01-22 01:26:01','0','','修改bpm项目：277','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('326','2015-01-22 01:26:10','0','','修改bpm项目：230','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('327','2015-01-22 01:27:59','0','','修改bpm项目：240','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('328','2015-01-22 18:41:29','1','admin',':94','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('329','2015-01-23 00:04:48','1','admin','','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('330','2015-01-23 02:13:18','0','','修改视频：9','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('331','2015-01-23 18:40:17','1','admin','：94','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('332','2015-01-23 18:41:13','1','admin','：94','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('333','2015-01-23 22:27:44','0','','修改bpm项目：97','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('334','2015-01-23 22:27:58','0','','修改bpm项目：98','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('335','2015-01-23 22:28:05','0','','修改bpm项目：99','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('336','2015-01-23 22:28:18','0','','修改bpm项目：102','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('337','2015-01-23 22:28:24','0','','修改bpm项目：103','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('338','2015-01-23 22:28:30','0','','修改bpm项目：105','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('339','2015-01-23 22:28:36','0','','修改bpm项目：107','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('340','2015-01-23 22:38:50','0','','修改bpm项目：273','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('341','2015-01-26 17:05:13','0','','修改bpm项目：248','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('342','2015-01-26 17:26:30','0','','添加BPM文档：4','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('343','2015-01-26 23:58:58','0','','添加bpm项目：','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('344','2015-01-27 17:04:50','1','admin',':95','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('345','2015-01-27 18:40:34','0','','添加BPM文档：4','120.36.193.212');
INSERT INTO huishi_admin_log VALUES('346','2015-01-28 19:39:08','0','','修改bpm项目：307','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('347','2015-01-28 21:44:26','0','','修改bpm项目：213','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('348','2015-01-28 21:44:35','0','','修改bpm项目：217','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('349','2015-01-28 21:50:46','0','','修改bpm项目：195','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('350','2015-01-28 21:51:04','0','','修改bpm项目：219','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('351','2015-01-28 21:51:38','0','','修改bpm项目：218','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('352','2015-01-29 00:21:36','0','','修改bpm项目：247','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('353','2015-01-29 00:23:18','0','','修改bpm项目：252','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('354','2015-01-29 00:23:49','0','','修改bpm项目：230','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('355','2015-01-29 00:28:35','0','','修改bpm项目：246','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('356','2015-01-29 00:34:54','0','','修改bpm项目：248','120.36.199.184');
INSERT INTO huishi_admin_log VALUES('357','2015-01-29 00:45:49','0','','修改bpm项目：224','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('358','2015-01-29 01:18:02','0','','添加优惠：10','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('359','2015-01-29 17:21:45','0','','添加bpm公告：9','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('360','2015-01-29 17:58:24','1','admin',':96','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('361','2015-01-29 18:21:58','0','','添加视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('362','2015-01-29 18:32:34','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('363','2015-01-29 18:33:05','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('364','2015-01-29 18:47:16','0','','修改bpm公告：9','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('365','2015-01-29 18:53:44','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('366','2015-01-29 19:01:25','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('367','2015-01-29 19:03:49','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('368','2015-01-29 19:11:54','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('369','2015-01-29 19:15:21','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('370','2015-01-29 19:16:44','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('371','2015-01-29 19:20:56','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('372','2015-01-29 19:44:30','0','','修改视频：12','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('373','2015-01-29 23:06:26','0','','修改bpm项目：307','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('374','2015-02-02 17:11:10','0','','修改bpm项目：307','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('375','2015-02-02 18:04:07','0','','添加直播：299','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('376','2015-02-02 18:10:52','0','','修改bpm项目：292','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('377','2015-02-02 18:34:43','0','','添加直播：315','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('378','2015-02-02 21:28:46','0','','添加优惠：11','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('379','2015-02-02 21:29:24','0','','修改优惠：11','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('380','2015-02-02 21:30:20','0','','修改优惠：11','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('381','2015-02-02 21:31:10','0','','修改优惠：11','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('382','2015-02-03 00:11:24','0','','修改优惠：11','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('383','2015-02-03 00:12:38','0','','修改优惠：11','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('384','2015-02-03 00:13:26','0','','修改优惠：11','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('385','2015-02-03 00:13:53','0','','修改优惠：11','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('386','2015-02-03 17:04:47','0','','修改BPM账户：11','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('387','2015-02-03 18:31:08','1','admin',':97','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('388','2015-02-03 22:22:00','0','','修改bpm项目：223','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('389','2015-02-03 22:23:01','0','','修改bpm项目：222','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('390','2015-02-03 22:24:11','0','','修改bpm项目：223','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('391','2015-02-03 23:50:48','0','','修改bpm项目：253','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('392','2015-02-03 23:51:03','0','','修改bpm项目：249','27.154.23.8');
INSERT INTO huishi_admin_log VALUES('393','2015-02-04 01:49:33','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('394','2015-02-04 18:24:19','1','admin',':98','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('395','2015-02-04 19:02:44','1','admin',':99','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('396','2015-02-04 19:05:30','1','admin','：99','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('397','2015-02-04 21:36:24','1','admin',':100','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('398','2015-02-05 02:44:14','0','','添加BPM文档：3','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('399','2015-02-05 02:45:16','0','','添加BPM文档：3','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('400','2015-02-05 02:46:03','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('401','2015-02-05 02:46:37','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('402','2015-02-05 02:46:49','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('403','2015-02-05 02:46:53','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('404','2015-02-05 02:47:07','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('405','2015-02-05 02:47:23','0','','修改BPM账户：1','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('406','2015-02-06 00:43:58','1','admin',':101','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('407','2015-02-06 00:45:03','1','admin','：101','117.30.169.117');
INSERT INTO huishi_admin_log VALUES('408','2015-02-07 05:07:57','1','admin','：2','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('409','2015-02-09 18:39:32','1','admin',':102','27.154.22.129');
INSERT INTO huishi_admin_log VALUES('410','2015-02-09 18:43:10','1','admin','：102','27.154.22.129');
INSERT INTO huishi_admin_log VALUES('411','2015-02-12 19:04:00','0','','修改BPM账户：1','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('412','2015-02-12 19:04:36','0','','修改BPM账户：1','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('413','2015-02-12 19:05:23','0','','修改BPM账户：1','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('414','2015-02-12 19:05:44','0','','修改BPM账户：1','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('415','2015-02-12 19:05:56','0','','修改BPM账户：1','117.30.171.208');
INSERT INTO huishi_admin_log VALUES('416','2015-02-13 18:42:18','0','','修改bpm项目：222','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('417','2015-02-13 18:42:42','0','','修改bpm项目：223','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('418','2015-02-13 22:09:22','1','admin',':103','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('419','2015-02-13 22:10:59','1','admin','：102','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('420','2015-02-13 22:11:49','1','admin',':104','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('421','2015-02-13 23:01:31','0','','修改优惠：11','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('422','2015-02-13 23:01:41','0','','修改优惠：11','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('423','2015-02-13 23:05:50','1','admin','：104','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('424','2015-02-14 21:42:23','0','','添加BPM文档：4','110.83.126.128');
INSERT INTO huishi_admin_log VALUES('425','2015-02-25 23:12:54','0','','修改BPM账户：11','220.160.130.211');
INSERT INTO huishi_admin_log VALUES('426','2015-02-27 22:20:05','0','','添加bpm项目：','110.83.124.184');
INSERT INTO huishi_admin_log VALUES('427','2015-03-02 19:43:22','0','','添加优惠：12','110.83.124.184');
INSERT INTO huishi_admin_log VALUES('428','2015-03-02 19:43:32','0','','修改优惠：12','110.83.124.184');
INSERT INTO huishi_admin_log VALUES('429','2015-03-02 19:49:13','0','','修改优惠：12','110.83.124.184');
INSERT INTO huishi_admin_log VALUES('430','2015-03-04 21:57:13','0','','添加BPM账户：1','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('431','2015-03-04 22:01:24','0','','修改BPM账户：1','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('432','2015-03-04 22:06:53','0','','修改BPM账户：3','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('433','2015-03-04 23:02:57','0','','修改BPM账户：20','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('434','2015-03-04 23:09:53','0','','修改BPM账户：20','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('435','2015-03-04 23:10:12','0','','修改BPM账户：20','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('436','2015-03-05 17:41:10','0','','修改BPM账户：1','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('437','2015-03-05 17:42:15','0','','修改BPM账户：15','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('438','2015-03-05 22:34:44','0','','修改优惠：8','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('439','2015-03-05 23:54:28','0','','添加BPM文档：3','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('440','2015-03-06 19:32:31','1','admin','','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('441','2015-03-09 00:49:23','1','admin','：9','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('442','2015-03-09 00:50:51','1','admin','：9','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('443','2015-03-09 17:16:33','0','','修改bpm项目：360','117.30.168.147');
INSERT INTO huishi_admin_log VALUES('444','2015-03-09 17:58:33','0','','修改bpm项目：360','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('445','2015-03-09 18:18:17','0','','添加直播：349','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('446','2015-03-09 18:26:56','0','','添加直播：364','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('447','2015-03-09 19:02:46','0','','修改bpm项目：360','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('448','2015-03-10 19:40:44','0','','添加BPM文档：3','120.42.22.232');
INSERT INTO huishi_admin_log VALUES('449','2015-03-11 19:33:11','0','','添加bpm项目：','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('450','2015-03-11 20:02:05','0','','修改bpm项目：401','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('451','2015-03-11 21:25:57','0','','修改bpm项目：360','117.30.94.180');
INSERT INTO huishi_admin_log VALUES('452','2015-03-11 21:26:05','0','','修改bpm项目：373','117.30.94.180');
INSERT INTO huishi_admin_log VALUES('453','2015-03-12 18:23:45','1','admin',':105','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('454','2015-03-16 22:32:24','0','','修改视频：12','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('455','2015-03-16 23:10:31','0','','修改培训：40','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('456','2015-03-16 23:15:39','0','','修改培训：15','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('457','2015-03-17 00:33:31','0','','修改视频：12','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('458','2015-03-17 00:34:47','0','','修改视频：12','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('459','2015-03-17 00:44:25','0','','修改视频：12','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('460','2015-03-17 00:45:17','0','','修改视频：12','27.159.17.30');
INSERT INTO huishi_admin_log VALUES('461','2015-03-19 22:08:26','1','admin','修改视频：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('462','2015-03-19 22:08:32','1','admin','修改视频：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('463','2015-03-19 22:08:39','1','admin','修改视频：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('464','2015-03-19 22:15:03','0','','修改视频：11','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('465','2015-03-19 22:27:34','0','','修改视频：11','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('466','2015-03-19 22:28:12','0','','添加视频：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('467','2015-03-19 23:06:49','0','','修改视频：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('468','2015-03-19 23:14:29','0','','修改视频：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('469','2015-03-19 23:16:36','0','','修改视频：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('470','2015-03-20 00:09:31','0','','修改视频：8','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('471','2015-03-20 00:50:58','0','','添加视频：14','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('472','2015-03-20 00:56:40','0','','修改视频：14','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('473','2015-03-20 04:20:14','0','','添加优惠：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('474','2015-03-20 04:21:20','0','','修改优惠：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('475','2015-03-20 04:22:43','0','','修改优惠：13','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('476','2015-03-20 04:25:03','1','admin','：80','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('477','2015-03-20 04:27:36','1','admin','：81','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('478','2015-03-20 04:28:01','1','admin',':106','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('479','2015-03-20 19:29:38','0','','添加bpm项目：','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('480','2015-03-20 20:52:18','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('481','2015-03-20 21:06:55','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('482','2015-03-20 21:07:01','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('483','2015-03-20 21:07:07','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('484','2015-03-20 21:07:13','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('485','2015-03-20 21:07:21','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('486','2015-03-20 21:07:26','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('487','2015-03-20 21:07:33','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('488','2015-03-20 21:07:44','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('489','2015-03-20 21:08:14','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('490','2015-03-20 21:08:22','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('491','2015-03-20 21:08:29','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('492','2015-03-20 21:08:38','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('493','2015-03-20 21:08:44','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('494','2015-03-20 21:08:50','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('495','2015-03-20 21:09:09','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('496','2015-03-20 21:36:28','0','','添加bpm项目：','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('497','2015-03-21 00:49:48','0','','修改视频：14','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('498','2015-03-23 20:26:21','0','','添加BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('499','2015-03-23 20:27:17','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('500','2015-03-23 20:27:39','0','','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('501','2015-03-23 20:31:34','1','admin','添加讲师：110','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('502','2015-03-23 20:33:13','1','admin','','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('503','2015-03-23 20:58:16','1','admin','','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('504','2015-03-23 20:58:29','1','admin','修改BPM账户：1','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('505','2015-03-23 22:12:50','0','','添加视频：15','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('506','2015-03-23 22:16:34','0','','修改视频：15','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('507','2015-03-23 22:42:27','0','','添加视频：16','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('508','2015-03-23 22:43:32','0','','修改视频：16','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('509','2015-03-23 23:03:30','0','','修改视频：15','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('510','2015-03-23 23:13:32','0','','添加视频：17','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('511','2015-03-23 23:14:13','0','','修改视频：17','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('512','2015-03-23 23:28:12','0','','修改视频：16','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('513','2015-03-23 23:50:37','0','','修改视频：17','124.72.52.82');
INSERT INTO huishi_admin_log VALUES('514','2015-03-24 20:48:55','0','','修改bpm项目：412','117.30.169.172');
INSERT INTO huishi_admin_log VALUES('515','2015-03-24 20:56:25','0','','修改bpm项目：411','117.30.169.172');
INSERT INTO huishi_admin_log VALUES('516','2015-03-25 18:15:53','0','','修改视频：14','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('517','2015-03-25 23:27:46','0','','修改视频：11','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('518','2015-03-25 23:28:38','0','','修改视频：11','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('519','2015-03-26 01:08:37','1','admin','：13','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('520','2015-03-27 18:38:33','0','','添加bpm项目：','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('521','2015-03-28 00:51:08','1','admin','添加BPM账户：1','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('522','2015-03-28 00:51:47','1','admin','添加讲师：111','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('523','2015-03-28 00:52:12','1','admin','修改BPM账户：1','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('524','2015-03-28 00:52:27','1','admin','修改BPM账户：1','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('525','2015-03-28 00:54:44','1','admin','','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('526','2015-03-28 01:17:46','1','admin','修改BPM账户：1','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('527','2015-03-31 01:28:47','0','','修改bpm项目：411','120.35.92.28');
INSERT INTO huishi_admin_log VALUES('528','2015-03-31 23:34:32','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('529','2015-03-31 23:42:36','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('530','2015-03-31 23:54:34','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('531','2015-03-31 23:56:03','0','','修改视频：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('532','2015-03-31 23:56:39','0','','修改视频：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('533','2015-03-31 23:56:56','0','','修改视频：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('534','2015-03-31 23:57:06','0','','修改视频：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('535','2015-03-31 23:57:49','0','','修改视频：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('536','2015-04-01 00:34:52','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('537','2015-04-01 00:41:19','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('538','2015-04-01 00:42:02','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('539','2015-04-01 00:55:31','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('540','2015-04-01 00:56:29','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('541','2015-04-01 01:02:43','0','','修改bpm项目：411','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('542','2015-04-01 01:02:58','0','','修改bpm项目：411','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('543','2015-04-01 01:12:38','0','','添加bpm项目：','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('544','2015-04-01 01:18:10','0','','修改视频：14','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('545','2015-04-01 01:18:32','0','','添加bpm项目：','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('546','2015-04-01 01:19:15','0','','修改视频：14','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('547','2015-04-01 01:21:02','0','','修改视频：14','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('548','2015-04-01 01:50:57','1','admin','修改视频：12','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('549','2015-04-01 03:04:30','0','','修改视频：12','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('550','2015-04-01 03:08:23','0','','修改视频：12','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('551','2015-04-01 03:09:20','0','','修改视频：12','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('552','2015-04-01 03:12:16','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('553','2015-04-01 03:12:43','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('554','2015-04-01 03:13:28','0','','修改视频：12','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('555','2015-04-01 03:14:06','0','','修改视频：15','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('556','2015-04-01 03:16:15','0','','修改视频：16','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('557','2015-04-01 03:33:35','1','admin','：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('558','2015-04-01 03:34:58','0','','修改视频：8','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('559','2015-04-01 03:39:03','0','','修改视频：8','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('560','2015-04-01 04:09:27','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('561','2015-04-01 04:12:01','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('562','2015-04-01 18:04:00','0','','修改培训：51','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('563','2015-04-01 18:30:07','0','','修改bpm项目：432','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('564','2015-04-01 21:39:39','0','','修改视频：15','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('565','2015-04-02 01:16:06','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('566','2015-04-02 01:16:57','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('567','2015-04-02 01:19:12','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('568','2015-04-02 01:20:09','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('569','2015-04-02 01:23:49','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('570','2015-04-02 01:30:31','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('571','2015-04-02 01:30:51','0','','修改视频：13','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('572','2015-04-02 18:39:13','1','admin','添加讲师：112','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('573','2015-04-02 18:39:30','1','admin','修改培训：51','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('574','2015-04-02 18:40:14','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('575','2015-04-02 18:40:54','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('576','2015-04-02 18:43:28','1','admin','添加BPM账户：3','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('577','2015-04-02 18:52:30','1','admin','修改BPM账户：3','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('578','2015-04-02 19:08:06','0','','修改视频：6','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('579','2015-04-02 19:08:25','0','','修改视频：2','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('580','2015-04-02 19:09:14','0','','修改视频：7','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('581','2015-04-02 19:10:42','0','','修改视频：9','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('582','2015-04-02 19:12:07','1','admin','修改培训：51','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('583','2015-04-02 19:33:57','0','','修改bpm项目：433','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('584','2015-04-02 20:00:00','1','admin','修改BPM账户：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('585','2015-04-02 20:01:53','1','admin','修改BPM账户：1','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('586','2015-04-02 23:26:40','0','','添加BPM文档：4','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('587','2015-04-02 23:30:52','0','','修改视频：11','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('588','2015-04-03 00:25:09','0','','添加视频：18','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('589','2015-04-03 01:06:01','0','','修改视频：14','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('590','2015-04-03 01:10:01','0','','添加视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('591','2015-04-03 01:11:31','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('592','2015-04-03 01:16:37','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('593','2015-04-03 01:32:55','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('594','2015-04-03 01:36:57','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('595','2015-04-03 01:37:25','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('596','2015-04-03 01:39:02','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('597','2015-04-03 01:40:31','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('598','2015-04-03 01:42:41','0','','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('599','2015-04-03 01:44:02','1','admin','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('600','2015-04-03 01:46:32','1','admin','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('601','2015-04-03 01:55:48','1','admin','修改视频：19','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('602','2015-04-03 18:07:51','0','','修改视频：18','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('603','2015-04-03 18:10:12','0','','修改视频：18','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('604','2015-04-03 19:53:20','0','','修改直播：315','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('605','2015-04-03 20:00:02','0','','修改直播：315','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('606','2015-04-03 22:55:52','0','','添加视频：20','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('607','2015-04-04 00:25:18','0','','添加bpm项目：','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('608','2015-04-04 00:35:36','0','','修改视频：20','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('609','2015-04-05 05:52:54','1','admin','','120.33.105.134');
INSERT INTO huishi_admin_log VALUES('610','2015-04-07 17:17:32','0','','修改bpm项目：432','117.30.95.60');
INSERT INTO huishi_admin_log VALUES('611','2015-04-07 17:41:14','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('612','2015-04-07 17:42:02','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('613','2015-04-07 18:22:13','0','','修改视频：20','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('614','2015-04-07 18:32:04','1','admin','','117.30.95.60');
INSERT INTO huishi_admin_log VALUES('615','2015-04-07 19:11:01','0','','修改视频：20','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('616','2015-04-07 20:03:07','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('617','2015-04-07 21:34:57','0','','修改视频：10','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('618','2015-04-07 21:49:15','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('619','2015-04-07 22:04:13','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('620','2015-04-07 22:20:00','1','admin','','120.39.73.196');
INSERT INTO huishi_admin_log VALUES('621','2015-04-08 00:37:58','0','','修改直播：218','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('622','2015-04-08 17:50:45','1','admin','：8','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('623','2015-04-08 17:51:36','1','admin','：8','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('624','2015-04-08 17:51:54','1','admin','：8','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('625','2015-04-08 19:11:12','0','','修改直播：88','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('626','2015-04-08 19:12:40','0','','修改直播：364','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('627','2015-04-08 19:18:31','0','','修改直播：299','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('628','2015-04-08 19:22:13','0','','修改直播：256','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('629','2015-04-08 19:22:48','0','','修改直播：349','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('630','2015-04-08 21:33:56','0','','修改视频：20','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('631','2015-04-08 21:36:30','0','','修改视频：19','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('632','2015-04-08 21:37:13','0','','修改视频：18','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('633','2015-04-08 21:38:14','0','','修改视频：10','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('634','2015-04-08 21:41:42','0','','修改视频：19','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('635','2015-04-09 00:35:00','0','','修改培训：45','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('636','2015-04-09 00:35:15','0','','修改培训：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('637','2015-04-09 18:56:29','0','','修改bpm项目：222','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('638','2015-04-09 18:56:46','0','','修改bpm项目：223','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('639','2015-04-09 18:56:58','0','','修改bpm项目：222','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('640','2015-04-09 19:04:03','0','','添加bpm项目：','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('641','2015-04-09 19:09:54','0','','修改bpm项目：493','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('642','2015-04-09 19:29:17','0','','添加视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('643','2015-04-09 19:29:32','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('644','2015-04-09 19:30:05','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('645','2015-04-09 19:30:25','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('646','2015-04-09 19:30:54','1','admin','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('647','2015-04-09 21:28:56','0','','添加视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('648','2015-04-09 21:29:30','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('649','2015-04-09 21:30:16','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('650','2015-04-09 21:34:15','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('651','2015-04-09 23:44:42','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('652','2015-04-10 00:38:29','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('653','2015-04-10 00:58:28','0','','修改视频：10','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('654','2015-04-10 00:59:09','0','','修改视频：10','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('655','2015-04-10 01:01:24','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('656','2015-04-10 01:24:57','0','','添加视频：23','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('657','2015-04-10 18:36:27','0','','修改直播：271','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('658','2015-04-10 19:22:02','0','','修改BPM账户：1','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('659','2015-04-10 19:39:47','0','','添加bpm项目：','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('660','2015-04-10 19:40:53','0','','添加bpm项目：','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('661','2015-04-10 21:11:46','1','admin','添加讲师：113','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('662','2015-04-10 21:12:20','1','admin','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('663','2015-04-10 21:13:41','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('664','2015-04-10 21:14:04','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('665','2015-04-10 21:14:56','1','admin','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('666','2015-04-10 21:16:44','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('667','2015-04-10 21:17:04','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('668','2015-04-10 21:17:15','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('669','2015-04-10 21:34:03','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('670','2015-04-10 22:23:19','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('671','2015-04-10 22:33:07','1','admin','修改BPM账户：1','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('672','2015-04-10 22:35:37','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('673','2015-04-10 22:39:56','0','','修改视频：21','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('674','2015-04-11 00:39:05','0','','添加视频：24','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('675','2015-04-11 01:12:03','0','','修改视频：24','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('676','2015-04-11 18:03:26','0','','修改bpm项目：432','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('677','2015-04-11 18:40:45','0','','修改bpm项目：434','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('678','2015-04-11 18:41:14','0','','修改bpm项目：412','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('679','2015-04-13 17:11:07','0','','修改bpm项目：412','220.160.144.135');
INSERT INTO huishi_admin_log VALUES('680','2015-04-13 22:33:28','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('681','2015-04-13 23:20:19','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('682','2015-04-13 23:23:17','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('683','2015-04-14 00:04:41','0','','添加直播：462','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('684','2015-04-14 00:10:28','0','','修改直播：462','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('685','2015-04-14 01:59:58','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('686','2015-04-14 02:02:50','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('687','2015-04-14 02:05:10','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('688','2015-04-14 03:13:15','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('689','2015-04-14 03:14:12','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('690','2015-04-14 03:23:47','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('691','2015-04-14 03:27:26','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('692','2015-04-14 03:28:24','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('693','2015-04-14 04:24:47','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('694','2015-04-14 04:25:14','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('695','2015-04-14 04:25:51','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('696','2015-04-14 18:19:21','1','admin',':107','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('697','2015-04-14 18:40:02','0','','修改视频：10','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('698','2015-04-14 18:41:41','0','','修改视频：10','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('699','2015-04-14 19:41:14','0','','修改优惠：62','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('700','2015-04-14 19:41:20','0','','修改优惠：62','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('701','2015-04-14 20:02:56','0','','修改优惠：18','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('702','2015-04-14 20:03:15','0','','修改优惠：18','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('703','2015-04-14 20:03:37','0','','修改优惠：62','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('704','2015-04-14 20:03:52','0','','修改优惠：62','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('705','2015-04-14 20:04:11','0','','修改优惠：18','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('706','2015-04-14 20:04:38','0','','修改视频：22','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('707','2015-04-15 00:11:03','0','','添加视频：25','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('708','2015-04-15 00:13:39','0','','修改视频：25','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('709','2015-04-15 00:17:24','0','','修改视频：25','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('710','2015-04-15 00:21:04','1','admin','','121.204.246.247');
INSERT INTO huishi_admin_log VALUES('711','2015-04-15 01:59:35','0','','修改视频：24','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('712','2015-04-15 02:00:40','0','','修改视频：13','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('713','2015-04-15 02:00:49','0','','修改视频：12','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('714','2015-04-15 02:00:59','0','','修改视频：11','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('715','2015-04-15 02:01:07','0','','修改视频：10','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('716','2015-04-15 02:01:48','0','','修改视频：7','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('717','2015-04-15 02:02:14','0','','修改视频：19','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('718','2015-04-15 02:02:48','0','','修改视频：21','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('719','2015-04-15 02:03:01','0','','修改视频：18','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('720','2015-04-15 02:03:09','0','','修改视频：15','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('721','2015-04-15 02:03:20','0','','修改视频：6','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('722','2015-04-15 02:03:26','0','','修改视频：2','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('723','2015-04-15 02:03:58','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('724','2015-04-15 02:04:16','0','','修改视频：20','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('725','2015-04-15 02:04:24','0','','修改视频：16','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('726','2015-04-15 02:04:54','0','','修改视频：25','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('727','2015-04-15 02:05:02','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('728','2015-04-15 02:05:15','0','','修改视频：9','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('729','2015-04-15 02:05:48','0','','修改视频：8','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('730','2015-04-15 02:05:57','0','','修改视频：14','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('731','2015-04-15 02:06:10','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('732','2015-04-15 02:06:52','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('733','2015-04-15 17:21:15','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('734','2015-04-15 18:17:03','0','','修改bpm公告：9','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('735','2015-04-15 21:42:19','0','','修改BPM账户：19','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('736','2015-04-15 21:43:10','0','','修改BPM账户：19','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('737','2015-04-15 23:02:05','1','admin','添加讲师：114','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('738','2015-04-15 23:02:39','1','admin','添加视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('739','2015-04-15 23:03:43','1','admin','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('740','2015-04-15 23:04:44','1','admin','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('741','2015-04-15 23:05:39','1','admin','','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('742','2015-04-15 23:07:01','1','admin','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('743','2015-04-15 23:17:24','0','','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('744','2015-04-15 23:21:24','1','admin','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('745','2015-04-16 00:04:50','0','','修改视频：24','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('746','2015-04-16 00:19:55','0','','添加视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('747','2015-04-16 00:22:47','0','','修改视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('748','2015-04-16 00:26:46','0','','修改视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('749','2015-04-16 00:33:47','0','','修改视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('750','2015-04-16 00:34:34','0','','修改视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('751','2015-04-16 00:39:03','0','','修改视频：8','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('752','2015-04-16 01:25:50','0','','添加bpm项目：','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('753','2015-04-16 04:29:50','0','','修改视频：26','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('754','2015-04-16 04:30:32','0','','修改视频：27','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('755','2015-04-16 04:41:12','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('756','2015-04-16 04:43:29','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('757','2015-04-16 04:47:47','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('758','2015-04-16 04:51:41','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('759','2015-04-16 04:51:52','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('760','2015-04-16 04:52:15','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('761','2015-04-16 04:53:00','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('762','2015-04-16 04:53:50','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('763','2015-04-16 04:54:46','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('764','2015-04-16 04:55:42','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('765','2015-04-16 04:56:40','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('766','2015-04-16 04:59:52','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('767','2015-04-16 05:00:45','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('768','2015-04-16 05:01:18','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('769','2015-04-16 05:05:28','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('770','2015-04-16 18:01:02','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('771','2015-04-16 18:01:14','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('772','2015-04-16 18:01:57','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('773','2015-04-16 19:09:01','0','','修改视频：15','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('774','2015-04-16 21:21:53','0','','添加BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('775','2015-04-16 21:22:30','1','admin','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('776','2015-04-16 21:23:34','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('777','2015-04-16 21:23:42','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('778','2015-04-16 21:50:54','0','','修改视频：10','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('779','2015-04-16 22:27:49','0','','添加视频：28','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('780','2015-04-16 22:28:52','0','','修改视频：28','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('781','2015-04-16 22:31:31','0','','修改视频：28','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('782','2015-04-16 22:42:02','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('783','2015-04-16 22:42:15','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('784','2015-04-16 22:42:22','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('785','2015-04-16 22:42:34','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('786','2015-04-16 22:42:41','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('787','2015-04-16 22:42:51','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('788','2015-04-16 22:43:15','0','','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('789','2015-04-17 00:09:16','0','','添加直播：478','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('790','2015-04-17 00:15:11','0','','修改直播：478','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('791','2015-04-17 02:50:30','0','','修改视频：24','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('792','2015-04-17 03:40:44','0','','添加视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('793','2015-04-17 03:41:11','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('794','2015-04-17 03:45:53','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('795','2015-04-17 03:54:57','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('796','2015-04-17 03:54:59','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('797','2015-04-17 04:28:42','0','','添加视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('798','2015-04-17 04:30:08','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('799','2015-04-17 04:37:36','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('800','2015-04-17 04:37:44','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('801','2015-04-17 04:38:01','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('802','2015-04-17 04:38:08','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('803','2015-04-17 04:38:08','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('804','2015-04-17 04:38:33','0','','修改视频：29','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('805','2015-04-17 18:30:53','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('806','2015-04-17 18:32:44','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('807','2015-04-17 18:32:45','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('808','2015-04-17 18:32:47','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('809','2015-04-17 18:32:50','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('810','2015-04-17 20:35:49','0','','修改BPM账户：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('811','2015-04-17 21:48:22','1','admin','添加讲师：115','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('812','2015-04-17 21:49:01','1','admin','添加BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('813','2015-04-17 21:50:21','1','admin','修改BPM账户：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('814','2015-04-17 22:37:54','1','admin','添加bpm活动：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('815','2015-04-18 01:05:54','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('816','2015-04-18 01:09:14','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('817','2015-04-20 20:56:40','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('818','2015-04-20 20:57:21','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('819','2015-04-20 22:42:47','0','','添加视频：31','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('820','2015-04-20 22:47:31','0','','修改视频：31','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('821','2015-04-20 22:50:03','0','','修改视频：31','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('822','2015-04-20 22:50:47','0','','修改视频：31','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('823','2015-04-20 22:51:01','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('824','2015-04-20 22:52:51','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('825','2015-04-20 22:54:15','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('826','2015-04-20 22:54:40','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('827','2015-04-20 22:56:21','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('828','2015-04-20 23:00:15','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('829','2015-04-20 23:00:27','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('830','2015-04-20 23:00:39','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('831','2015-04-20 23:02:21','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('832','2015-04-20 23:05:17','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('833','2015-04-20 23:09:33','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('834','2015-04-20 23:09:54','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('835','2015-04-20 23:12:22','0','','修改视频：1','120.36.182.214');
INSERT INTO huishi_admin_log VALUES('836','2015-04-20 23:12:25','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('837','2015-04-20 23:12:26','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('838','2015-04-20 23:22:12','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('839','2015-04-20 23:37:28','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('840','2015-04-20 23:38:18','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('841','2015-04-20 23:48:11','0','','修改视频：1','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('842','2015-04-21 00:02:18','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('843','2015-04-21 00:20:28','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('844','2015-04-21 00:20:42','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('845','2015-04-21 01:02:38','0','','修改视频：24','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('846','2015-04-21 01:03:30','0','','修改视频：24','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('847','2015-04-21 01:37:57','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('848','2015-04-21 02:08:43','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('849','2015-04-21 03:21:49','0','','修改视频：22','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('850','2015-04-21 18:03:46','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('851','2015-04-21 18:32:55','0','','修改视频：12','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('852','2015-04-21 22:04:57','0','','添加bpm项目：','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('853','2015-04-21 22:06:42','0','','添加bpm项目：','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('854','2015-04-21 23:33:16','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('855','2015-04-21 23:33:47','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('856','2015-04-21 23:34:40','0','','修改视频：30','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('857','2015-04-22 00:27:29','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('858','2015-04-22 00:28:14','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('859','2015-04-22 00:48:04','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('860','2015-04-22 00:48:43','0','','修改视频：23','120.36.199.166');
INSERT INTO huishi_admin_log VALUES('861','2015-04-22 03:48:13','0','','修改bpm项目：455','120.32.149.42');
INSERT INTO huishi_admin_log VALUES('862','2015-04-22 17:39:26','0','','修改视频：23','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('863','2015-04-22 19:50:44','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('864','2015-04-22 19:51:42','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('865','2015-04-22 19:58:03','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('866','2015-04-22 23:40:53','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('867','2015-04-23 02:46:50','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('868','2015-04-23 03:26:49','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('869','2015-04-23 04:04:15','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('870','2015-04-23 04:13:59','0','','添加视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('871','2015-04-23 04:14:23','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('872','2015-04-23 04:15:23','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('873','2015-04-23 04:15:24','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('874','2015-04-23 04:16:42','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('875','2015-04-23 04:31:14','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('876','2015-04-23 04:34:25','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('877','2015-04-23 04:34:55','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('878','2015-04-23 04:47:52','0','','添加视频：33','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('879','2015-04-23 04:49:31','0','','修改视频：33','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('880','2015-04-23 05:08:57','0','','修改视频：33','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('881','2015-04-23 05:21:59','0','','修改视频：33','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('882','2015-04-23 19:59:19','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('883','2015-04-23 21:44:51','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('884','2015-04-23 21:54:39','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('885','2015-04-23 22:00:52','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('886','2015-04-23 22:43:05','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('887','2015-04-23 22:45:40','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('888','2015-04-23 22:46:16','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('889','2015-04-23 23:02:02','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('890','2015-04-23 23:36:43','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('891','2015-04-23 23:37:10','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('892','2015-04-23 23:41:18','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('893','2015-04-23 23:44:19','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('894','2015-04-23 23:45:11','0','','修改视频：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('895','2015-04-24 00:10:26','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('896','2015-04-24 00:11:22','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('897','2015-04-24 00:11:25','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('898','2015-04-24 00:29:57','0','','修改视频：32','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('899','2015-04-24 00:55:56','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('900','2015-04-24 01:01:00','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('901','2015-04-24 01:28:48','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('902','2015-04-24 01:44:01','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('903','2015-04-24 01:44:10','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('904','2015-04-24 02:09:52','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('905','2015-04-24 17:24:40','0','','修改视频：23','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('906','2015-04-24 19:29:02','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('907','2015-04-24 19:29:46','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('908','2015-04-24 19:31:24','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('909','2015-04-24 19:53:57','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('910','2015-04-24 19:54:11','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('911','2015-04-24 22:05:40','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('912','2015-04-24 23:07:10','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('913','2015-04-24 23:08:17','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('914','2015-04-24 23:08:50','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('915','2015-04-24 23:09:31','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('916','2015-04-24 23:09:50','0','','修改视频：24','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('917','2015-04-24 23:25:57','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('918','2015-04-24 23:26:05','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('919','2015-04-25 00:07:04','0','','修改视频：33','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('920','2015-04-25 00:57:11','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('921','2015-04-25 00:58:25','0','','修改视频：22','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('922','2015-04-25 02:57:17','0','','修改BPM账户：1','59.57.179.110');
INSERT INTO huishi_admin_log VALUES('923','2015-04-27 21:49:18','1','admin','：105','27.159.33.192');
INSERT INTO huishi_admin_log VALUES('924','2015-04-27 22:31:49','0','','修改视频：33','27.159.33.192');
INSERT INTO huishi_admin_log VALUES('925','2015-04-27 22:51:28','0','','修改视频：27','27.159.32.45');
INSERT INTO huishi_admin_log VALUES('926','2015-04-27 23:50:56','0','','修改视频：22','27.159.32.45');
INSERT INTO huishi_admin_log VALUES('927','2015-04-27 23:50:58','0','','修改视频：22','27.159.32.45');
INSERT INTO huishi_admin_log VALUES('928','2015-04-27 23:51:11','0','','修改视频：22','27.159.32.45');
INSERT INTO huishi_admin_log VALUES('929','2015-04-27 23:51:12','0','','修改视频：22','27.159.32.45');
INSERT INTO huishi_admin_log VALUES('930','2015-04-27 23:55:11','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('931','2015-04-28 01:32:13','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('932','2015-04-28 01:32:28','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('933','2015-04-28 17:06:42','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('934','2015-04-28 17:22:33','0','','添加视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('935','2015-04-28 17:22:39','0','','添加视频：35','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('936','2015-04-28 17:26:19','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('937','2015-04-28 17:32:24','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('938','2015-04-28 17:32:47','0','','修改视频：35','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('939','2015-04-28 17:33:54','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('940','2015-04-28 17:35:37','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('941','2015-04-28 17:57:54','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('942','2015-04-28 18:01:40','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('943','2015-04-28 18:11:43','0','','修改视频：1','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('944','2015-04-28 18:26:47','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('945','2015-04-28 18:35:13','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('946','2015-04-28 19:00:04','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('947','2015-04-28 19:05:16','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('948','2015-04-28 20:56:32','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('949','2015-04-28 20:57:02','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('950','2015-04-28 21:02:17','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('951','2015-04-28 21:02:39','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('952','2015-04-28 21:06:00','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('953','2015-04-28 21:07:52','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('954','2015-04-28 21:09:32','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('955','2015-04-28 21:09:34','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('956','2015-04-28 21:09:45','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('957','2015-04-28 21:10:00','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('958','2015-04-28 21:13:03','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('959','2015-04-28 21:13:17','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('960','2015-04-28 21:14:29','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('961','2015-04-28 21:16:53','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('962','2015-04-28 21:17:25','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('963','2015-04-28 21:18:51','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('964','2015-04-28 21:19:33','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('965','2015-04-28 21:39:59','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('966','2015-04-28 21:40:06','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('967','2015-04-28 21:41:42','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('968','2015-04-28 22:06:35','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('969','2015-04-28 22:09:19','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('970','2015-04-28 22:10:29','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('971','2015-04-29 00:00:22','0','','修改视频：10','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('972','2015-04-29 00:01:01','0','','修改视频：10','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('973','2015-04-29 00:16:42','0','','修改视频：10','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('974','2015-04-29 01:06:09','0','','添加视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('975','2015-04-29 01:19:19','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('976','2015-04-29 01:22:36','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('977','2015-04-29 01:27:16','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('978','2015-04-29 01:28:15','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('979','2015-04-29 03:09:35','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('980','2015-04-29 03:26:02','0','','修改视频：1','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('981','2015-04-29 18:41:23','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('982','2015-04-29 18:41:58','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('983','2015-04-29 18:43:28','0','','修改视频：36','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('984','2015-04-29 21:58:22','0','','修改视频：29','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('985','2015-04-29 22:02:42','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('986','2015-04-30 01:30:05','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('987','2015-04-30 01:30:30','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('988','2015-04-30 02:30:06','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('989','2015-04-30 02:30:57','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('990','2015-04-30 02:55:46','0','','修改视频：15','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('991','2015-04-30 03:32:09','0','','添加视频：37','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('992','2015-04-30 03:35:49','0','','修改视频：37','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('993','2015-04-30 18:50:47','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('994','2015-04-30 20:02:40','0','','修改视频：28','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('995','2015-04-30 20:43:03','0','','修改视频：28','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('996','2015-04-30 20:55:08','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('997','2015-04-30 21:37:15','0','','修改视频：33','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('998','2015-04-30 21:47:09','0','','修改视频：28','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('999','2015-04-30 21:48:04','0','','修改视频：28','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1000','2015-05-01 00:18:15','0','','添加视频：38','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1001','2015-05-01 00:37:08','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1002','2015-05-01 00:46:26','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1003','2015-05-01 00:55:47','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1004','2015-05-01 01:01:06','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1005','2015-05-01 01:02:00','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1006','2015-05-01 01:32:34','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1007','2015-05-01 02:22:52','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1008','2015-05-01 02:26:21','0','','添加视频：39','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1009','2015-05-01 02:26:48','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1010','2015-05-01 02:26:56','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1011','2015-05-01 02:57:48','0','','修改视频：39','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1012','2015-05-01 02:59:26','0','','修改视频：39','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1013','2015-05-01 03:00:07','0','','修改视频：39','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1014','2015-05-04 19:31:16','0','','修改视频：39','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1015','2015-05-04 21:49:18','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1016','2015-05-04 23:39:54','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1017','2015-05-04 23:45:29','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1018','2015-05-04 23:47:16','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1019','2015-05-04 23:48:11','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1020','2015-05-04 23:50:56','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1021','2015-05-04 23:52:02','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1022','2015-05-05 00:15:54','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1023','2015-05-05 00:35:37','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1024','2015-05-05 00:50:25','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1025','2015-05-05 00:51:21','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1026','2015-05-05 00:58:00','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1027','2015-05-05 00:58:33','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1028','2015-05-05 01:06:37','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1029','2015-05-05 01:23:06','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1030','2015-05-05 01:23:29','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1031','2015-05-05 01:23:46','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1032','2015-05-05 01:24:22','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1033','2015-05-05 01:24:40','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1034','2015-05-05 18:30:37','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1035','2015-05-05 18:31:25','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1036','2015-05-05 19:44:08','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1037','2015-05-05 19:46:19','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1038','2015-05-05 19:55:51','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1039','2015-05-05 19:56:15','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1040','2015-05-05 19:56:41','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1041','2015-05-05 19:59:19','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1042','2015-05-05 20:00:13','0','','修改视频：34','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1043','2015-05-05 21:35:40','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1044','2015-05-05 21:35:49','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1045','2015-05-06 05:05:52','0','','添加bpm公告：10','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1046','2015-05-06 21:37:56','0','','修改bpm项目：528','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1047','2015-05-06 21:39:59','0','','添加bpm项目：','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1048','2015-05-06 21:46:02','0','','修改bpm项目：530','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1049','2015-05-06 21:52:56','0','','修改bpm项目：455','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1050','2015-05-06 21:56:19','0','','修改视频：33','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1051','2015-05-06 23:09:46','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1052','2015-05-06 23:11:08','0','','修改视频：24','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1053','2015-05-06 23:18:42','0','','修改视频：1','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1054','2015-05-07 00:54:53','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1055','2015-05-07 00:57:16','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1056','2015-05-07 01:02:47','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1057','2015-05-07 02:29:43','0','','修改视频：22','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1058','2015-05-07 22:00:00','0','','修改直播：462','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1059','2015-05-07 23:01:59','0','','修改视频：21','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1060','2015-05-07 23:02:14','0','','修改视频：21','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1061','2015-05-07 23:02:45','0','','修改视频：21','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1062','2015-05-08 00:56:06','0','','修改BPM账户：3','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1063','2015-05-08 01:00:50','0','','修改BPM账户：3','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1064','2015-05-08 17:44:38','0','','修改视频：21','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1065','2015-05-08 21:49:32','0','','修改视频：21','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1066','2015-05-08 22:32:13','0','','添加优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1067','2015-05-08 22:42:26','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1068','2015-05-08 22:43:51','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1069','2015-05-08 22:44:32','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1070','2015-05-08 22:47:38','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1071','2015-05-08 22:49:13','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1072','2015-05-08 22:50:29','0','','修改优惠：14','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1073','2015-05-08 23:45:05','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1074','2015-05-08 23:46:25','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1075','2015-05-08 23:47:12','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1076','2015-05-08 23:48:00','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1077','2015-05-08 23:49:57','0','','修改视频：23','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1078','2015-05-11 21:44:46','0','','添加视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1079','2015-05-11 21:50:32','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1080','2015-05-11 21:55:51','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1081','2015-05-11 22:04:17','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1082','2015-05-11 22:05:51','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1083','2015-05-11 22:10:49','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1084','2015-05-11 22:12:43','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1085','2015-05-11 22:25:00','0','','修改视频：40','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1086','2015-05-11 22:27:03','0','','修改bpm项目：530','120.35.92.108');
INSERT INTO huishi_admin_log VALUES('1087','2015-05-11 23:59:11','0','','修改视频：27','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1088','2015-05-12 00:03:28','0','','修改视频：27','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1089','2015-05-12 01:05:25','0','','修改视频：24','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1090','2015-05-12 22:17:07','0','','修改视频：24','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1091','2015-05-12 22:19:09','0','','修改视频：24','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1092','2015-05-12 22:19:44','0','','修改视频：24','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1093','2015-05-12 22:21:46','0','','修改视频：24','120.35.93.1');
INSERT INTO huishi_admin_log VALUES('1094','2015-05-13 01:02:43','0','','添加视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1095','2015-05-13 01:03:11','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1096','2015-05-13 01:04:17','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1097','2015-05-13 01:05:05','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1098','2015-05-13 01:10:56','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1099','2015-05-13 01:12:25','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1100','2015-05-13 01:16:24','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1101','2015-05-13 01:16:43','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1102','2015-05-13 17:28:57','0','','修改直播：299','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1103','2015-05-13 17:29:39','0','','修改直播：299','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1104','2015-05-13 23:48:33','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1105','2015-05-14 22:16:16','0','','添加bpm项目：','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1106','2015-05-14 23:23:09','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1107','2015-05-15 00:45:58','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1108','2015-05-15 01:08:44','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1109','2015-05-15 01:13:56','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1110','2015-05-15 01:48:56','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1111','2015-05-15 19:32:50','0','','添加视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1112','2015-05-15 19:37:05','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1113','2015-05-15 19:42:24','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1114','2015-05-15 19:43:11','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1115','2015-05-15 21:44:32','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1116','2015-05-15 22:17:56','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1117','2015-05-15 22:19:49','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1118','2015-05-15 23:03:19','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1119','2015-05-15 23:03:43','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1120','2015-05-15 23:06:39','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1121','2015-05-15 23:08:31','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1122','2015-05-15 23:08:50','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1123','2015-05-15 23:09:43','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1124','2015-05-15 23:10:09','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1125','2015-05-15 23:10:55','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1126','2015-05-15 23:11:46','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1127','2015-05-15 23:12:06','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1128','2015-05-15 23:17:23','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1129','2015-05-15 23:18:30','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1130','2015-05-15 23:23:38','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1131','2015-05-16 00:16:45','0','','修改视频：28','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1132','2015-05-16 00:17:08','0','','修改视频：28','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1133','2015-05-16 00:18:07','0','','修改视频：28','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1134','2015-05-16 01:25:29','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1135','2015-05-16 01:25:40','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1136','2015-05-16 01:28:53','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1137','2015-05-16 01:32:26','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1138','2015-05-16 01:33:40','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1139','2015-05-16 01:34:36','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1140','2015-05-16 18:15:52','0','','修改bpm项目：533','121.204.240.150');
INSERT INTO huishi_admin_log VALUES('1141','2015-05-16 21:03:07','0','','修改bpm项目：529','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1142','2015-05-18 17:49:10','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1143','2015-05-18 17:51:21','0','','修改视频：36','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1144','2015-05-18 17:52:53','0','','修改视频：39','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1145','2015-05-18 17:53:56','0','','修改视频：30','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1146','2015-05-18 17:54:37','0','','修改视频：29','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1147','2015-05-18 17:56:07','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1148','2015-05-18 18:50:28','0','','修改视频：8','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1149','2015-05-18 18:50:50','0','','修改视频：14','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1150','2015-05-18 18:51:05','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1151','2015-05-18 19:08:45','0','','添加视频：43','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1152','2015-05-18 19:13:49','0','','修改视频：43','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1153','2015-05-18 21:53:41','0','','修改bpm项目：533','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1154','2015-05-18 21:53:45','0','','修改bpm项目：533','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1155','2015-05-18 22:14:29','0','','修改视频：24','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1156','2015-05-18 22:14:49','0','','修改视频：13','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1157','2015-05-18 22:15:12','0','','修改视频：10','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1158','2015-05-18 22:15:30','0','','修改视频：11','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1159','2015-05-18 22:15:49','0','','修改视频：12','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1160','2015-05-18 23:33:28','0','','修改bpm项目：529','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1161','2015-05-19 01:25:30','0','','修改视频：25','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1162','2015-05-19 17:44:21','0','','修改视频：24','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1163','2015-05-19 19:39:35','0','','修改视频：43','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1164','2015-05-19 19:40:13','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1165','2015-05-19 19:41:11','0','','修改视频：40','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1166','2015-05-19 19:41:44','0','','修改视频：37','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1167','2015-05-19 19:42:09','0','','修改视频：34','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1168','2015-05-19 19:42:44','0','','修改视频：32','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1169','2015-05-19 19:43:32','0','','修改视频：21','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1170','2015-05-19 19:44:15','0','','修改视频：19','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1171','2015-05-19 19:45:01','0','','修改视频：18','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1172','2015-05-19 22:21:29','0','','修改视频：33','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1173','2015-05-19 22:21:46','0','','修改视频：28','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1174','2015-05-19 22:45:20','0','','修改视频：43','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1175','2015-05-19 22:45:46','0','','修改视频：42','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1176','2015-05-19 22:46:06','0','','修改视频：41','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1177','2015-05-19 22:47:04','0','','修改视频：39','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1178','2015-05-19 22:53:54','0','','修改视频：40','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1179','2015-05-19 22:55:08','0','','修改视频：40','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1180','2015-05-19 22:59:39','0','','修改视频：38','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1181','2015-05-19 22:59:50','0','','修改视频：37','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1182','2015-05-19 23:00:07','0','','修改视频：36','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1183','2015-05-19 23:00:21','0','','修改视频：34','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1184','2015-05-19 23:00:43','0','','修改视频：33','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1185','2015-05-19 23:11:56','0','','修改视频：33','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1186','2015-05-19 23:41:57','0','','修改视频：30','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1187','2015-05-19 23:42:11','0','','修改视频：29','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1188','2015-05-19 23:44:25','0','','修改视频：28','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1189','2015-05-19 23:44:40','0','','修改视频：27','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1190','2015-05-19 23:45:38','0','','修改视频：24','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1191','2015-05-19 23:46:01','0','','修改视频：23','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1192','2015-05-19 23:46:21','0','','修改视频：22','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1193','2015-05-19 23:59:51','0','','修改视频：32','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1194','2015-05-20 00:00:22','0','','修改视频：20','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1195','2015-05-20 00:00:38','0','','修改视频：21','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1196','2015-05-20 00:00:56','0','','修改视频：19','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1197','2015-05-20 00:01:22','0','','修改视频：18','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1198','2015-05-20 00:01:55','0','','修改视频：15','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1199','2015-05-20 00:02:33','0','','修改视频：10','120.42.116.145');
INSERT INTO huishi_admin_log VALUES('1200','2015-05-20 00:52:14','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1201','2015-05-20 00:52:56','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1202','2015-05-20 00:56:28','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1203','2015-05-20 01:03:25','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1204','2015-05-20 01:03:35','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1205','2015-05-20 01:04:22','0','','修改视频：40','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1206','2015-05-20 01:05:36','0','','修改视频：26','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1207','2015-05-20 01:05:59','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1208','2015-05-20 01:25:13','0','','修改视频：28','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1209','2015-05-20 01:26:13','0','','修改视频：43','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1210','2015-05-20 01:29:10','0','','修改视频：24','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1211','2015-05-20 01:29:22','0','','修改视频：23','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1212','2015-05-20 01:31:07','0','','修改视频：14','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1213','2015-05-20 01:31:17','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1214','2015-05-20 01:32:52','0','','修改视频：14','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1215','2015-05-20 17:20:56','0','','修改bpm项目：530','120.39.74.216');
INSERT INTO huishi_admin_log VALUES('1216','2015-05-20 17:21:09','0','','修改bpm项目：530','120.39.74.216');
INSERT INTO huishi_admin_log VALUES('1217','2015-05-20 18:33:25','0','','修改视频：11','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1218','2015-05-20 18:33:57','0','','修改视频：13','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1219','2015-05-20 18:35:28','0','','修改视频：16','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1220','2015-05-20 19:45:21','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1221','2015-05-20 20:00:44','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1222','2015-05-20 20:01:29','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1223','2015-05-20 21:45:14','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1224','2015-05-20 21:45:28','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1225','2015-05-20 21:46:04','0','','修改视频：9','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1226','2015-05-20 21:46:27','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1227','2015-05-20 21:46:55','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1228','2015-05-20 21:47:25','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1229','2015-05-20 21:47:43','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1230','2015-05-20 21:48:20','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1231','2015-05-20 21:49:24','0','','修改视频：9','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1232','2015-05-20 21:49:55','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1233','2015-05-20 21:52:16','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1234','2015-05-20 21:52:50','0','','修改视频：43','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1235','2015-05-20 21:53:12','0','','修改视频：43','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1236','2015-05-20 21:56:57','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1237','2015-05-20 21:57:13','0','','修改视频：9','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1238','2015-05-20 21:57:27','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1239','2015-05-20 22:39:52','0','','修改视频：27','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1240','2015-05-20 23:16:13','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1241','2015-05-20 23:19:42','0','','修改视频：6','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1242','2015-05-20 23:20:17','0','','修改视频：2','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1243','2015-05-20 23:24:35','0','','修改视频：7','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1244','2015-05-20 23:27:46','0','','修改视频：43','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1245','2015-05-21 00:08:49','0','','添加视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1246','2015-05-21 00:09:08','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1247','2015-05-21 00:18:30','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1248','2015-05-21 00:22:56','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1249','2015-05-21 00:40:19','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1250','2015-05-21 00:45:40','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1251','2015-05-21 00:51:46','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1252','2015-05-21 00:52:02','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1253','2015-05-21 00:53:20','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1254','2015-05-21 00:56:33','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1255','2015-05-21 18:58:35','0','','修改视频：11','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1256','2015-05-21 18:59:14','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1257','2015-05-21 18:59:36','0','','修改视频：13','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1258','2015-05-21 19:00:14','0','','修改视频：11','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1259','2015-05-21 19:18:12','0','','修改视频：10','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1260','2015-05-21 19:28:20','0','','修改视频：23','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1261','2015-05-21 21:39:27','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1262','2015-05-21 21:39:49','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1263','2015-05-21 22:30:18','0','','修改视频：28','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1264','2015-05-21 22:50:53','0','','添加视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1265','2015-05-21 22:52:37','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1266','2015-05-21 22:53:20','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1267','2015-05-21 22:54:09','0','','添加bpm项目：','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1268','2015-05-21 22:56:20','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1269','2015-05-21 22:56:39','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1270','2015-05-21 23:00:32','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1271','2015-05-21 23:00:54','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1272','2015-05-21 23:24:28','1','admin',':108','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1273','2015-05-21 23:30:21','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1274','2015-05-21 23:30:29','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1275','2015-05-21 23:35:03','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1276','2015-05-22 01:20:40','0','','修改视频：21','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1277','2015-05-22 01:21:44','0','','修改视频：21','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1278','2015-05-22 01:23:01','0','','修改视频：21','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1279','2015-05-22 01:34:01','0','','修改视频：21','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1280','2015-05-22 19:20:31','0','','修改视频：28','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1281','2015-05-22 20:14:20','0','','修改bpm项目：534','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1282','2015-05-22 20:51:36','0','','修改bpm项目：533','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1283','2015-05-22 21:03:29','0','','修改bpm项目：533','120.39.74.216');
INSERT INTO huishi_admin_log VALUES('1284','2015-05-22 21:08:09','0','','修改bpm项目：534','120.39.74.216');
INSERT INTO huishi_admin_log VALUES('1285','2015-05-22 22:57:05','0','','修改视频：24','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1286','2015-05-23 00:50:54','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1287','2015-05-23 01:08:42','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1288','2015-05-23 01:32:44','0','','修改视频：38','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1289','2015-05-23 01:36:04','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1290','2015-05-23 01:36:23','0','','修改视频：42','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1291','2015-05-23 01:48:15','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1292','2015-05-23 01:58:27','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1293','2015-05-23 02:16:39','0','','添加视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1294','2015-05-23 02:23:24','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1295','2015-05-23 02:36:43','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1296','2015-05-23 02:38:48','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1297','2015-05-23 02:41:02','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1298','2015-05-23 02:41:16','0','','修改视频：1','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1299','2015-05-23 02:41:32','0','','修改视频：2','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1300','2015-05-23 02:41:40','0','','修改视频：6','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1301','2015-05-23 02:41:54','0','','修改视频：7','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1302','2015-05-23 02:42:07','0','','修改视频：9','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1303','2015-05-23 02:42:42','0','','修改视频：7','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1304','2015-05-23 02:43:13','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1305','2015-05-23 02:43:24','0','','修改视频：11','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1306','2015-05-23 02:45:10','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1307','2015-05-23 02:47:34','0','','修改视频：21','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1308','2015-05-23 02:47:51','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1309','2015-05-23 02:48:04','0','','修改视频：14','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1310','2015-05-23 02:48:16','0','','修改视频：20','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1311','2015-05-23 02:48:31','0','','修改视频：28','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1312','2015-05-23 02:48:42','0','','修改视频：25','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1313','2015-05-23 02:48:50','0','','修改视频：33','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1314','2015-05-23 02:48:59','0','','修改视频：29','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1315','2015-05-23 02:49:10','0','','修改视频：27','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1316','2015-05-23 02:49:25','0','','修改视频：37','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1317','2015-05-23 02:49:34','0','','修改视频：38','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1318','2015-05-23 02:49:43','0','','修改视频：39','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1319','2015-05-23 02:49:56','0','','修改视频：43','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1320','2015-05-23 02:50:06','0','','修改视频：44','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1321','2015-05-23 02:50:49','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1322','2015-05-23 02:51:50','0','','修改视频：45','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1323','2015-05-23 02:52:10','0','','修改视频：41','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1324','2015-05-23 02:52:33','0','','修改视频：40','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1325','2015-05-23 02:52:49','0','','修改视频：36','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1326','2015-05-23 02:52:56','0','','修改视频：34','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1327','2015-05-23 02:53:08','0','','修改视频：32','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1328','2015-05-23 02:53:16','0','','修改视频：30','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1329','2015-05-23 02:53:25','0','','修改视频：22','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1330','2015-05-23 02:53:28','0','','修改视频：30','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1331','2015-05-23 02:53:38','0','','修改视频：29','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1332','2015-05-23 02:53:59','0','','修改视频：26','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1333','2015-05-23 02:54:20','0','','修改视频：24','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1334','2015-05-23 02:54:27','0','','修改视频：23','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1335','2015-05-23 02:54:59','0','','修改视频：18','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1336','2015-05-23 02:55:09','0','','修改视频：16','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1337','2015-05-23 02:55:24','0','','修改视频：15','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1338','2015-05-23 02:55:51','0','','修改视频：13','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1339','2015-05-23 02:56:10','0','','修改视频：12','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1340','2015-05-23 02:56:18','0','','修改视频：10','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1341','2015-05-23 02:56:41','0','','修改视频：8','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1342','2015-05-23 03:12:45','0','','修改视频：1','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1343','2015-05-23 03:13:13','0','','修改视频：30','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1344','2015-05-23 03:13:22','0','','修改视频：29','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1345','2015-05-23 03:14:13','0','','修改视频：26','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1346','2015-05-23 20:27:14','0','','修改bpm项目：534','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1347','2015-05-23 22:15:16','0','','添加视频：47','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1348','2015-05-23 22:19:32','0','','修改视频：47','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1349','2015-05-23 22:21:46','0','','修改视频：47','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1350','2015-05-23 22:28:21','0','','添加视频：48','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1351','2015-05-23 22:30:13','0','','修改视频：48','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1352','2015-05-23 22:30:30','0','','修改视频：48','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1353','2015-05-24 02:32:43','0','','修改视频：28','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1354','2015-05-25 17:27:37','0','','修改视频：46','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1355','2015-05-25 17:49:58','0','','添加视频：49','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1356','2015-05-25 17:50:28','0','','修改视频：49','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1357','2015-05-25 17:51:14','0','','修改视频：49','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1358','2015-05-25 17:57:02','0','','修改视频：49','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1359','2015-05-25 18:38:28','0','','修改视频：20','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1360','2015-05-25 19:02:23','0','','修改视频：9','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1361','2015-05-25 19:07:12','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1362','2015-05-25 19:08:20','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1363','2015-05-25 19:08:27','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1364','2015-05-25 19:08:36','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1365','2015-05-25 19:08:40','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1366','2015-05-25 19:09:01','0','','修改视频：19','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1367','2015-05-25 19:24:20','0','','添加视频：50','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1368','2015-05-25 21:54:04','0','','添加视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1369','2015-05-25 22:09:29','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1370','2015-05-25 22:14:56','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1371','2015-05-25 22:15:59','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1372','2015-05-25 22:16:33','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1373','2015-05-25 22:18:23','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1374','2015-05-25 22:19:14','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1375','2015-05-25 22:19:20','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1376','2015-05-25 22:19:34','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1377','2015-05-25 22:19:38','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1378','2015-05-25 22:20:04','0','','修改视频：51','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1379','2015-05-26 00:03:45','0','','添加视频：52','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1380','2015-05-26 00:07:24','0','','修改视频：52','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1381','2015-05-26 00:08:00','0','','修改视频：52','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1382','2015-05-26 01:26:34','0','','修改视频：39','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1383','2015-05-26 01:52:24','0','','添加视频：53','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1384','2015-05-26 01:52:55','0','','修改视频：53','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1385','2015-05-26 01:53:50','0','','修改视频：53','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1386','2015-05-26 17:46:51','0','','修改视频：40','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1387','2015-05-26 17:56:36','0','','修改视频：40','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1388','2015-05-26 19:19:17','0','','修改视频：24','220.160.128.38');
INSERT INTO huishi_admin_log VALUES('1389','2015-05-27 00:38:48','0','','修改视频：52','120.36.193.38');
INSERT INTO huishi_admin_log VALUES('1390','2015-05-27 00:50:37','0','','修改视频：46','120.36.193.38');
INSERT INTO huishi_admin_log VALUES('1391','2015-05-27 01:00:45','0','','添加视频：54','120.36.193.38');
INSERT INTO huishi_admin_log VALUES('1392','2015-05-27 01:01:18','0','','修改视频：54','120.36.193.38');
INSERT INTO huishi_admin_log VALUES('1393','2015-05-27 01:44:39','1','admin','','120.36.193.38');

DROP TABLE IF EXISTS huishi_admin_nav;
CREATE TABLE `huishi_admin_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) CHARACTER SET utf8 NOT NULL COMMENT '栏目标题',
  `url` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '栏目url',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '栏目排序',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '上一级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

INSERT INTO huishi_admin_nav VALUES('1','基础设置','','1','0');
INSERT INTO huishi_admin_nav VALUES('2','参数配置','','2','0');
INSERT INTO huishi_admin_nav VALUES('3','培训管理','','3','0');
INSERT INTO huishi_admin_nav VALUES('4','认证管理','','4','0');
INSERT INTO huishi_admin_nav VALUES('5','人员管理','','5','0');
INSERT INTO huishi_admin_nav VALUES('6','管理首页','main','1','1');
INSERT INTO huishi_admin_nav VALUES('7','系统设置','sys_setting','2','1');
INSERT INTO huishi_admin_nav VALUES('8','管理员设置','admin_list','3','1');
INSERT INTO huishi_admin_nav VALUES('9','导航设置','nav_list','4','1');
INSERT INTO huishi_admin_nav VALUES('10','其他管理','','6','0');
INSERT INTO huishi_admin_nav VALUES('11','广告类别','asd_position_list','0','10');
INSERT INTO huishi_admin_nav VALUES('12','广告列表','asd_list','0','10');
INSERT INTO huishi_admin_nav VALUES('13','数据库备份','db_save','0','10');
INSERT INTO huishi_admin_nav VALUES('14','数据库恢复','db_recover','0','10');
INSERT INTO huishi_admin_nav VALUES('15','课程类别','course_cate','0','2');
INSERT INTO huishi_admin_nav VALUES('16','教室管理','course_classroom','1','2');
INSERT INTO huishi_admin_nav VALUES('17','讲师管理','course_teacher','0','5');
INSERT INTO huishi_admin_nav VALUES('18','学员管理','course_student','0','5');
INSERT INTO huishi_admin_nav VALUES('19','单页管理','other','6','2');
INSERT INTO huishi_admin_nav VALUES('20','课程性质','course_xingzhi','5','2');
INSERT INTO huishi_admin_nav VALUES('21','开课时段','course_shiduan','4','2');
INSERT INTO huishi_admin_nav VALUES('22','培训管理','train','0','3');
INSERT INTO huishi_admin_nav VALUES('23','培训课件','course_kejian','3','2');
INSERT INTO huishi_admin_nav VALUES('24','企业定制','server_company','7','2');
INSERT INTO huishi_admin_nav VALUES('25','资讯管理','','7','0');
INSERT INTO huishi_admin_nav VALUES('26','资讯类别','news_catlist','0','25');
INSERT INTO huishi_admin_nav VALUES('27','资讯列表','news_list','0','25');
INSERT INTO huishi_admin_nav VALUES('28','考试认证','exam','0','4');
INSERT INTO huishi_admin_nav VALUES('29','公开课管理','act_list','0','3');
INSERT INTO huishi_admin_nav VALUES('30','报名管理','sign','3','3');
INSERT INTO huishi_admin_nav VALUES('31','校区管理','course_school','2','2');
INSERT INTO huishi_admin_nav VALUES('32','意向软件','yxruanjian','8','2');

DROP TABLE IF EXISTS huishi_admin_setting;
CREATE TABLE `huishi_admin_setting` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `nav_id` int(1) DEFAULT '0',
  `look` tinyint(1) NOT NULL DEFAULT '0' COMMENT '查看',
  `add` tinyint(1) NOT NULL DEFAULT '0' COMMENT '添加',
  `edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '修改',
  `del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除',
  `exe` tinyint(1) NOT NULL DEFAULT '0' COMMENT '执行',
  `view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '浏览',
  `sqlcode` text COMMENT 'sql限制语句',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO huishi_admin_setting VALUES('1','1','1','0','0','0','0','0','0','');
INSERT INTO huishi_admin_setting VALUES('2','1','2','0','0','0','0','0','0','');
INSERT INTO huishi_admin_setting VALUES('3','1','3','0','0','0','0','0','0','');
INSERT INTO huishi_admin_setting VALUES('4','1','4','0','0','0','0','0','0','');
INSERT INTO huishi_admin_setting VALUES('5','1','5','0','0','0','0','0','0','');
INSERT INTO huishi_admin_setting VALUES('6','1','6','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('7','1','7','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('8','1','8','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('10','1','9','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('11','1','11','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('12','1','12','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('13','1','13','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('14','1','14','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('15','1','15','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('16','1','16','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('17','1','17','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('18','1','18','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('19','1','19','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('20','1','20','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('21','1','21','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('22','1','22','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('23','1','23','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('24','1','24','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('25','1','26','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('26','1','27','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('27','1','28','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('28','1','29','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('29','1','30','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('30','1','31','1','1','1','1','1','1','');
INSERT INTO huishi_admin_setting VALUES('31','1','32','1','1','1','1','1','1','');

DROP TABLE IF EXISTS huishi_admin_user;
CREATE TABLE `huishi_admin_user` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `admin_name` varchar(60) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `admin_email` varchar(60) NOT NULL DEFAULT '' COMMENT '管理员email',
  `admin_password` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `last_login` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登陆ip',
  `group_id` tinyint(4) DEFAULT NULL COMMENT '管理组',
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_name` (`admin_name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO huishi_admin_user VALUES('1','admin','','da1d976222bb4c518e1a71332de993ac','2013-07-24 09:40:31','2014-09-09 14:37:29','60.55.9.69','0');

DROP TABLE IF EXISTS huishi_areas;
CREATE TABLE `huishi_areas` (
  `area_id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `parent_id` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '地区父id',
  `area_name` varchar(120) NOT NULL DEFAULT '' COMMENT '地区名称',
  `area_code` varchar(255) DEFAULT NULL COMMENT '城市代码',
  `area_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '地区类型 0:country,1:province,2:city,3:district',
  `area_xy` varchar(20) NOT NULL DEFAULT '0,0' COMMENT '地图坐标',
  `recommend` int(11) NOT NULL DEFAULT '0' COMMENT '最新推荐按时间调用条数',
  PRIMARY KEY (`area_id`),
  KEY `parent_id` (`parent_id`),
  KEY `area_type` (`area_type`)
) ENGINE=MyISAM AUTO_INCREMENT=3936 DEFAULT CHARSET=utf8;

INSERT INTO huishi_areas VALUES('1','0','中国','','0','0,0','0');
INSERT INTO huishi_areas VALUES('2','1','北京','','1','0,0','0');
INSERT INTO huishi_areas VALUES('3','1','安徽','','1','0,0','0');
INSERT INTO huishi_areas VALUES('4','1','福建','','1','0,0','0');
INSERT INTO huishi_areas VALUES('5','1','甘肃','','1','0,0','0');
INSERT INTO huishi_areas VALUES('6','1','广东','','1','0,0','0');
INSERT INTO huishi_areas VALUES('7','1','广西','','1','0,0','0');
INSERT INTO huishi_areas VALUES('8','1','贵州','','1','0,0','0');
INSERT INTO huishi_areas VALUES('9','1','海南','','1','0,0','0');
INSERT INTO huishi_areas VALUES('10','1','河北','','1','0,0','0');
INSERT INTO huishi_areas VALUES('11','1','河南','','1','0,0','0');
INSERT INTO huishi_areas VALUES('12','1','黑龙江','','1','0,0','0');
INSERT INTO huishi_areas VALUES('13','1','湖北','','1','0,0','0');
INSERT INTO huishi_areas VALUES('14','1','湖南','','1','0,0','0');
INSERT INTO huishi_areas VALUES('15','1','吉林','','1','0,0','0');
INSERT INTO huishi_areas VALUES('16','1','江苏','','1','0,0','0');
INSERT INTO huishi_areas VALUES('17','1','江西','','1','0,0','0');
INSERT INTO huishi_areas VALUES('18','1','辽宁','','1','0,0','0');
INSERT INTO huishi_areas VALUES('19','1','内蒙古','','1','0,0','0');
INSERT INTO huishi_areas VALUES('20','1','宁夏','','1','0,0','0');
INSERT INTO huishi_areas VALUES('21','1','青海','','1','0,0','0');
INSERT INTO huishi_areas VALUES('22','1','山东','','1','0,0','0');
INSERT INTO huishi_areas VALUES('23','1','山西','','1','0,0','0');
INSERT INTO huishi_areas VALUES('24','1','陕西','','1','0,0','0');
INSERT INTO huishi_areas VALUES('25','1','上海','','1','0,0','0');
INSERT INTO huishi_areas VALUES('26','1','四川','','1','0,0','0');
INSERT INTO huishi_areas VALUES('27','1','天津','','1','0,0','0');
INSERT INTO huishi_areas VALUES('28','1','西藏','','1','0,0','0');
INSERT INTO huishi_areas VALUES('29','1','新疆','','1','0,0','0');
INSERT INTO huishi_areas VALUES('30','1','云南','','1','0,0','0');
INSERT INTO huishi_areas VALUES('31','1','浙江','','1','0,0','0');
INSERT INTO huishi_areas VALUES('32','1','重庆','','1','0,0','0');
INSERT INTO huishi_areas VALUES('33','1','香港','','1','0,0','0');
INSERT INTO huishi_areas VALUES('34','1','澳门','','1','0,0','0');
INSERT INTO huishi_areas VALUES('35','1','台湾','','1','0,0','0');
INSERT INTO huishi_areas VALUES('36','3','安庆','','2','0,0','0');
INSERT INTO huishi_areas VALUES('37','3','蚌埠','','2','0,0','0');
INSERT INTO huishi_areas VALUES('38','3','巢湖','','2','0,0','0');
INSERT INTO huishi_areas VALUES('39','3','池州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('40','3','滁州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('41','3','阜阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('42','3','淮北','','2','0,0','0');
INSERT INTO huishi_areas VALUES('43','3','淮南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('44','3','黄山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('45','3','六安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('46','3','马鞍山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('47','3','宿州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('48','3','铜陵','','2','0,0','0');
INSERT INTO huishi_areas VALUES('49','3','芜湖','','2','0,0','0');
INSERT INTO huishi_areas VALUES('50','3','宣城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('51','3','亳州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('52','2','北京','bj','2','0,0','0');
INSERT INTO huishi_areas VALUES('53','4','福州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('54','4','龙岩','','2','0,0','0');
INSERT INTO huishi_areas VALUES('55','4','南平','','2','0,0','0');
INSERT INTO huishi_areas VALUES('56','4','宁德','','2','0,0','0');
INSERT INTO huishi_areas VALUES('57','4','莆田','','2','0,0','0');
INSERT INTO huishi_areas VALUES('58','4','泉州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('59','4','三明','','2','0,0','0');
INSERT INTO huishi_areas VALUES('60','4','厦门','xm','2','0,0','0');
INSERT INTO huishi_areas VALUES('61','4','漳州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('62','5','兰州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('63','5','白银','','2','0,0','0');
INSERT INTO huishi_areas VALUES('64','5','定西','','2','0,0','0');
INSERT INTO huishi_areas VALUES('65','5','甘南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('66','5','嘉峪关','','2','0,0','0');
INSERT INTO huishi_areas VALUES('67','5','金昌','','2','0,0','0');
INSERT INTO huishi_areas VALUES('68','5','酒泉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('69','5','临夏','','2','0,0','0');
INSERT INTO huishi_areas VALUES('70','5','陇南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('71','5','平凉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('72','5','庆阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('73','5','天水','','2','0,0','0');
INSERT INTO huishi_areas VALUES('74','5','武威','','2','0,0','0');
INSERT INTO huishi_areas VALUES('75','5','张掖','','2','0,0','0');
INSERT INTO huishi_areas VALUES('76','6','广州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('77','6','深圳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('78','6','潮州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('79','6','东莞','','2','0,0','0');
INSERT INTO huishi_areas VALUES('80','6','佛山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('81','6','河源','','2','0,0','0');
INSERT INTO huishi_areas VALUES('82','6','惠州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('83','6','江门','','2','0,0','0');
INSERT INTO huishi_areas VALUES('84','6','揭阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('85','6','茂名','','2','0,0','0');
INSERT INTO huishi_areas VALUES('86','6','梅州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('87','6','清远','','2','0,0','0');
INSERT INTO huishi_areas VALUES('88','6','汕头','','2','0,0','0');
INSERT INTO huishi_areas VALUES('89','6','汕尾','','2','0,0','0');
INSERT INTO huishi_areas VALUES('90','6','韶关','','2','0,0','0');
INSERT INTO huishi_areas VALUES('91','6','阳江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('92','6','云浮','','2','0,0','0');
INSERT INTO huishi_areas VALUES('93','6','湛江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('94','6','肇庆','','2','0,0','0');
INSERT INTO huishi_areas VALUES('95','6','中山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('96','6','珠海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('97','7','南宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('98','7','桂林','','2','0,0','0');
INSERT INTO huishi_areas VALUES('99','7','百色','','2','0,0','0');
INSERT INTO huishi_areas VALUES('100','7','北海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('101','7','崇左','','2','0,0','0');
INSERT INTO huishi_areas VALUES('102','7','防城港','','2','0,0','0');
INSERT INTO huishi_areas VALUES('103','7','贵港','','2','0,0','0');
INSERT INTO huishi_areas VALUES('104','7','河池','','2','0,0','0');
INSERT INTO huishi_areas VALUES('105','7','贺州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('106','7','来宾','','2','0,0','0');
INSERT INTO huishi_areas VALUES('107','7','柳州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('108','7','钦州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('109','7','梧州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('110','7','玉林','','2','0,0','0');
INSERT INTO huishi_areas VALUES('111','8','贵阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('112','8','安顺','','2','0,0','0');
INSERT INTO huishi_areas VALUES('113','8','毕节','','2','0,0','0');
INSERT INTO huishi_areas VALUES('114','8','六盘水','','2','0,0','0');
INSERT INTO huishi_areas VALUES('115','8','黔东南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('116','8','黔南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('117','8','黔西南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('118','8','铜仁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('119','8','遵义','','2','0,0','0');
INSERT INTO huishi_areas VALUES('120','9','海口','','2','0,0','0');
INSERT INTO huishi_areas VALUES('121','9','三亚','','2','0,0','0');
INSERT INTO huishi_areas VALUES('122','9','白沙','','2','0,0','0');
INSERT INTO huishi_areas VALUES('123','9','保亭','','2','0,0','0');
INSERT INTO huishi_areas VALUES('124','9','昌江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('125','9','澄迈县','','2','0,0','0');
INSERT INTO huishi_areas VALUES('126','9','定安县','','2','0,0','0');
INSERT INTO huishi_areas VALUES('127','9','东方','','2','0,0','0');
INSERT INTO huishi_areas VALUES('128','9','乐东','','2','0,0','0');
INSERT INTO huishi_areas VALUES('129','9','临高县','','2','0,0','0');
INSERT INTO huishi_areas VALUES('130','9','陵水','','2','0,0','0');
INSERT INTO huishi_areas VALUES('131','9','琼海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('132','9','琼中','','2','0,0','0');
INSERT INTO huishi_areas VALUES('133','9','屯昌县','','2','0,0','0');
INSERT INTO huishi_areas VALUES('134','9','万宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('135','9','文昌','','2','0,0','0');
INSERT INTO huishi_areas VALUES('136','9','五指山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('137','9','儋州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('138','10','石家庄','','2','0,0','0');
INSERT INTO huishi_areas VALUES('139','10','保定','','2','0,0','0');
INSERT INTO huishi_areas VALUES('140','10','沧州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('141','10','承德','','2','0,0','0');
INSERT INTO huishi_areas VALUES('142','10','邯郸','','2','0,0','0');
INSERT INTO huishi_areas VALUES('143','10','衡水','','2','0,0','0');
INSERT INTO huishi_areas VALUES('144','10','廊坊','','2','0,0','0');
INSERT INTO huishi_areas VALUES('145','10','秦皇岛','','2','0,0','0');
INSERT INTO huishi_areas VALUES('146','10','唐山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('147','10','邢台','','2','0,0','0');
INSERT INTO huishi_areas VALUES('148','10','张家口','','2','0,0','0');
INSERT INTO huishi_areas VALUES('149','11','郑州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('150','11','洛阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('151','11','开封','','2','0,0','0');
INSERT INTO huishi_areas VALUES('152','11','安阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('153','11','鹤壁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('154','11','济源','','2','0,0','0');
INSERT INTO huishi_areas VALUES('155','11','焦作','','2','0,0','0');
INSERT INTO huishi_areas VALUES('156','11','南阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('157','11','平顶山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('158','11','三门峡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('159','11','商丘','','2','0,0','0');
INSERT INTO huishi_areas VALUES('160','11','新乡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('161','11','信阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('162','11','许昌','','2','0,0','0');
INSERT INTO huishi_areas VALUES('163','11','周口','','2','0,0','0');
INSERT INTO huishi_areas VALUES('164','11','驻马店','','2','0,0','0');
INSERT INTO huishi_areas VALUES('165','11','漯河','','2','0,0','0');
INSERT INTO huishi_areas VALUES('166','11','濮阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('167','12','哈尔滨','','2','0,0','0');
INSERT INTO huishi_areas VALUES('168','12','大庆','','2','0,0','0');
INSERT INTO huishi_areas VALUES('169','12','大兴安岭','','2','0,0','0');
INSERT INTO huishi_areas VALUES('170','12','鹤岗','','2','0,0','0');
INSERT INTO huishi_areas VALUES('171','12','黑河','','2','0,0','0');
INSERT INTO huishi_areas VALUES('172','12','鸡西','','2','0,0','0');
INSERT INTO huishi_areas VALUES('173','12','佳木斯','','2','0,0','0');
INSERT INTO huishi_areas VALUES('174','12','牡丹江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('175','12','七台河','','2','0,0','0');
INSERT INTO huishi_areas VALUES('176','12','齐齐哈尔','','2','0,0','0');
INSERT INTO huishi_areas VALUES('177','12','双鸭山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('178','12','绥化','','2','0,0','0');
INSERT INTO huishi_areas VALUES('179','12','伊春','','2','0,0','0');
INSERT INTO huishi_areas VALUES('180','13','武汉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('181','13','仙桃','','2','0,0','0');
INSERT INTO huishi_areas VALUES('182','13','鄂州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('183','13','黄冈','','2','0,0','0');
INSERT INTO huishi_areas VALUES('184','13','黄石','','2','0,0','0');
INSERT INTO huishi_areas VALUES('185','13','荆门','','2','0,0','0');
INSERT INTO huishi_areas VALUES('186','13','荆州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('187','13','潜江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('188','13','神农架林区','','2','0,0','0');
INSERT INTO huishi_areas VALUES('189','13','十堰','','2','0,0','0');
INSERT INTO huishi_areas VALUES('190','13','随州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('191','13','天门','','2','0,0','0');
INSERT INTO huishi_areas VALUES('192','13','咸宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('193','13','襄樊','','2','0,0','0');
INSERT INTO huishi_areas VALUES('194','13','孝感','','2','0,0','0');
INSERT INTO huishi_areas VALUES('195','13','宜昌','','2','0,0','0');
INSERT INTO huishi_areas VALUES('196','13','恩施','','2','0,0','0');
INSERT INTO huishi_areas VALUES('197','14','长沙','','2','0,0','0');
INSERT INTO huishi_areas VALUES('198','14','张家界','','2','0,0','0');
INSERT INTO huishi_areas VALUES('199','14','常德','','2','0,0','0');
INSERT INTO huishi_areas VALUES('200','14','郴州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('201','14','衡阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('202','14','怀化','','2','0,0','0');
INSERT INTO huishi_areas VALUES('203','14','娄底','','2','0,0','0');
INSERT INTO huishi_areas VALUES('204','14','邵阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('205','14','湘潭','','2','0,0','0');
INSERT INTO huishi_areas VALUES('206','14','湘西','','2','0,0','0');
INSERT INTO huishi_areas VALUES('207','14','益阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('208','14','永州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('209','14','岳阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('210','14','株洲','','2','0,0','0');
INSERT INTO huishi_areas VALUES('211','15','长春','','2','0,0','0');
INSERT INTO huishi_areas VALUES('212','15','吉林','','2','0,0','0');
INSERT INTO huishi_areas VALUES('213','15','白城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('214','15','白山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('215','15','辽源','','2','0,0','0');
INSERT INTO huishi_areas VALUES('216','15','四平','','2','0,0','0');
INSERT INTO huishi_areas VALUES('217','15','松原','','2','0,0','0');
INSERT INTO huishi_areas VALUES('218','15','通化','','2','0,0','0');
INSERT INTO huishi_areas VALUES('219','15','延边','','2','0,0','0');
INSERT INTO huishi_areas VALUES('220','16','南京','','2','0,0','0');
INSERT INTO huishi_areas VALUES('221','16','苏州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('222','16','无锡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('223','16','常州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('224','16','淮安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('225','16','连云港','','2','0,0','0');
INSERT INTO huishi_areas VALUES('226','16','南通','','2','0,0','0');
INSERT INTO huishi_areas VALUES('227','16','宿迁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('228','16','泰州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('229','16','徐州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('230','16','盐城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('231','16','扬州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('232','16','镇江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('233','17','南昌','','2','0,0','0');
INSERT INTO huishi_areas VALUES('234','17','抚州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('235','17','赣州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('236','17','吉安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('237','17','景德镇','','2','0,0','0');
INSERT INTO huishi_areas VALUES('238','17','九江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('239','17','萍乡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('240','17','上饶','','2','0,0','0');
INSERT INTO huishi_areas VALUES('241','17','新余','','2','0,0','0');
INSERT INTO huishi_areas VALUES('242','17','宜春','','2','0,0','0');
INSERT INTO huishi_areas VALUES('243','17','鹰潭','','2','0,0','0');
INSERT INTO huishi_areas VALUES('244','18','沈阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('245','18','大连','','2','0,0','0');
INSERT INTO huishi_areas VALUES('246','18','鞍山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('247','18','本溪','','2','0,0','0');
INSERT INTO huishi_areas VALUES('248','18','朝阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('249','18','丹东','','2','0,0','0');
INSERT INTO huishi_areas VALUES('250','18','抚顺','','2','0,0','0');
INSERT INTO huishi_areas VALUES('251','18','阜新','','2','0,0','0');
INSERT INTO huishi_areas VALUES('252','18','葫芦岛','','2','0,0','0');
INSERT INTO huishi_areas VALUES('253','18','锦州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('254','18','辽阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('255','18','盘锦','','2','0,0','0');
INSERT INTO huishi_areas VALUES('256','18','铁岭','','2','0,0','0');
INSERT INTO huishi_areas VALUES('257','18','营口','','2','0,0','0');
INSERT INTO huishi_areas VALUES('258','19','呼和浩特','','2','0,0','0');
INSERT INTO huishi_areas VALUES('259','19','阿拉善盟','','2','0,0','0');
INSERT INTO huishi_areas VALUES('260','19','巴彦淖尔盟','','2','0,0','0');
INSERT INTO huishi_areas VALUES('261','19','包头','','2','0,0','0');
INSERT INTO huishi_areas VALUES('262','19','赤峰','','2','0,0','0');
INSERT INTO huishi_areas VALUES('263','19','鄂尔多斯','','2','0,0','0');
INSERT INTO huishi_areas VALUES('264','19','呼伦贝尔','','2','0,0','0');
INSERT INTO huishi_areas VALUES('265','19','通辽','','2','0,0','0');
INSERT INTO huishi_areas VALUES('266','19','乌海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('267','19','乌兰察布市','','2','0,0','0');
INSERT INTO huishi_areas VALUES('268','19','锡林郭勒盟','','2','0,0','0');
INSERT INTO huishi_areas VALUES('269','19','兴安盟','','2','0,0','0');
INSERT INTO huishi_areas VALUES('270','20','银川','','2','0,0','0');
INSERT INTO huishi_areas VALUES('271','20','固原','','2','0,0','0');
INSERT INTO huishi_areas VALUES('272','20','石嘴山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('273','20','吴忠','','2','0,0','0');
INSERT INTO huishi_areas VALUES('274','20','中卫','','2','0,0','0');
INSERT INTO huishi_areas VALUES('275','21','西宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('276','21','果洛','','2','0,0','0');
INSERT INTO huishi_areas VALUES('277','21','海北','','2','0,0','0');
INSERT INTO huishi_areas VALUES('278','21','海东','','2','0,0','0');
INSERT INTO huishi_areas VALUES('279','21','海南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('280','21','海西','','2','0,0','0');
INSERT INTO huishi_areas VALUES('281','21','黄南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('282','21','玉树','','2','0,0','0');
INSERT INTO huishi_areas VALUES('283','22','济南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('284','22','青岛','','2','0,0','0');
INSERT INTO huishi_areas VALUES('285','22','滨州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('286','22','德州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('287','22','东营','','2','0,0','0');
INSERT INTO huishi_areas VALUES('288','22','菏泽','','2','0,0','0');
INSERT INTO huishi_areas VALUES('289','22','济宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('290','22','莱芜','','2','0,0','0');
INSERT INTO huishi_areas VALUES('291','22','聊城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('292','22','临沂','','2','0,0','0');
INSERT INTO huishi_areas VALUES('293','22','日照','','2','0,0','0');
INSERT INTO huishi_areas VALUES('294','22','泰安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('295','22','威海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('296','22','潍坊','','2','0,0','0');
INSERT INTO huishi_areas VALUES('297','22','烟台','','2','0,0','0');
INSERT INTO huishi_areas VALUES('298','22','枣庄','','2','0,0','0');
INSERT INTO huishi_areas VALUES('299','22','淄博','','2','0,0','0');
INSERT INTO huishi_areas VALUES('300','23','太原','','2','0,0','0');
INSERT INTO huishi_areas VALUES('301','23','长治','','2','0,0','0');
INSERT INTO huishi_areas VALUES('302','23','大同','','2','0,0','0');
INSERT INTO huishi_areas VALUES('303','23','晋城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('304','23','晋中','','2','0,0','0');
INSERT INTO huishi_areas VALUES('305','23','临汾','','2','0,0','0');
INSERT INTO huishi_areas VALUES('306','23','吕梁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('307','23','朔州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('308','23','忻州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('309','23','阳泉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('310','23','运城','','2','0,0','0');
INSERT INTO huishi_areas VALUES('311','24','西安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('312','24','安康','','2','0,0','0');
INSERT INTO huishi_areas VALUES('313','24','宝鸡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('314','24','汉中','','2','0,0','0');
INSERT INTO huishi_areas VALUES('315','24','商洛','','2','0,0','0');
INSERT INTO huishi_areas VALUES('316','24','铜川','','2','0,0','0');
INSERT INTO huishi_areas VALUES('317','24','渭南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('318','24','咸阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('319','24','延安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('320','24','榆林','','2','0,0','0');
INSERT INTO huishi_areas VALUES('321','25','上海','','2','0,0','0');
INSERT INTO huishi_areas VALUES('322','26','成都','','2','0,0','0');
INSERT INTO huishi_areas VALUES('323','26','绵阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('324','26','阿坝','','2','0,0','0');
INSERT INTO huishi_areas VALUES('325','26','巴中','','2','0,0','0');
INSERT INTO huishi_areas VALUES('326','26','达州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('327','26','德阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('328','26','甘孜','','2','0,0','0');
INSERT INTO huishi_areas VALUES('329','26','广安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('330','26','广元','','2','0,0','0');
INSERT INTO huishi_areas VALUES('331','26','乐山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('332','26','凉山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('333','26','眉山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('334','26','南充','','2','0,0','0');
INSERT INTO huishi_areas VALUES('335','26','内江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('336','26','攀枝花','','2','0,0','0');
INSERT INTO huishi_areas VALUES('337','26','遂宁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('338','26','雅安','','2','0,0','0');
INSERT INTO huishi_areas VALUES('339','26','宜宾','','2','0,0','0');
INSERT INTO huishi_areas VALUES('340','26','资阳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('341','26','自贡','','2','0,0','0');
INSERT INTO huishi_areas VALUES('342','26','泸州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('343','27','天津','','2','0,0','0');
INSERT INTO huishi_areas VALUES('344','28','拉萨','','2','0,0','0');
INSERT INTO huishi_areas VALUES('345','28','阿里','','2','0,0','0');
INSERT INTO huishi_areas VALUES('346','28','昌都','','2','0,0','0');
INSERT INTO huishi_areas VALUES('347','28','林芝','','2','0,0','0');
INSERT INTO huishi_areas VALUES('348','28','那曲','','2','0,0','0');
INSERT INTO huishi_areas VALUES('349','28','日喀则','','2','0,0','0');
INSERT INTO huishi_areas VALUES('350','28','山南','','2','0,0','0');
INSERT INTO huishi_areas VALUES('351','29','乌鲁木齐','','2','0,0','0');
INSERT INTO huishi_areas VALUES('352','29','阿克苏','','2','0,0','0');
INSERT INTO huishi_areas VALUES('353','29','阿拉尔','','2','0,0','0');
INSERT INTO huishi_areas VALUES('354','29','巴音郭楞','','2','0,0','0');
INSERT INTO huishi_areas VALUES('355','29','博尔塔拉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('356','29','昌吉','','2','0,0','0');
INSERT INTO huishi_areas VALUES('357','29','哈密','','2','0,0','0');
INSERT INTO huishi_areas VALUES('358','29','和田','','2','0,0','0');
INSERT INTO huishi_areas VALUES('359','29','喀什','','2','0,0','0');
INSERT INTO huishi_areas VALUES('360','29','克拉玛依','','2','0,0','0');
INSERT INTO huishi_areas VALUES('361','29','克孜勒苏','','2','0,0','0');
INSERT INTO huishi_areas VALUES('362','29','石河子','','2','0,0','0');
INSERT INTO huishi_areas VALUES('363','29','图木舒克','','2','0,0','0');
INSERT INTO huishi_areas VALUES('364','29','吐鲁番','','2','0,0','0');
INSERT INTO huishi_areas VALUES('365','29','五家渠','','2','0,0','0');
INSERT INTO huishi_areas VALUES('366','29','伊犁','','2','0,0','0');
INSERT INTO huishi_areas VALUES('367','30','昆明','','2','0,0','0');
INSERT INTO huishi_areas VALUES('368','30','怒江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('369','30','普洱','','2','0,0','0');
INSERT INTO huishi_areas VALUES('370','30','丽江','','2','0,0','0');
INSERT INTO huishi_areas VALUES('371','30','保山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('372','30','楚雄','','2','0,0','0');
INSERT INTO huishi_areas VALUES('373','30','大理','','2','0,0','0');
INSERT INTO huishi_areas VALUES('374','30','德宏','','2','0,0','0');
INSERT INTO huishi_areas VALUES('375','30','迪庆','','2','0,0','0');
INSERT INTO huishi_areas VALUES('376','30','红河','','2','0,0','0');
INSERT INTO huishi_areas VALUES('377','30','临沧','','2','0,0','0');
INSERT INTO huishi_areas VALUES('378','30','曲靖','','2','0,0','0');
INSERT INTO huishi_areas VALUES('379','30','文山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('380','30','西双版纳','','2','0,0','0');
INSERT INTO huishi_areas VALUES('381','30','玉溪','','2','0,0','0');
INSERT INTO huishi_areas VALUES('382','30','昭通','','2','0,0','0');
INSERT INTO huishi_areas VALUES('383','31','杭州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('384','31','湖州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('385','31','嘉兴','','2','0,0','0');
INSERT INTO huishi_areas VALUES('386','31','金华','','2','0,0','0');
INSERT INTO huishi_areas VALUES('387','31','丽水','','2','0,0','0');
INSERT INTO huishi_areas VALUES('388','31','宁波','','2','0,0','0');
INSERT INTO huishi_areas VALUES('389','31','绍兴','','2','0,0','0');
INSERT INTO huishi_areas VALUES('390','31','台州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('391','31','温州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('392','31','舟山','','2','0,0','0');
INSERT INTO huishi_areas VALUES('393','31','衢州','','2','0,0','0');
INSERT INTO huishi_areas VALUES('394','32','重庆','','2','0,0','0');
INSERT INTO huishi_areas VALUES('395','33','香港','','2','0,0','0');
INSERT INTO huishi_areas VALUES('396','34','澳门','','2','0,0','0');
INSERT INTO huishi_areas VALUES('397','35','台湾','','2','0,0','0');
INSERT INTO huishi_areas VALUES('398','36','迎江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('399','36','大观区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('400','36','宜秀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('401','36','桐城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('402','36','怀宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('403','36','枞阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('404','36','潜山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('405','36','太湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('406','36','宿松县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('407','36','望江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('408','36','岳西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('409','37','中市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('410','37','东市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('411','37','西市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('412','37','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('413','37','怀远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('414','37','五河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('415','37','固镇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('416','38','居巢区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('417','38','庐江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('418','38','无为县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('419','38','含山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('420','38','和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('421','39','贵池区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('422','39','东至县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('423','39','石台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('424','39','青阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('425','40','琅琊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('426','40','南谯区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('427','40','天长市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('428','40','明光市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('429','40','来安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('430','40','全椒县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('431','40','定远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('432','40','凤阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('433','41','蚌山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('434','41','龙子湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('435','41','禹会区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('436','41','淮上区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('437','41','颍州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('438','41','颍东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('439','41','颍泉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('440','41','界首市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('441','41','临泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('442','41','太和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('443','41','阜南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('444','41','颖上县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('445','42','相山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('446','42','杜集区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('447','42','烈山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('448','42','濉溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('449','43','田家庵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('450','43','大通区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('451','43','谢家集区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('452','43','八公山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('453','43','潘集区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('454','43','凤台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('455','44','屯溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('456','44','黄山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('457','44','徽州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('458','44','歙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('459','44','休宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('460','44','黟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('461','44','祁门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('462','45','金安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('463','45','裕安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('464','45','寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('465','45','霍邱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('466','45','舒城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('467','45','金寨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('468','45','霍山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('469','46','雨山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('470','46','花山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('471','46','金家庄区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('472','46','当涂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('473','47','埇桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('474','47','砀山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('475','47','萧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('476','47','灵璧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('477','47','泗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('478','48','铜官山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('479','48','狮子山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('480','48','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('481','48','铜陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('482','49','镜湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('483','49','弋江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('484','49','鸠江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('485','49','三山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('486','49','芜湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('487','49','繁昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('488','49','南陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('489','50','宣州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('490','50','宁国市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('491','50','郎溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('492','50','广德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('493','50','泾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('494','50','绩溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('495','50','旌德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('496','51','涡阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('497','51','蒙城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('498','51','利辛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('499','51','谯城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3744','3666','雁栖','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3731','3669','军庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3716','3658','大红门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3673','3652','对外经贸','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3692','3653','双榆树','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3687','3652','亚运村','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3683','3652','朝外大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3678','3652','北苑家园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('518','53','鼓楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('519','53','台江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('520','53','仓山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('521','53','马尾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('522','53','晋安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('523','53','福清市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('524','53','长乐市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('525','53','闽侯县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('526','53','连江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('527','53','罗源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('528','53','闽清县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('529','53','永泰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('530','53','平潭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('531','54','新罗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('532','54','漳平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('533','54','长汀县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('534','54','永定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('535','54','上杭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('536','54','武平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('537','54','连城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('538','55','延平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('539','55','邵武市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('540','55','武夷山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('541','55','建瓯市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('542','55','建阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('543','55','顺昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('544','55','浦城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('545','55','光泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('546','55','松溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('547','55','政和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('548','56','蕉城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('549','56','福安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('550','56','福鼎市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('551','56','霞浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('552','56','古田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('553','56','屏南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('554','56','寿宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('555','56','周宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('556','56','柘荣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('557','57','城厢区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('558','57','涵江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('559','57','荔城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('560','57','秀屿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('561','57','仙游县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('562','58','鲤城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('563','58','丰泽区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('564','58','洛江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('565','58','清濛开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('566','58','泉港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('567','58','石狮市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('568','58','晋江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('569','58','南安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('570','58','惠安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('571','58','安溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('572','58','永春县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('573','58','德化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('574','58','金门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('575','59','梅列区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('576','59','三元区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('577','59','永安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('578','59','明溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('579','59','清流县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('580','59','宁化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('581','59','大田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('582','59','尤溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('583','59','沙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('584','59','将乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('585','59','泰宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('586','59','建宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('587','60','思明区','','3','1350,1300','0');
INSERT INTO huishi_areas VALUES('588','60','海沧区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('589','60','湖里区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('590','60','集美区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('591','60','同安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('592','60','翔安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('593','61','芗城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('594','61','龙文区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('595','61','龙海市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('596','61','云霄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('597','61','漳浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('598','61','诏安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('599','61','长泰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('600','61','东山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1021','117','兴仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1022','117','普安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1023','117','晴隆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1024','117','贞丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1025','117','望谟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1026','117','册亨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1027','117','安龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1028','118','铜仁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1029','118','江口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1030','118','石阡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1031','118','思南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1032','118','德江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1033','118','玉屏','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1034','118','印江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1035','118','沿河','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1036','118','松桃','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1037','118','万山特区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1038','119','红花岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1039','119','务川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1040','119','道真县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1041','119','汇川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1042','119','赤水市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1043','119','仁怀市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1044','119','遵义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1045','119','桐梓县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1046','119','绥阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1047','119','正安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1048','119','凤冈县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1049','119','湄潭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1050','119','余庆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1051','119','习水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1052','119','道真','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1053','119','务川','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1054','120','秀英区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1055','120','龙华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1056','120','琼山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1057','120','美兰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1058','137','市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1059','137','洋浦开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1060','137','那大镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1061','137','王五镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1062','137','雅星镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1063','137','大成镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1064','137','中和镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1065','137','峨蔓镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1066','137','南丰镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1067','137','白马井镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1068','137','兰洋镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1069','137','和庆镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1070','137','海头镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1071','137','排浦镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1072','137','东成镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1073','137','光村镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1074','137','木棠镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1075','137','新州镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1076','137','三都镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1077','137','其他','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1078','138','长安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1079','138','桥东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1080','138','桥西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1081','138','新华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1082','138','裕华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1083','138','井陉矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1084','138','高新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1085','138','辛集市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1086','138','藁城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1087','138','晋州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1088','138','新乐市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1089','138','鹿泉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1090','138','井陉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1091','138','正定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1092','138','栾城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1093','138','行唐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1094','138','灵寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1095','138','高邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1096','138','深泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1097','138','赞皇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1098','138','无极县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1099','138','平山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1100','138','元氏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1101','138','赵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1102','139','新市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1103','139','南市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1104','139','北市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1105','139','涿州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1106','139','定州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1107','139','安国市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1108','139','高碑店市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1109','139','满城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1110','139','清苑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1111','139','涞水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1112','139','阜平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1113','139','徐水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1114','139','定兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1115','139','唐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1116','139','高阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1117','139','容城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1118','139','涞源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1119','139','望都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1120','139','安新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1121','139','易县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1122','139','曲阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1123','139','蠡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1124','139','顺平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1125','139','博野县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1126','139','雄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1127','140','运河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1128','140','新华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1129','140','泊头市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1130','140','任丘市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1131','140','黄骅市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1132','140','河间市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1133','140','沧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1134','140','青县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1135','140','东光县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1136','140','海兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1137','140','盐山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1138','140','肃宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1139','140','南皮县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1140','140','吴桥县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1141','140','献县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1142','140','孟村','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1143','141','双桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1144','141','双滦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1145','141','鹰手营子矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1146','141','承德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1147','141','兴隆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1148','141','平泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1149','141','滦平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1150','141','隆化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1151','141','丰宁','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1152','141','宽城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1153','141','围场','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1154','142','从台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1155','142','复兴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1156','142','邯山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1157','142','峰峰矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1158','142','武安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1159','142','邯郸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1160','142','临漳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1161','142','成安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1162','142','大名县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1163','142','涉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1164','142','磁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1165','142','肥乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1166','142','永年县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1167','142','邱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1168','142','鸡泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1169','142','广平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1170','142','馆陶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1171','142','魏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1172','142','曲周县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1173','143','桃城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1174','143','冀州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1175','143','深州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1176','143','枣强县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1177','143','武邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1178','143','武强县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1179','143','饶阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1180','143','安平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1181','143','故城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1182','143','景县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1183','143','阜城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1184','144','安次区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1185','144','广阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1186','144','霸州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1187','144','三河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1188','144','固安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1189','144','永清县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1190','144','香河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1191','144','大城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1192','144','文安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1193','144','大厂','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1194','145','海港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1195','145','山海关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1196','145','北戴河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1197','145','昌黎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1198','145','抚宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1199','145','卢龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1200','145','青龙','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1201','146','路北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1202','146','路南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1203','146','古冶区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1204','146','开平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1205','146','丰南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1206','146','丰润区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1207','146','遵化市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1208','146','迁安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1209','146','滦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1210','146','滦南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1211','146','乐亭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1212','146','迁西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1213','146','玉田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1214','146','唐海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1215','147','桥东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1216','147','桥西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1217','147','南宫市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1218','147','沙河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1219','147','邢台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1220','147','临城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1221','147','内丘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1222','147','柏乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1223','147','隆尧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1224','147','任县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1225','147','南和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1226','147','宁晋县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1227','147','巨鹿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1228','147','新河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1229','147','广宗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1230','147','平乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1231','147','威县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1232','147','清河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1233','147','临西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1234','148','桥西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1235','148','桥东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1236','148','宣化区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1237','148','下花园区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1238','148','宣化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1239','148','张北县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1240','148','康保县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1241','148','沽源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1242','148','尚义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1243','148','蔚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1244','148','阳原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1245','148','怀安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1246','148','万全县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1247','148','怀来县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1248','148','涿鹿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1249','148','赤城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1250','148','崇礼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1251','149','金水区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1252','149','邙山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1253','149','二七区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1254','149','管城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1255','149','中原区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1256','149','上街区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1257','149','惠济区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1258','149','郑东新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1259','149','经济技术开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1260','149','高新开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1261','149','出口加工区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1262','149','巩义市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1263','149','荥阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1264','149','新密市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1265','149','新郑市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1266','149','登封市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1267','149','中牟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1268','150','西工区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1269','150','老城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1270','150','涧西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1271','150','瀍河回族区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1272','150','洛龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1273','150','吉利区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1274','150','偃师市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1275','150','孟津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1276','150','新安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1277','150','栾川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1278','150','嵩县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1279','150','汝阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1280','150','宜阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1281','150','洛宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1282','150','伊川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1283','151','鼓楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1284','151','龙亭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1285','151','顺河回族区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1286','151','金明区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1287','151','禹王台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1288','151','杞县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1289','151','通许县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1290','151','尉氏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1291','151','开封县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1292','151','兰考县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1293','152','北关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1294','152','文峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1295','152','殷都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1296','152','龙安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1297','152','林州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1298','152','安阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1299','152','汤阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1300','152','滑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1301','152','内黄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1302','153','淇滨区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1303','153','山城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1304','153','鹤山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1305','153','浚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1306','153','淇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1307','154','济源市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1308','155','解放区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1309','155','中站区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1310','155','马村区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1311','155','山阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1312','155','沁阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1313','155','孟州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1314','155','修武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1315','155','博爱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1316','155','武陟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1317','155','温县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1318','156','卧龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1319','156','宛城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1320','156','邓州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1321','156','南召县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1322','156','方城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1323','156','西峡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1324','156','镇平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1325','156','内乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1326','156','淅川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1327','156','社旗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1328','156','唐河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1329','156','新野县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1330','156','桐柏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1331','157','新华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1332','157','卫东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1333','157','湛河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1334','157','石龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1335','157','舞钢市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1336','157','汝州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1337','157','宝丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1338','157','叶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1339','157','鲁山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1340','157','郏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1341','158','湖滨区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1342','158','义马市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1343','158','灵宝市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1344','158','渑池县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1345','158','陕县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1346','158','卢氏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1347','159','梁园区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1348','159','睢阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1349','159','永城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1350','159','民权县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1351','159','睢县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1352','159','宁陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1353','159','虞城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1354','159','柘城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1355','159','夏邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1356','160','卫滨区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1357','160','红旗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1358','160','凤泉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1359','160','牧野区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1360','160','卫辉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1361','160','辉县市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1362','160','新乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1363','160','获嘉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1364','160','原阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1365','160','延津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1366','160','封丘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1367','160','长垣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1368','161','浉河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1369','161','平桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1370','161','罗山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1371','161','光山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1372','161','新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1373','161','商城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1374','161','固始县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1375','161','潢川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1376','161','淮滨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1377','161','息县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1378','162','魏都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1379','162','禹州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1380','162','长葛市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1381','162','许昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1382','162','鄢陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1383','162','襄城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1384','163','川汇区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1385','163','项城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1386','163','扶沟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1387','163','西华县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1388','163','商水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1389','163','沈丘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1390','163','郸城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1391','163','淮阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1392','163','太康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1393','163','鹿邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1394','164','驿城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1395','164','西平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1396','164','上蔡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1397','164','平舆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1398','164','正阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1399','164','确山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1400','164','泌阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1401','164','汝南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1402','164','遂平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1403','164','新蔡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1404','165','郾城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1405','165','源汇区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1406','165','召陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1407','165','舞阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1408','165','临颍县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1409','166','华龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1410','166','清丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1411','166','南乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1412','166','范县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1413','166','台前县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1414','166','濮阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1415','167','道里区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1416','167','南岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1417','167','动力区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1418','167','平房区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1419','167','香坊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1420','167','太平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1421','167','道外区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1422','167','阿城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1423','167','呼兰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1424','167','松北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1425','167','尚志市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1426','167','双城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1427','167','五常市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1428','167','方正县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1429','167','宾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1430','167','依兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1431','167','巴彦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1432','167','通河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1433','167','木兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1434','167','延寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1435','168','萨尔图区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1436','168','红岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1437','168','龙凤区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1438','168','让胡路区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1439','168','大同区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1440','168','肇州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1441','168','肇源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1442','168','林甸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1443','168','杜尔伯特','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1444','169','呼玛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1445','169','漠河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1446','169','塔河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1447','170','兴山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1448','170','工农区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1449','170','南山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1450','170','兴安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1451','170','向阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1452','170','东山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1453','170','萝北县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1454','170','绥滨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1455','171','爱辉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1456','171','五大连池市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1457','171','北安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1458','171','嫩江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1459','171','逊克县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1460','171','孙吴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1461','172','鸡冠区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1462','172','恒山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1463','172','城子河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1464','172','滴道区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1465','172','梨树区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1466','172','虎林市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1467','172','密山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1468','172','鸡东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1469','173','前进区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1470','173','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1471','173','向阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1472','173','东风区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1473','173','同江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1474','173','富锦市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1475','173','桦南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1476','173','桦川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1477','173','汤原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1478','173','抚远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1479','174','爱民区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1480','174','东安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1481','174','阳明区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1482','174','西安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1483','174','绥芬河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1484','174','海林市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1485','174','宁安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1486','174','穆棱市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1487','174','东宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1488','174','林口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1489','175','桃山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1490','175','新兴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1491','175','茄子河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1492','175','勃利县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1493','176','龙沙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1494','176','昂昂溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1495','176','铁峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1496','176','建华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1497','176','富拉尔基区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1498','176','碾子山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1499','176','梅里斯达斡尔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1500','176','讷河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1501','176','龙江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1502','176','依安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1503','176','泰来县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1504','176','甘南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1505','176','富裕县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1506','176','克山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1507','176','克东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1508','176','拜泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1509','177','尖山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1510','177','岭东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1511','177','四方台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1512','177','宝山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1513','177','集贤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1514','177','友谊县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1515','177','宝清县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1516','177','饶河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1517','178','北林区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1518','178','安达市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1519','178','肇东市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1520','178','海伦市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1521','178','望奎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1522','178','兰西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1523','178','青冈县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1524','178','庆安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1525','178','明水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1526','178','绥棱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1527','179','伊春区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1528','179','带岭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1529','179','南岔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1530','179','金山屯区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1531','179','西林区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1532','179','美溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1533','179','乌马河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1534','179','翠峦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1535','179','友好区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1536','179','上甘岭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1537','179','五营区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1538','179','红星区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1539','179','新青区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1540','179','汤旺河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1541','179','乌伊岭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1542','179','铁力市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1543','179','嘉荫县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1544','180','江岸区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1545','180','武昌区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1546','180','江汉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1547','180','硚口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1548','180','汉阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1549','180','青山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1550','180','洪山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1551','180','东西湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1552','180','汉南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1553','180','蔡甸区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1554','180','江夏区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1555','180','黄陂区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1556','180','新洲区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1557','180','经济开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1558','181','仙桃市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1559','182','鄂城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1560','182','华容区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1561','182','梁子湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1562','183','黄州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1563','183','麻城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1564','183','武穴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1565','183','团风县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1566','183','红安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1567','183','罗田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1568','183','英山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1569','183','浠水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1570','183','蕲春县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1571','183','黄梅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1572','184','黄石港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1573','184','西塞山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1574','184','下陆区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1575','184','铁山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1576','184','大冶市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1577','184','阳新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1578','185','东宝区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1579','185','掇刀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1580','185','钟祥市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1581','185','京山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1582','185','沙洋县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1583','186','沙市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1584','186','荆州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1585','186','石首市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1586','186','洪湖市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1587','186','松滋市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1588','186','公安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1589','186','监利县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1590','186','江陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1591','187','潜江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1592','188','神农架林区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1593','189','张湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1594','189','茅箭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1595','189','丹江口市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1596','189','郧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1597','189','郧西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1598','189','竹山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1599','189','竹溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1600','189','房县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1601','190','曾都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1602','190','广水市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1603','191','天门市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1604','192','咸安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1605','192','赤壁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1606','192','嘉鱼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1607','192','通城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1608','192','崇阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1609','192','通山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1610','193','襄城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1611','193','樊城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1612','193','襄阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1613','193','老河口市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1614','193','枣阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1615','193','宜城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1616','193','南漳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1617','193','谷城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1618','193','保康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1619','194','孝南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1620','194','应城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1621','194','安陆市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1622','194','汉川市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1623','194','孝昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1624','194','大悟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1625','194','云梦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1626','195','长阳','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1627','195','五峰','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1628','195','西陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1629','195','伍家岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1630','195','点军区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1631','195','猇亭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1632','195','夷陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1633','195','宜都市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1634','195','当阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1635','195','枝江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1636','195','远安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1637','195','兴山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1638','195','秭归县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1639','196','恩施市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1640','196','利川市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1641','196','建始县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1642','196','巴东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1643','196','宣恩县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1644','196','咸丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1645','196','来凤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1646','196','鹤峰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1647','197','岳麓区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1648','197','芙蓉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1649','197','天心区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1650','197','开福区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1651','197','雨花区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1652','197','开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1653','197','浏阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1654','197','长沙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1655','197','望城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1656','197','宁乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1657','198','永定区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1658','198','武陵源区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1659','198','慈利县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1660','198','桑植县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1661','199','武陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1662','199','鼎城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1663','199','津市市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1664','199','安乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1665','199','汉寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1666','199','澧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1667','199','临澧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1668','199','桃源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1669','199','石门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1670','200','北湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1671','200','苏仙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1672','200','资兴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1673','200','桂阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1674','200','宜章县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1675','200','永兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1676','200','嘉禾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1677','200','临武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1678','200','汝城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1679','200','桂东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1680','200','安仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1681','201','雁峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1682','201','珠晖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1683','201','石鼓区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1684','201','蒸湘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1685','201','南岳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1686','201','耒阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1687','201','常宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1688','201','衡阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1689','201','衡南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1690','201','衡山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1691','201','衡东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1692','201','祁东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1693','202','鹤城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1694','202','靖州','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1695','202','麻阳','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1696','202','通道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1697','202','新晃','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1698','202','芷江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1699','202','沅陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1700','202','辰溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1701','202','溆浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1702','202','中方县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1703','202','会同县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1704','202','洪江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1705','203','娄星区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1706','203','冷水江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1707','203','涟源市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1708','203','双峰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1709','203','新化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1710','204','城步','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1711','204','双清区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1712','204','大祥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1713','204','北塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1714','204','武冈市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1715','204','邵东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1716','204','新邵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1717','204','邵阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1718','204','隆回县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1719','204','洞口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1720','204','绥宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1721','204','新宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1722','205','岳塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1723','205','雨湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1724','205','湘乡市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1725','205','韶山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1726','205','湘潭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1727','206','吉首市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1728','206','泸溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1729','206','凤凰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1730','206','花垣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1731','206','保靖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1732','206','古丈县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1733','206','永顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1734','206','龙山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1735','207','赫山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1736','207','资阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1737','207','沅江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1738','207','南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1739','207','桃江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1740','207','安化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1741','208','江华','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1742','208','冷水滩区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1743','208','零陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1744','208','祁阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1745','208','东安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1746','208','双牌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1747','208','道县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1748','208','江永县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1749','208','宁远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1750','208','蓝山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1751','208','新田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1752','209','岳阳楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1753','209','君山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1754','209','云溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1755','209','汨罗市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1756','209','临湘市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1757','209','岳阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1758','209','华容县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1759','209','湘阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1760','209','平江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1761','210','天元区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1762','210','荷塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1763','210','芦淞区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1764','210','石峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1765','210','醴陵市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1766','210','株洲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1767','210','攸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1768','210','茶陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1769','210','炎陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1770','211','朝阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1771','211','宽城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1772','211','二道区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1773','211','南关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1774','211','绿园区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1775','211','双阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1776','211','净月潭开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1777','211','高新技术开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1778','211','经济技术开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1779','211','汽车产业开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1780','211','德惠市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1781','211','九台市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1782','211','榆树市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1783','211','农安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1784','212','船营区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1785','212','昌邑区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1786','212','龙潭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1787','212','丰满区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1788','212','蛟河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1789','212','桦甸市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1790','212','舒兰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1791','212','磐石市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1792','212','永吉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1793','213','洮北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1794','213','洮南市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1795','213','大安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1796','213','镇赉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1797','213','通榆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1798','214','江源区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1799','214','八道江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1800','214','长白','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1801','214','临江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1802','214','抚松县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1803','214','靖宇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1804','215','龙山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1805','215','西安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1806','215','东丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1807','215','东辽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1808','216','铁西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1809','216','铁东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1810','216','伊通','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1811','216','公主岭市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1812','216','双辽市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1813','216','梨树县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1814','217','前郭尔罗斯','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1815','217','宁江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1816','217','长岭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1817','217','乾安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1818','217','扶余县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1819','218','东昌区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1820','218','二道江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1821','218','梅河口市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1822','218','集安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1823','218','通化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1824','218','辉南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1825','218','柳河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1826','219','延吉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1827','219','图们市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1828','219','敦化市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1829','219','珲春市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1830','219','龙井市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1831','219','和龙市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1832','219','安图县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1833','219','汪清县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1834','220','玄武区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1835','220','鼓楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1836','220','白下区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1837','220','建邺区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1838','220','秦淮区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1839','220','雨花台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1840','220','下关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1841','220','栖霞区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1842','220','浦口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1843','220','江宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1844','220','六合区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1845','220','溧水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1846','220','高淳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1847','221','沧浪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1848','221','金阊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1849','221','平江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1850','221','虎丘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1851','221','吴中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1852','221','相城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1853','221','园区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1854','221','新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1855','221','常熟市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1856','221','张家港市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1857','221','玉山镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1858','221','巴城镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1859','221','周市镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1860','221','陆家镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1861','221','花桥镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1862','221','淀山湖镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1863','221','张浦镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1864','221','周庄镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1865','221','千灯镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1866','221','锦溪镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1867','221','开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1868','221','吴江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1869','221','太仓市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1870','222','崇安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1871','222','北塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1872','222','南长区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1873','222','锡山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1874','222','惠山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1875','222','滨湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1876','222','新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1877','222','江阴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1878','222','宜兴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1879','223','天宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1880','223','钟楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1881','223','戚墅堰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1882','223','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1883','223','新北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1884','223','武进区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1885','223','溧阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1886','223','金坛市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1887','224','清河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1888','224','清浦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1889','224','楚州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1890','224','淮阴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1891','224','涟水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1892','224','洪泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1893','224','盱眙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1894','224','金湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1895','225','新浦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1896','225','连云区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1897','225','海州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1898','225','赣榆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1899','225','东海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1900','225','灌云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1901','225','灌南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1902','226','崇川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1903','226','港闸区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1904','226','经济开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1905','226','启东市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1906','226','如皋市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1907','226','通州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1908','226','海门市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1909','226','海安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1910','226','如东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1911','227','宿城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1912','227','宿豫区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1913','227','宿豫县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1914','227','沭阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1915','227','泗阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1916','227','泗洪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1917','228','海陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1918','228','高港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1919','228','兴化市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1920','228','靖江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1921','228','泰兴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1922','228','姜堰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1923','229','云龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1924','229','鼓楼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1925','229','九里区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1926','229','贾汪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1927','229','泉山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1928','229','新沂市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1929','229','邳州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1930','229','丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1931','229','沛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1932','229','铜山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1933','229','睢宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1934','230','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1935','230','亭湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1936','230','盐都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1937','230','盐都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1938','230','东台市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1939','230','大丰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1940','230','响水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1941','230','滨海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1942','230','阜宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1943','230','射阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1944','230','建湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1945','231','广陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1946','231','维扬区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1947','231','邗江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1948','231','仪征市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1949','231','高邮市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1950','231','江都市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1951','231','宝应县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1952','232','京口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1953','232','润州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1954','232','丹徒区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1955','232','丹阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1956','232','扬中市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1957','232','句容市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1958','233','东湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1959','233','西湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1960','233','青云谱区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1961','233','湾里区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1962','233','青山湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1963','233','红谷滩新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1964','233','昌北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1965','233','高新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1966','233','南昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1967','233','新建县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1968','233','安义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1969','233','进贤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1970','234','临川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1971','234','南城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1972','234','黎川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1973','234','南丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1974','234','崇仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1975','234','乐安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1976','234','宜黄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1977','234','金溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1978','234','资溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1979','234','东乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1980','234','广昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1981','235','章贡区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1982','235','于都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1983','235','瑞金市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1984','235','南康市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1985','235','赣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1986','235','信丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1987','235','大余县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1988','235','上犹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1989','235','崇义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1990','235','安远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1991','235','龙南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1992','235','定南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1993','235','全南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1994','235','宁都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1995','235','兴国县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1996','235','会昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1997','235','寻乌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1998','235','石城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1999','236','安福县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2000','236','吉州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2001','236','青原区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2002','236','井冈山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2003','236','吉安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2004','236','吉水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2005','236','峡江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2006','236','新干县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2007','236','永丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2008','236','泰和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2009','236','遂川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2010','236','万安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2011','236','永新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2012','237','珠山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2013','237','昌江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2014','237','乐平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2015','237','浮梁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2016','238','浔阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2017','238','庐山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2018','238','瑞昌市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2019','238','九江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2020','238','武宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2021','238','修水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2022','238','永修县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2023','238','德安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2024','238','星子县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2025','238','都昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2026','238','湖口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2027','238','彭泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2028','239','安源区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2029','239','湘东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2030','239','莲花县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2031','239','芦溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2032','239','上栗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2033','240','信州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2034','240','德兴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2035','240','上饶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2036','240','广丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2037','240','玉山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2038','240','铅山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2039','240','横峰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2040','240','弋阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2041','240','余干县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2042','240','波阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2043','240','万年县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2044','240','婺源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2045','241','渝水区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2046','241','分宜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2047','242','袁州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2048','242','丰城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2049','242','樟树市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2050','242','高安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2051','242','奉新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2052','242','万载县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2053','242','上高县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2054','242','宜丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2055','242','靖安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2056','242','铜鼓县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2057','243','月湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2058','243','贵溪市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2059','243','余江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2060','244','沈河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2061','244','皇姑区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2062','244','和平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2063','244','大东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2064','244','铁西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2065','244','苏家屯区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2066','244','东陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2067','244','沈北新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2068','244','于洪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2069','244','浑南新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2070','244','新民市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2071','244','辽中县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2072','244','康平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2073','244','法库县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2074','245','西岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2075','245','中山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2076','245','沙河口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2077','245','甘井子区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2078','245','旅顺口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2079','245','金州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2080','245','开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2081','245','瓦房店市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2082','245','普兰店市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2083','245','庄河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2084','245','长海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2085','246','铁东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2086','246','铁西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2087','246','立山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2088','246','千山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2089','246','岫岩','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2090','246','海城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2091','246','台安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2092','247','本溪','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2093','247','平山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2094','247','明山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2095','247','溪湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2096','247','南芬区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2097','247','桓仁','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2098','248','双塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2099','248','龙城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2100','248','喀喇沁左翼蒙古族自治县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2101','248','北票市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2102','248','凌源市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2103','248','朝阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2104','248','建平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2105','249','振兴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2106','249','元宝区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2107','249','振安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2108','249','宽甸','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2109','249','东港市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2110','249','凤城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2111','250','顺城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2112','250','新抚区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2113','250','东洲区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2114','250','望花区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2115','250','清原','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2116','250','新宾','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2117','250','抚顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2118','251','阜新','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2119','251','海州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2120','251','新邱区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2121','251','太平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2122','251','清河门区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2123','251','细河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2124','251','彰武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2125','252','龙港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2126','252','南票区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2127','252','连山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2128','252','兴城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2129','252','绥中县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2130','252','建昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2131','253','太和区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2132','253','古塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2133','253','凌河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2134','253','凌海市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2135','253','北镇市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2136','253','黑山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2137','253','义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2138','254','白塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2139','254','文圣区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2140','254','宏伟区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2141','254','太子河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2142','254','弓长岭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2143','254','灯塔市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2144','254','辽阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2145','255','双台子区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2146','255','兴隆台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2147','255','大洼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2148','255','盘山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2149','256','银州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2150','256','清河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2151','256','调兵山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2152','256','开原市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2153','256','铁岭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2154','256','西丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2155','256','昌图县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2156','257','站前区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2157','257','西市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2158','257','鲅鱼圈区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2159','257','老边区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2160','257','盖州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2161','257','大石桥市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2162','258','回民区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2163','258','玉泉区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2164','258','新城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2165','258','赛罕区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2166','258','清水河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2167','258','土默特左旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2168','258','托克托县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2169','258','和林格尔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2170','258','武川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2171','259','阿拉善左旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2172','259','阿拉善右旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2173','259','额济纳旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2174','260','临河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2175','260','五原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2176','260','磴口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2177','260','乌拉特前旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2178','260','乌拉特中旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2179','260','乌拉特后旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2180','260','杭锦后旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2181','261','昆都仑区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2182','261','青山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2183','261','东河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2184','261','九原区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2185','261','石拐区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2186','261','白云矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2187','261','土默特右旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2188','261','固阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2189','261','达尔罕茂明安联合旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2190','262','红山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2191','262','元宝山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2192','262','松山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2193','262','阿鲁科尔沁旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2194','262','巴林左旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2195','262','巴林右旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2196','262','林西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2197','262','克什克腾旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2198','262','翁牛特旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2199','262','喀喇沁旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2200','262','宁城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2201','262','敖汉旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2202','263','东胜区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2203','263','达拉特旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2204','263','准格尔旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2205','263','鄂托克前旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2206','263','鄂托克旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2207','263','杭锦旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2208','263','乌审旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2209','263','伊金霍洛旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2210','264','海拉尔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2211','264','莫力达瓦','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2212','264','满洲里市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2213','264','牙克石市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2214','264','扎兰屯市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2215','264','额尔古纳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2216','264','根河市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2217','264','阿荣旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2218','264','鄂伦春自治旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2219','264','鄂温克族自治旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2220','264','陈巴尔虎旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2221','264','新巴尔虎左旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2222','264','新巴尔虎右旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2223','265','科尔沁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2224','265','霍林郭勒市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2225','265','科尔沁左翼中旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2226','265','科尔沁左翼后旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2227','265','开鲁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2228','265','库伦旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2229','265','奈曼旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2230','265','扎鲁特旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2231','266','海勃湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2232','266','乌达区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2233','266','海南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2234','267','化德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2235','267','集宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2236','267','丰镇市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2237','267','卓资县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2238','267','商都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2239','267','兴和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2240','267','凉城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2241','267','察哈尔右翼前旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2242','267','察哈尔右翼中旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2243','267','察哈尔右翼后旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2244','267','四子王旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2245','268','二连浩特市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2246','268','锡林浩特市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2247','268','阿巴嘎旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2248','268','苏尼特左旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2249','268','苏尼特右旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2250','268','东乌珠穆沁旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2251','268','西乌珠穆沁旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2252','268','太仆寺旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2253','268','镶黄旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2254','268','正镶白旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2255','268','正蓝旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2256','268','多伦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2257','269','乌兰浩特市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2258','269','阿尔山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2259','269','科尔沁右翼前旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2260','269','科尔沁右翼中旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2261','269','扎赉特旗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2262','269','突泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2263','270','西夏区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2264','270','金凤区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2265','270','兴庆区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2266','270','灵武市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2267','270','永宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2268','270','贺兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2269','271','原州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2270','271','海原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2271','271','西吉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2272','271','隆德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2273','271','泾源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2274','271','彭阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2275','272','惠农县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2276','272','大武口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2277','272','惠农区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2278','272','陶乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2279','272','平罗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2280','273','利通区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2281','273','中卫县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2282','273','青铜峡市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2283','273','中宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2284','273','盐池县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2285','273','同心县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2286','274','沙坡头区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2287','274','海原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2288','274','中宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2289','275','城中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2290','275','城东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2291','275','城西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2292','275','城北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2293','275','湟中县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2294','275','湟源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2295','275','大通','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2296','276','玛沁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2297','276','班玛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2298','276','甘德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2299','276','达日县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2300','276','久治县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2301','276','玛多县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2302','277','海晏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2303','277','祁连县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2304','277','刚察县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2305','277','门源','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2306','278','平安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2307','278','乐都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2308','278','民和','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2309','278','互助','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2310','278','化隆','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2311','278','循化','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2312','279','共和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2313','279','同德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2314','279','贵德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2315','279','兴海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2316','279','贵南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2317','280','德令哈市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2318','280','格尔木市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2319','280','乌兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2320','280','都兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2321','280','天峻县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2322','281','同仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2323','281','尖扎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2324','281','泽库县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2325','281','河南蒙古族自治县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2326','282','玉树县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2327','282','杂多县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2328','282','称多县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2329','282','治多县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2330','282','囊谦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2331','282','曲麻莱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2332','283','市中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2333','283','历下区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2334','283','天桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2335','283','槐荫区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2336','283','历城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2337','283','长清区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2338','283','章丘市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2339','283','平阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2340','283','济阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2341','283','商河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2342','284','市南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2343','284','市北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2344','284','城阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2345','284','四方区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2346','284','李沧区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2347','284','黄岛区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2348','284','崂山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2349','284','胶州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2350','284','即墨市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2351','284','平度市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2352','284','胶南市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2353','284','莱西市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2354','285','滨城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2355','285','惠民县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2356','285','阳信县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2357','285','无棣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2358','285','沾化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2359','285','博兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2360','285','邹平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2361','286','德城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2362','286','陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2363','286','乐陵市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2364','286','禹城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2365','286','宁津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2366','286','庆云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2367','286','临邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2368','286','齐河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2369','286','平原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2370','286','夏津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2371','286','武城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2372','287','东营区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2373','287','河口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2374','287','垦利县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2375','287','利津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2376','287','广饶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2377','288','牡丹区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2378','288','曹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2379','288','单县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2380','288','成武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2381','288','巨野县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2382','288','郓城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2383','288','鄄城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2384','288','定陶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2385','288','东明县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2386','289','市中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2387','289','任城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2388','289','曲阜市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2389','289','兖州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2390','289','邹城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2391','289','微山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2392','289','鱼台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2393','289','金乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2394','289','嘉祥县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2395','289','汶上县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2396','289','泗水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2397','289','梁山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2398','290','莱城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2399','290','钢城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2400','291','东昌府区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2401','291','临清市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2402','291','阳谷县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2403','291','莘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2404','291','茌平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2405','291','东阿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2406','291','冠县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2407','291','高唐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2408','292','兰山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2409','292','罗庄区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2410','292','河东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2411','292','沂南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2412','292','郯城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2413','292','沂水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2414','292','苍山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2415','292','费县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2416','292','平邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2417','292','莒南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2418','292','蒙阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2419','292','临沭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2420','293','东港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2421','293','岚山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2422','293','五莲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2423','293','莒县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2424','294','泰山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2425','294','岱岳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2426','294','新泰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2427','294','肥城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2428','294','宁阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2429','294','东平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2430','295','荣成市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2431','295','乳山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2432','295','环翠区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2433','295','文登市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2434','296','潍城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2435','296','寒亭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2436','296','坊子区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2437','296','奎文区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2438','296','青州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2439','296','诸城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2440','296','寿光市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2441','296','安丘市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2442','296','高密市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2443','296','昌邑市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2444','296','临朐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2445','296','昌乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2446','297','芝罘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2447','297','福山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2448','297','牟平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2449','297','莱山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2450','297','开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2451','297','龙口市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2452','297','莱阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2453','297','莱州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2454','297','蓬莱市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2455','297','招远市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2456','297','栖霞市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2457','297','海阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2458','297','长岛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2459','298','市中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2460','298','山亭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2461','298','峄城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2462','298','台儿庄区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2463','298','薛城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2464','298','滕州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2465','299','张店区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2466','299','临淄区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2467','299','淄川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2468','299','博山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2469','299','周村区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2470','299','桓台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2471','299','高青县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2472','299','沂源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2473','300','杏花岭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2474','300','小店区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2475','300','迎泽区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2476','300','尖草坪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2477','300','万柏林区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2478','300','晋源区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2479','300','高新开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2480','300','民营经济开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2481','300','经济技术开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2482','300','清徐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2483','300','阳曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2484','300','娄烦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2485','300','古交市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2486','301','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2487','301','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2488','301','沁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2489','301','潞城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2490','301','长治县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2491','301','襄垣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2492','301','屯留县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2493','301','平顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2494','301','黎城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2495','301','壶关县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2496','301','长子县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2497','301','武乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2498','301','沁源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2499','302','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2500','302','矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2501','302','南郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2502','302','新荣区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2503','302','阳高县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2504','302','天镇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2505','302','广灵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2506','302','灵丘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2507','302','浑源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2508','302','左云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2509','302','大同县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2510','303','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2511','303','高平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2512','303','沁水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2513','303','阳城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2514','303','陵川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2515','303','泽州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2516','304','榆次区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2517','304','介休市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2518','304','榆社县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2519','304','左权县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2520','304','和顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2521','304','昔阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2522','304','寿阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2523','304','太谷县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2524','304','祁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2525','304','平遥县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2526','304','灵石县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2527','305','尧都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2528','305','侯马市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2529','305','霍州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2530','305','曲沃县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2531','305','翼城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2532','305','襄汾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2533','305','洪洞县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2534','305','吉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2535','305','安泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2536','305','浮山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2537','305','古县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2538','305','乡宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2539','305','大宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2540','305','隰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2541','305','永和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2542','305','蒲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2543','305','汾西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2544','306','离石市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2545','306','离石区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2546','306','孝义市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2547','306','汾阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2548','306','文水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2549','306','交城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2550','306','兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2551','306','临县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2552','306','柳林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2553','306','石楼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2554','306','岚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2555','306','方山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2556','306','中阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2557','306','交口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2558','307','朔城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2559','307','平鲁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2560','307','山阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2561','307','应县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2562','307','右玉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2563','307','怀仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2564','308','忻府区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2565','308','原平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2566','308','定襄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2567','308','五台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2568','308','代县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2569','308','繁峙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2570','308','宁武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2571','308','静乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2572','308','神池县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2573','308','五寨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2574','308','岢岚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2575','308','河曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2576','308','保德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2577','308','偏关县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2578','309','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2579','309','矿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2580','309','郊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2581','309','平定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2582','309','盂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2583','310','盐湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2584','310','永济市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2585','310','河津市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2586','310','临猗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2587','310','万荣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2588','310','闻喜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2589','310','稷山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2590','310','新绛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2591','310','绛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2592','310','垣曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2593','310','夏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2594','310','平陆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2595','310','芮城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2596','311','莲湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2597','311','新城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2598','311','碑林区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2599','311','雁塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2600','311','灞桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2601','311','未央区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2602','311','阎良区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2603','311','临潼区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2604','311','长安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2605','311','蓝田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2606','311','周至县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2607','311','户县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2608','311','高陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2609','312','汉滨区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2610','312','汉阴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2611','312','石泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2612','312','宁陕县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2613','312','紫阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2614','312','岚皋县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2615','312','平利县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2616','312','镇坪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2617','312','旬阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2618','312','白河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2619','313','陈仓区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2620','313','渭滨区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2621','313','金台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2622','313','凤翔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2623','313','岐山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2624','313','扶风县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2625','313','眉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2626','313','陇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2627','313','千阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2628','313','麟游县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2629','313','凤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2630','313','太白县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2631','314','汉台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2632','314','南郑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2633','314','城固县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2634','314','洋县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2635','314','西乡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2636','314','勉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2637','314','宁强县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2638','314','略阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2639','314','镇巴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2640','314','留坝县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2641','314','佛坪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2642','315','商州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2643','315','洛南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2644','315','丹凤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2645','315','商南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2646','315','山阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2647','315','镇安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2648','315','柞水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2649','316','耀州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2650','316','王益区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2651','316','印台区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2652','316','宜君县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2653','317','临渭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2654','317','韩城市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2655','317','华阴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2656','317','华县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2657','317','潼关县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2658','317','大荔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2659','317','合阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2660','317','澄城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2661','317','蒲城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2662','317','白水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2663','317','富平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2664','318','秦都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2665','318','渭城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2666','318','杨陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2667','318','兴平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2668','318','三原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2669','318','泾阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2670','318','乾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2671','318','礼泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2672','318','永寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2673','318','彬县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2674','318','长武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2675','318','旬邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2676','318','淳化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2677','318','武功县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2678','319','吴起县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2679','319','宝塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2680','319','延长县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2681','319','延川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2682','319','子长县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2683','319','安塞县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2684','319','志丹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2685','319','甘泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2686','319','富县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2687','319','洛川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2688','319','宜川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2689','319','黄龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2690','319','黄陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2691','320','榆阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2692','320','神木县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2693','320','府谷县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2694','320','横山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2695','320','靖边县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2696','320','定边县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2697','320','绥德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2698','320','米脂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2699','320','佳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2700','320','吴堡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2701','320','清涧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2702','320','子洲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2703','321','长宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2704','321','闸北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2705','321','闵行区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2706','321','徐汇区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2707','321','浦东新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2708','321','杨浦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2709','321','普陀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2710','321','静安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2711','321','卢湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2712','321','虹口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2713','321','黄浦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2714','321','南汇区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2715','321','松江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2716','321','嘉定区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2717','321','宝山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2718','321','青浦区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2719','321','金山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2720','321','奉贤区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2721','321','崇明县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2722','322','青羊区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2723','322','锦江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2724','322','金牛区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2725','322','武侯区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2726','322','成华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2727','322','龙泉驿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2728','322','青白江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2729','322','新都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2730','322','温江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2731','322','高新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2732','322','高新西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2733','322','都江堰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2734','322','彭州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2735','322','邛崃市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2736','322','崇州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2737','322','金堂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2738','322','双流县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2739','322','郫县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2740','322','大邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2741','322','蒲江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2742','322','新津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2743','322','都江堰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2744','322','彭州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2745','322','邛崃市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2746','322','崇州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2747','322','金堂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2748','322','双流县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2749','322','郫县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2750','322','大邑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2751','322','蒲江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2752','322','新津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2753','323','涪城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2754','323','游仙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2755','323','江油市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2756','323','盐亭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2757','323','三台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2758','323','平武县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2759','323','安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2760','323','梓潼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2761','323','北川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2762','324','马尔康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2763','324','汶川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2764','324','理县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2765','324','茂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2766','324','松潘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2767','324','九寨沟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2768','324','金川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2769','324','小金县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2770','324','黑水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2771','324','壤塘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2772','324','阿坝县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2773','324','若尔盖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2774','324','红原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2775','325','巴州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2776','325','通江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2777','325','南江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2778','325','平昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2779','326','通川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2780','326','万源市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2781','326','达县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2782','326','宣汉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2783','326','开江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2784','326','大竹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2785','326','渠县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2786','327','旌阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2787','327','广汉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2788','327','什邡市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2789','327','绵竹市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2790','327','罗江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2791','327','中江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2792','328','康定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2793','328','丹巴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2794','328','泸定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2795','328','炉霍县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2796','328','九龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2797','328','甘孜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2798','328','雅江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2799','328','新龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2800','328','道孚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2801','328','白玉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2802','328','理塘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2803','328','德格县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2804','328','乡城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2805','328','石渠县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2806','328','稻城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2807','328','色达县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2808','328','巴塘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2809','328','得荣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2810','329','广安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2811','329','华蓥市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2812','329','岳池县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2813','329','武胜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2814','329','邻水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2815','330','利州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2816','330','元坝区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2817','330','朝天区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2818','330','旺苍县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2819','330','青川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2820','330','剑阁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2821','330','苍溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2822','331','峨眉山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2823','331','乐山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2824','331','犍为县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2825','331','井研县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2826','331','夹江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2827','331','沐川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2828','331','峨边','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2829','331','马边','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2830','332','西昌市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2831','332','盐源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2832','332','德昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2833','332','会理县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2834','332','会东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2835','332','宁南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2836','332','普格县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2837','332','布拖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2838','332','金阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2839','332','昭觉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2840','332','喜德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2841','332','冕宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2842','332','越西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2843','332','甘洛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2844','332','美姑县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2845','332','雷波县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2846','332','木里','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2847','333','东坡区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2848','333','仁寿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2849','333','彭山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2850','333','洪雅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2851','333','丹棱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2852','333','青神县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2853','334','阆中市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2854','334','南部县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2855','334','营山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2856','334','蓬安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2857','334','仪陇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2858','334','顺庆区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2859','334','高坪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2860','334','嘉陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2861','334','西充县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2862','335','市中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2863','335','东兴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2864','335','威远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2865','335','资中县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2866','335','隆昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2867','336','东  区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2868','336','西  区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2869','336','仁和区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2870','336','米易县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2871','336','盐边县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2872','337','船山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2873','337','安居区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2874','337','蓬溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2875','337','射洪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2876','337','大英县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2877','338','雨城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2878','338','名山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2879','338','荥经县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2880','338','汉源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2881','338','石棉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2882','338','天全县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2883','338','芦山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2884','338','宝兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2885','339','翠屏区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2886','339','宜宾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2887','339','南溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2888','339','江安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2889','339','长宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2890','339','高县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2891','339','珙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2892','339','筠连县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2893','339','兴文县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2894','339','屏山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2895','340','雁江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2896','340','简阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2897','340','安岳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2898','340','乐至县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2899','341','大安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2900','341','自流井区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2901','341','贡井区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2902','341','沿滩区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2903','341','荣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2904','341','富顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2905','342','江阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2906','342','纳溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2907','342','龙马潭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2908','342','泸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2909','342','合江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2910','342','叙永县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2911','342','古蔺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2912','343','和平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2913','343','河西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2914','343','南开区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2915','343','河北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2916','343','河东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2917','343','红桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2918','343','东丽区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2919','343','津南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2920','343','西青区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2921','343','北辰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2922','343','塘沽区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2923','343','汉沽区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2924','343','大港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2925','343','武清区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2926','343','宝坻区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2927','343','经济开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2928','343','宁河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2929','343','静海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2930','343','蓟县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2931','344','城关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2932','344','林周县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2933','344','当雄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2934','344','尼木县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2935','344','曲水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2936','344','堆龙德庆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2937','344','达孜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2938','344','墨竹工卡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2939','345','噶尔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2940','345','普兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2941','345','札达县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2942','345','日土县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2943','345','革吉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2944','345','改则县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2945','345','措勤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2946','346','昌都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2947','346','江达县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2948','346','贡觉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2949','346','类乌齐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2950','346','丁青县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2951','346','察雅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2952','346','八宿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2953','346','左贡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2954','346','芒康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2955','346','洛隆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2956','346','边坝县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2957','347','林芝县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2958','347','工布江达县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2959','347','米林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2960','347','墨脱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2961','347','波密县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2962','347','察隅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2963','347','朗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2964','348','那曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2965','348','嘉黎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2966','348','比如县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2967','348','聂荣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2968','348','安多县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2969','348','申扎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2970','348','索县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2971','348','班戈县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2972','348','巴青县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2973','348','尼玛县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2974','349','日喀则市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2975','349','南木林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2976','349','江孜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2977','349','定日县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2978','349','萨迦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2979','349','拉孜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2980','349','昂仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2981','349','谢通门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2982','349','白朗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2983','349','仁布县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2984','349','康马县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2985','349','定结县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2986','349','仲巴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2987','349','亚东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2988','349','吉隆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2989','349','聂拉木县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2990','349','萨嘎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2991','349','岗巴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2992','350','乃东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2993','350','扎囊县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2994','350','贡嘎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2995','350','桑日县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2996','350','琼结县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2997','350','曲松县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2998','350','措美县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('2999','350','洛扎县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3000','350','加查县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3001','350','隆子县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3002','350','错那县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3003','350','浪卡子县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3004','351','天山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3005','351','沙依巴克区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3006','351','新市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3007','351','水磨沟区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3008','351','头屯河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3009','351','达坂城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3010','351','米东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3011','351','乌鲁木齐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3012','352','阿克苏市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3013','352','温宿县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3014','352','库车县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3015','352','沙雅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3016','352','新和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3017','352','拜城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3018','352','乌什县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3019','352','阿瓦提县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3020','352','柯坪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3021','353','阿拉尔市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3022','354','库尔勒市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3023','354','轮台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3024','354','尉犁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3025','354','若羌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3026','354','且末县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3027','354','焉耆','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3028','354','和静县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3029','354','和硕县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3030','354','博湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3031','355','博乐市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3032','355','精河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3033','355','温泉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3034','356','呼图壁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3035','356','米泉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3036','356','昌吉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3037','356','阜康市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3038','356','玛纳斯县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3039','356','奇台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3040','356','吉木萨尔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3041','356','木垒','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3042','357','哈密市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3043','357','伊吾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3044','357','巴里坤','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3045','358','和田市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3046','358','和田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3047','358','墨玉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3048','358','皮山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3049','358','洛浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3050','358','策勒县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3051','358','于田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3052','358','民丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3053','359','喀什市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3054','359','疏附县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3055','359','疏勒县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3056','359','英吉沙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3057','359','泽普县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3058','359','莎车县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3059','359','叶城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3060','359','麦盖提县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3061','359','岳普湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3062','359','伽师县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3063','359','巴楚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3064','359','塔什库尔干','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3065','360','克拉玛依市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3066','361','阿图什市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3067','361','阿克陶县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3068','361','阿合奇县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3069','361','乌恰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3070','362','石河子市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3071','363','图木舒克市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3072','364','吐鲁番市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3073','364','鄯善县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3074','364','托克逊县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3075','365','五家渠市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3076','366','阿勒泰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3077','366','布克赛尔','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3078','366','伊宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3079','366','布尔津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3080','366','奎屯市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3081','366','乌苏市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3082','366','额敏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3083','366','富蕴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3084','366','伊宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3085','366','福海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3086','366','霍城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3087','366','沙湾县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3088','366','巩留县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3089','366','哈巴河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3090','366','托里县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3091','366','青河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3092','366','新源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3093','366','裕民县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3094','366','和布克赛尔','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3095','366','吉木乃县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3096','366','昭苏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3097','366','特克斯县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3098','366','尼勒克县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3099','366','察布查尔','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3100','367','盘龙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3101','367','五华区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3102','367','官渡区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3103','367','西山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3104','367','东川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3105','367','安宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3106','367','呈贡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3107','367','晋宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3108','367','富民县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3109','367','宜良县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3110','367','嵩明县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3111','367','石林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3112','367','禄劝','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3113','367','寻甸','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3114','368','兰坪','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3115','368','泸水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3116','368','福贡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3117','368','贡山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3118','369','宁洱','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3119','369','思茅区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3120','369','墨江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3121','369','景东','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3122','369','景谷','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3123','369','镇沅','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3124','369','江城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3125','369','孟连','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3126','369','澜沧','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3127','369','西盟','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3128','370','古城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3129','370','宁蒗','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3130','370','玉龙','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3131','370','永胜县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3132','370','华坪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3133','371','隆阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3134','371','施甸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3135','371','腾冲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3136','371','龙陵县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3137','371','昌宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3138','372','楚雄市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3139','372','双柏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3140','372','牟定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3141','372','南华县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3142','372','姚安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3143','372','大姚县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3144','372','永仁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3145','372','元谋县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3146','372','武定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3147','372','禄丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3148','373','大理市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3149','373','祥云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3150','373','宾川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3151','373','弥渡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3152','373','永平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3153','373','云龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3154','373','洱源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3155','373','剑川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3156','373','鹤庆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3157','373','漾濞','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3158','373','南涧','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3159','373','巍山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3160','374','潞西市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3161','374','瑞丽市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3162','374','梁河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3163','374','盈江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3164','374','陇川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3165','375','香格里拉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3166','375','德钦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3167','375','维西','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3168','376','泸西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3169','376','蒙自县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3170','376','个旧市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3171','376','开远市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3172','376','绿春县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3173','376','建水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3174','376','石屏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3175','376','弥勒县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3176','376','元阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3177','376','红河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3178','376','金平','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3179','376','河口','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3180','376','屏边','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3181','377','临翔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3182','377','凤庆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3183','377','云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3184','377','永德县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3185','377','镇康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3186','377','双江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3187','377','耿马','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3188','377','沧源','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3189','378','麒麟区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3190','378','宣威市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3191','378','马龙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3192','378','陆良县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3193','378','师宗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3194','378','罗平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3195','378','富源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3196','378','会泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3197','378','沾益县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3198','379','文山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3199','379','砚山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3200','379','西畴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3201','379','麻栗坡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3202','379','马关县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3203','379','丘北县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3204','379','广南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3205','379','富宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3206','380','景洪市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3207','380','勐海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3208','380','勐腊县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3209','381','红塔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3210','381','江川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3211','381','澄江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3212','381','通海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3213','381','华宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3214','381','易门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3215','381','峨山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3216','381','新平','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3217','381','元江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3218','382','昭阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3219','382','鲁甸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3220','382','巧家县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3221','382','盐津县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3222','382','大关县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3223','382','永善县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3224','382','绥江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3225','382','镇雄县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3226','382','彝良县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3227','382','威信县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3228','382','水富县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3229','383','西湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3230','383','上城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3231','383','下城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3232','383','拱墅区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3233','383','滨江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3234','383','江干区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3235','383','萧山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3236','383','余杭区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3237','383','市郊','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3238','383','建德市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3239','383','富阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3240','383','临安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3241','383','桐庐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3242','383','淳安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3243','384','吴兴区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3244','384','南浔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3245','384','德清县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3246','384','长兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3247','384','安吉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3248','385','南湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3249','385','秀洲区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3250','385','海宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3251','385','嘉善县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3252','385','平湖市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3253','385','桐乡市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3254','385','海盐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3255','386','婺城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3256','386','金东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3257','386','兰溪市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3258','386','市区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3259','386','佛堂镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3260','386','上溪镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3261','386','义亭镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3262','386','大陈镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3263','386','苏溪镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3264','386','赤岸镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3265','386','东阳市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3266','386','永康市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3267','386','武义县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3268','386','浦江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3269','386','磐安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3270','387','莲都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3271','387','龙泉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3272','387','青田县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3273','387','缙云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3274','387','遂昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3275','387','松阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3276','387','云和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3277','387','庆元县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3278','387','景宁','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3279','388','海曙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3280','388','江东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3281','388','江北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3282','388','镇海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3283','388','北仑区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3284','388','鄞州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3285','388','余姚市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3286','388','慈溪市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3287','388','奉化市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3288','388','象山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3289','388','宁海县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3290','389','越城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3291','389','上虞市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3292','389','嵊州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3293','389','绍兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3294','389','新昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3295','389','诸暨市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3296','390','椒江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3297','390','黄岩区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3298','390','路桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3299','390','温岭市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3300','390','临海市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3301','390','玉环县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3302','390','三门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3303','390','天台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3304','390','仙居县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3305','391','鹿城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3306','391','龙湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3307','391','瓯海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3308','391','瑞安市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3309','391','乐清市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3310','391','洞头县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3311','391','永嘉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3312','391','平阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3313','391','苍南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3314','391','文成县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3315','391','泰顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3316','392','定海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3317','392','普陀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3318','392','岱山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3319','392','嵊泗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3320','393','衢州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3321','393','江山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3322','393','常山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3323','393','开化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3324','393','龙游县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3325','394','合川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3326','394','江津区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3327','394','南川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3328','394','永川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3329','394','南岸区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3330','394','渝北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3331','394','万盛区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3332','394','大渡口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3333','394','万州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3334','394','北碚区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3335','394','沙坪坝区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3336','394','巴南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3337','394','涪陵区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3338','394','江北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3339','394','九龙坡区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3340','394','渝中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3341','394','黔江开发区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3342','394','长寿区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3343','394','双桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3344','394','綦江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3345','394','潼南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3346','394','铜梁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3347','394','大足县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3348','394','荣昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3349','394','璧山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3350','394','垫江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3351','394','武隆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3352','394','丰都县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3353','394','城口县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3354','394','梁平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3355','394','开县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3356','394','巫溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3357','394','巫山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3358','394','奉节县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3359','394','云阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3360','394','忠县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3361','394','石柱','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3362','394','彭水','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3363','394','酉阳','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3364','394','秀山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3365','395','沙田区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3366','395','东区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3367','395','观塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3368','395','黄大仙区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3369','395','九龙城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3370','395','屯门区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3371','395','葵青区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3372','395','元朗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3373','395','深水埗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3374','395','西贡区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3375','395','大埔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3376','395','湾仔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3377','395','油尖旺区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3378','395','北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3379','395','南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3380','395','荃湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3381','395','中西区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3382','395','离岛区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3383','396','澳门','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3384','397','台北','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3385','397','高雄','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3386','397','基隆','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3387','397','台中','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3388','397','台南','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3389','397','新竹','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3390','397','嘉义','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3391','397','宜兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3392','397','桃园县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3393','397','苗栗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3394','397','彰化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3395','397','南投县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3396','397','云林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3397','397','屏东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3398','397','台东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3399','397','花莲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3400','397','澎湖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3401','3','合肥','','2','0,0','0');
INSERT INTO huishi_areas VALUES('3402','3401','庐阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3403','3401','瑶海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3404','3401','蜀山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3405','3401','包河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3406','3401','长丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3407','3401','肥东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3408','3401','肥西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3438','587','中山路/轮渡','','4','0,0','1378263350');
INSERT INTO huishi_areas VALUES('601','61','南靖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('602','61','平和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('603','61','华安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('604','62','皋兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('605','62','城关区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('606','62','七里河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('607','62','西固区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('608','62','安宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('609','62','红古区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('610','62','永登县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('611','62','榆中县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('612','63','白银区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('613','63','平川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('614','63','会宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('615','63','景泰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('616','63','靖远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('617','64','临洮县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('618','64','陇西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('619','64','通渭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('620','64','渭源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('621','64','漳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('622','64','岷县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('623','64','安定区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('624','64','安定区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('625','65','合作市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('626','65','临潭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('627','65','卓尼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('628','65','舟曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('629','65','迭部县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('630','65','玛曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('631','65','碌曲县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('632','65','夏河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('633','66','嘉峪关市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('634','67','金川区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('635','67','永昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('636','68','肃州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('637','68','玉门市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('638','68','敦煌市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('639','68','金塔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('640','68','瓜州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('641','68','肃北','','3','0,0','0');
INSERT INTO huishi_areas VALUES('642','68','阿克塞','','3','0,0','0');
INSERT INTO huishi_areas VALUES('643','69','临夏市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('644','69','临夏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('645','69','康乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('646','69','永靖县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('647','69','广河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('648','69','和政县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('649','69','东乡族自治县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('650','69','积石山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('651','70','成县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('652','70','徽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('653','70','康县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('654','70','礼县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('655','70','两当县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('656','70','文县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('657','70','西和县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('658','70','宕昌县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('659','70','武都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('660','71','崇信县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('661','71','华亭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('662','71','静宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('663','71','灵台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('664','71','崆峒区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('665','71','庄浪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('666','71','泾川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('667','72','合水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('668','72','华池县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('669','72','环县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('670','72','宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('671','72','庆城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('672','72','西峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('673','72','镇原县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('674','72','正宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('675','73','甘谷县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('676','73','秦安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('677','73','清水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('678','73','秦州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('679','73','麦积区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('680','73','武山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('681','73','张家川','','3','0,0','0');
INSERT INTO huishi_areas VALUES('682','74','古浪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('683','74','民勤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('684','74','天祝','','3','0,0','0');
INSERT INTO huishi_areas VALUES('685','74','凉州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('686','75','高台县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('687','75','临泽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('688','75','民乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('689','75','山丹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('690','75','肃南','','3','0,0','0');
INSERT INTO huishi_areas VALUES('691','75','甘州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('692','76','从化市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('693','76','天河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('694','76','东山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('695','76','白云区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('696','76','海珠区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('697','76','荔湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('698','76','越秀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('699','76','黄埔区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('700','76','番禺区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('701','76','花都区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('702','76','增城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('703','76','从化区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('704','76','市郊','','3','0,0','0');
INSERT INTO huishi_areas VALUES('705','77','福田区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('706','77','罗湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('707','77','南山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('708','77','宝安区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('709','77','龙岗区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('710','77','盐田区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('711','78','湘桥区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('712','78','潮安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('713','78','饶平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('714','79','南城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('715','79','东城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('716','79','万江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('717','79','莞城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('718','79','石龙镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('719','79','虎门镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('720','79','麻涌镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('721','79','道滘镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('722','79','石碣镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('723','79','沙田镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('724','79','望牛墩镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('725','79','洪梅镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('726','79','茶山镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('727','79','寮步镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('728','79','大岭山镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('729','79','大朗镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('730','79','黄江镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('731','79','樟木头','','3','0,0','0');
INSERT INTO huishi_areas VALUES('732','79','凤岗镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('733','79','塘厦镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('734','79','谢岗镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('735','79','厚街镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('736','79','清溪镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('737','79','常平镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('738','79','桥头镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('739','79','横沥镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('740','79','东坑镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('741','79','企石镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('742','79','石排镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('743','79','长安镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('744','79','中堂镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('745','79','高埗镇','','3','0,0','0');
INSERT INTO huishi_areas VALUES('746','80','禅城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('747','80','南海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('748','80','顺德区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('749','80','三水区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('750','80','高明区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('751','81','东源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('752','81','和平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('753','81','源城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('754','81','连平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('755','81','龙川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('756','81','紫金县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('757','82','惠阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('758','82','惠城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('759','82','大亚湾','','3','0,0','0');
INSERT INTO huishi_areas VALUES('760','82','博罗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('761','82','惠东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('762','82','龙门县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('763','83','江海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('764','83','蓬江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('765','83','新会区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('766','83','台山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('767','83','开平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('768','83','鹤山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('769','83','恩平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('770','84','榕城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('771','84','普宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('772','84','揭东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('773','84','揭西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('774','84','惠来县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('775','85','茂南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('776','85','茂港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('777','85','高州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('778','85','化州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('779','85','信宜市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('780','85','电白县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('781','86','梅县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('782','86','梅江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('783','86','兴宁市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('784','86','大埔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('785','86','丰顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('786','86','五华县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('787','86','平远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('788','86','蕉岭县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('789','87','清城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('790','87','英德市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('791','87','连州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('792','87','佛冈县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('793','87','阳山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('794','87','清新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('795','87','连山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('796','87','连南','','3','0,0','0');
INSERT INTO huishi_areas VALUES('797','88','南澳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('798','88','潮阳区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('799','88','澄海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('800','88','龙湖区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('801','88','金平区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('802','88','濠江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('803','88','潮南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('804','89','城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('805','89','陆丰市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('806','89','海丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('807','89','陆河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('808','90','曲江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('809','90','浈江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('810','90','武江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('811','90','曲江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('812','90','乐昌市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('813','90','南雄市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('814','90','始兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('815','90','仁化县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('816','90','翁源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('817','90','新丰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('818','90','乳源','','3','0,0','0');
INSERT INTO huishi_areas VALUES('819','91','江城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('820','91','阳春市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('821','91','阳西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('822','91','阳东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('823','92','云城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('824','92','罗定市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('825','92','新兴县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('826','92','郁南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('827','92','云安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('828','93','赤坎区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('829','93','霞山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('830','93','坡头区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('831','93','麻章区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('832','93','廉江市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('833','93','雷州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('834','93','吴川市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('835','93','遂溪县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('836','93','徐闻县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('837','94','肇庆市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('838','94','高要市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('839','94','四会市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('840','94','广宁县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('841','94','怀集县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('842','94','封开县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('843','94','德庆县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('844','95','石岐街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('845','95','东区街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('846','95','西区街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('847','95','环城街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('848','95','中山港街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('849','95','五桂山街道','','3','0,0','0');
INSERT INTO huishi_areas VALUES('850','96','香洲区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('851','96','斗门区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('852','96','金湾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('853','97','邕宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('854','97','青秀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('855','97','兴宁区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('856','97','良庆区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('857','97','西乡塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('858','97','江南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('859','97','武鸣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('860','97','隆安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('861','97','马山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('862','97','上林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('863','97','宾阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('864','97','横县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('865','98','秀峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('866','98','叠彩区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('867','98','象山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('868','98','七星区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('869','98','雁山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('870','98','阳朔县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('871','98','临桂县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('872','98','灵川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('873','98','全州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('874','98','平乐县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('875','98','兴安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('876','98','灌阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('877','98','荔浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('878','98','资源县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('879','98','永福县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('880','98','龙胜','','3','0,0','0');
INSERT INTO huishi_areas VALUES('881','98','恭城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('882','99','右江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('883','99','凌云县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('884','99','平果县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('885','99','西林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('886','99','乐业县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('887','99','德保县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('888','99','田林县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('889','99','田阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('890','99','靖西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('891','99','田东县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('892','99','那坡县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('893','99','隆林','','3','0,0','0');
INSERT INTO huishi_areas VALUES('894','100','海城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('895','100','银海区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('896','100','铁山港区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('897','100','合浦县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('898','101','江州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('899','101','凭祥市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('900','101','宁明县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('901','101','扶绥县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('902','101','龙州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('903','101','大新县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('904','101','天等县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('905','102','港口区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('906','102','防城区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('907','102','东兴市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('908','102','上思县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('909','103','港北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('910','103','港南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('911','103','覃塘区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('912','103','桂平市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('913','103','平南县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('914','104','金城江区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('915','104','宜州市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('916','104','天峨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('917','104','凤山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('918','104','南丹县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('919','104','东兰县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('920','104','都安','','3','0,0','0');
INSERT INTO huishi_areas VALUES('921','104','罗城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('922','104','巴马','','3','0,0','0');
INSERT INTO huishi_areas VALUES('923','104','环江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('924','104','大化','','3','0,0','0');
INSERT INTO huishi_areas VALUES('925','105','八步区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('926','105','钟山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('927','105','昭平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('928','105','富川','','3','0,0','0');
INSERT INTO huishi_areas VALUES('929','106','兴宾区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('930','106','合山市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('931','106','象州县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('932','106','武宣县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('933','106','忻城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('934','106','金秀','','3','0,0','0');
INSERT INTO huishi_areas VALUES('935','107','城中区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('936','107','鱼峰区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('937','107','柳北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('938','107','柳南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('939','107','柳江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('940','107','柳城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('941','107','鹿寨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('942','107','融安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('943','107','融水','','3','0,0','0');
INSERT INTO huishi_areas VALUES('944','107','三江','','3','0,0','0');
INSERT INTO huishi_areas VALUES('945','108','钦南区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('946','108','钦北区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('947','108','灵山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('948','108','浦北县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('949','109','万秀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('950','109','蝶山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('951','109','长洲区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('952','109','岑溪市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('953','109','苍梧县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('954','109','藤县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('955','109','蒙山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('956','110','玉州区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('957','110','北流市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('958','110','容县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('959','110','陆川县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('960','110','博白县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('961','110','兴业县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('962','111','南明区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('963','111','云岩区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('964','111','花溪区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('965','111','乌当区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('966','111','白云区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('967','111','小河区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('968','111','金阳新区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('969','111','新天园区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('970','111','清镇市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('971','111','开阳县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('972','111','修文县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('973','111','息烽县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('974','112','西秀区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('975','112','关岭','','3','0,0','0');
INSERT INTO huishi_areas VALUES('976','112','镇宁','','3','0,0','0');
INSERT INTO huishi_areas VALUES('977','112','紫云','','3','0,0','0');
INSERT INTO huishi_areas VALUES('978','112','平坝县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('979','112','普定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('980','113','毕节市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('981','113','大方县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('982','113','黔西县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('983','113','金沙县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('984','113','织金县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('985','113','纳雍县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('986','113','赫章县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('987','113','威宁','','3','0,0','0');
INSERT INTO huishi_areas VALUES('988','114','钟山区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('989','114','六枝特区','','3','0,0','0');
INSERT INTO huishi_areas VALUES('990','114','水城县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('991','114','盘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('992','115','凯里市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('993','115','黄平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('994','115','施秉县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('995','115','三穗县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('996','115','镇远县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('997','115','岑巩县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('998','115','天柱县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('999','115','锦屏县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1000','115','剑河县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1001','115','台江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1002','115','黎平县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1003','115','榕江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1004','115','从江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1005','115','雷山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1006','115','麻江县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1007','115','丹寨县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1008','116','都匀市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1009','116','福泉市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1010','116','荔波县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1011','116','贵定县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1012','116','瓮安县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1013','116','独山县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1014','116','平塘县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1015','116','罗甸县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1016','116','长顺县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1017','116','龙里县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1018','116','惠水县','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1019','116','三都','','3','0,0','0');
INSERT INTO huishi_areas VALUES('1020','117','兴义市','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3439','587','火车站','','4','0,0','1378263352');
INSERT INTO huishi_areas VALUES('3440','587','厦门大学','','4','0,0','1378263348');
INSERT INTO huishi_areas VALUES('3441','587','鼓浪屿','','4','0,0','1378263265');
INSERT INTO huishi_areas VALUES('3442','587','禾祥西路','','4','0,0','1378263302');
INSERT INTO huishi_areas VALUES('3443','587','莲前/瑞景','','4','0,0','1376621491');
INSERT INTO huishi_areas VALUES('3444','587','黄厝','','4','0,0','1378263297');
INSERT INTO huishi_areas VALUES('3445','587','莲坂/明发广场','','4','0,0','1378263354');
INSERT INTO huishi_areas VALUES('3446','587','曾厝垵','','4','0,0','1378263269');
INSERT INTO huishi_areas VALUES('3447','587','白鹭洲公园','','4','0,0','1378257723');
INSERT INTO huishi_areas VALUES('3448','587','莲花','','4','0,0','1376621494');
INSERT INTO huishi_areas VALUES('3449','587','环岛路沿线','','4','0,0','1378257727');
INSERT INTO huishi_areas VALUES('3450','587','鼓浪屿','','4','0,0','1376621496');
INSERT INTO huishi_areas VALUES('3451','587','前埔/软件园','','4','0,0','1378263299');
INSERT INTO huishi_areas VALUES('3452','589','枋湖','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3453','589','松柏','','4','0,0','1378263290');
INSERT INTO huishi_areas VALUES('3454','589','殿前','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3455','589','殿前','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3456','589','东渡','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3457','589','江头/SM广场','','4','0,0','1378263276');
INSERT INTO huishi_areas VALUES('3458','589','金山/万达广场','','4','0,0','1378263279');
INSERT INTO huishi_areas VALUES('3459','589','湖里公园','','4','0,0','1378263281');
INSERT INTO huishi_areas VALUES('3460','589','塘边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3461','589','市政府','','4','0,0','1378263288');
INSERT INTO huishi_areas VALUES('3462','589','高崎','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3585','588','滨湖路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3743','3667','延庆周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3742','3667','八达岭','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3740','3667','延庆城区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3739','3668','平谷周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3738','3668','王辛庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3737','3668','渔阳','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3736','3668','兴谷','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3735','3668','平谷城区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3734','3668','滨河路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3733','3668','金海湖','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3732','3669','门头沟周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3730','3669','潭拓寺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3728','3669','永定','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3727','3669','城子街道','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3726','3669','龙泉','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3725','3669','东辛房','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3724','3669','大峪','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3723','3658','丰台其他','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3722','3658','洋桥/木樨园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3721','3658','六里桥/丽泽桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3720','3658','方庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3719','3658','卢沟桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3718','3658','云岗','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3717','3658','公益西桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3715','3658','花乡','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3714','3658','看丹桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3713','3658','草桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3712','3658','开阳里','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3711','3658','青塔','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3710','3658','刘家窑','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3709','3658','北大地','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3708','3653','海淀其他','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3707','3653','颐和园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3706','3653','上地','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3705','3653','航天桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3704','3653','紫竹桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3703','3653','公主坟/万寿路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3672','3652','三里屯','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3671','3652','双井','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3670','3652','国贸','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3669','52','门头沟','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3668','52','平谷','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3667','52','延庆','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3666','52','怀柔','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3665','52','密云','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3664','52','顺义','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3663','52','大兴','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3662','52','昌平','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3661','52','房山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3660','52','石景山','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3659','52','通州','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3658','52','丰台','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3657','52','宣武','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3656','52','崇文','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3655','52','西城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3654','52','东城','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3653','52','海淀','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3652','52','朝阳','','3','0,0','0');
INSERT INTO huishi_areas VALUES('3701','3653','苏州桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3700','3653','北太平庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3699','3653','魏公村','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3698','3653','五道口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3697','3653','中关村','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3696','3653','香山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3695','3653','远大路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3694','3653','清河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3693','3653','五棵松','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3691','3652','朝阳其他','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3690','3652','安贞','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3689','3652','劲松/潘家园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3688','3652','望京','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3677','3652','十八里店','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3676','3652','首都机场','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3675','3652','管庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3685','3652','左家庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3682','3652','大望路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3681','3652','建外大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3680','3652','东坝','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3702','3653','北下关','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3686','3652','亮马桥/三元桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3684','3652','朝阳公园/团结湖','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3679','3652','十里堡','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3741','3667','大榆树','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3586','588','沧虹路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3587','588','沧湖北路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3588','588','沧林路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3589','588','海沧生活区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3590','588','海沧周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3591','588','海富路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3592','588','海浴路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3593','588','角美','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3594','588','马青路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3595','588','嵩屿北里','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3596','588','嵩屿码头','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3597','588','未来海岸片区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3598','588','西部工业区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3599','588','兴港路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3600','588','新阳工业区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3601','588','钟林路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3602','590','獒园路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3603','590','滨海路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3604','590','嘉庚路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3605','590','集海路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3606','590','集美周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3607','590','集源路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3608','590','石鼓路','','4','0,0','1378263329');
INSERT INTO huishi_areas VALUES('3609','590','孙坂路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3610','590','集岑路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3611','590','同集南路','','4','0,0','1378263335');
INSERT INTO huishi_areas VALUES('3612','590','杏北路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3613','590','杏东路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3614','590','杏锦路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3615','590','杏林北二路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3616','590','杏林湾路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3617','590','杏南路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3618','590','杏前路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3619','590','杏西路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3620','590','浔江路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3621','590','印斗路','','4','0,0','1378263326');
INSERT INTO huishi_areas VALUES('3622','590','银江路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3623','590','银亭路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3624','590','中心花园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3625','591','城北','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3626','591','城东','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3627','591','城南路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3628','591','城西路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3629','591','二环路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3630','591','凤山路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3631','591','环城路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3632','591','梅山路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3633','591','南门路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3634','591','榕源路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3635','591','上田路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3636','591','思振路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3637','591','同安周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3639','591','同集路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3640','591','西门路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3641','591','西桥路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3642','591','银湖路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3643','591','中山路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3644','592','马巷','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3645','592','内厝','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3646','592','新店','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3647','591','阳翟路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3648','592','新圩','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3649','592','翔安周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3674','3652','酒仙桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3745','3666','桥梓','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3746','3666','怀柔城区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3747','3666','渤海镇','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3748','3666','庙城','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3749','3666','怀柔周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3750','3665','密云城区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3751','3665','不老屯','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3752','3665','溪翁庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3753','3665','密云周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3754','3664','光明','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3755','3664','后沙峪','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3756','3664','建新','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3757','3664','机场','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3758','3664','李桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3759','3664','马坡','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3760','3664','南彩','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3761','3664','胜利','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3762','3664','石园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3763','3664','顺义城区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3764','3664','顺义周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3765','3664','天竺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3766','3664','新国展','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3767','3664','杨镇','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3768','3664','裕龙','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3769','3664','中央别墅区','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3770','3663','滨河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3771','3663','大兴周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3772','3663','观音寺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3773','3663','海子角','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3774','3663','黄村','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3775','3663','旧宫','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3776','3663','林校路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3777','3663','庞各庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3778','3663','清源','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3779','3663','同兴园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3780','3663','西红门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3781','3663','兴丰大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3782','3663','兴华大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3783','3663','兴业大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3784','3663','新宫','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3785','3663','亦庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3786','3663','郁花园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3787','3662','百善','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3788','3662','北七家','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3789','3662','昌平县城','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3790','3662','昌平周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3791','3662','城北','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3792','3662','城南','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3793','3662','东小口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3794','3662','回龙观','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3795','3662','霍营','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3796','3662','立水桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3797','3662','龙泽','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3798','3662','南口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3799','3662','沙河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3800','3662','天通苑','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3801','3662','小汤山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3802','3662','阳坊','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3803','3661','长阳','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3804','3661','窦店','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3805','3661','房山城关','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3806','3661','房山周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3807','3661','韩村河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3808','3661','良乡','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3809','3661','琉璃河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3810','3661','阎村','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3811','3661','燕山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3812','3661','迎风','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3813','3661','周口店','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3814','3660','八宝山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3815','3660','八大处','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3816','3660','八角','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3817','3660','广宁','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3818','3660','古城','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3819','3660','金顶街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3820','3660','老山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3821','3660','鲁谷','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3822','3660','模式口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3823','3660','苹果园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3824','3660','石景山周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3825','3660','五里坨','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3826','3660','西山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3827','3660','衙门口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3828','3660','杨庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3829','3660','永乐','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3830','3660','玉泉路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3831','3659','八里桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3832','3659','八通轻轨沿线','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3833','3659','北关','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3834','3659','北关环岛','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3835','3659','次渠','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3836','3659','东关','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3837','3659','果园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3838','3659','九棵树','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3839','3659','临河里','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3840','3659','梨园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3841','3659','潞城','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3842','3659','马驹桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3843','3659','乔庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3844','3659','通州北苑','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3845','3659','通州周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3846','3659','土桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3847','3659','武夷花园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3848','3659','潡县','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3849','3659','西门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3850','3659','新华大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3851','3659','永顺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3852','3659','运河大街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3853','3659','玉桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3854','3659','张家湾','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3855','3659','中仓','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3856','3657','白广路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3857','3657','白纸坊','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3858','3657','菜市口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3859','3657','长椿街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3860','3657','椿树街道','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3861','3657','大观园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3862','3657','大栅栏','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3863','3657','广安门内','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3864','3657','广安门外','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3865','3657','和平门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3866','3657','红莲','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3867','3657','虎坊桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3868','3657','马连道','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3869','3657','南菜园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3870','3657','牛街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3871','3657','陶然亭','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3872','3657','天宁寺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3873','3657','天桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3874','3657','宣武门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3875','3657','宣武周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3876','3657','珠市口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3877','3656','崇文门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3878','3656','崇文周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3879','3656','磁器口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3880','3656','东花市','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3881','3656','法华寺','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3882','3656','光明楼','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3884','3656','广渠门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3885','3656','龙潭湖','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3886','3656','前门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3887','3656','天坛','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3888','3656','体育馆路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3889','3656','新世界','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3890','3656','永定门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3891','3655','百万庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3892','3655','车公庄','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3893','3655','德胜门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3894','3655','地安门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3895','3655','阜成门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3896','3655','复兴门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3897','3655','官园','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3898','3655','鼓楼','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3899','3655','金融街','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3900','3655','积水潭','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3901','3655','六铺炕','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3902','3655','马甸','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3903','3655','木樨地','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3904','3655','南礼士路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3905','3655','三里河','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3906','3655','什刹海','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3907','3655','小西门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3908','3655','西便门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3909','3655','西城周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3910','3655','西单','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3911','3655','新街口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3912','3655','西四','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3913','3655','西直门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3914','3655','月坛','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3915','3655','展览路','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3916','3655','真武庙','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3917','3654','安定门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3918','3654','北京站','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3919','3654','北新桥','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3920','3654','朝阳门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3921','3654','灯市口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3922','3654','东城周边','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3923','3654','东单','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3924','3654','东四','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3925','3654','东四十条','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3926','3654','东直门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3927','3654','东直门外','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3928','3654','海运仓','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3929','3654','和平里','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3930','3654','建国门','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3931','3654','交道口','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3932','3654','景山','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3933','3654','沙滩','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3934','3654','王府井','','4','0,0','0');
INSERT INTO huishi_areas VALUES('3935','3654','雍和宫','','4','0,0','0');

DROP TABLE IF EXISTS huishi_article;
CREATE TABLE `huishi_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `cat_id` int(10) NOT NULL DEFAULT '0' COMMENT '分类id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `add_time` datetime DEFAULT NULL COMMENT '添加时间',
  `is_link` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不跳转，1跳转',
  `link_url` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转url',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1显示，0隐藏',
  `is_digg` tinyint(11) NOT NULL DEFAULT '0' COMMENT '推荐',
  `is_blod` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否加粗',
  `tag_color` varchar(20) DEFAULT NULL COMMENT '标题颜色',
  `short_order` int(11) DEFAULT NULL COMMENT '标题排序',
  `click` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `city` varchar(10) DEFAULT NULL COMMENT '城市索引CODE',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=424 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

INSERT INTO huishi_article VALUES('59','90','Autodesk 速博应用（Subscription）介绍','<DIV class=content><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\">&nbsp;<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;<STRONG style=\"FONT-FAMILY: \"><FONT style=\"FONT-FAMILY: ; COLOR: #c60707\">&nbsp; Autodesk&reg; Subscription</FONT></STRONG> 按照年度付费的增值服务包。是保持最新设计技术，并从简化的软件管理、便捷的预算过程、电子课程以及 Web 支持中获益的最佳方法。通过缴纳一笔固定的年费，便可以使用最新的软件增强功能，使您的设计工具保持最新，以从您的软件投资中获得最大回报。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG style=\"FONT-FAMILY: \">Autodesk Subscription 包含下列内容︰ </STRONG><BR style=\"FONT-FAMILY: \">一、&nbsp;&nbsp;&nbsp; 订购期间可以取得所有已发布的产品版本<BR style=\"FONT-FAMILY: \">1、&nbsp;&nbsp;&nbsp; 免费获得最新发布的产品；<BR style=\"FONT-FAMILY: \">2、&nbsp;&nbsp;&nbsp; 可以根据实际应用情况，选择使用旧版本；<BR style=\"FONT-FAMILY: \">二、&nbsp;&nbsp;&nbsp; 下载基本产品的 Extension<BR style=\"FONT-FAMILY: \">Extension 是基本产品的强化模块，与基本产品完全兼容，且容易学习。Extension 只提供给 Autodesk Subscription 客户。<BR style=\"FONT-FAMILY: \">三、&nbsp;&nbsp;&nbsp; 电子课程与知识评估（Autodesk e-Learning）<BR style=\"FONT-FAMILY: \">每个电子课程的长度为 15 至 30 分钟。课程是依产品种类组织的。每一种类包含 15 至 20 课，并会定期加入新的课程。课程提供实际操作练习，并给予水平测试评估。<BR style=\"FONT-FAMILY: \">四、&nbsp;&nbsp;&nbsp; Autodesk直接技术支持服务：<BR style=\"FONT-FAMILY: \">Web 支持为您提供一个安全的网站，客户可以在此透过互动在线接口，向 Autodesk 支持人员提交技术问题。Autodesk 技术人员收到问题后，会透过 Web 及电子邮件给出响应。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG style=\"FONT-FAMILY: \">Autodesk Subscription 对于用户的意义︰</STRONG><BR style=\"FONT-FAMILY: \">一、降低升级成本，并可根据使用需要灵活选择版本。<BR style=\"FONT-FAMILY: \">二 、最新的产品升级和增强功能让您随时拥有最新的设计技术。<BR style=\"FONT-FAMILY: \">三、来自技术专家之快速可靠的 Web 支持，使您的工作流程更加顺畅。&nbsp;<BR style=\"FONT-FAMILY: \">四、灵活的自调式电子课程有助提高设计生产力。&nbsp;<BR style=\"FONT-FAMILY: \">五、简化的授权管理可降低设计技术购置与管理成本。<BR style=\"FONT-FAMILY: \">六、Beta 程序的准授权让您拥有未来产品开发的影响力，并享有与全世界 Autodesk 技术专家和客户进行网络通讯的良机。<BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \"></STRONG></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-SIZE: 14px\"><FONT style=\"FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">如何获得Autodesk Subscription：</STRONG><BR style=\"FONT-FAMILY: \">客户购买速博应用（Subscription）的最佳时间是在客户购买完整版或者升级到最新版本软件时，如果在30天之后1年以内再购买速博应用（Subscription） ，需要在支付一年的速博应用（Subscription）用之外征收每套100$的延期费用。</FONT>如果客户在购买软件1年以后2年以内再购买速博应用（Subscription） ，除了要支付一年速博应用（Subscription）用和每套100$的延期费用之外，还要补交第一年的速博应用（Subscription）费用。2年以后3年以内的情况以此类推。<BR>已经购买过速博应用（Subscription）的客户再次购买速博应用（Subscription）的时间应该在1年期满前完成，如果1年期的服务到期30天之后续订，也是需要支付征收每套100$的延期费用。</FONT></P></DIV>',' ','0','2007-12-24 13:39:30','0','','1','0','0','','0','1223','');
INSERT INTO huishi_article VALUES('411','90','智绘 蜕变 绽放—欧特克的制造业谋略','<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 被金融市场拖入发展徘徊期的全球制造业，正在寻找一个发展的突破口。对于中国制造业企业来讲，这种需求更加迫切和直接：摆脱“中国制造”的束缚，及早实现向“中国创造”和“中国智造”的转变。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 事实上，经历了前一段高速发展时期，中国制造业企业的很多短板已经逐渐显现：低廉的人力成本、不计后果的环境成本、盲目扩张的业务版图，以及单一的盈利模式，都已经不再能够使得中国工业企业维持一个足够有竞争力的持续发展动力。面对逐渐向中国工业企业打开的全球工业市场，中国制造业除了要解决包括设计创新、设计效率、节能减排、成本控制、产品质量、产品安全和供应链协同等在内的诸多问题，还要面临人民币近年来的迅速升值和原材料、劳动力成本的急剧上升等棘手问题。很显然，选择有效的数字化设计工具和流程，是帮助中国制造业企业最快构建自身竞争实力、强化在国际市场上的地位，从激烈的竞争中脱颖而出的关键。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 众所周知，从最初的AutoCAD设计软件到如今的三维技术、云技术的普及，以及2014新产品及套件的全线升级，欧特克都为制造业在技术变革和产业升级提供了巨大的动力。其针对客户推出的数字化样机解决方案更是帮助客户实现了产品从概念设计、工程设计、设计验证到生产规划的全部数字化。无疑地作为设计工具的专家，欧特克产品完全符合中国制造业企业实现升级转型的需求。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; 智绘：从CAD技术龙头到CAD应用翘楚</strong></span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;了解欧特克的人都知道，从1982年美国人John Walker与15位伙伴共同创建了欧特克公司开始，无论是二维的AutoCAD，还是已经成为行业标准的DWG文件格式，甚至是Autodesk Inventor、Revit……，欧特克始终把对CAD技术的研发作为公司发展的核心动力。而从2010年开始，欧特克也开始注意到更多IT技术对CAD应用的影响，从而自AutoCAD WS开始，相继推出了基于云计算技术的Autodesk 360等CAD应用。将云计算引入CAD应用，打破了CAD技术对于CAD应用的桎梏，将CAD产品的竞争从单一功能的竞争，引向应用模式和应用体验的比拼，从而在CAD产品的赛跑当中，再次获得领先的地位。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 从最初的AutoCAD系列产品开始，到Inventor、Alias、Autodesk Simulation、Autodesk Vault、3ds Max、Maya、Revit Architecture，甚至SketchBook……欧特克通过研发和收购，旗下产品线逐渐趋于完整。到目前为止，欧特克可为企业设计师和管理者提供从描绘一张最简单的设计草图到完成设计一个复杂结构的产品，所需的各种设计软件工具，以帮助企业高效快速的设计生产出最理想的产品。如Autodesk Sketchbook、Autodesk Alias造型设计软件以及Autodesk Inventor三维设计软件可以帮助设计师短时间内将创意转化为概念设计并高效快捷的完成设计;Autodesk Simulation Moldflow、Autodesk Simulation CFD等丰富的模流分析、流体分析等用于验证设计，可以帮助客户在早期设计阶段避免由于设计引起的产品质量问题，保证产品投产之后拥有更可靠的品质。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;CAD工具数量的丰富为实现“智绘”提供了技术基础。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 从2010年开始，欧特克开始对旗下的产品进行更深入的整合和组合：欧特克开始以套件的形式推出面向不同行业和不同业务需求的解决方案。相对单个产品性能的提高，产品组合需要对不同行业用户的不同业务需求和业务流程有更深刻的理解。确切地说，这种改变是一种以用户需求为驱动的系统应用模式的调整，是对用户需求的一种满足。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 以往，在制造业领域，工程师需要根据自己的现实需求选择要使用的软件：设计会用到二维设计AutoCAD和三维设计软件Inventor，分析需要Autodesk Simulation系列产品，数据管理需要用到Autodesk Vault，在满足销售需求时需要用到3ds Max来做渲染……这就使得企业决策者和工程师始终处于对软件的选择当中。但是设计研发过程本身应该是连贯的，不应该由于使用的软件不同而人为割裂。欧特克最早关注到设计过程连贯性和整体性，并也正在通过创造一些新的工具来帮助用户完成整体设计。因此，欧特克将更多的行业知识和设计知识固化到软件系统当中，同时，根据不同用户的不同需求，将其一定和可能用到的软件进行打包，以产品组合套件的形式代替以往单一产品的销售，将经过筛选和集成的软件一次性提供给用户。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 这就是类似于将原本单一的点按照用户的需求连接成线，再按照行业的需求将不同的线结织成网，从而不仅使用户直接跳过了选择的过程，而且各个系统之间的衔接也更流畅。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;这才是真正的充满智慧的绘图，真正的“智绘”。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; <strong>蜕变：从CAD工具到泛PLM系统</strong></span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 已迈过三十个春秋的欧特克，从最初的CAD起家，欧特克从来没有停止对自身产品研发平台的丰富和构建。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 自通过陆续收购Moldflow、Algor和CFdesign后。到了2011年，欧特克公司开始对所掌握的CAE系统进行了调整，调整后的CAE产品系列主要包括Autodesk Simulation Mechanical、Autodesk Simulation CFD、Simulation Composite、Autodesk Simulation DFM、Autodesk Robot Structural Analysis Professional和Autodesk Simulation Moldflow等，基本覆盖从设计、制造和材料等全仿真流程。此刻的欧特克CAD用户开始意识到，欧特克对于CAD和CAE两种系统的真正集成应用时代开启了。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 不仅如此，欧特克也开始构建带有自身特征的全新PLM系统。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;事实上，欧特克针对产品数据管理提供的Autodesk Vault始于2000年之后，这也是欧特克最早的PLM基础。Autodesk Vault 是一个与 Autodesk Inventor Professional、AutoCAD Mechanical&nbsp;和 AutoCAD Electrical 集成的简便易用的数据管理工具。其定位是一个产品数据管理软件，目的也非常明确：帮助设计团队跟踪进展中的工作，在多用户环境中保持版本控制，组织设计数据，将产品信息整合到一起，从而减少数据错误的发生，同时支持对设计数据的重用。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 与其说Autodesk Vault具有PLM的某些基本功能，不如说Autodesk Vault面向的服务对象，依然是最广大的CAD用户。而作为基于云计算的PLM系统，AutodeskPLM 360以SAAS(软件即服务)的形式出现，因此，用户可以通过任何的桌面和移动设备登录网页，从而使得所有需要利用产品数据的人，都可以便捷高效地获得PLM所带来的便捷。也正是因为SAAS和云计算的支持，Autodesk PLM 360充分实现定制化：用户需要怎样的PLM，Autodesk PLM 360就能随需应变。从功能上看，被定义为“适用于整个企业的完整 PLM 解决方案”。 &nbsp; Autodesk PLM 360涵盖：工程、企业流程管理(BPM)、计划与项目管理、新产品发布(NPI)，以及质量和法规遵循等功能。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 不难看出，无论是Autodesk Simulation、Autodesk Vault还是Autodesk PLM 360，都与AutoCAD保持着相同的态度：面向更多的用户提供更简单、有效的应用。而也正是由于这些PLM产品的推出，使得欧特克的CAD产品不再仅仅是一种绘图的工具，其已经成为企业产品数据的源头。换个角度看，这些泛PLM系统正在将AutoCAD的触角向业务的各个层面延展，用户对CAD的应用深度以及CAD数据对于企业的影响力也因此不断推进。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 最新的消息显示，2013年年底，欧特克公司将以2.76亿美元现金收购英国CAM软件提供商Delcam公司。预计该交易将于其2015财年第一季度(2014年2月28日结束)完成。欧特克总裁兼CEO卡尔·巴斯通过新闻稿说：“我们正朝着提供更好的制造体验的道路上迈出了重要的一步。Autodesk和Delcam公司一起，将有助于进一步数字化制造技术的开发和实施。”</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;在结束的2013 美国AU“大师汇”上，欧特克宣布正式推出业内首款基于云的计算机辅助制造(CAM)解决方案——CAM 360。资料显示，CAM 360是以欧特克现有的针对制造商的云服务套件为基础，打造出真正基于云的从设计到制造的全程解决方案，用户可真正随时随地利用灵活的下一代工具来创建数字原型、进行模拟并转化为实体。据悉，CAM 360借助云近乎无限的计算能力，使用户可以利用协作工具与共享数据存储，为用户带来无可比拟的易用性和灵活性。同时CAM 360还可以满足用户与合作者以及客户之间迅速展开互动，并以前所未有的速度解决最困难的机械加工项目。由于CAM 360是一种多平台计算机数控(CNC)编程解决方案，因此可以超越传统桌面工作流程的相关常规限制。制造流程中几小时的差别便对整个交付时间产生影响，而CAM 360建立在欧特克成熟的HSM技术基础之上(Hierarchical Storage Management的简写，意为“分层存储管理”)，可大幅改善整个供应链的效率与效能。凭借CAM 360，企业可对从设计到制造流程中可能出现的任何制造问题或异常，进行灵活处理。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 显然，欧特克已经在着手补足解决方案的最后一个环节——制造。这不仅仅可以从根本上丰富欧特克自身CAM始终缺乏的业务短板，同时，也会使欧特克所倡导的数字化样机有机会从数字化走向现实的加工车间。实现自身业务和解决方案的真正蜕变。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; <strong>&nbsp; 绽放：欧特克对制造业的价值</strong></span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 总部位于德国斯图加特的博世公司，是全球100强企业之一。博世汽车部件(苏州)有限公司成立于1999年，从公司的业务角度讲，主要由五个事业部组成，分别专注于生产和销售汽车电子、底盘控制、底盘制动、多媒体系统和ATMO设备。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 作为欧特克产品的用户之一，博世汽车部件(苏州)有限公司的产品研发需要解决：项目大，设计生产周期短等普遍问题。不仅如此，博世汽车部件(苏州)有限公司由于是集产品研发和生产、销售于一身的公司，因此还必须解决设计和生产数据一致性的问题，同时，针对整车厂的产品开发需求，如何确保汽车装备和零部件设计的异地同步和生产的标准化，也是其不得不时刻考虑的产品研发问题——其难度可想而知。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 2007年，博世汽车部件(苏州)有限公司选中欧特克来构建自身的产品研发平台：选用Inventor作为其主要的设计工具;为了解决协同设计的问题，选择并实施了Vault。项目实施完成并正式投入使用后，效果明显。首先，Inventor简单、易学，具有较强的造型、装配功能，因此可以轻松实现两维三维数据的关联更新。借助Inventor验证物理样机与实际运动的可靠性，使博世(苏州)的设计、生产数据关联更新的效率提高了28%。其次，Vault与Inventor等可紧密集成，因此可以利用Vault实现图纸的集中存储，保证了数据的安全，提高了图纸的查找效率。同时，提高了协同设计的效率，实现了图纸的版本控制，从而大大减少了错误率。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;1997年12月成立的川油广汉宏华有限公司(四川宏华前身)自成立以来，工程师们就已经开始使用二维CAD系统来进行产品的开发。与传统的手绘相比，通过使用CAD系统，工程师的效率得到了很大的提高，减少了不少的人工工作。恰恰是因为效果明显、学习简单，二维CAD在四川宏华的工程技术人员当中得到了极高的普及。从2010年以后，四川宏华开始在整个设计团队当中选用和实施了欧特克公司的Inventor软件，共计划分三个阶段来实施。第一个阶段，Inventor系统培训和制定设计规范;第二个阶段，Vault安装配置和实施培训;第三个阶段，Inventor设计流程培训。很显然，四川宏华设计平台升级的切入点非常明确：结合公司的实际情况，从设计的全流程考虑，选择合适的三维设计软件。2010年11月，欧特克为四川宏华制作了一套基于Inventor的BOM表序号处理工具，12月，集团信息中心针对工艺研究所的要求，编写了一套BOM表转换程序，两套程序经过测试，完全满足工艺研究所的要求。到2010年底，在集团的信息中心工艺研究所、研发部、产品研究所、企管部、银华世纪和欧特克的积极支持配合下，三维设计软件的应用与推广工作得以顺利开展，目前大部分人员已经掌握了三维软件的使用方法，研究所的新项目已经开始使用三维设计。2011年3月9日，在四川宏华内部举办的Inventor设计大赛上获胜的黄玲玲在谈到改用三维CAD进行产品设计时认为，设计工具的升级不仅使得设计工作更加轻松，而且协同设计的产品开发模式也密切了不同部门工程技术人员的联系，使得产品开发的过程更加顺畅和有序。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 这只是几个欧特克解决方案在工程机械企业当中非常平常的一些成功案例，除此之外，在汽车制造和仿真注塑等领域，欧特克依然保持了非常好的表现。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 2013年11月13日，在欧特克AU“大师汇”召开的同时，2013 Autodesk数字化仿真技术中国区用户大会暨第四届Autodesk Simulation Moldflow大师赛也完美落幕。在决赛中来自中日龙电器制品(深圳)有限公司的李敏拔得头筹。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 事实上，作为国内注塑成型领域内的年度盛会，这是欧特克连续第四年举办Moldflow大师赛，在中国有超过1500家用户选择欧特克注塑成型仿真解决方案。作为欧特克数字化样机仿真解决方案的一部分，以Moldflow为核心的塑胶产品和模具的集成式设计、验证、优化的全面解决方案，使得 Autodesk Simulation Moldflow能够与Autodesk Simulation Mechanical结构强度分析软件、Autodesk Simulation CFD流体、热分析软件完全整合，将Moldflow的工艺性分析与结构强度分析、流场及热分析高度集成，具有很强的互操作性。并且可以更好地融入产品开发过程的各个阶段，实现底层数据的无缝传递，支持用户在设计的初期更加快速及时、灵活准确地对设计方案进行全面的预测、优化和验证。减少对高成本物理样机的需求，避免潜在的制造缺陷，更快地将创新产品推向市场。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 汽车是一个复杂的综合产物，其设计制造流程涉及面非常广，涵盖造型设计、工程设计、零部件成型、空气动力学模拟、可视化呈现等多个维度。从协作的角度看，零部件供应商、全球化的产品研发团队与汽车制造商之间高效的合作是产品实现加速创新、获得市场成功的关键。因此，对于汽车制造商来说，在设计之初，数据传输、分析和设计集成就成为汽车行业的一大挑战。在高度分工与协作的生产制造流程中，数字样机与整合式的平台化解决方案逐渐发展成设计工具的主流趋势。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 如今，在汽车制造领域，欧特克的汽车设计理念已经延伸至制造阶段的工厂设计环节，保证工厂的设计布局能够最大化地满足汽车设计、生产、制造的全流程需求。以欧特克工业造型设计软件Autodesk Alias、照片级的渲染软件Autodesk VRED和仿真验证系列软件Autodesk Simulation，以及欧特克产品设计套件(Autodesk Product Design Suite)和欧特克工厂设计套件(Autodesk Factory Design Suite)为例：它们能提供从早期的草图绘制、造型、渲染、仿真模拟，到数字化设计平台，再到工厂的设计布局，涵盖汽车从概念设计到可视化、仿真模拟再到生产制造以及售后整个全流程需求。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 迄今为止，欧特克已在全球范围内，为制造企业提供优秀的、针对其行业特点的软件产品和技术咨询服务。</span> \n</p>\n<p>\n	<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp; 现在，欧特克对于全球制造企业的价值正在绽放出切实的效益。</span> \n</p>','','1','2014-01-22 14:01:59','0','http://','1','0','0','','0','217','');
INSERT INTO huishi_article VALUES('98','90','欧特克助汤普森突破机械设计四百年瓶颈','<DIV>&nbsp;&nbsp;<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;<FONT style=\"FONT-SIZE: 14px\">&nbsp;&nbsp; 近日，欧特克公司（NASDAQ：ADSK）宣布，澳大利亚制造商汤普森联轴器有限公司（汤普森）运用Autodesk Inventor软件设计出新型联轴器，从而解决了长久以来困扰工程师的一项工程设计挑战。 汤普森的设计减少了传统联轴器存在的诸多问题，如功率耗损、震动、磨损及机器损坏等，让元件能够广泛应用在从卡车传动装置到直升飞机桨叶当中。</FONT></FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">联轴器通过将两个轴的一端相连来传输动力，从17世纪中期开始，工程师就希望能设计出将动力从一个轴等速传输到另一个轴而不经过任何承重滑面的联轴器。汤普森联轴器公司是400年来首家实现此目标的制造企业。</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　作为数字样机的基础，Inventor系列产品支持汤普森在投产前，以数字方式可视化、仿真和分析联轴器设计数据，以此简化产品开发流程，极大缩短上市时间。</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　汤普森公司工程总监David Farrell谈到：“Autodesk Inventor的快速设计能力十分出色，它让我们能够更快地为汽车、航空与工业机械市场中的客户定制设计汤普森联轴器。随着产品商业化及全面投产，Inventor将继续在产品设计与测试中办演重要角色。”</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　提高创新能力 缩短上市时间</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　数字样机通过将概念设计、工程设计与机械设计数据整合到单一的数字模型，对产品进行仿真。通过运用三维数字模型，汤普森可以轻松地执行包括承重计算在内的各种测试与分析，数字样机还支持公司进行重复设计，直至工程师确定合适的产品尺寸与特性，并且无需花费时间与金钱来制造和修改物理样机。如果没有数字样机，汤普森的这些设计创新可能很难实现。</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　汤普森预计，与过去仅依赖二维方法相比，运用Inventor软件只需要一半或三分之一的时间就能完成设计任务。此外，汤普森公司将物理样机的生产减少了40%。</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克制造业解决方案部门高级副总裁罗伯特?克罗斯谈到：“汤普森不仅仅提出创新方案，他们还能以更低的成本快速将创新转化为实际产品。汤普森成功地让400多年基本未变的机械设备实现了革命性创新——这就是数字样机的威力。”</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"></FONT>&nbsp;</DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　<B style=\"FONT-FAMILY: \">汤普森联轴器有限公司简介</B><B style=\"FONT-FAMILY: \"></B></FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　汤普森联轴器有限公司位于澳大利亚新南威尔士州奥兰治，其多项专利已在美国、俄罗斯、中国、南非、新加坡与新西兰注册，并且正在其它一些国家申请专利。欲了解关于汤普森联轴器有限公司的更多信息，请访问：www.thompsoncouplings.com。</FONT></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"></FONT>&nbsp;</DIV><DIV>　　</DIV>',' ','0','2008-08-20 14:27:13','0','','1','0','0','','0','808','');
INSERT INTO huishi_article VALUES('99','90','Autodesk续写3D视觉帝国传奇','<DIV align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp; 2008年8月20日，北京—近日，在美国洛杉矶举行的全球年度CG盛典SIGGRAPH大会上，全球设计软件巨头欧特克公司(NASDAQ: ADSK)华丽现身，带领其强大的3D动画与视觉效果软件家族精彩登场。此番，欧特克在SIGGRAPH上发布了涉及</FONT><A href=\"http://media.hexun.com/\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">传媒</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">娱乐领域共十余款产品，其中包括：Autodesk Maya 2009、Autodesk MotionBuilder 2009、Autodesk Mudbox 2009、Autodesk Toxik 2009、Autodesk FBX 2009、Autodesk ImageModeler 2009、Autodesk Stitcher 2009最新版本以及Autodesk 3ds Max 2009和Autodesk 3ds Max Design 2009创意扩展包（Creativity Extension）等。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　对于欧特克来说，今年的SIGGRAPH大会成为其著名3D动画与视觉效果软件Autodesk Maya推出10周年的纪念庆典舞台。上市十年以来，Maya已经帮助无数艺术家和创新梦想家在电影、电视制作、游戏以及工业设计与建筑领域实现设计梦想。近年来，更是成就了《蜘蛛侠II》、《贝尔武夫》等电影巨片中的各种视觉特效奇迹。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　在本届CG盛会上，欧特克推出了Maya产品的10周年纪念版——Autodesk Maya 2009。作为创新变革和制作效率的表率，新一代的Maya2009拥有对复杂性场景更强的操控功能，更快的建模工作流程，并且在协作、循环以及制作流程处理上也有上佳表现。其在建模、动画、渲染和效果方面有众多改进，能够最大化地实现生产力，优化工作流程，并提供了创新的可能性。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　Maya 2009优秀性能表现引来了业内人士的交口称赞，Maya 2009 beta版测试人之一Zoic Studios 高级技术总监Mike Romey就表示：“最新版本让Maya拥有更光明的前途。Autodesk Maya 2009 将改变艺术家们对于动效、渲染、合成和制作流程方法的看法。有了可靠的 mental ray 多渲染通道工作流程，制作将变得更加高效。这个新工作流程将为多渲染层精简渲染时间，从而提升工作质量。”</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　功能日臻强劲的Autodesk Mudbox2009和Autodesk MotionBulider2009</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　欧特克在SIGGRAPH大会上的另一场重头戏是3D角色动画软件Autodesk MotionBuilder2009和数字雕刻和纹理绘制软件Autodesk Mudbox2009的发布。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　本次发布的3D角色动画软件Autodesk MotionBuilder 2009是欧特克为游戏、电影和电视项目推出的最新版实时3D角色动画解决方案。这个2009年版本带来了3D视图区中的高品质视觉效果、一个直观的实时模拟工具包以及扩展的脚本性能，可实现更严密的制作流程整合。2009版的Autodesk MotionBuilder是该软件自推出以来最重要的一个版本，囊括了专门为技术总监而改良的工作流程，并更加注重实时捕捉、模拟和高品质渲染的互动性，从而可以提高动画师的生产力，并且将整体的创意控制权交到导演和摄影师手中。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　而同期推出的Autodesk Mudbox 2009则包含能够制造出极精细的数字角色对象工具，可供3D模型师和纹理师用于娱乐和设计项目。新款软件拥有直观式的用户界面(Intuitive User Interface)，并配有功能强大的工具包，不但能够创造出细节高度逼真的3D模型，还能让先期的数字资产尽可能地接近最终在屏幕上出现的形式；利用准确的模型还可以提高处理过程的工作效率，从而产生高质量的最终效果。该软件曾在《地心游记》、《薄雾》与《质量效应》中大显身手，塑造了一系列重量级的电影和游戏角色。业界对评Autodesk Mudbox 2009好评如潮。迪斯尼动画片厂（Disney animation Studios）的模型师Dan Platt更是称赞道，一个Autodesk Mudbox时代已经来临。在这样一个天马行空的理念随处可见的领域，让艺术家们能够以思维的高速和最大程度的重现精度进行设计工作的Mudbox从来没有让他们失望过。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">　　与</B><B style=\"FONT-FAMILY: \">Maya </B><B style=\"FONT-FAMILY: \">完美结合的</B><B style=\"FONT-FAMILY: \">Autodesk Toxik 2009</B></FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　最新推出的视觉特效程序合成软件Autodesk Toxik 2009，能与新的Autodesk Maya 2009建模软件相结合，可提供更加迅速的、迭代式的三维到二维工作流程。新版本拥有众多的特色功能，是一个的立体制作和场景延伸工具，能够提供高性能合成和视觉效果功能，尤其适合大幅面数字电影和电视项目。为应对娱乐行业所面临的立体制作挑战，目前越来越多的后期制作机构正同时引入Autodesk Toxik与Autodesk Maya。好莱坞动画片创作、图形和动画制作公司Bling Imaging与来自德国的电影电视、广告和音乐</FONT><A href=\"http://tv.hexun.com/\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">视频</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">项目数字后期制作服务公司PICTORION das werk都是该系列产品的忠实拥护者。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">　　令业界振奋的</B><B style=\"FONT-FAMILY: \">Autodesk 3ds Max 2009</B><B style=\"FONT-FAMILY: \">和</B><B style=\"FONT-FAMILY: \">Autodesk 3ds Max Design 2009</B><B style=\"FONT-FAMILY: \">创意扩展包</B></FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　向来在3D 建模、动画、渲染和视觉特效方面有出色表现的Autodesk 3ds Max和Autodesk 3ds Max Design自然不会缺席这场年度的CG盛会。在本次SIGGRAPH大会上，面向欧特克速博应用客户推出的Autodesk 3ds Max 2009和Autodesk 3ds Max Design 2009 创意扩展包（Creativity Extension）同样带给三维视觉界连连惊喜。新的扩展包优化了高面多边形三维建模功能；12个新粒子液体接口可以与Max紧密整合，帮助改善内存与系统的表现；而Boomer Labs最强劲的音频音轨插件MAXScript和纳入多轨音频功能的Prosound工具也让该产品锦上添花。创意扩展包能够帮助视觉艺术家和设计师们在游戏以及电影和视频内容的制作过程中更加快速高效地制作出令人信服的角色，实现无缝的 CG 特效，创造出更令人瞠目的虚拟景观。</FONT></DIV><DIV align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　除此之外，在SIGGRAPH盛会上，欧特克3D动画与视觉效果软件大家族的其他成员也悉数登场：平台不受限制的免费三维创作与交换格式的Autodesk FBX2009、能够提供三维先进的全景创作的Autodesk ImageModeler 2009和拥有基于图像的建模功能的Autodesk Stitcher Unlimited 2009的发布同样令业界振奋不已。另外，还有两位在数字视觉艺术领域有突出贡献的艺术家被欧特克评授予了2008年欧特克大师奖。</FONT></DIV>',' ','0','2008-06-19 14:32:00','0','','1','0','0','','0','853','');
INSERT INTO huishi_article VALUES('409','90','Autodesk：那些与制造业相关的讨论','<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;从AutoCAD到Autodesk Inventor、Alias、Simulation、Vault、3ds Max、Maya、Revit Architecture，直至SketchBook……凡是从事设计工作的人，几乎人人都有应用欧特克产品的经历。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; </span><strong><span style=\"font-size:13px;line-height:2;\">设计自动化</span></strong><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 如今的所谓设计，已经不是单纯意义的点、线和面从无到有的过程，也不再是电子图板的阶段——仅仅提供一个高效的CAD工具就能大幅提高设计效率。现在的设计，更多地，体现为数据的产生和流动。也就是说，所有的CAD工具必须联通成一个符合企业产品研发流程、适于产品数据流动的产品研发系统，由系统来驱动研发的流程。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;“目前我们已经能够为设计师提供所有其需要用到的数字化工具，”严天翌，欧特克软件中国有限公司制造业总监在2013欧特克AU中国“大师汇”召开期间接受记者采访时说，欧特克能够为工程技术人员提供更全面的工具，从最初的设计灵感捕捉，到造型设计、工业设计、三维建模、产品验证、数据管理，甚至设计评审的。用他的话说，“一个应用企业的设计师和管理层所需要的跟设计相关的功能和软件，都能够在欧特克的解决方案里找到。”</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 众所周知，与行业内其他系统提供商不同，欧特克的产品研发系统并没有依赖PLM系统的平台作用，而是依然立足于CAD工具，把关注的重点放在产品研发过程本身，以及在这一过程中，与产品相关的数据在每个产品研发关键环节所发挥的作用。这种极具欧特克特色的产品定位，很大程度上符合设计师对于产品研发体系的认识。我们很难说由这种认识产生的产品研发体系是否具有技术优势，但是在产品同质化严重的CAD市场，通过这样的方式产生的CAD系统一定非常符合用户的口味。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:13px;line-height:2;\">基于这种对产品研发过程的关注，欧特克提出的所谓数字化样机的概念，是以Autodesk Inventor为核心，整合欧特克全系列设计、可视化和仿真分析工具，将来自产品开发流程中各个阶段的设计数据整合进一个单一的数字模型，为用户提供从概念设计、结构设计、设计验证、制造与工艺仿真和三维动画制作等环节的完整功能。进而，在数字化样机的基础上，通过收购Logimetrix公司旗下的iLogic与相关技术，欧特克的产品研发体系又开始表现出了“设计自动化”的特征。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; ilogic是一款基于关联设计的桌面自动化软件(现已成为Inventor内嵌的功能)，旨在为制造企业提供基于关联规则的设计和自动化技术。通过ilogic技术创建的“智能部件”(smart part)能够携带准确的设计信息直接嵌入Autodesk Inventor创建的数字化样机，从而为Inventor用户界定数字模型中核心产品信息的逻辑特性，以便更加容易地部署基于关联规则的设计，让设计师无需复杂的编程知识即可把普通的设计任务自动化。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-size:13px;line-height:2;\">“我相信设计自动化不是一个新的概念，很早就有这个概念。”刘雪冬，欧特克软件中国有限公司大中华区制造业技术经理认为，之所以设计自动化始终是一个概念而没有成熟的应用，主要是因为以往市场上的全自动化设计系统柔性、局部灵活性偏差。“现在随着技术的不断提高和完善，欧特克希望不但可以推出一个最通用的解决方案，而且还希望能够有一批人都能够自己来做自动化——自己维护，把企业的设计标准、设计规范内置在系统里。”刘雪冬还认为，要实现设计自动化，应用企业自身的产品标准化程度一定要足够高，流程要相对清晰，产品的平台要规范，产品的模块化程度要尽量标准。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; </span><strong><span style=\"font-size:13px;line-height:2;\">Autodesk 360</span></strong><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 从云技术开始，随着社交网络、移动智能设备和三维打印等技术和应用越来越普及，成本越来越低，其正在为工程师应用CAD的方式，甚至产品研发的模式、体系、流程、方法和基本理论等带来越来越明显的影响，因此用户企业对于CAD系统为代表的产品研发体系的要求也正在发生着变化。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 首先，随着工业环境和商业氛围的改变，未来的产品研发体系进一步细分、更强调专业性——专业的人做专业的工作。这就意味着未来的设计工作会由不同学科、不同专业、不同地域的设计团队在保持自己视角和专业技能的基础上，以项目为中心，多元化地、多个性化地进行设计表达，因此CAD系统必须能够对这种复杂的研发模式提供足够的技术和应用支持。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:13px;line-height:2;\">其次，随着新生代工程技术人员成为产品研发领域的主力，这些在网络环境当中成长起来的工程师们已经将社交网络、移动应用当成生活当中不可或缺的沟通方式之一，为他们提供可以随时随地使用的移动型、社交型CAD也是大势所趋。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 因此，未来的CAD就不仅仅是单个的应用或者工具，而是一个完全不同的产品研发生态系统——更强调团队协同、多样化学科、社交性和移动化应用。结合目前IT 技术的发展，未来的CAD系统首先必须是基于云端的——只有基于云端的CAD系统，才能在保证性能的同时，向更多用户提供统一的产品研发IT服务，同时也更有机会实现移动应用特征和社交属性。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-size:13px;line-height:2;\">“在我看来，互联网和云环境是一回事，”欧特克公司全球销售与服务高级副总裁史蒂夫·布卢姆在谈到IT技术发展对于企业IT应用的影响时谈到，因为担心安全、隐私、数据的控制等司题，现在依然有很多人在犹豫要不要使用互联网，使用云，”欧特克的产品有基于云端的，也有基于传统桌面系统的，用户可以自己决定是否要使用基于云端的产品研发体系，随心选择。我们只是想告诉我们的用户：云环境其实是一个很安全的环境，可以放心使用，而且这将是一种趋势。”</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 在CAD领域，云计算早已成为欧特克产品区别于其他CAD系统最大的个性标签：自推出Autodesk Buzzsaw以来，AutoCAD WS、Sim360和PLM360等不断推出，目前欧特克公司已经形成了一系列基于云端的产品和服务，这些产品和服务最早被集成到欧特克云(Autodesk Cloud)中。通过Autodesk Cloud，用户能随时地访问和存储其工程及设计文件，并通过Web浏览器或移动设备查看文件，与其他用户进行协作，即使对方并没有安装欧特克软件。现在，Autodesk Cloud升级成了Autodesk 360：以往欧特克基于云端的产品和服务被重新梳理，集中体现为某种面向未来的产品研发应用。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; “目前，通过Autodesk 360，用户可以应用全系列的欧特克软件，”严天翌举例说，通过应用基于云端的欧特克解决方案，未来设计师在做产品设计时，其桌面电脑上不需要装任何软件，他只需要链接到欧特克共用的服务器上的软件资源，就可以进行设计、协同、浏览、存储和分享，“所有的这些都是在云端实现，这时的CAD就是一种提供服务的方式。”严天翌说。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><strong><span style=\"font-size:13px;line-height:2;\">&nbsp;</span></strong><strong><span style=\"font-size:13px;line-height:2;\">记者后记</span></strong><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;谁都知道，随着实体工业的持续低迷，以工业企业为发源地的CAD系统提供商自然也面临着前所未有的压力。从公司运营的角度看：将所有的注意力关注在工业领域的做法显然有些孤注一掷，但是放弃在该领域业已形成的行业优势地位又得不偿失。CAD系统提供商客观深陷于进退维谷的尴尬当中。而就在CAD 市场逐渐失去昔日领头羊，形成群雄并起的局面时，欧特克转战建筑和动画市场取得了其他同类厂商无法企及的成绩。虽然几年之前欧特克也通过收购丰富了自己的CAE产品线，也宣称在制造业拥有最广泛和优质的用户，但是原本的工业界用户还是会担心：欧特克是否会根据业务发展需求，逐渐降低在制造业的投入和关注?已经连续采访欧特免几届AU大师汇的笔者，每次采访都会问同一个问题：制造业对于欧特克意味着什么?</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 通过2013年的AU大师汇，笔者感受到，欧特克在制造业的解决方案通过之前几年的深耕，产品线的思路正在逐渐清晰：横向的CAD、CAE、PDM和PLM 的功能性正在趋于完备，纵向的全自动设计、云计算应用、移动应用等各色系统运行模式也初具规模。恰好，就在本次采访结束不久，记者收到消息，欧特克公司将以2.76亿美元现金收购英国CAM软件提供商Delcam公司。预计该交易将于其2015财年第一季度(2014年2月28日结束)完成。欧特克总裁兼CEO卡尔·巴斯通过新闻稿说：“我们正朝着提供更好的制造体验的道路迈出了重要的一步。Autodesk和Delcam 公司一起，将有助于进一步数字化制造技术的开发和实施。”很显然，欧特克公司对制造业还是有相当的企图心，这一收购不仅可以从根本上丰富自身CAM始终缺乏的业务短板，同时，也会使欧特克所倡导的数字化样机有机会从数字化走向现实的加工车间。</span>','','1','2013-12-30 09:56:53','0','http://','1','0','0','','0','223','');
INSERT INTO huishi_article VALUES('127','90','3ds Max CAT轻松制作动画','<H2><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk 3ds Max CAT：轻松制作动画</FONT></H2><DIV class=\"section header\" id=section0><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section1><!--startindex--><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Subscription 客户现已可以免费下载Autodesk&reg; 3ds Max&reg; CAT。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk&reg; 3ds Max&reg; CAT 是通过实际制作检验的Autodesk 3ds Max 2009 和 Autodesk&reg; 3ds Max&reg; Design 2009角色动画插件。3ds Max CAT是一款动画人为动画人设计的插件，让制作 3D 角色动画不再枯燥乏味。 利用该软件的工具组，能够更轻松地进行角色搭建、非线性动画、动画分层、动作捕捉输入和肌肉模拟。 3ds Max CAT 快速、稳定、简单，整合了多种尖端功能，能够帮助艺术家更轻松地在 3ds Max 和 3ds Max Design 中制作角色动画。</FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">让搭建创造更简单</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用 Autodesk 3ds Max CAT 可以更轻松地创建复杂多足的角色搭建。 艺术家可以轻松的设计自定义的骨骼系统或是使用各种脊椎、头、骨骼、手指和脚趾模块创建从人类到微小生物等任何你想要的物体。 3ds Max CAT 还支持对蜈蚣等高度复杂骨骼系统的搭建。</FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">快速轻松地制作角色动画</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用 Autodesk 3ds Max CAT 能够更轻松地制作动画。 只需几次点击，就可以利用 CAT 程序化动画工具创建行走循环，并将角色与路径连接，从而驱动角色。 尤其适用于数字临时演员，即使在波浪地形，3ds Max CAT 搭建也能够自动计算落脚点。</FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">高品质动画和高度的灵活性</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用 3ds Max CAT，可以快速而可靠地制作高品质角色动画。 利用动画分层和片断编辑，可以创建片断并重新无损的使用原动画。 混合截然不同的动画或添加额外的细节和副运动不会损坏基础动画。 直观的程序化系统（如：CAT 脊椎），让您只需几次点击就可以制作极其复杂的角色运动。 </FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">难以置信的真实感</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">新的 CATMuscle 功能通过模拟皮下肌肉运动而增强角色动画的真实感。</FONT></P><P><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://usa.autodesk.com/adsk/servlet/item?siteID=123112&amp;id=12299752\" lid=\"Autodesk 3ds Max CAT 3 新增功能\" lpos el=\"http://usa.autodesk.com/adsk/servlet/item?siteID=123112&amp;id=12299752\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" color=#ff0000>Autodesk 3ds Max CAT 3 新增功能</FONT></A></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Subscription 客户，请登录</FONT><A href=\"http://www.autodesk.com.cn/subscription\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Subscription Center</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">免费下载。</FONT></P></DIV>',' ','0','2009-01-31 19:00:27','0','','1','0','0','','0','1587','');
INSERT INTO huishi_article VALUES('131','90','电影打造一流视觉的秘笈','<P><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009212174643180.jpg\" border=0></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【2009年02月12日，北京】 全球最大的二维、三维数字设计软件公司欧特克公司（Autodesk, Inc.）传媒娱乐解决方案为电影《海角七号》提供了尖端、高效的设计工具，尤其是欧特克电影制作流程的3D 动画、建模和渲染解决方案</FONT><A href=\"http://www.autodesk.com.cn/maya\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk&reg; Maya&reg;</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">和</FONT><A href=\"http://www.autodesk.com.cn/3dsmax\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk&reg; 3ds Max&reg;</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在影片的视觉特效、动画编辑等制作环节中发挥了重要作用。在为观众打造出一流视觉体验的同时，欧特克正在帮助越来越多的电影人用最佳效果实现其完美创意，为电影工业的设计创新与可持续发展提供强大动力。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">身临其境的视觉享受</B><BR style=\"FONT-FAMILY: \">在影片开篇构建1945年日军撤离、搭乘高砂丸号出海的场景时，特效团队采用Maya nParticles分子系统，Maya nCloth以及Autodesk 3ds Max&reg;外挂特效，制作出船体破浪前行、扬起多层水花、布旗迎风飘扬的真实感觉；加上Fluid Effect流体模拟出船上烟雾冉冉升空的效果，并搭配斜阳西下的背景合成，完美的质感令观众的得到身临其境的视觉享受。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/200921217473336.jpg\" border=0></FONT></P><H4><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>虚实交融的动人画面</FONT></H4><P><!--stopindex--><!--startindex--><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">片中有一幕描写1945年友子目送高砂丸号起锚，码头上人群挥手道别，日本教师在甲板上写信给恋人的感人场景。在前期的拍摄时，导演是在一个啤酒厂内搭建实景，并邀请数百名群众演员一齐做出挥手动作；而甲板上的镜头则是在影棚内完成。随后，《海角七号》的制作团队就采用Autodesk&reg; Maya&reg;的功能模块，如Polygon Modeling建构人物模型，利用Skelaton制作挥手动画，随后进行各个画面的特效合成和修饰，使得真实场景和电脑动画完全融合，交错出动人的画面。<!--stopindex--> </FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009212174726291.jpg\" border=0></FONT></P><H4><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>天衣无缝的后期成效</FONT></H4><P><!--stopindex--><!--startindex--><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">而影片中还有一组茂伯穿着邮递员服装送信、骑车飞驰而过的场景。据介绍，在影片拍摄时，演员身穿的其实是白色上衣。为了节省重新拍摄所造成的人力物力花费，动画特效小组借助Autodesk&reg; Maya&reg;，在虚拟环境中构建茂伯身穿邮递员服装、弯腰骑车的3D模型，模拟他在迎风骑车时上衣自然鼓起的效果，然后进行对位修饰，影片中长达30秒的镜头丝毫不露后期制作痕迹，画面尽善尽美。<!--stopindex--> </FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009212174743528.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">来自《海角七号》视觉特效制作团队——大腕影像的视觉特效执行长林哲民表示：“Autodesk&reg; Maya&reg;功能强大，各种快捷键的设计具有人性化的特点，而且一直通过创新来达到用户的需求，让导演完成对银幕理想的坚持，成就让人印象深刻的诸多画面。” </FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">除了欧特克的视觉特效解决方案，《海角七号》的拍摄团队还凭借欧特克高性能的数字调色配光系统</FONT><A href=\"http://www.autodesk.com.cn/lustre\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk&reg; Lustre&reg;</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">精确调整影片的光线和色彩，打造出传神的光影成效。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克传媒娱乐解决方案是专为数字媒体的制作、管理和交付而设计，全面覆盖了从影视特效、调色配光、编辑到动画、游戏开发和设计可视化等所有领域，可以帮助包括电影视觉艺术家在内的专业媒体创作人员将脑海中孕育已久的梦幻景象转化为现实力作。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">面对市场和观众日益苛刻的需求，全球各地的电影制片方普遍加大了在影片视觉特效技术的投入，专业媒体创作人员对于尖端、高效的设计技术支持的要求也日益提升。凭借十年来的行业洞察和丰富经验，欧特克传媒娱乐解决方案已经在电影工业领域得到广泛应用，并日渐成为一股神奇的力量，成为令一部电影叫好叫座的幕后推手。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">目前，已有数千部运用欧特克传媒娱乐解决方案所创作影视娱乐作品荣获大奖。自1993年以来的顶级大片中，有三分之二应用了欧特克的视觉特效和剪辑技术。在过去的13年中，所有“奥斯卡最佳电影视觉效果奖”获得者均使用了欧特克的解决方案。在刚刚公布的2009奥斯卡最佳动画长片奖提名名单中，应用了欧特克视觉特效技术的影片《马达加斯加2：逃往非洲》、《功夫熊猫》、《明星狗》等也榜上有名。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT>&nbsp;</P><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section8><!--startindex--><H4><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>关于欧特克</FONT></H4><!--stopindex--><!--startindex--><DIV><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克公司是制造业、工程建设行业、地理信息业以及传媒娱乐行业的在二维、三维数字化设计软件的世界领导者。自1982年AutoCAD软件正式推向市场，欧特克已针对最广泛的应用领域研发出多种先进的数字样机解决方案，帮助用户在设计转化为成品前体验自己的创意。《财富》排行榜名列前1000位的公司普遍借助欧特克的软件工具在设计的初期将创意进行可视化处理，并对其在真实世界中的性能表现进行模拟和分析，从而节省时间和成本、提高质量并促进创新。欲了解欧特克的更多信息，敬请访问 </FONT><A href=\"http://www.autodesk.com.cn/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">http://www.autodesk.com.cn</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT></P></DIV></DIV><!--stopindex-->',' ','0','2009-02-12 17:46:10','0','','1','0','0','','0','991','');
INSERT INTO huishi_article VALUES('135','90','数字化设计实现时光旅行','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【<B style=\"FONT-FAMILY: \">2009</B><B style=\"FONT-FAMILY: \">年</B><B style=\"FONT-FAMILY: \">5</B><B style=\"FONT-FAMILY: \">月</B><B style=\"FONT-FAMILY: \">5</B><B style=\"FONT-FAMILY: \">日，北京</B>】近日， 全球最大的二维、三维数字化设计和工程软件公司欧特克（Autodesk Inc.）宣布， 科学家们将借助其制造业设计解决方案重现艺术与科学巨擘达芬奇的发明成果，让四百年前的发明穿越历史的烟云再现眼前。全球的电视观众将有机会在Discovery Channel（探索频道）的一套全新节目中看到科学家们如何通过欧特克设计解决方案所提供三维建模、可视化、模拟和分析支持，完成这项伟大的工作。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在这套名为<I style=\"FONT-FAMILY: \">Doing Da Vinci</I>（《扮演达芬奇》）的节目中，科学家们将运用现代技术，力图重现达芬奇的旷世发明。装甲坦克、自行货车、飞行器……很多复杂机械制品的前身都能够在达翁的手稿中一窥端倪，让人唏嘘不已。尽管科学家们将严格选用达芬奇时代的材料以真实地还原历史，但是先进的数字化设计技术的应用还是赋予这一过程十足的现代色彩。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">科学家们借助欧特克旗下的三维设计软件</FONT><A href=\"http://www.autodesk.com.cn/inventor\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">对作品进行数字化设计、可视化、模拟和分析。其强大的建模功能给予设计草图丰满的立体形象，带给科学家和电视观众直观的视觉冲击；而软件的工程分析能力——无论是力学结构分析，零部件啮合模拟，还是材料选择分析——让科学家无需制造实体模型，就能够判断出哪些构思将永远留在史书中。这不仅提高了设计工作效率，更能够让科学家和观众在项目建成前提前领略大师精彩的设计作品。Autodesk Inventor是欧特克数字化样机解决方案的核心产品。该解决方案被广泛用于制造业。通过创建三维数字化模型，设计师与工程师可以对设计方案进行模拟、分析和可视化，在生产前检验产品性能，优化设计方案，从而提高设计效率，有效控制成本，加速产品创新与上市速度。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20095521522124.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <FONT style=\"FONT-SIZE: 14px; COLOR: #ff0000; FONT-FAMILY: Arial\">运用欧特克Inventor重现的发明</FONT></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">“Autodesk Inventor软件真是无可挑剔！它直观的程序能让我们轻松地开展设计并且进行模拟与分析研究，从而寻找出最佳方案，再现达芬奇的设计，”团队成员之一，曾经参与《人工智能》和《少数派报告》等电影制作的特效专家和机械设计师Valek Sykes表示。 “Inventor软件让我们实现最真实的模拟，使我们基于计算机的设计和测试就可以知道在现实世界中某一设计是否可行。” </FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克制造业部全球高级副总裁Robert “Buzz” Kross说：“我们很高兴<I style=\"FONT-FAMILY: \">Doing Da Vinci</I>选择了Autodesk Inventor用来真实地再现达芬奇的发明，让欧特克的软件在这样一场‘时光旅行’中扮演主角。达芬奇具有超越时代的思维，而欧特克则一直致力帮助设计师从优秀走向卓越。欧特克数字化样机解决方案帮助世界各地的制造商高效并准确设计并制造出更好的产品，让设计师与工程师们在建造实体之前创建三维数字化模型，优化并验证设计方案——这种独特的设计体验堪比时光旅行。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">据悉，<I style=\"FONT-FAMILY: \">Doing Da Vinci</I>共10集， 4月13日在探索频道首播的第一集中，项目小组尝试建造了达芬奇最前卫的设计之一——装甲坦克，该设计被誉为现代装甲坦克的前身。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欲了解Inventor软件如何在节目中发挥作用，请访问以下网址：</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://dsc.discovery.com/videos/doing-davinci-improving-leonardos-design.html\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">http://dsc.discovery.com/videos/doing-davinci-improving-leonardos-design.html</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT>&nbsp;</P><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><!--startindex--><H4><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克简介</FONT></H4><!--stopindex--><!--startindex--><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克公司是制造业、工程建设行业、地理信息业以及传媒娱乐行业的在二维、三维数字化设计软件的世界领导者。自1982年AutoCAD软件正式推向市场，欧特克已针对最广泛的应用领域研发出多种先进的数字样机解决方案，帮助用户在设计转化为成品前体验自己的创意。《财富》排行榜名列前1000位的公司普遍借助欧特克的软件工具在设计的初期将创意进行可视化处理，并对其在真实世界中的性能表现进行模拟和分析，从而节省时间和成本、提高质量并促进创新。欲了解欧特克的更多信息，敬请访问 </FONT><A href=\"http://www.autodesk.com.cn/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">http://www.autodesk.com.cn</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT></P></DIV>',' ','0','2009-05-05 21:04:17','0','','1','0','0','','0','705','');
INSERT INTO huishi_article VALUES('145','90','欧特克施展光影魔法','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【2009年7月14日，北京】身披斗篷的巫师、成群急飞的猫头鹰信差、满天飞舞的魔法扫帚……霍格伍兹的魔法世界在火热的七月再次登陆全球的大银幕。这部被全球影迷翘首期待已久的《哈利&#8226;波特与混血王子》（Harry Potter and the Half-Blood Prince）正是著名视觉特效制作公司——工业光魔（Industrial light and magic，简称ILM）的得意之作之一。借助全球最大的二维和三维设计、工程与娱乐软件公司欧特克有限公司（“欧特克”或“Autodesk”）的视觉特效技术，工业光魔已经为包括《哈利&#8226;波特与混血王子》（Harry Potter and the Half-Blood Prince）、《变形金刚2：卷土重来》（Transformers: Revenge of the Fallen）、《终结者：救世主》（Terminator Salvation）和《星际迷航》（Star Trek）在内的多部暑期大片制作了大量眩目的特效场景。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/200971422245312.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">工业光魔由著名导演乔治&#8226;卢卡斯于 1981年创立，目前已发展成为全球第一大特效制作公司。从1975年《星球大战》到今天的《哈里&#8226;波特》和《变形金刚》，工业光魔几乎成为现今全球特效电影的代名词。在《哈利&#8226;波特与混血王子》中，来自工业光魔的80位艺术师利用</FONT><A href=\"http://www.autodesk.com.cn/maya\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Maya</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 和</FONT><A href=\"http://www.autodesk.com.cn/inferno\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inferno</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">为该影片制作了165个镜头。这之中不但包括大规模针对水和火的照片级真实感流体模拟和宏大的人群复制场景，还有单个镜头中出现数千个动画角色。其中，三维合成软件Autodesk Inferno 还是工业光魔独有的SABRE (中文有译作军刀)高速合成系统的一部分，是专门用于高级图形、音乐视频、高速合成和客户驱动的交互设计的终极视觉特效系统。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克公司的传媒娱乐部门专门为包括电影视觉艺术家在内的广大专业媒体创作人员提供尖端、高效的设计工具。其屡获殊荣的传媒娱乐解决方案是专为数字媒体的制作、管理及交付而设计，全面覆盖了从影视特效、调色配光、动画编辑、游戏开发和设计可视化等所有领域。欧特克传媒娱乐部数字娱乐副总裁 Stig Gruman 表示：“每年，以视觉特效著称的电影无论从数量还是质量上都在上升。工业光魔不断推出极富创意的高科技作品，为全球观众创造震撼的精湛视觉效果。欧特克很荣幸能够与工业光魔及其数百名前沿技术人员合作，打造今夏这些令人难以忘怀且叹为观止的视效镜头。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">《星际迷航》——CG技术延续银幕科幻经典<BR style=\"FONT-FAMILY: \"></B>五月初，《星际迷航》的全球上映拉开了今夏电影季节的序幕。在这部电影中，工业光魔在其综合利用 Autodesk Maya 和Autodesk Inferno 等工具创建的几个有史以来最大的CG（电脑图形） 模型上制作出了797个特效镜头。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009714222451663.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">工业光魔负责这部电影视觉特效与合成工作的副监制 Eddie Pasquarello 评论表示：“《星际迷航》是我参与过的最富创造性、娱乐性和艺术气息的作品之一。我们特意利用 Autodesk Inferno/SABRE 系统来打造这部影片，因为我们知道，只有这样我们才能创造出真正特别的东西。可靠的系统加上我们的优秀人才是制作出壮观场景的根本保障。《星际迷航》是超强软件与杰出制作人员的神奇结合。” </FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">工业光魔动画部主管Paul Kavanagh 表示：“这部电影是《星际迷航》的新起点。通过与 J.J. Abrams 的密切合作，我们希望让一切焕然一新。利用 Autodesk Maya 的硬件绘制工具，我们完全能够在5天之内绘制出70个镜头，而这个过程通常需要几个月的制作时间。Autodesk Maya 提供的速度、易修改功能以及与我们专有软件平台 Zeno 的无缝连接构成了一套工具集，它不仅不会妨碍创造力的发挥，实际上还是该项目成功的关键。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">《变形金刚2》——汽车人出神入化<BR style=\"FONT-FAMILY: \"></B>《变形金刚2》因拥有555多个镜头和46个主角机器人（其中一些机器人拥有5万多个独立动画部件）以及制作成 IMAX 版本的需要，使得这部影片的制作向工业光魔致力于该项目的250多名美术设计工作人员提出诸多挑战。他们经计算得出，一台典型的家用电脑需要一万六千年的时间才能完成这部电影的绘制工作。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009714222521569.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">工业光魔将一系列欧特克软件的各种功能运用于《变形金刚》的整个制作过程：用于数字绘景的 </FONT><A href=\"http://www.autodesk.com.cn/3dsmax\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk 3ds Max</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 软件、美术设计部使用的 </FONT><A href=\"http://www.autodesk.com.cn/softimage\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Softimage</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 软件、用于合成的 Autodesk Inferno/SABRE、用于网络处理的 Autodesk Backburner 软件以及用于动画制作、rigging 和布图的核心工具 Autodesk Maya。对此，动画部助理总监 Jeff White 感叹说：“ 来自不同领域并拥有多项技能的美术设计人员为了这部电影走到了一起，欧特克工具日益增强的互操作性成为一个很大的优势。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009714222546986.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">此外，特效团队还利Autodesk Maya打造了出令人难以置信的逼真机器人画面，不仅动作场景栩栩如生，就连汽车人与人类演员之间情感交流的这样的重头戏也被刻画得惟妙惟肖。Jeff White说：“正因为有了Autodesk Maya 和灵活的Python 脚本，我们才可以做到这一点。出色的动画制作人员与强大的制作工具联合打造出一部精彩非凡的电影。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/200971422267167.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">《终结者》——数字化的阿诺&#8226;施瓦辛格T-800</B> <BR style=\"FONT-FAMILY: \">除了参与《星际迷航》和《变形金刚》的制作外，一个由150多人组成的 ILM 团队还利用 Autodesk Maya 和 Autodesk Inferno 为《终结者：救世主》创作了366个视效镜头。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009714222650366.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">工业光魔负责该影片的视效主管Ben Snow 解释说：“在很短的制作周期内，欧特克软件在实现《终结者：救世主》恢宏的视觉效果方面发挥出至关重要的作用。Autodesk Maya 是工业光魔为该电影中所有机器人制作动画的基础工具，其灵活性使我们能够轻松地将其与我们专有的工具进行整合。Autodesk Inferno为数字化阿诺&#8226;施瓦辛格 (Arnold Schwarzenegger) T-800 的成功创作提供了帮助，它使我们能够将电脑图形演员与真人替身进行无缝融合。Autodesk Inferno 还为我们提供了所需的火力、速度和灵活性，使我们能够为数字化人形 T-800 创作挑战性的镜头，展现 T-800 被手雷轰炸以及产生的毁灭效果。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009714222713921.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">目前，工业光魔正在制作戈尔&#8226;维宾斯基 (Gore Verbinski) 的首部动画电影《Rango》、詹姆斯&#8226;卡梅隆 (James Cameron) 的《化身》(Avatar) 和M&#8226;奈特&#8226;沙马兰 (M. Night Shyamalan) 的《最后的气宗》(The Last Airbender)，并计划继续使用欧特克的特效工具。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">目前，欧特克视觉特效技术正在帮助越来越多的电影人实现他们天马行空的银幕创想，在将更多动人的电影故事奉献给观众们的同时，也为竞争激烈的电影工业开辟一个可持续的未来。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT>&nbsp;</P>',' ','0','2009-07-14 22:21:11','0','','1','0','0','','0','781','');
INSERT INTO huishi_article VALUES('147','90','MotionBuilder 2010 面世','<P><FONT style=\"FONT-SIZE: 10pt\">&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 【2009年8月7日，新奥尔良】近期，在美国新奥尔良举行的全球年度CG盛典SIGGRAPH大会上，全球最大的二维和三维设计、工程与娱乐软件公司欧特克有限公司（“欧特克”或“Autodesk”）发布了其新版实时 3D 角色动画软件 </FONT></FONT><A href=\"http://www.autodesk.com/pr-motionbuilder\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk MotionBuilder</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2> 2010。该最新版软件提供更快的总体性能、增效型动画工作流以及拓展的实时物理功能。Autodesk MotionBuilder 2010 还将作为数字娱乐创作套件 </FONT><A href=\"http://www.autodesk.com/pr-entertainmentcreationsuites\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk Entertainment Creation Suites</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2> 以及实时动画套件</FONT><A href=\"http://www.autodesk.com/pr-realtimeanimationsuites\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk Real-Time Animation Suites</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2> 的组成部分，利用该软件与 </FONT><A href=\"http://www.autodesk.com/pr-maya\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk Maya</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2> 和 </FONT><A href=\"http://www.autodesk.com/pr-3dsmax\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk 3ds Max</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2> 软件之间更强的互操作性，使该技术与数字娱乐工作流之间的整合更加实惠。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>&nbsp;&nbsp;&nbsp;&nbsp; <IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009811113635391.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk MotionBuilder目前已经被用于制作多个知名的娱乐项目，包括《贝奥武夫》(Beowulf)、《战争机器2》(Gears of War 2)、《肖恩·怀特滑雪》(Shaun White Snowboarding) 和《抵抗2》(Resistance 2)。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>欧特克数字娱乐副总裁 Stig Gruman 表示：“Autodesk MotionBuilder 是大容量游戏动画制作、以导演创作为主导的虚拟电影术和实时角色模拟的理想工具。随着越来越多的创意策划师采用虚拟电影术和可视化预览效果技术，性能和易用性都有所增强的2010版软件将有助于进一步重新定义创意决策流程。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Rockstar Games London 首席动画师 CJ Markham 表示：“自2003年我首次引进使用该软件以来，Autodesk MotionBuilder 2010是最令我激动的一个版本。它的物理工具和解决方案令人不可思议，感觉要比老版本快很多。新版软件与我的64位处理器兼容，并且能够使用所有 12gig 的随机存取内存(RAM)，这使测绘包含多个角色的远距离场景变得非常容易。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/2009811113713116.jpg\" border=0></FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>新功能亮点</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>加速效能</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>核心引擎的诸多改进以及存储优化有助于在处理大场景文件时提供卓越性能。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>该动画工具的非线性编辑功能比以往任何时候都要快，使得电影艺术和动作编辑场景数据的处理变得更加迅速。</FONT></LI></UL><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>增效型动画工作流</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>更强的姿势控制支持使得动画师能够捕捉姿势并将其应用于另一个目标物，以实现快速的动画重复使用。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>对自定义键组的支持使得动画师能够通过定制化装备、小道具、照相机和照明灯提高工作效率，并定义他们自己的键设置方法。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Actor 工具已经使用 Python 脚本语言推出，通过自动设置动作捕捉数据并将其传输至角色，来帮助用户节省时间。</FONT></LI></UL><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>拓展的物理学和角色模拟功能</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>接合现可用于连接多个模拟对象，以达到模拟的目的。这意味着用户可以为其角色使用一些小道具，并由物理引擎自动解决二级动画问题。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>一个全新的连贯动作工作流让动画师能够操纵他们的人偶模拟或使其与自定义姿势相匹配。</FONT></LI></UL><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>更强的互操作性</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk MotionBuilder 2010 已经与最新版的 Autodesk HumanIK 中间件进行整合。Autodesk MotionBuilder 的姿势控制、角色控制和角色定义表目前也可以与 HumanIK 插件共同使用。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>MotionBuilder 的角色模板已经进行更新，从而加强了对 3ds Max Biped 的支持。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>Autodesk Softimage 2010 软件现在包括 MotionBuilder Template 工具，方便了不同应用之间的角色数据交换。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>在 MotionBuilder 内对 Qt 用户界面元素的支持使开发人员能够利用业界标准用户界面工具包帮助打造 Open Reality 软件开发包插件。</FONT></LI></UL><P><FONT style=\"FONT-FAMILY: Arial\"><!--stopindex--></FONT></P>',' ','0','2009-08-11 11:33:33','0','','1','0','0','','0','1680','');
INSERT INTO huishi_article VALUES('157','90','铁臂阿童木重返大银幕','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: 宋体\">【<FONT style=\"FONT-FAMILY: Arial\">2009年10月21日，北京】日前，由全球知名电脑动画制作公司香港意马国际控股有限公司投资6500万美元倾力打造三维动画电影《阿童木》将在全球同步上映。全球最大的二维、三维数字设计软件公司欧特克公司（Autodesk, Inc.）数字娱乐创作解决方案为意马国际提供了高效的创作工具，Autodesk&reg; Maya&reg;在影片的建模、动画、特效、动作绑定等环节发挥了重要作用，成为铁臂阿童木重返大银幕背后必不可少的CG助推器。</FONT></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" height=177 alt=意马国际欧特克携手塑造阿童木三维真身 src=\"http://images.autodesk.com/apac_grtrchina_main/images/news_pagebanner_420x177_v1.jpg\" width=420></FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>东西方混血的三维阿童木</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>意马国际成立只有短短8年，其前身是全球最大的人造圣诞树制造商宝途。自2002 年易名为意马国际，专注于动画制作，同年发表处女作《时空冒险记》。往后数年，意马国际陆续为美国及日本市场制作计算机动画电视剧，正式步入计算机动画电影制作年代。之后，意马国际于2005年及2006 年分别宣布购入《忍者神龟》和《阿童木》动画制作权。2007年，意马国际推出的三维动画电影《忍者神龟》，不仅向世界证明了香港的动画公司完全有能力出品国际水准的电影，也使当时这家名不见经传的公司成为业界瞩目的焦点。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" height=176 alt=东西方混血的三维阿童木 src=\"http://images.autodesk.com/apac_grtrchina_main/images/news_pagebanner_420x176_v2.jpg\" width=420></FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>港产动画巨人装备顶级CG视觉配置</FONT></B></P><P><FONT size=2><FONT style=\"FONT-FAMILY: 宋体\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-SIZE: 14px; FONT-FAMILY: \">Autodesk Maya——细节处理的神来之笔<BR style=\"FONT-FAMILY: \"></B>为了打入国际市场，这一次的阿童木也与原著有着许多不同，原先平面黑白的阿童木在漫画中被称作是“世界上拟人化表现最逼真的机器人”，因此在电影中他的皮肤、毛发以及动作等方面都要接近真实。另一个比较大的区别在于剧情中阿童木的年龄从原作的7、8岁上升到了13、14岁，所以他在大部分时间都是穿着衣服的，而这也给制作部门带来了更大的挑战，例如在高速飞行和遇到爆炸时衣服布料都要做出相应的反应。Autodesk&reg; Maya&reg;工具可以让动画师快速根据需要进行调整，使角色表现出逼真的运动效果。</FONT></FONT></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>作为全程参与过《忍者神龟》和《阿童木》制作的意马国际技术运营主管麦知行（Johnny Mak）介绍说：“在制作《忍者神龟》时比较辛苦，因为当时我们还没有比较成熟的技术。现在做《阿童木》就轻松了很多，也使得片中的很多镜头质量得到了提升。比如制作出了逼真的树叶、草被风吹摆动的效果，此外还有布料的抖动以及在灯光、反射等方面也均超越了《忍者神龟》的水平。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" height=175 alt=港产动画巨人装备顶级CG视觉配置 src=\"http://images.autodesk.com/apac_grtrchina_main/images/news_pagebanner_420x175_v3.jpg\" width=420></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>对于动画公司而言，开发部门决定着公司的技术发展潜力，意马国际自成立初期便组建了一支优秀的程序开发队伍，他们根据制作部门的需要编写了很多程序插件，例如能够让角色的肌肉跟随动作变化作出相应变形的IMAGI Muscle（肌肉系统）、可以使角色的皮肤呈现真实质感及色泽的IMAGI Skin（皮肤系统）以及IMAGI Fur（毛发系统）、植物系统、流体模拟系统等等，这些插件均基于Autodesk&reg; Maya&reg;使用。Autodesk&reg; Maya&reg;具有开放式架构，它们之间的配合令意马制作中的每个环节都能够节省时间，效果也更接近完美。麦知行介绍说：我们用过很多软件，最终我们觉得Autodesk Maya是比较好的动画软件，因为它能够在Linux平台稳定运行，并且有非常好的开放性，让程序员可以开发插件配合我们的工作。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" height=174 alt=港产动画巨人装备顶级CG视觉配置 src=\"http://images.autodesk.com/apac_grtrchina_main/images/news_pagebanner_420x174_v4.jpg\" width=420></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>意马国际创办人及创作总监高伟豪（Francis Kao）感慨道：“软件就好比一支笔，这只笔要看你如何去用。选择Autodesk&reg; Maya&reg;这个软件是因为它是最开放的，我们在软件上加了自己的开发，做了很多新的东西，正是因为对软件有信心我们才有信心做了10年的开发！”</FONT></P><P><FONT size=2><FONT style=\"FONT-FAMILY: 宋体\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-SIZE: 14px; FONT-FAMILY: \">刻画万钧之力易如反掌<BR style=\"FONT-FAMILY: \"></B>在影片中，阿童木不仅上天入地尽显神力，还以一敌众与反派机器人打得不可开交。为了表现出机器人举手抬足间那种力道十足的感觉，《阿童木》的动作场面参考了电子游戏中的打斗概念，令各种招数呼之欲出视觉效果极其震撼。与制作《忍者神龟》时不同的是，当时意马自行开发的rigging tool（骨骼绑定工具）虽然减轻了动画师在制作角色动画时的负担，但是在应付一些大幅度变化及高难度动作时，动画师仍然要分开处理相关的绑定部分，因此单是在每个角色的骨骼绑定处理上就花了相当多的时间。而在《阿童木》的制作过程中，意马选用Autodesk&reg; Maya&reg;帮助动画师快速准确地完成了角色的动作制作，不仅动作流畅，而且物理模拟效果非常真实。</FONT></FONT></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" height=369 alt=刻画万钧之力易如反掌 src=\"http://images.autodesk.com/apac_grtrchina_main/images/news_pagebanner_420x369_v5.jpg\" width=420></FONT></P><P><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>欧特克数字娱乐创作工具——远程协作的接力棒</FONT></B></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>阿童木从投拍到完成只用了近3年的时间，在如此短时间内完成一部高水平的动画电影，意马国际如何做到如此高效？除了强大软件支持和出众研发实力，远程协作也是意马的绝活之一。意马在美国洛杉矶设立有创意部和制作分部，电影导演和这里的100名拥有丰富的好莱坞电影经验的制作人员，完成有关剧本、角色和概念设计等工作。在香港柴湾的意马400多名员工则根据前期的准备工作完成所有的制作工作，如建模、动画、灯光、渲染、合成等。他们采用先进的远程会议系统和高速点对点数据传输系统进行沟通。由于时差的关系，当香港到下午下班的时候，洛杉矶正好“开工”，使他们可以24小时“接力”工作。意马两地的工作人员均使用Autodesk&reg; Maya&reg;作为制作工具，Autodesk&reg; Maya&reg;拥有一整套业界领先的三维视觉效果、计算机图形和角色动画工具，使团队中各部门可以各取所需，令工作流程更加顺畅。此外，使用Autodesk&reg; Maya&reg;还有一个优势在于这款软件的使用者非常多，为公司扩增工作人员提供了方便。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\" size=2>香港意马国际以世界一流动画制作水准成功使昔日经典动漫《阿童木》焕发新貌，意马国际创办人及创作总监高伟豪的心愿是以香港动画人之力将东西方文化相融合，制作出国际化的高质量动画作品。欧特克为传媒娱乐行业提供尖端、高效的设计工具，屡获殊荣的解决方案专为数字媒体制作、管理和交付而设计，全面覆盖了从影视特效、调色配光、编辑到动画、游戏开发和设计可视化等所有领域。能够帮助他们将头脑中构思的想象化为现实，以最佳的效果呈现成完美创意，是动画人飞向梦想的助推器。<BR style=\"FONT-FAMILY: \">（图片由意马国际控股有限公司提供）</FONT></P><P><FONT size=2><FONT style=\"FONT-FAMILY: 宋体\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-SIZE: 14px; FONT-FAMILY: \">关于意马国际<BR style=\"FONT-FAMILY: \"></B>意马国际控股有限公司（IMAGI International Holdings Limited）是一家于香港证券交易所主板上市的公司，主要业务是开发和制作CG动画电影。意马的电影发展部门及前期制作部位于加州洛杉矶，其电脑动画制作室则设于香港柴湾总部，并另设东京分部。意马制作的大型CG动画电影，主要采用好莱坞的剧本，并融合香港精湛的动画技术。先在洛杉矶分公司进行电影开发和前期制作，然后在香港进行高水平的CG动画创作，后期制作则在好莱坞完成。意马出品的动画电影将亚洲和西方创意的融合，成就出高品质的作品，引起全球观众的关注。2007年3月，意马的首部动画电影《忍者神龟》上映，并取得全美周末首映票房冠军。在全球电影史上，这是第三次由亚洲制作的电影获此殊荣。2009年，由意马投资达6500万美元制作的动画电影《阿童木》将于10月全球公映。</FONT></FONT></FONT></P><P><FONT style=\"FONT-FAMILY: Arial\" size=2><IMG style=\"FONT-FAMILY: \" src=\"/edit/sysimage/file/pdf.gif\" border=0></FONT><A href=\"http://images.autodesk.com/apac_grtrchina_main/files/case_of__imagi_astro_boy.pdf\" target=_blank><FONT style=\"FONT-FAMILY: Arial\" size=2>case_of__imagi_astro_boy.pdf</FONT></A><FONT style=\"FONT-SIZE: 10pt; FONT-FAMILY: Arial\">&nbsp; <SPAN style=\"FONT-FAMILY: Arial\">(pdf - 2340Kb)</SPAN><!--stopindex--></FONT></P>',' ','0','2009-10-26 13:02:04','0','','1','0','0','','0','950','');
INSERT INTO huishi_article VALUES('170','90','AutoCAD LT：体验数字设计的轻盈简洁','<P>&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 自从昆德拉抛出“生命不能承受之轻”的哲学话题，生活中轻与重的探讨就没有停止过；而对于商机敏锐的商家们也各出奇招，各种以“轻量”“light”“lite”为招牌的轻盈派应运而生。从低脂食物的健康新主张，到轻量汽车兼顾时尚与环保，而保受设计师、工程师们信赖的设计软AutoCAD也有了自己的轻量版——AutoCAD LT的轻盈转身，让设计创新者在抒发创意时也能享受“轻盈”带来的快感。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">轻是一种态度，是一种对于简约而不简单的追求，是纯粹而不单薄的执着。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">食物轻量版：瘦身达人的最爱</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">爱美的女孩子们看到食物包装上写着“lite”往往会眼睛放光：低脂牛奶、低脂乳酪、低脂果酱甚至低脂冰淇凌、低脂巧克力——这些低脂的美食既可以满足口腹之欲，又不必为牺牲好身材而担惊受怕，自然是要时尚又要健康的达人们的不二选择。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">汽车轻量版：汽车的“减肥运动”</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">在汽车界，“车子越重性能越稳定” 、“以重取车” 的传统观念正悄然退出舞台，轻量至上的声音开始渐成气候。以2009广州车展上参展的新车来看，马自达睿翼2.0、马自达CX-7、奔驰全新E200/E260轿车、E260双门轿跑车、兰博基尼MurcielagoLP640Roadster、海马M2、宾利欧陆Supersport等均是以轻量化为主打卖点的。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">有研究数字显示，若汽车整车重量降低10%，燃油效率可提高6%-8%；汽车整备质量每减少100公斤，百公里油耗可降低0.3-0.6升，汽车重量降低1%，油耗可降低0.7%。而在驾驶方面，汽车轻量化后加速性提高，车辆控制稳定性、噪音、振动方面也均有改善。从碰撞安全性考虑，碰撞时惯性小，制动距离减小。此外车辆每减重100公斤，二氧化碳排放可减少约5克/公里。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">汽车轻量化可以说是在汽车界掀起了一场减肥运动大潮，在这个提倡节能减排的低碳时代，轻量化已经成为全球主流汽车企业“曲线救国”的必要方式。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172244454.jpg\" border=0><BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3073 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp; <BR style=\"FONT-FAMILY: \">图：1991年的奥迪轻量化概念跑车（图片来源：腾讯汽车）<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3074 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp; <IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172338178.jpg\" border=0></FONT><BR><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">图：林宝坚尼轻量版跑车：Gallardo Superleggera，比普通版Gallardo轻了100kg，总重量仅为1,330kg（图片来源：google图片）<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">软件轻量版：AutoCAD的轻盈转身</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">AutoCAD LT，也就是轻量版的AutoCAD，是一款理想的专业绘图软件。它具备一整套工具，能够让用户精确高效地创建、编制和共享工程图。由于AutoCAD LT的文件格式是具备出色稳定性和兼容性的DWG&#8482;文件，因此可以让不同团队顺畅沟通；而且，客户可以根据自身使用菜单和用户界面的方式来优化软件。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">与AutoCAD支持端到端的设计工作流不同， AutoCAD LT是专门用于专业绘图的二维CAD软件。虽然不具备AutoCAD的三维概念设计功能以及参数化绘图工具等高级文档编制功能，但对于专业绘图员、工程师和不需要进行定制的中小型公司，使用AutoCAD LT开展设计工作足以得心应手。<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3075 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;<IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172415286.jpg\" border=0> </FONT><BR><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">而最新发布的AutoCAD LT 2010更具备了以下优势： <BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">无与伦比的数据完整性、可靠性和文件共享性能 <BR style=\"FONT-FAMILY: \">支持PDF底图和PDF输出 <BR style=\"FONT-FAMILY: \">借助新增和改进的二维工具更加轻松快速地进行绘图 <BR style=\"FONT-FAMILY: \">以更加快速的方式查找命令，在绘图之间切换 <BR style=\"FONT-FAMILY: \">更好地控制图块和外部参考。<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3076 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;<IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172517886.jpg\" border=0> <BR style=\"FONT-FAMILY: \">美国Aerobie公司是一家专门设计与生产高性能运动玩具的公司，他们设计的Aerobie飞环单次投掷距离达到了406米，也就是说即使普通人也能轻松的把它扔过比尼亚加拉大瀑布！<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">AutoCAD LT可以支持Aerobie公司完成大多数设计。“我觉得AutoCAD LT完全够用了，只有当需要使用AutoLISP和三维功能的时候，我才会用AutoCAD。但大多数产品设计只需要二维功能，我偏向于使用AutoCAD LT，因为它用起来更快。” 公司创始人兼CEO Alan Adler表示。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3077 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;<IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172528312.jpg\" border=0> </FONT><BR><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">图：AeroSpin（图片来源：Aerobie公司网站）<BR style=\"FONT-FAMILY: \">在过去八年中，AutoCAD LT帮助美国Premier Rides公司设计了一系列过山车。这家专门从事游乐园过山车的设计、制造、安装和后期维护的公司为全球各地的游客提供了惊险刺激的急速体验。而Premier Rides公司设计的所有图纸都是用AutoCAD及AutoCAD LT制作的。“我们使用AutoCAD和AutoCAD LT提高了设计精度，简化了操作，并加强了与承包商和客户的沟通。它确实加快了进程，并提高了工作质量。CAD的尺寸非常精确。”例如，工程师可以把制动系统图纸粘贴到主车厢图纸中，在最终定稿前来回移动，确认尺寸和间隙。“这大大节省了设计时间。”<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3078 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;<IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172539433.jpg\" border=0> </FONT><BR><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">美国的Schuler Shook是一家专业的剧场灯饰设计公司。公司的每一个项目都是以设计师们在笔记本电脑上运行AutoCAD LT&reg;，快速完成二维的创意草图开始的。得益于使用欧特克软件，Schuler Shook增强了设计协作，进而能够在每个项目中平均节省20个小时；清晰的设计表达也让Schuler Shook与客户的交流更加顺畅；而即便是刚毕业的学生也十分熟悉AutoCAD LT的操作，大大节省了人员培训的时间和成本。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3079 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;<IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172549589.jpg\" border=0> </FONT><BR><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">（图片来源：Schuler Shook官方网站：</FONT><A href=\"http://www.schulershook.com/\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">www.schulershook.com</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">）</FONT></P>',' ','0','2010-04-09 17:17:20','0','','1','0','0','','0','631','');
INSERT INTO huishi_article VALUES('171','90','建筑可视化最佳拍档3dsMax+Revit','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">“这栋建筑的阴影会投射到附近的公园内吗？”“这种红砖外墙与周围的建筑协调吗？”“大厅会不会太拥挤？”“这种光线监控器能够为下面的走廊提供足够的日光吗？”只有“看到”设计，即在建成前体验设计才能圆满地回答这些常见问题。预测居民、访客或邻居对建筑的反应以及与建筑的相互影响是设计流程中的重要工作。如今，建筑设计已经和工业设计和特效设计一样，到了一个“不可视非设计”的时代。现在建筑师和视觉特效师普遍利用Autodesk Revit平台和Autodesk 3ds Max Design，利用建筑信息模型来探索、验证和表现建筑设计。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">3ds Max Design Design + Revit——建筑设计可视化最佳拍档<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">建筑设计的可视化通常需要根据平面图、小型的物理模型、艺术家的素描或水彩画展开丰富的想像。观众理解二维图纸的能力、呆板的媒介，制作模型的成本或艺术家渲染画作的成本，都会影响这些可视化方式的效果。可计算的建筑信息模型平台，如Revit平台，可以在动工前预测建筑的性能。在建筑的性能中，人对于建筑的体验是其中一个方面。准确实现设计的可视化对于预测建筑未来的效果非常重要。<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3057 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409172940816.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">CAD和三维建模技术的出现实现了基于计算机的可视化，弥补了上述传统可视化方式的不足。带阴影的三维视图、照片级真实感的渲染图、动画漫游，这些设计可视化方式可以非常有效地表现三维设计，目前已广泛用于探索、验证和表现建筑设计理念。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">大多数建筑设计工具（包括基于Revit的应用）都具有内置或在线的可视化功能，以便在设计流程中快速得到反馈。然后可以使用专门的可视化工具（如Autodesk 3ds Max Design软件）来制作高度逼真的效果及特殊的动画效果。这就是当前可视化的特点：可与美术作品相媲美的渲染图，与影片效果不相上下的漫游和飞行。对于商业项目（甚至高端的住宅项目），这些都是常用的可视化手法——扩展设计方案的视觉环境，以便进行更有效的验证和沟通。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">如果设计人员已经使用了BIM解决方案来设计建筑，那么最有效的可视化工作流就是重复利用这些数据，省却在可视化应用中重新创建模型的时间和成本。此外，同时保留冗余模型（建筑设计模型和可视化模型）也浪费时间和成本，增加了出错的几率。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">在设计同一建筑时，还会用到类似的建筑应用，如结构分析或能耗分析应用；但是有些应用利用建筑信息模型来进行相关的建筑分析，避免了使用冗余模型。同样，先进的设计可视化工具（如 3ds Max Design）也利用建筑信息模型进行视觉效果分析。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">BIM——建筑工程设计可视化大师<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">BIM生成的建筑模型在精确度和详细程度上令人惊叹。因此人们自然而然地会期望将这些模型用于高级的可视化，如耸立在现有建筑群中的城市建筑项目的渲染图，精确显示新灯架设计在全天及四季对室内光线影响的光照分析等等。</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409173040440.jpg\" border=0></FONT></P><P><TABLE cellSpacing=0 cellPadding=0><TBODY><TR><TD class=t_msgfont id=postmessage_15179><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">基于计算机的渲染图扩展了设计方案的视觉环境，有助于更有效的验证和沟通。如下面两张图片所示：利用Revit平台制作的三维渲染图，带边框着色（左）以及利用3ds Max Design制作的照片级真实感渲染图（右）。<BR><BR>如何将所有细节都导入可视化应用中，而不用重新创建模型？Revit平台用户可以将其建筑信息模型以三维DWG格式保存，然后将这种格式的文件直接链入3ds Max Design。3ds Max Design可以与Revit模型保持实时的数据链接。当Revit建筑模型发生变化时，Revit用户再次将此模型保存到三维DWG文件中， 3ds Max Design用户只需更新该文件就可以更新可视化模型。</FONT></P><P><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409174110309.jpg\" border=0></P><P>Revit平台和3ds Max Design软件中都具有的DWG导出和导入功能，支持在两种应用间无缝传输模型数据并实现互操作。DWG格式还能支持最复杂的建筑图形，如许多新的高层项目中采用的曲线形式。除图形外，材质、摄像头位置等关键的视觉信息也都包含在DWG文件中。甚至地理坐标信息也可以在Revit平台和3ds Max Design间共享，以便根据建筑的实际位置进行日照研究。将DWG文件链入3ds Max Design后，只需更新该文件，即可保存材质、摄像头位置等所有预设的Revit信息，以及所有的3ds Max Design可视化设置。</P><P><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409174132543.jpg\" border=0><BR></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;</FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> </FONT></P><DIV class=t_attach id=aimg_3058_menu style=\"DISPLAY: none; Z-INDEX: 999; LEFT: 335px; CLIP: rect(auto auto auto auto); POSITION: absolute; TOP: 1499px\" h=\"42\" w=\"142\" initialized=\"true\" ctrlkey=\"aimg_3058\"><A title=2.jpg href=\"http://bbs.huishisoft.com/attachment.php?aid=3058&amp;k=aaa686a14124919a37d42a1eb323a0a7&amp;t=1270805226&amp;nothumb=yes&amp;sid=1e60QZY20SpPP7i3uRiEQ59BeTRdlI8ODscxRQGjdOxuQtc\" target=_blank><STRONG><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">下载</FONT></STRONG></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> (117.13 KB)<BR style=\"FONT-FAMILY: \"></FONT><DIV class=t_smallfont><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">2010-3-27 20:26</FONT></DIV></DIV><BR><SPAN id=attach_3059 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN><P></P></TD></TR></TBODY></TABLE><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">3ds Max Design软件中的建模功能可以用来改进原有的建筑信息模型，例如创建周围的建筑、草地、树木等景观，或添加家具、花草、窗帘等细节，增加设计的真实感和生活气息。3ds Max Design也可以用来快速修改设计并评估视觉上的影响。例如，3ds Max Design可以自动识别并选择所有具有类似属性的导入建筑对象，如所有砖砌外墙。用户可以快速将这些墙体的材料改为抹灰，然后创建新的渲染图，以便在为业主举办的设计评审会上使用。此外，3ds Max Design还可以充当“聚合中心”，收集GIS和景观数据、现场照片以及其它预先制作的图形，为建筑信息模型营造环境。<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3061 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409173241540.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409173315949.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Revit与3ds Max Design入主顶级建筑事务所<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">Ayers/Saint/Gross公司（简称ASG）非常擅长非营利机构，特别是大学的设计和规划。公司在巴尔的摩、菲尼克斯和华盛顿设有办事处，拥有包括建筑师、规划师、城市设计师、景观设计师、室内设计师、图形设计时以及三维可视化专家的125名工作人员。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">ASG公司从2003年起开始使用3ds Max Design软件。当时，他们通过收购一家建筑可视化公司成立了自己内部的图像工作室，这家公司已经采用3ds Max Design处理可视化工作。最开始的时候，这个新成立的部门仍然使用3ds Max Design来为建筑师的设计重新创建模型（通常是根据二维的AutoCAD图纸）。三维DWG格式出现后，由于这种格式的文件可以作为传输模型数据的高保真工具，该图像工作室购买了具有建模功能的Revit Architecture软件，开始使用Revit Architecture，而不是 3ds Max Design来创建可视化模型。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">与此同时，公司也开始研究BIM和BIM解决方案，希望在整个设计流程（从概念设计到施工管理）中使用一个通用的三维建筑模型来实现建筑设计方案的可视化并进行沟通。看到Revit Architecture在图像工作室的成功应用，公司决定试着用这种软件来满足建筑设计的需求并在2004年初启动了一个试点项目。结果大获成功，一年后公司决定在所有新项目中采用Revit Architecture软件。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">ASG公司视觉图像工作室集成实践经理Brian Russell说：“现在建筑师可以将从Revit Architecture建筑信息模型中导出的三维DWG文件发给我们，我们再将这些文件导入并链接至3ds Max Design。过去几年，可视化技术已经得到显著改进，大大缩短了渲染时间，提高了效果图的质量。现在，由于无需重新创建模型，我们可以节约更多时间。”这样一来，在设计流程中就可以制作更多、质量更出色的效果图。例如，之前他们通常在建筑设计完成后，即将施工前才能为项目制作一两张渲染图。现在，对于大多数项目而言，他们在每个设计阶段都可以制作至少一张效果图，通常是许多张。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">此外，效果图原来一般用于市场推广或客户演示、审批等重大活动。但现在他们也可以用于进行设计研究。Russell说：“建筑师可以和我坐在一起，试验不同的饰面或改变灯光布置。进行日照研究或灯光模拟，创建渲染图或动画——以满足设计团队的任何需求。”</FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">3ds Max Design也帮助ASG公司提高了制作动画的数量和质量。利用其中的人物动画和人群动画等先进的可视化功能，他们可以研究建筑信息模型与人的相互关系，使设计更为人性化，在演示中吸引观众的眼球。他们还使用基于Revit的应用和3ds Max Design来制作周围景观和建筑的模型，这也是令人心动的效果图中不可缺少的元素。事实上，通过配套使用Revit应用、AutoCAD、3ds Max Design和SketchUp软件，该公司最近为巴尔的摩市中心的许多建筑制作了模型，并以此为内容创作一段长达30分钟，与滨河地区重新开发项目有关的动画片。Russell解释说：“为了优化建筑细节，我们利用基于Revit应用制作了筹建建筑以及附近（原有）建筑的模型。这样一来，当我们把摄像头放在街道上的时候，出来的效果非常逼真。”他们最初的任务只是制作一系列静态的图片，但这部动画片深深地打动了房地产开发商的心，他希望用这部动画片来“销售”该项目。<BR style=\"FONT-FAMILY: \"></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409173501307.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100409173556384.jpg\" border=0></FONT></P><P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Ayers/Saint/Gross利用这些图片来展现水景设计（如图片前景所示）的微小变化。<BR style=\"FONT-FAMILY: \">建筑可视化设计的无限未来<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">现在如果再在网上搜索自由塔（Freedom Tower），肯定会查到成千上万份照片级真实感的图片——虽然这是尚未建成的建筑。这充分证明了当前设计可视化应用的强大性能以及其准确表现、深入研究、有效沟通建筑设计方案的能力。无论是创建用于设计评审的图片，模拟照明效果，还是制作精美的市场宣传材料，3ds Max Design等设计可视化工具都可以利用现有的建筑信息模型，以此扩大BIM的价值，同时提高效果图的制作效率。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">将Revit平台建筑信息模型以高保真度轻松传输至3ds Max Design中，这样可以显著节约制作效果图的时间和成本。将Revit平台建筑信息模型与3ds Max Design链接则可以进一步减少用来协调建筑设计与效果图的时间。但归根结底，建筑信息模型中包含的细节保证了效果图能够真实地反映建筑师的理念。<BR style=\"FONT-FAMILY: \"></FONT><SPAN id=attach_3058 onmouseover=\"showMenu(this.id, 0, 1)\" style=\"DISPLAY: none; FONT-SIZE: 14px; FONT-FAMILY: Arial; POSITION: absolute\"><IMG style=\"FONT-FAMILY: \" src=\"http://bbs.huishisoft.com/images/default/attachimg.gif\" border=0></SPAN></P>',' ','0','2010-04-09 17:28:32','0','','1','0','0','','0','1515','');
INSERT INTO huishi_article VALUES('176','90','汇识参与编写的Inventor教材正式出版','<H2 align=left><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\" color=#333333>《Inventor Professional2009机械设计实用教程》(附光盘）全国高职高专教育十一五规划教材</FONT></H2><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1\"><TABLE cellSpacing=0 cellPadding=1 width=\"100%\" border=0><TBODY><TR bgColor=#ffffff><TD class=smallText><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">出版社: &nbsp;</FONT><A class=zhengwen_1_12008 href=\"http://book.jqcq.com/extend/1/1305.html\" target=_blank><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">高等教育出版社</FONT></A></TD></TR><TR bgColor=#ffffff><TD class=smallText><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">作者: &nbsp;</FONT><A class=zhengwen_1_12008 href=\"http://book.jqcq.com/extend/3/409704.html\" target=_blank><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">朱惠莲 叶凯</FONT></A></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">主审：陈东旭</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100420213636824.jpg\" border=0></FONT></P></TD></TR></TBODY></TABLE></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><TABLE cellSpacing=0 cellPadding=0 width=\"100%\" border=0><TBODY><TR><TD class=product-lanmu><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><STRONG>内容简介</STRONG></FONT></TD></TR></TBODY></TABLE><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书是为适应我国高职高专教育发展的需要，按照高职高专人才培养目标要求编写的，书中案例大多自企业和设计单位，体现了工学结合的职业教育特点。<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书详细介绍了中文版Inventor Professional 2009的功能及使用方法等，共分为七章，第一章介绍Inven的工作界面、零件模块、部件模块、工程图模块和表达视图模块等内容；第二章介绍草图创建、草图几何征的创建和编辑、草图几何约束、草图标注和草图医生的应用等内容；第三章介绍零件环境、基于草图创的特征、定位特征及放置特征的创建、复杂特征的创建和曲面编辑等；第四章介绍部件管理、零部件的创和编辑、部件装配环境下的基本操作、零部件装配约束、装配的观察与分析及表达视图等内容；第五章介工程图环境、视图创建、工程图标注等内容；第六章介绍iPart的应用、iFeature的应用、零件关联设计及建和使用零件样式等内容；第七章介绍自适应技术、iMate的应用、iAssembly的应用、资源中心库的基础用和设计加速器的基础应用等。各章配有实战演练和习题。<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书可以作为高等职业院校、高等专科学校、成人高校、民办高校及本科院校举办的二级职业技术学机械类专业教材，也可以作为从事机械设计及制造等工作的技术人员的参考书。<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本书附有助学光盘，其内容包含书中实战演练及习题部分的所有图片和源文件。 <BR style=\"FONT-FAMILY: \"><STRONG>目录:</STRONG> </FONT><TABLE cellSpacing=0 cellPadding=3 width=\"100%\" bgColor=#666666><TBODY><TR><TD class=smallText bgColor=#ffffff><FONT style=\"FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">第一章 Inventor应用基础<BR style=\"FONT-FAMILY: \">1．1 Inventor软件介绍<BR style=\"FONT-FAMILY: \">1．1．1 Inventor软件背景<BR style=\"FONT-FAMILY: \">1．1．2 Inventor功能概述<BR style=\"FONT-FAMILY: \">1．1．3 Inventor工作界面<BR style=\"FONT-FAMILY: \">1．2 Inventor模块<BR style=\"FONT-FAMILY: \">1．2．1 零件模块<BR style=\"FONT-FAMILY: \">1．2．2 部件模块<BR style=\"FONT-FAMILY: \">1．2．3 工程图模块<BR style=\"FONT-FAMILY: \">1．2．4 表达视图模块<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第二章 Inventor中二维草图的应用<BR style=\"FONT-FAMILY: \">2．1 草图创建<BR style=\"FONT-FAMILY: \">2．1．1 草图环境<BR style=\"FONT-FAMILY: \">2．1．2 草图坐标<BR style=\"FONT-FAMILY: \">2．1．3 草图创建<BR style=\"FONT-FAMILY: \">2．2草图几何特征的创建<BR style=\"FONT-FAMILY: \">2．2．1 投影几何图元、剖切边<BR style=\"FONT-FAMILY: \">2．2．2 直线与样条曲线<BR style=\"FONT-FAMILY: \">2．2．3 圆、椭圆与圆弧<BR style=\"FONT-FAMILY: \">2．2．4 矩形与多边形<BR style=\"FONT-FAMILY: \">2．2．5 圆角、倒角、点和中心点、辅助线<BR style=\"FONT-FAMILY: \">2．2．6 读取AutoCAD文件<BR style=\"FONT-FAMILY: \">2．2．7 读取图片<BR style=\"FONT-FAMILY: \">2．2．8 创建文本<BR style=\"FONT-FAMILY: \">2．2．9 通过Excel插入点<BR style=\"FONT-FAMILY: \">2．3 草图几何特征的编辑<BR style=\"FONT-FAMILY: \">2．3．1 延伸、修剪、分割、移动、复制<BR style=\"FONT-FAMILY: \">2．3．2 缩放、旋转、拉伸<BR style=\"FONT-FAMILY: \">2．3．3 镜像、阵列、偏移<BR style=\"FONT-FAMILY: \">2．4 草图几何约束<BR style=\"FONT-FAMILY: \">2．4．1 约束工具<BR style=\"FONT-FAMILY: \">2．4．2 显示和删除约束<BR style=\"FONT-FAMILY: \">2．5 草图标注<BR style=\"FONT-FAMILY: \">2．5．1 手动标注尺寸<BR style=\"FONT-FAMILY: \">2．5．2 自动标注尺寸<BR style=\"FONT-FAMILY: \">2．5．3 参数化尺寸和尺寸表达式<BR style=\"FONT-FAMILY: \">2．5．4 尺寸特征<BR style=\"FONT-FAMILY: \">2．6 草图医生的应用<BR style=\"FONT-FAMILY: \">2．7 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第三章 零件设计<BR style=\"FONT-FAMILY: \">3．1 零件环境<BR style=\"FONT-FAMILY: \">3．2 基于草图创建的特征<BR style=\"FONT-FAMILY: \">3．2．1 创建拉伸特征<BR style=\"FONT-FAMILY: \">3．2．2 创建旋转特征<BR style=\"FONT-FAMILY: \">3．2．3 创建放样特征<BR style=\"FONT-FAMILY: \">3．2．4 创建扫掠特征<BR style=\"FONT-FAMILY: \">3．2．5 创建螺旋扫掠特征<BR style=\"FONT-FAMILY: \">3．3 定位特征的创建<BR style=\"FONT-FAMILY: \">3．3．1 默认的定位特征<BR style=\"FONT-FAMILY: \">3．3．2 创建工作点<BR style=\"FONT-FAMILY: \">3．3．3 创建工作轴<BR style=\"FONT-FAMILY: \">3．3．4 创建工作面<BR style=\"FONT-FAMILY: \">3．4 放置特征的创建<BR style=\"FONT-FAMILY: \">3．4．1 圆角特征<BR style=\"FONT-FAMILY: \">3．4．2 倒角特征<BR style=\"FONT-FAMILY: \">3．4．3 孔特征<BR style=\"FONT-FAMILY: \">3．4．4 螺纹特征<BR style=\"FONT-FAMILY: \">3．4．5 抽壳特征<BR style=\"FONT-FAMILY: \">3．4．6 加强筋和腹板<BR style=\"FONT-FAMILY: \">3．4．7 拔模斜度<BR style=\"FONT-FAMILY: \">3．4．8 分割零件<BR style=\"FONT-FAMILY: \">3．4．9 阵列特征<BR style=\"FONT-FAMILY: \">3．4．10 镜像特征<BR style=\"FONT-FAMILY: \">3．5 复杂特征的创建<BR style=\"FONT-FAMILY: \">3．5．1 零件折弯<BR style=\"FONT-FAMILY: \">3．5．2 加厚／偏移特征<BR style=\"FONT-FAMILY: \">3．5．3 贴图特征<BR style=\"FONT-FAMILY: \">3．5．4 凸雕特征<BR style=\"FONT-FAMILY: \">3．6 曲面编辑<BR style=\"FONT-FAMILY: \">3．6．1 移动面<BR style=\"FONT-FAMILY: \">3．6．2 替换面<BR style=\"FONT-FAMILY: \">3．6．3 灌注<BR style=\"FONT-FAMILY: \">3．6．4 删除面<BR style=\"FONT-FAMILY: \">3．6．5 边界嵌片<BR style=\"FONT-FAMILY: \">3．6．6 修剪曲面<BR style=\"FONT-FAMILY: \">3．6．7 延伸曲面<BR style=\"FONT-FAMILY: \">3．6．8 缝合曲面<BR style=\"FONT-FAMILY: \">3．7 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第四章 部件装配<BR style=\"FONT-FAMILY: \">4．1 部件管理<BR style=\"FONT-FAMILY: \">4．1．1 部件装配环境<BR style=\"FONT-FAMILY: \">4．1．2 创建、设置和使用项目<BR style=\"FONT-FAMILY: \">4．1．3 创建部件BOM表<BR style=\"FONT-FAMILY: \">4．2 零部件的创建和编辑<BR style=\"FONT-FAMILY: \">4．2．1 装入与替换零部件<BR style=\"FONT-FAMILY: \">4．2．2 在位创建零部件<BR style=\"FONT-FAMILY: \">4．2．3 在位编辑零部件<BR style=\"FONT-FAMILY: \">4．3 部件装配环境下的基本操作<BR style=\"FONT-FAMILY: \">4．3．1 零部件的移动和旋转<BR style=\"FONT-FAMILY: \">4．3．2 零部件的阵列、镜像和复制<BR style=\"FONT-FAMILY: \">4．3．3 零部件的拉伸、打孔和倒角<BR style=\"FONT-FAMILY: \">4．3．4 创建部件特征<BR style=\"FONT-FAMILY: \">4．3．5 零部件的可见性和固定<BR style=\"FONT-FAMILY: \">4．4 零部件装配约束<BR style=\"FONT-FAMILY: \">4．4．1 “部件”选项卡<BR style=\"FONT-FAMILY: \">4．4．2 “运动”选项卡<BR style=\"FONT-FAMILY: \">4．4．3 “过渡”选项卡<BR style=\"FONT-FAMILY: \">4．4．4 查看和编辑约束<BR style=\"FONT-FAMILY: \">4．5 装配的观察与分析<BR style=\"FONT-FAMILY: \">4．5．1 装配的剖视<BR style=\"FONT-FAMILY: \">4．5．2 干涉检查<BR style=\"FONT-FAMILY: \">4．5．3 驱动约束<BR style=\"FONT-FAMILY: \">4．5．4 自由度检查<BR style=\"FONT-FAMILY: \">4．6 表达视图<BR style=\"FONT-FAMILY: \">4．6．1 创建表达视图<BR style=\"FONT-FAMILY: \">4．6．2 调整零部件的位置<BR style=\"FONT-FAMILY: \">4．6．3 按增量旋转视图<BR style=\"FONT-FAMILY: \">4．6．4 设置多个零件的共同动作<BR style=\"FONT-FAMILY: \">4．6．5 设置单个零件的复合动作<BR style=\"FONT-FAMILY: \">4．6．6 调整动作顺序<BR style=\"FONT-FAMILY: \">4．6．7 镜头设置<BR style=\"FONT-FAMILY: \">4．6．8 创建表达视图的动画效果<BR style=\"FONT-FAMILY: \">4．7 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第五章 工程图绘制<BR style=\"FONT-FAMILY: \">5．1 工程图环境<BR style=\"FONT-FAMILY: \">5．1．1 工程图资源<BR style=\"FONT-FAMILY: \">5．1．2 设置制图样式和标准<BR style=\"FONT-FAMILY: \">5．2 视图创建<BR style=\"FONT-FAMILY: \">5．2．1 基础视图<BR style=\"FONT-FAMILY: \">5．2．2 投影视图<BR style=\"FONT-FAMILY: \">5．2．3 斜视图<BR style=\"FONT-FAMILY: \">5．2．4 局部视图<BR style=\"FONT-FAMILY: \">5．2．5 剖视图<BR style=\"FONT-FAMILY: \">5．2．6 局部剖视图<BR style=\"FONT-FAMILY: \">5．2．7 打断视图<BR style=\"FONT-FAMILY: \">5．3 工程图标注<BR style=\"FONT-FAMILY: \">5．3．1 尺寸标注<BR style=\"FONT-FAMILY: \">5．3．2 检索尺寸<BR style=\"FONT-FAMILY: \">5．3．3 孔／螺纹孔注释与倒角注释 <BR style=\"FONT-FAMILY: \">5．3．4 技术要求<BR style=\"FONT-FAMILY: \">5．3．5 文本与指引线文本 <BR style=\"FONT-FAMILY: \">5．3．6 序号与明细栏<BR style=\"FONT-FAMILY: \">5．4 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第六章 高级零件设计<BR style=\"FONT-FAMILY: \">6．1 iPart的应用<BR style=\"FONT-FAMILY: \">6．1．1 创建iPart<BR style=\"FONT-FAMILY: \">6．1．2 管理和修改iPart数据<BR style=\"FONT-FAMILY: \">6．2 iFeature的应用<BR style=\"FONT-FAMILY: \">6．2．1 创建iFeature<BR style=\"FONT-FAMILY: \">6．2．2 iFeature的调用<BR style=\"FONT-FAMILY: \">6．3 零件关联设计<BR style=\"FONT-FAMILY: \">6．3．1 复制对象<BR style=\"FONT-FAMILY: \">6．3．2 衍生零件<BR style=\"FONT-FAMILY: \">6．3．3 编辑特征<BR style=\"FONT-FAMILY: \">6．4 创建和使用零件样式<BR style=\"FONT-FAMILY: \">6．5 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">第七章 高级部件装配<BR style=\"FONT-FAMILY: \">7．1 自适应技术<BR style=\"FONT-FAMILY: \">7．1．1 自适应技术介绍<BR style=\"FONT-FAMILY: \">7．1．2 自适应草图和特征<BR style=\"FONT-FAMILY: \">7．1．3 基于自适应的零件设计<BR style=\"FONT-FAMILY: \">7．2 iMate的应用 <BR style=\"FONT-FAMILY: \">7．2．1 创建iMate <BR style=\"FONT-FAMILY: \">7．2．2 编辑iMate <BR style=\"FONT-FAMILY: \">7．2．3 类推iMate <BR style=\"FONT-FAMILY: \">7．2．4 iMate的调用<BR style=\"FONT-FAMILY: \">7．2．5 iMate组合 <BR style=\"FONT-FAMILY: \">7．3 iAssembly的应用<BR style=\"FONT-FAMILY: \">7．4 资源中心库的基础应用<BR style=\"FONT-FAMILY: \">7．4．1 资源中心库的介绍 <BR style=\"FONT-FAMILY: \">7．4．2 资源中心库零件的调用<BR style=\"FONT-FAMILY: \">7．4．3 资源中心零件的替换<BR style=\"FONT-FAMILY: \">7．5 设计加速器的基础应用<BR style=\"FONT-FAMILY: \">7．5．1 设计加速器的介绍 <BR style=\"FONT-FAMILY: \">7．5．2 创建与编辑螺栓联接<BR style=\"FONT-FAMILY: \">7．5．3 轴生成器<BR style=\"FONT-FAMILY: \">7．5．4 齿轮生成器<BR style=\"FONT-FAMILY: \">7．5．5 工程师手册<BR style=\"FONT-FAMILY: \">7．6 实战演练<BR style=\"FONT-FAMILY: \">习题<BR style=\"FONT-FAMILY: \">参考文献</FONT><BR style=\"FONT-FAMILY: \"></FONT></TD></TR></TBODY></TABLE></P>',' ','0','2010-04-20 21:33:37','0','','1','0','0','','0','974','');
INSERT INTO huishi_article VALUES('180','90','Dynamic Structures公司获封欧特克“年度发明家”','&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px\">&nbsp;<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"> 近日，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）授予加拿大的动态复杂结构供应商Dynamic Structures公司欧特克“2009年度发明家”的称号。面向曾获封欧特克“月度发明家”称号的企业，欧特克“年度发明家”由欧特克制造业社区的成员在其社区网站上投票推选产生。2009年3月，Dynamic Structures公司因使用欧特克数字样机技术设计世界上最大的望远镜——“三十米望远镜”（Thirty Meter Telescope）的外壳而被授予欧特克“月度发明家”。 </FONT></FONT><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dynamic Structures公司高级设计师Craig Breckenridge表示：“我们公司的座右铭是‘只有想不到，没有做不到’。Autodesk Inventor软件在我们践行承诺的过程中发挥了重要作用，‘年度发明家’奖是对我们创新成就的认可，我们对此深感荣幸。” 据悉，Dynamic Structures公司以设计各类复杂结构设备为主要业务，包括滑雪跳台、桥梁和天文观测台等。同时，它利用Autodesk Inventor软件设计出庞大、刺激的惊险游乐设施，极大的提高了消费者对主题公园的期望。 </FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp; </FONT><A href=\"http://images.e800.com.cn/articles/201005/2010050615430051410.jpg\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" border=0 hspace=0 alt=\"\" src=\"http://images.e800.com.cn/articles/201005/2010050615430051410.jpg\"></FONT></A></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp; 利用数字样机技术设计各类复杂结构设备（图片来源：Business Wire）</FONT></P><P><FONT style=\"FONT-SIZE: 14px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">作为公司业务的一部分，Dynamic Structures公司娱乐部为价值数十亿美元的国际游乐设施市场设计大型游乐设施，其成功地利用Autodesk Inventor软件，不断推出新的娱乐设施产品。Dynamic Structures公司擅长将机器人技术纳入游乐设施中。例如，在活节臂上行驶过山车，相比在常规过山车轨道上的行驶，乘客可以体验到更多意想不到的方位及移动变化；动感影院里的椅子可通过程序控制摇晃及升降，观众可以感受他们在电影屏幕上所亲见的场景；而自动向导车也无需轨道，即可按预设方式行驶至室内和室外的游乐设施。</FONT></FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 众所周知，大型游乐设施很难在产品开发的样机阶段进行实际组装和测试，因此，Dynamic Structures公司依靠Autodesk Inventor软件创建出数字样机，并与欧特克的经销商及培训合作伙伴 IMAGINiT Technologies公司开展合作。借助数字样机，公司将所有机械和结构部件投入模拟运行，对其性能进行准确的仿真分析。例如，由数字样机实现的动态分析可在游乐设施建成前帮助Dynamic Structures公司测试其是否存在转弯过急，或滑落过猛的轨道，检测是否会出现超过乘客可以承受的重力。在确保游客体验的刺激感的同时，也不失安全性的考虑。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT></P><P align=center><A href=\"http://images.e800.com.cn/articles/201005/2010050615432558390.jpg\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" border=0 hspace=0 alt=\"\" src=\"http://images.e800.com.cn/articles/201005/2010050615432558390.jpg\"></FONT></A><BR><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">利用数字样机技术进行游乐设备的仿真分析（图片来源：Business Wire）</FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此外，作为加拿大大学天文研究联盟参与“三十米望远镜”项目的一部分，Dynamic Structures 公司还与17所大学的工程系合作参与了一项导师计划。在该计划中，Dynamic Structures 公司为工程专业的学生提供了有助于开发游乐设施和结构件的实际经验。</FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧特克制造行业高级副总裁Robert“Buzz” Kross表示：“Dynamic Structures 公司的创新给主题公园带来了全新的娱乐，即使是最天马行空的奇思妙想，Autodesk Inventor软件也能帮助他们进行设计、可视化和模拟。”</FONT></P><P><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">关于欧特克“月度发明家”</FONT></STRONG></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧特克每月都要从Autodesk Inventor 软件的广大用户中择定其一，提名为“月度发明家”，借以表彰在工程技术领域取得突出成绩和突破性创新的用户。Autodesk Inventor软件引导制造商超越三维，进入数字样机时代。</FONT></P><P><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">关于Dynamic Structures公司</FONT></STRONG></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dynamic Structures公司是动态复杂结构件的主要供应商。该公司凭借多年的独特经验，采用具有成本效益的创造性解决方案，向企业、政府、学术界和娱乐市场提供服务。公司以复杂结构件精密工程、创新系统，以及突破性实用创意设计而著称。</FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG style=\"FONT-FAMILY: \">关于IMAGINiT Technologies公司</STRONG> </FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMAGINiT Technologies公司隶属于兰德全球公司（RAND Worldwide Company），是一家为建筑业、制造业和基础设施行业以及传媒娱乐业提供设计和工程解决方案的领先供应商。IMAGINiT是欧特克软件领先供应商，在北美地区和亚太地区设有40多个办事处，也是北美地区最大的欧特克授权培训中心（ATC）合作伙伴。 IMAGINiT公司通过行之有效的技术支持、培训和咨询服务为客户提供知识、专门技术和设计流程。</FONT></P><P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"></FONT>&nbsp;</P>',' ','0','2010-05-18 08:54:49','0','','1','0','0','','0','561','');
INSERT INTO huishi_article VALUES('189','90','一张产品设计效果图赢得海外大型装备订单','<P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">&nbsp;<FONT style=\"FONT-SIZE: 14px\"> 仅凭一张产品设计效果图，就能签订来自海外的大型装备订单？这听上去有些不可思议，但据上海紫光机械有限公司的资深机械设计工程师邢亮的介绍，这正是他所亲历的真实故事。</FONT></FONT></FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海紫光机械有限公司隶属上海电气印刷包装机械集团，具有50年印刷机械领域的印后装订设备制造经验，是国内印后装订机械和特种印刷机械设备首屈一指的制造商。一次，一家意大利的印刷企业慕名而来，求购某款设备，要求看样机。可正值厂里没有此款样品，国贸部的市场销售人员只能委托机械设计工程师邢亮调用设计中的三维数字化模型给客户做一些工作动作的动画演示，并生成效果图。客户看后唯一的意见在于设备的涂装颜色基调与自己车间的环境不太相符，希望可以改成白色和青苹果绿色的搭配。由于并未在结构上进行定制化调整，所以邢亮只将设备外观颜色进行了重新的设计，只是举手之劳，而客户在拿到“立等可取”的调整方案后非常满意，立刻决定采购。用邢亮的话来说，“这和以往的经验完全不同，是仅凭数字样机和一张效果图就签订的海外订单。”</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp; <IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100709183010151.jpg\" border=0></FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp; 上海紫光机械有限公司</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在紫光机械常态的市场销售环节，客户要到紫光现场看到样机的试车，考察各类运行动作是否符合自身的细节需求。此次意大利客户来看样机试车变成了看数字化样机的动画演示，实在是因无现成设备所至的无奈之举。然而，效果却是出乎意料的成功。“这也算是无心插柳柳成荫！”为紫光提供三维设计软件的欧特克公司（Autodesk）销售经理严天翌也了解到此事，他说：“其实很多客户对于我们的三维数字化样机的软件工具产品，了解的深度还是有欠缺的。我们的数字样机设计方案是跨部门，甚至是跨专业的。对于设计工程师而言，数字样机技术是完成设计任务的基本工具，而完成设计的数字化样机被拿到市场部门去，根据具体需要，增加特定的渲染环境和材质，完全可以渲染后作为正式的宣传品用于广告推广。不经意间，在产品生命周期的流程中，公司的设计部门和营销部门有了更为直接的沟通语言，而这种语言就是同一个数字样机。”</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 机器在尚未生产时就已经通过三维演示得以成功销售出去了，这本身对于企业市场销售环节就是革命性的变化，也是对企业很大的鼓舞。由于来自客户的定制化需求日趋增多，制造商基于标准型号的细节改动多是必然。其挑战在于和客户的沟通多，可能在程序上需要有多次修改设计、确认设计的反复过程。数字化样机无疑在此环节体现了其最大的优势：由于不涉及制造阶段，所以设计部、销售部、客户之间就没有受样机制造所限的时间、成本瓶颈，设计部对客户需求变化的快速响应将大幅提升公司销售部门的工作效率，客户也自然因这种对自身需求的快速响应而提升满意度。所以可以预见，在未来紫光的海外销售环节中，这种无心插柳的三维数字样机演示将有向常态化发展的趋势。</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100709183254793.jpg\" border=0></FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">紫光机械印刷设备</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对市场销售部门的强有力支持令企业对研发部门更为器重，然而，说到数字化样机的作用，设计工程师看重的更是它对自身工作的巨大支持。一次，邢亮因一个具体的设计问题和一位电气工程师讨论，结果却演变成无休止的争论了。“当时已经可以说是争论的面红耳赤了。”邢亮回忆说，“具体的情况是，在书装订时每次要堆一定的厚度，堆一本跟堆五本的时间不一样的。以我个人的设计经验，时间的不同造成对工序设定要求不一样。然而和我共同负责设计的电气工程师始终认为，在设备上推一本入位跟推五本没有区别，所以在电气设计上无需修改，而我认为是必须修改的。”两人争论无果，当时也没有一个真实的机器供二人参详，设计进度也自然陷入了僵局。好在邢亮对自己平时设计中使用的三维设计软件Autodesk Inventor驾轻就熟，就尝试着做了个行程动作的演示动画来阐明自己的观点。</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 邢亮向记者介绍说：“我当时并没有做推五本书那个动作的动画，只是做了推一本书的动画，但我认为已经可以将我想表达的要点表现出来了。那位电气设计工程师看完动画之后也认识到问题的所在，终于认同了我的观点，进而对电气设计进行了必要的改进。” </FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 说到此，邢亮不禁感慨道：“如果没有用三维软件做出这个动画，他一定不会听取我的意见的。”其实邢亮说到的这个问题并不偶然，在设计部门的同事，彼此在工作中是协作关系。没有谁是凌驾于对方之上的，所以必须要用事实说话。邢亮之所以最终胜出，不仅仅是因为他的想法正确，而且他确实能在现有条件下，创造一个足以证明自己观点正确的说明环境，把真实情况下的运动关系在虚拟的环境中清晰地演示了出来。对此，欧特克软件（中国）有限公司华东区制造业销售经理严天翌也颇有感触，他说：“我们反复讲数字样机的概念，因为企业里不同部门职责和涉及的对象是不一样的。数字交换机就是把所有的信息可视化，从机械的到电气电路方面所有信息都融合到数字化这个产品里边去了。各个部门在协同作业的时候可以充分利用数字样机的一些独特功能进行交流协作。紫光机械的工程师提到他们利用数字样机这个功能，在不同设计团队之间用语言无法说清的情况下，解决了彼此沟通的问题。这是数字样机的巨大能量，它常常让某个非常关键的设计问题从争论中跳出，得以解决。”</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 数字样机在紫光机械的工程师工作中体现出如此巨大的价值，而紫光机械的产品设计工程师对自己工作中的核心设计工具Autodesk Inventor软件的运用又是如此的驾轻就熟，这想必是和他们自己艰苦的学习、付出分不开的。然而实际情况就多少有点令人意外。据紫光机械的工程师介绍，公司一直用Autodesk Inventor这种软件进行产品设计。即使有些工程师之前并没有接触过，对软件的学习过程也顺畅得出奇。有工程师回忆说：“Autodesk Inventor特别易学，它和我上学时用的那款设计软件基本上是两种风格迥异的界面，我第一次学Autodesk Inventor不是很习惯，但过了一个礼拜就非常适应了，作为当时的初学者，所有的零件都能画。另外，Autodesk Inventor对装配件的设置也非常的简单，建立图表非常灵便。而现在我已完全不再使用上学时学习的那款设计软件了。”</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如果让邢亮总结对自己目前工作中在设计工具使用细节上的满意度的话，他依旧毫不犹豫地对Autodesk Inventor给出了充分的肯定。他说：“在我的设计中，从来最难的就是凸轮的设计。通常我要根据机械原理，将凸轮设计的主动、从动两个运动副的轨迹都算好，基本上是要计算把整圆分成多少度，然后每度的位置定好，确定轨迹，再去做角格，然后再建模制图。而我厂还没有自己的坐标仪，需要在计算过程中，外出用其他单位的坐标仪去打坐标、制图。送去送回就要很长时间了，然后再根据坐标建这个机构的三维模型，有时甚至要三四天。而现在只需在电脑上确定从动副需要实现的轨迹，鼠标点选几下，整个凸轮机构就可以自动生成了。”</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其实设计软件的易用性远非各种新功能的增加那么简单。如果没有必要的标准零件库、及自动测算的机构辅助设计功能，那对于一名即使是资深的机械设计工程师而言，螺栓这样简单的标准件的设计，都完全可以成为一份令人苦不堪言的制图工作。好在基于Autodesk Inventor的设计平台，这些都有了较好的解决。另外，欧特克公司在最新版本的Autodesk Inventor中增加了其旗下具有先进曲面造型特质的三维设计软件的部分特征，这令软件在建模技术上显得空前完备了。</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 紫光机械的工程师在了解到新版本的软件中对曲面造型功能有大幅加强后，想立刻尝试。由此可见Autodesk Inventor这款软件给予他们工作的巨大支持，软件的先进性和易用性也令人非常满意。然而，紫光机械的工程师谈到的一个细节不禁令人玩味，这曾是他们的困扰之一。在他们看来，国内制造业最突出的问题还是工艺上的问题，这在印刷机械领域也是一样。由于工艺上的问题不能得以解决，令设计工程师不得不经常修改本已相对完美的设计，向实际的生产环节“低头”。紫光机械的邢亮表示：“最令人头痛的还是修改设计。一台机器从设计定向到所有零件出图只需要三个月，但是因工艺问题来回修改，可能就要六个月的时间了。修改设计的原因各不相同。但困扰设计工程师的一个突出问题是因为加工环境的精度不高。第一台机床和第二台机床上要加工的零件都是一样的，但是装上去的精度就有较大差距，在加工过程中存在误差也较大，所以，最终两台机床上加工出来的零件误差造成两件设计要求一样的零件竟甚至不能互换。两台同样的机器同时组装起来后，因为每次螺栓之间的间隙，装配基础上可以稍微调的，可能这台机器上没有问题的，下一台机器上却会蹭一毫米的装配误差。但如果设计者把设备装配中的螺纹间隙误差调高为两毫米，就通常不会再碰到类似的尴尬问题了。”而问题在于Autodesk Inventor环境，设计中的装配关系、接触关系都是理想化的，不会在视觉上看出制造误差将在装配等环节上造成的潜在影响，至于根据自身生产条件设定误差等级，就仍需要有经验的工程师在出图后进行大量的手工修改。紫光工程师反映：因为三维软件都是放在非常理想的环境中的，不存在任何偏差，他们可以肯定自己在Autodesk Inventor环境里边做出来的数字模型是完美的，一点问题都没有。但是却并不敢保证经过与低制造精度的现实生产环境的不断妥协，自己的设计是不是还能依旧保持预期的目标设计水平？据紫光机械工程师介绍，在其同领域中，国外厂商基本上拿出的是一样的设计图纸。但在国内的工艺水平下，实际上在生产装配工艺上，一根长轴一端的装配误差偏出0.5毫米，在长三四米距离外的另外那端，误差就比国外同类产品要差出好多去了。国内的设计工程师就要为此困扰而返工设计。如在设计本身上找齐，这需要的就是经验了，和设计工具本身没有什么关系。在上海电气紫光机械公司的设计工程师看来，随着制造工艺水平的改善与提高，数字样机技术在紫光机械的未来将扮演更为高效的设计角色，而他们也有足够的自信在公司创造出更多令人欣喜的新成就。</FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于紫光机械：</FONT></B></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">上海电气印刷包装机械集团是上海电气集团股份有限公司机电一体化产业之一的印刷包装机械产业的投资、战略发展与管理代表，是目前国内最大、产品类别最全的印刷包装机械企业集团，也是我国最大的特种印刷机械制造基地、最齐全的印后设备制造基地。 <BR style=\"FONT-FAMILY: \"></FONT></P><P style=\"LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">&nbsp; </FONT></P>',' ','0','2010-07-09 18:27:59','0','','1','0','0','','0','746','');
INSERT INTO huishi_article VALUES('190','90','面向未来的房屋设计制造完全依托三维设计平台','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 150平米的房子，只需要一小时的制造时间。用户购买后再花上三小时，就自行搭建成自己的新房了。这并不是传统的简易房，而是漂亮高档的洋房，而且防风抗震。这就是澳大利亚帕卡萨集团（PACASA）研制并倡导的新一代房屋技术。据帕卡萨折叠房屋技术（重庆）有限公司董事总经理王宇先生介绍：“新一代房屋与传统建筑房屋相比有很大的区别，它是由工程师设计，每个部件由不同贴牌生产商预先加工，由组装生产中心统一组装，一套面积为150平米的房屋组装用时约用1小时，所需成本大大低于传统建筑房屋。新一代房屋的设计，组装过程与汽车生产线有些相似。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 澳大利亚帕卡萨集团(PACASA)是一家房屋问题解决方案的高技术公司，它采用折叠技术以达到从制造地到组装地间运输的目的。帕卡萨是世界上第一家成功运用房屋折叠技术同时保证房屋具有足够抗风抗震强度的公司。据了解，此公司历时八年、斥资1.2亿美元，获得了折叠房屋制造技术的多项国际专利技术，在未来式房屋市场上处于全球领先地位。帕卡萨非常看好中国的市场和制造能力。如今，他们落户重庆，帕卡萨中国将投资四亿元建立帕卡萨房屋技术中心、帕卡萨重庆生产基地（即帕卡萨卡福折叠房屋制造（重庆）有限公司）、帕卡萨房屋营销结算中心。其中，帕卡萨在华首套新生代房屋的样本间今年6月份将在重庆市诞生，今年帕卡萨重庆生产基地产能一千栋房屋的生产线也将正式投产。公司力争两年内在重庆达到一万栋的产能；在未来五年，帕卡萨还规划陆续在天津、大连、青岛、武汉等地建立九个制造基地，集团在十大基地建成后将形成十万栋房屋产品的生产能力，从而实现房屋建造工业量产化，解决发达国家和发展中国家均普遍存在的房屋严重短缺、住房负担压力过大、房屋建造时间过长、常规建筑成本过高带来的房屋短缺问题，让更多的人能买得起房子。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 帕卡萨集团重庆分公司的董事总经理王宇先生对公司在中国的前景非常看好，同时，他也透露出一些属于帕卡萨自身成功的秘诀。除了商业上的成功运作使帕卡萨迅速壮大外，帕卡萨的核心竞争力就是对革命性房屋设计制造的强大研发能力。集团成功的研发秘诀之一就是实现设计全部三维化。不同于传统的建筑设计单位以二维设计包打天下，帕卡萨的产品开发工程师全部都采用欧特克公司三维设计软件Autodesk Inventor开展房屋概念设计，结构设计和工程设计。就连新成立的重庆技术中心，也为了和总部保持一致，为自身工程师采购了十套Autodesk Inventor Professional 2010。随着下一步技术中心的扩建。王宇估计，重庆技术中心工程师所需的三维软件Autodesk Inventor的使用量会逐步达到150套。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100709183909310.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用新一代房屋制造专利技术修建的房屋</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 王宇指出：“作为跨国企业，帕卡萨集团必须打造跨国研发的统一平台，欧特克公司的三维设计软件Autodesk Inventor能够有效减少设计变更，易学易用，兼容性强，所以被选为集团长期研发策略的基石。而且这种统一的平台还要在产业链上大幅推广，令装配、供应商、分销商，都能在统一的文件格式下分享信息资源。”的确，帕卡萨构建统一的三维数字化设计平台令其快速扩张业务打下了以我为主，高效清晰的信息流共享基础。未来五年，帕卡萨将在中国构建十大生产基地，拥有年产十万栋房屋产品的生产能力。那时这种以产品生命周期为主线的，统一的三维数字化平台，将让帕卡萨全球在设计、生产、销售、物流等诸多环节取得不断放大的效益。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100709184030961.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>房屋室内效果</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp; 帕卡萨全球先后购买的30余套欧特克公司三维设计软件Autodesk Inventor广泛应用于其全系列产品的研发、工艺、工程项目的各个环节。集团还选用欧特克公司Autodesk Vault作为项目小组的数据管理平台，Autodesk 3ds Max做效果渲染。他们也正在向着以大工业化制造方式造出更快、更好、更便宜的新一代房屋的目标不断迈进。而这对解决世界各国均普遍存在的房屋严重短缺、住房负担压力过大、房屋建造时间过长及常规建筑成本过高的问题，也是有非常积极意义的。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-FAMILY: Arial\"></FONT>&nbsp;</P><P><FONT style=\"FONT-FAMILY: Arial\"></FONT>&nbsp;</P>',' ','0','2010-07-09 18:37:20','0','','1','0','0','','0','726','');
INSERT INTO huishi_article VALUES('191','90','Inventor完善产品设计 纸业巨人轻松获得订单','<DIV class=\"section normal\" id=section1><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px\">&nbsp; 全球有三分之一的纸张是使用Voith Paper（Voith）公司的机器生产的。Voith是全球造纸业的巨人，共有10,000名员工，年营收额达190亿美元，其开发的解决方案涵盖从造纸纤维到包装纸的整个造纸流程。</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">快速交付大型定制机器</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Voith希望能在未来改进全球各地设计中心的设计流程。由于造纸机的特定组件由各中心分别制造，且机器本身体积庞大、结构复杂，因此每台造纸机的设计都是由多个设计中心协力完成的。Voith清楚地认识到，若想加速设计和制造流程，就必须高效整合分布于各地的设计团队。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 借助一个兼容Voith公司其它主要企业系统的Autodesk制造业解决方案，Voith可以为工程师提供一致的信息，帮助他们更快完成设计。自从迁移至三维工具，Voith在设计质量上达到了前所未有的水平。有了三维设计流程，Voith可以更轻松地变更设计，并确保设计在进入制造流程后不易出错。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">集成高效解决方案</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 若想让全球各地的设计师使用同一款标准平台，Voith就必须将Autodesk制造解决方案与其它主要企业系统相集成。 </FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">“Autodesk咨询部门帮助我们找到了适合我们整个系统的流程和方法。Voith的IT解决方案部PDM支持经理Friedrich Spitzer说：“他们不仅只关注Autodesk Inventor的部署，还帮助我们集成了原有的ERP、PDM和零件管理系统。” </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最终，Voith的设计团队实现了同步共享，并达到了前所未有的设计速度和工作效率。Olaf Spitzer介绍说：“通过在我们的SAP ERP系统中集成三维模型，我们能够更迅速地修改设计。所有工程师都能访问相同信息”“因此我们现在可以更及时地响应客户需求。” </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Friedrich Spitzer还说：“我们打造了多个各有所长的设计中心，让全球各地的工厂都能生产一个完整机器上的特定组件。在Autodesk咨询部门的帮助下，我们安装了一款通用的Autodesk Inventor/SAP ERP系统，将来自各个中心的信息全部整合到了一个系统中。作为全球合作伙伴，Autodesk咨询部门能够为我们世界各地的工厂提供支持。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">简化采购、库存和维护</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 得益于集成德国卡迪纳斯有限公司（Autodesk开发者网络成员）开发的企业零件管理系统，Voith再次提升了工作效率。作为一款Inventor认证应用，PARTsolutions系统可支持用户轻松获取组件和装配，从而缩短设计时间。设计工程师和开发工程师可以在设计过程中通过一个用户界面查看相关的零件信息，如价格、交付时间和发布状态。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Friedrich Spitzer解释说：“在项目设计阶段，我们绝对不能仅仅设计几何图元。”“现在，我们的工程师可以在设计过程中应用实际组件，并在设计流程结束后生成BOM表。” </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通用数据库可以让整个Voith设计团队使用含有相同信息的组件。而且，Voith还通过简化零件数量简化了采购、库存和维护流程。Friedrich Spitzer说：“我们可以更好地存储内部所需的产品，而且分布在全球各地的服务机构也能获取相同的数据。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">更快、更好的设计</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在Autodesk制造解决方案的支持下，Voith可以更快交付更高质量的设计。每台机器均由Voith多个设计中心协作设计，之后在客户工厂完成装配。采用Autodesk Inventor后，Voith的装配问题明显减少。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Olaf Spitzer指出：“由于造纸机的规模太过庞大，我们无法在现场装配之前对整个机器进行实际测试。三维工具帮助我们减少了设计错误和装配问题。借助Autodesk Inventor，我们成功设计出一台包含约5,000个零件的造纸机，并且轻松无误地完成了机器装配。迁移到三维工具大大加快了我们的安装流程。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=left><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此外，Autodesk产品还能帮助我们更好地满足客户需求。Olaf Spitzer表示：“通过将Autodesk产品与我们的ERP系统相集成，我们能够更加迅速地响应客户需求。我们可以在机器投产之前向客户展示设计。例如，在中国的某项目中，一家公司准备订购一批造纸机零件。我们不仅向这家公司全面展示了自己的零件设计，还在一夜之间完成了他们提出的所有变更要求。第二天，我们向该公司提交了修改后的设计，轻松赢得了这份订单。”</FONT></P></DIV>',' ','0','2010-07-09 18:42:01','0','','1','0','0','','0','676','');
INSERT INTO huishi_article VALUES('194','90','Inventor-零件重命名后，零件编号没有修改','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">发布日期：2010年7月6日<BR style=\"FONT-FAMILY: \">编号：TS1093848</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">适用于:<BR style=\"FONT-FAMILY: \">Autodesk&reg; Inventor&#8482; Suite 2009<BR style=\"FONT-FAMILY: \">Autodesk&reg; Inventor&#8482; Suite 2008 </FONT></P><DIV class=\"section normal\" id=section2><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><STRONG>问题</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">您注意到为一个零件重命名后，零件编号没有修改</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><STRONG>解决办法</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">如果您在点击“Design Assistant（设计助手）”中的“Save（保存）”前点击了“Refresh（刷新）”，就会出现这种问题。 正确工作流程如下：</FONT></P><OL><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">用“Design Assistant（设计助手）”打开装配或绘图（IDW文件）。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">右键单击其中引用的IPT文件之一，点击“Rename（重命名）”。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">修改零件名称。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">不要点击“Refresh（刷新）”按钮。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">点击“Save（保存）”。</FONT></LI></OL><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">这时，零件名称和零件编号就会得到修改。</FONT></P></DIV><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-FAMILY: Arial\"><BR style=\"FONT-FAMILY: \"></FONT>&nbsp;</P>',' ','0','2010-07-13 13:16:17','0','','1','0','0','','0','980','');
INSERT INTO huishi_article VALUES('195','90','Inventor-设置螺栓连结的默认“Solve(求解)”选项','<TABLE style=\"PADDING-RIGHT: 6px; PADDING-LEFT: 6px; BACKGROUND: #ebebeb; PADDING-BOTTOM: 6px; PADDING-TOP: 6px\"><TBODY><TR class=submit_row><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">发布日期：2010年7月6日<BR style=\"FONT-FAMILY: \">编号：TS1094247 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">适用于:<BR style=\"FONT-FAMILY: \">Autodesk&reg; Inventor&#8482; Suite 2009&nbsp;<BR style=\"FONT-FAMILY: \"></FONT></P></TD></TR></TBODY></TABLE><DIV class=clear><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><B><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">问题</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">出于性能考虑，螺栓连接的默认状态为“Manual Solve（手动求解）”。但是，您想将默认状态修改为“Automatic Solve（自动求解）”或“Solve off（求解关闭）”。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" height=62 alt=默认状态 src=\"http://images.autodesk.com/apac_grtrchina_main/images/ico_102x62.jpg\" width=102></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><B><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">解决办法</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">要修改默认设置，请执行以下操作：</FONT></P><OL><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">退出Autodesk&reg; Inventor&#8482;。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">使用Microsoft&reg;笔记本，打开以下文件：<BR style=\"FONT-FAMILY: \"><B style=\"FONT-FAMILY: \">Microsoft XP</B> </FONT></LI></OL><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><I><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">C:Documents and Settings<USER_NAME>Application DataAutodeskInventor 2009DesignAcceleratorDefaults CABoltCon.Metric.xml (or CABoltCon.Imperial.xml) </FONT></I></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">Microsoft Vista</B> </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><I><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">C:Users<USER_NAME>appdataRoamingAutodeskInventor 2009DesignAcceleratorDefaults CABoltCon.Metric.xml (or CABoltCon.Imperial.xml) </FONT></I></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">注</B><B style=\"FONT-FAMILY: \">：</B> 如有必要，用您的Inventor版本号替代字符串“2009”。 </FONT></P><OL start=3><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">如下编辑“SolverOpt=”的值： </FONT><UL><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">0，设为“Solve off（求解关闭）”. </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">1，设为“Manual Solve（手动求解）”。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">2，设为“Automatic Solve（自动求解）”。</FONT></LI></UL><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">保存文件。 </FONT><LI><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">重新启动Inventor。</FONT></LI></OL><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">警告！</B> 出于性能考虑，只有在您确实需要时才使用“Automatic Solve（自动求解）”选项，这与使用“adaptivity（适应性）”的方法类似。</FONT></DIV>',' ','0','2010-07-13 13:17:20','0','','1','0','0','','0','737','');
INSERT INTO huishi_article VALUES('196','90','InfoCenter进程妨碍AutoCAD 2011正常启动','<TABLE style=\"PADDING-RIGHT: 6px; PADDING-LEFT: 6px; BACKGROUND: #ebebeb; PADDING-BOTTOM: 6px; PADDING-TOP: 6px\"><TBODY><TR class=submit_row><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">发布日期：2010年7月6日<BR style=\"FONT-FAMILY: \">序列号：TS15228698</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">适用于:<BR style=\"FONT-FAMILY: \">AutoCAD&reg; 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Architecture 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Civil 3D&reg; 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; ecscad 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Electrical 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Map 3D 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Mechanical 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; MEP 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; P&amp;ID 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Plant 3D 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Raster Design 2011 <BR style=\"FONT-FAMILY: \"></FONT></P></TD></TR></TBODY></TABLE><DIV class=clear><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><B><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">问题</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">重启AutoCAD 2011（之前曾在电脑上运行）后，该软件在启动时会出现完全无响应的现象。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><B><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">解决办法</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><A name=OLE_LINK2></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">有人报告，关闭AutoCAD 2011的会话后，运行InfoCenter (wscommcntr2.exe) 的进程却并未关闭。如果AutoCAD重启后，wscommcntr2.exe进程仍在运行，则该进程会妨碍AutoCAD的正常启动。试图卸载AutoCAD 2011时，这一进程还会妨碍安装程序的正常运行。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">这一问题的权宜解决措施是在任务管理器中强行关闭wscommcntr2.exe进程。如果在未运行AutoCAD的情况下，wscommcntr2.exe进程仍在任务管理器的进程列表中，请选中该进程，然后选择“结束进程”。这样便可以终止该进程，让AutoCAD重新启动。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" height=246 alt=\"InfoCenter进程妨碍AutoCAD 2011正常启动\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/InfoCenter_230x246.jpg\" width=230></FONT></P></DIV>',' ','0','2010-07-13 13:21:45','0','','1','0','0','','0','874','');
INSERT INTO huishi_article VALUES('201','90','基于云计算的最新技术预览亮相欧特克实验室','<DIV class=\"section normal\" id=section1><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【2010年8月3日，北京】日前，全球二维和三维设计、工程及娱乐软件的领导者</FONT><A href=\"http://www.autodesk.com.cn/adsk/servlet/home?siteID=1170359&amp;id=1810417\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克有限公司</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">（“欧特克”或“Autodesk”）宣布，在</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://labs.autodesk.com/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克实验室网站</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">上推出了免费的云计算预览</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://labs.autodesk.com/technologies/neon/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Project Neon</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">和网络服务技术预览</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://labs.autodesk.com/utilities/photo_scene_editor/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Project Photofly</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">，旨在为用户带来超乎想象的便捷功能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">长期以来，渲染多个文件和人工校准照片都是费时耗力的复杂工作，但现在Autodesk Project Neon和Autodesk Project Photofly的应用使得完成这两项工作变得十分简便。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Project Neon为设计师和工程师打开了云计算的大门，通过扩展现有的硬件功能，使其可以不再运用桌面进行渲染，而是利用网络浏览器创建项目图片，这样就可以在极短的时间内同时生成多张逼真的高质量渲染图，大大缩短探索多个选项的时间，从而为用户节省宝贵的时间和金钱。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Project Photofly因使用了 “Camera Factory（照相机工厂）”自动校准引擎而打破了利用图像建模的障碍。Camera Factory引擎作为一项网络服务，由基于Windows的 “Photo Scene Editor（照片现场编辑器）”的客服端提供，用户通过Photo Scene Editor连接Camera Factory，然后再用各自首选的欧特克三维建模软件（</FONT><A href=\"http://www.autodesk.com.cn/autocad\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">、</FONT><A href=\"http://www.autodesk.com.cn/revitarchitecture\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Revit</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">、</FONT><A href=\"http://www.autodesk.com.cn/3dsmax\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk 3ds Max</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">等）对DWG格式的数据加以利用，即可在图像的基础上创建三维模型。通过该预览，各类建筑、设计、传媒娱乐和制造业公司皆可在云环境下利用一系列照片轻松创建三维模型。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克实验室副总裁Brian Mathews表示，“现在，通过Autodesk Project Neon任何人都有能力利用无限强大的云计算了，它能让用户以经济、高效的方式将先进的计算运用到以前需要用超级计算机才能完成的日常工作中；而Autodesk Project Photofly不仅为没有图像建模资源或专业知识的创意艺术家和工程师创造了真实捕捉的便捷途径，同时也为曾经运用手工拼接照片进行三维建模的工程师加快了这一工作进程。”</FONT></P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">据了解，欧特克实验室于2007年正式成立，是欧特克展示新兴技术和支持由用户主导的创新活动的中心，并完全面向公众开放。自成立之日起欧特克实验室就成为软件开发者与普通用户的一个重要交流平台，也是各种创新型会议、交流活动的绝佳场所。与很多商业软件的研发机构不同，欧特克实验室更像是一个学术机构，或者是一个开放的技术创新机构。欧特克实验室从开始发现一项新的技术可能会被应用到工程设计领域当中来，就会通过欧特克实验室网站、博客等各种形式，在用户社区中同客户进行交流，并在整个新技术的研发过程中，不断听取试用用户的反馈，以不断纠正产品研发的方向，这一新颖的举措颠覆了传统的产品开发模式，使得欧特克与用户保持了更为紧密的联系，同时也使开发出的产品能够最大程度的提高用户体验。迄今为止，已经通过欧特克实验室孵化出来和正在孵化的项目包括Freewheel项目、Showroom项目、Draw项目、Twitch项目和产品的技术预览，包括Inventor LT、Autodesk Inventor Fusion、AutoCAD FreeStyle、Autodesk Dragonfly等。</FONT></DIV><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><H3><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于欧特克</FONT></H3><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克有限公司是全球二维和三维设计、工程及娱乐软件的领导者，其产品和解决方案被广泛应用于制造业、工程建设行业和传媒娱乐业。自1982年AutoCAD正式推向市场以来，欧特克已针对最广泛的应用领域研发出最先进和完善的系列软件产品和解决方案，帮助用户在设计转化为成品前以数字化的方式体验自己的创意。《财富》排行榜前百位的公司、以及荣膺过去十五年历届奥斯卡最佳视觉特效奖的全部获奖影片均普遍借助欧特克的软件解决方案进行设计、可视化，并对产品和项目在真实世界中的性能表现进行仿真分析，从而提高效率、节约成本、提升质量，继而催生创新和获得竞争优势。欲了解更多信息，请访问</FONT><A href=\"http://www.autodesk.com.cn/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克公司网</FONT>站</A>。 </P></DIV>',' ','0','2010-08-04 11:50:07','0','','1','0','0','','0','547','');
INSERT INTO huishi_article VALUES('203','90','Autodesk Inventor Fusion 2011 让建模更为自由','　<FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">Autodesk Inventor Fusion (后续简称Fusion) 是欧特克公司近期推出的一款3D数字化建模设计软件，它的理念并非传统的参数化3D建模技术，而是“直接建模”。通过直接建模的Fusion和参数化建模的Autodesk Inventor两款软件的配合使用，可以在保持原有工程设计参数的前提下，令设计效率、尤其是在更改设计的效率上有质的飞跃。 </FONT><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　Autodesk Inventor Fusion三大核心功能亮点</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　亮点一：工程师可以快速、无束缚地进行各种形式的设计更改。在Fusion中，传统的“设计特征”之间再没有任何的彼此依赖关系，用户可以基于模型的几何形状，快速、自由地进行设计更改。先前，设计工程师往往会在设计细节中遇到预想不到的困扰。比如：工程师创建了一个立方体，并对所有棱边做了圆角特征，此时工程师若想增加一个为工艺而设计的拔模斜度，这将是难于实现的。参数化建模软件中这些导角特征与其相邻的二个平面之前有严格的依赖关系，拔模特征将改变相邻平面的角度，这将导致部分导角特征失效。解决办法是：工程师要在立方体上先做拔模特征，再做导角特征。在Fusion强大的直接建模技术支持下，这一切将不会再成为工程师的困扰了。用户可以在任何时刻毫无束缚地基于模型外观进行设计更改。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　亮点二：Fusion实现了“直接建模”和“参数化建模”的操作流程的融合。Fusion本身是一个基于“直接建模”技术的设计软件，欧特克实现了Fusion与Inventor间良好的交互，这一切都是通过Change Manager完成的。Change Manager是安装在Inventor上的Add-In。工程师可以在Fusion中打开Inventor创建的模型，模型打开后，原模型的拉伸、旋转、阵列等各类特征全部被自动地识别了出来。文件就像在Fusion中创建的一样，用户可以对模型进行任意的设计变更。在Inventor中打开变更后的文件，Change Manager将自动跟踪用户在Fusion中所做的更改，用户可以将这些更改应用到Inventor中，这些更改将以Inventor的特征表达出来并出现在特征树上，就像在Inventor中创建的一样，用户可以对其做任何Inventor所支持的操作。整个过程中，Inventor原有的设计数据都被完整地保留下来，不会受到任何破坏，并且Fusion更改过程产生的数据也将传递到Inventor文件中。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　Fusion的Find Features(特征识别)功能不仅仅是面向Inventor的，它支持包括DWG、STEP、SAT在内的多种数据格式。用户在Fusion中打开这些模型后，可以启动Find Features命令对模型进行识别，识别完成后，拉伸、旋转、阵列等所有特征将显示在模型树中，如同在Fusion创建的一般。用户可以对模型进行所需的设计变更，并将变更后的模型导回相应的设计软件中。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　亮点三：Fusion的先进性也体现在它的界面设计及操作方式上，简洁、易用。最上方的Ribbon UI(主菜单)可以智能展开或隐藏，为用户提供更大的图形工作区。在Fusion的工作区中点击鼠标右键，将会看到一个叫做Marking menu的环形菜单。一些最常用的命令以及最近被使用的命令被放在鼠标的周围，这就使得用户可以更快捷地调用这些功能。在用户熟悉了这个环形菜单之后，可以通过鼠标手势来调用所需要的命令，从而进一步提高用户的工作效率。另外，在Marking menu的旁边，用户还可以找到传统的风格Context menu(右键菜单)，里面列出了用户当前可能用到的更多的命令。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　另外，模型特征树及其它工具都是半透明的。以确保设计模型不被任何界面操作所遮挡，视觉上显得更简洁。同时，Fusion尽可能避免</FONT><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">对话</FONT><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">框的使用，以免干扰用户的设计思路。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　意义堪称里程碑</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　<A href=\"http://www.huishisoft.com/\"><FONT style=\"FONT-FAMILY: Arial\">Autodesk Inventor Fusion</FONT></A>是一个3D建模的软件，它的理念是直接建模，对于传统CAD软件而言，这是一个革命性的产品。Fusion实现了基于历史特征的参数化造型与基于几何的无历史的直接建模造型的结合。用户将不再需要关心模型是如何创建出来的，只需基于模型外观去表达自己的设计意图，将用户从传统参数化建模方法的束缚中解脱出来。参数化建模软件未必能帮助一个伟大的设计师去展示其伟大的设计，因为您必须拥有驾驭复杂的参数化软件的能力。但Fusion可以，因为它只是一个表达工具而已，它为您提供了毫无束缚的创建修改能力。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　传统参数化的建模软件现在面临着巨大的考验。多年来，用户的一项问题始终得不到合理地解决，那就是一旦三维设计模型非常庞大，相关的约束条件也很复杂时，后期修改的工作量将是空前巨大的，甚至有时候不可能完成修改。因为如果更改的过程涉及很多约束，模型将可能因新旧约束关系间爆发冲突而无法继续完成下去。而Fusion能很好地解决这个问题。在一个复杂装配体中，将某个零件或某一局部移动一下位置;或尺寸改变一些，Fusion都能基于模型的几何信息更新模型，操作起来非常方便。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　谈到Fusion和Inventor的关系，可以说二者相互独立而又可以无缝地结合。Inventor是一款参数化建模的软件，具有这种技术所带来的优缺点，而Fusion正是在其缺点上做了弥补。通过Change Manager将二者完美地结合在了一起。另外，Fusion和欧特克其它制造业的软件之间的数据交流，及操作方式都是无缝集成的。除了和Inventor紧密结合外，欧特克还把CAE仿真测试工具Algor 和项目管理工具Vault 植入到Fusion界面上。用户可以直接从Fusion中把模型导入到Algor中进行分析，也可以把文件直接提交到Vault中去，或从Vault中导出来。在文件格式上面，Fusion与其它产品间有很好的相互支持。Fusion以DWG为默认格式，同时还支持其它的格式，比如STEP、STL等等。Fusion作为欧特克一个独立的设计产品，即使不是其三维设计软件Inventor的使用者，也完全有可能成为Fusion的用户。 Fusion可以独立从零开始进行模型设计，也可以导入第三方的模型并基于其进行后续设计。设计的模型可以标准的格式导出，并被第三方软件使用。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　业界对比各有特色</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　欧特克并不是第一个意识到直接建模技术的重要性，并看到把它和主流的参数化建模技术做结合的优势公司。然而，不同于竞争对手，Inventor Fusion并非依赖参数化的建模历史去修改模型，它是一项基于直接建模的技术，这就从根本上摆脱了传统参数化建模方法的束缚。这项技术将直接的，无历史记录的，与参数化的，有历史记录的建模流程统一起来，Fusion独特的功能使得设计师可以根据项目的不同特点，使用最合适的建模方式，同时保证了这两种软件技术路线各自的优势作用最大化。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　目前Fusion处于技术预览阶段，在Inventor 2011版的安装包里面已经包含了Fusion的安装光盘，这可以让正在使用Inventor的用户体验Fusion带来的好处，并给我们提出宝贵的意见。Fusion中文版已经发布，中国客户可以更方便地体验它。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　Autodesk Inventor Fusion核心优势描述</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　一、实现无束缚地快速地进行设计变更。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　二、通过Change Manager将直接建模和参数化建模的优势相结合，使得模型数据在其中无缝、无丢失的交互传输。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">　　三，易用性强，界面简洁、操作极为简单。</FONT></P>',' ','0','2010-08-11 15:39:58','0','','1','0','0','','0','2091','');
INSERT INTO huishi_article VALUES('204','90','Autodesk Inventor帮助可再生能源产品供应商开发生物柴油加工设备','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">【2010年8月12日，北京】日前，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）宣布，专注于小规模生物柴油加工市场的供应商——Springboard Biodiesel公司成功使用</FONT><A href=\"http://www.autodesk.com.cn/inventor\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">Autodesk Inventor</FONT></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"> 软件在短时间内设计制造清洁技术解决方案，其生产的小型生物柴油加工设备可以实现生物柴油本地化生产，同时获得可观利润。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">作为致力于支持具有经济和环境吸引力的经济适用、可再生生物柴油解决方案的可再生能源产品供应商，Springboard Biodiesel公司认为，使用最廉价的原料在本地进行可以获取利润的生产，是经济地提供生物柴油并不断推广生物柴油的最佳方式，该公司的最新产品Springboard Biodiesel Intelligent Production（ILP）解决了这个挑战。该产品可用于本地小规模生产燃料级生物柴油，可使用的原料涵盖从低质量的废食用油到高质量的初榨大豆油等等不同种类。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814100304933.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">利用<B style=\"FONT-FAMILY: \">Autodesk Inventor</B><B style=\"FONT-FAMILY: \">设计的小型生物柴油加工设备</B><B style=\"FONT-FAMILY: \">&nbsp;</B></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">早在正式进入ILP的设计阶段之前，Springboard Biodiesel公司就已通过Autodesk Inventor 软件进行了标准化的过程。早前，该公司之前使用的则是其他厂商的软件，但其在了解到欧特克清洁技术合作计划正在向北美新兴清洁技术公司提供免费软件之后，他们认为这是公司升级软件的一个好机会。在欧特克零售商KETIV技术公司的帮助下，Springboard Biodiesel公司很快就享受到Autodesk Inventor 的优势功能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">Springboard Biodiesel公司首席执行官Mark Roberts表示：“我关心的在于我们可以在多短时间内拿出最佳产品，并于市场上脱颖而出，而什么软件能帮助我们来实现这个目标。Autodesk Inventor在此发挥着巨大的作用。利用Autodesk Inventor，我们能够更快、更有效地完成设计我们可以引入一套全新的系统，并且只需要六个月的时间——对于我们这样规模较小的公司来说很了不起。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">KETIV公司帮助Springboard Biodiesel公司申请了欧特克免费软件，后又为该公司的团队提供了为期一整天的现场培训。Springboard Biodiesel公司在机械设计过程中使用了Autodesk Inventor软件，而在后期市场营销过程中，则又借助于</FONT><A href=\"http://www.autodesk.com.cn/showcase\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">Autodesk Showcase</FONT></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">软件。在Autodesk Showcase的帮助下，其利用欧特克三维数字化样机创建了准确、逼真的图像，而这些渲染图成为向潜在客户或投资商介绍新产品的极其有效的手段。因此，Springboard Biodiesel公司无需等待产品整个生命周期的完成，即可吸引市场对其产品的兴趣并争得市场份额。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">欧特克制造业解决方案部高级副总裁Robert “Buzz” Kross 表示：“通过使用Autodesk Inventor，Springboard Biodiesel 公司提高了创新速度，加速了产品上市步伐。看到欧特克清洁技术合作计划的成员从数字化样机中充分受益并进一步实现‘创造可持续未来’的公司目标，我们感到非常欣慰。” </FONT></P><DIV class=clear><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><H3><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">关于清洁技术合作计划</FONT></H3><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">欧特克清洁技术合作计划向新建清洁技术公司免费提供软件，帮助他们加快创新步伐，以更低成本、更高速度将产品推向市场。每家欧特克清洁技术赠送受益公司都收到了价值高达 15万美元的设计软件，其中包括五个AutoCAD Inventor 专业套装、Autodesk Showcase Professional、Autodesk Vault Manufacturing、Autodesk Navisworks Manage、Autodesk Revit Architecture 和 Autodesk Alias Design 的许可证。欲了解更多信息，请访问</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/cleantech\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">www.autodesk.com/cleantech</FONT></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px\"></FONT></P></DIV>',' ','0','2010-08-14 10:02:29','0','','1','0','0','','0','640','');
INSERT INTO huishi_article VALUES('205','90','AutoCAD2011新功能介绍之三维造型','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD2011新功能的最大亮点：提供了更为强大的三维自由现状设计</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">创建程序曲面及NURBS曲面</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-FAMILY: Arial\"><A href=\"http://www.huishisoft.com\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD 2011 </FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">引入了增强的曲面建模功能，并新增了创建 NURBS 曲面的功能。这种曲面类型具有控制点 (CV)，这些控制点允许用户以造型物理模型的方式来 \"造型\" 对象。NURBS 曲面以 Bezier 曲线（或称平滑曲线）为基础，这使得它们成为创建诸如汽车、船只和吉它等曲线式对象的理想工具。</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112350420.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">创建曲面的一种方法是使用曲线网络。SURFNETWORK 命令可使用 U 和 V 方向的曲线所构成的网络，创建类似于放样曲面的曲面。还可以使用没有全部连接的曲线创建网络曲面。生成的曲面可能是程序曲面或 NURBS 曲面。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112446786.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">该模型上显示的控制点框架表明它是 NURBS 曲面而不是程序曲面。当 SURFACEMODELINGMODE 系统变量设定为 1 时，可通过对曲线进行拉伸、放样、扫掠和旋转来创建 NURBS 曲面。当该变量为 0 时，这些操作会创建程序曲面。另一种创建 NURBS 曲面的方法是使用 CONVTONURBS 命令转换现有三维实体或程序曲面。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112527827.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">另一种创建曲面的方法是对各现有曲面进行过渡，使其成为一个曲面。在此样例中，SURFBLEND 命令用于过渡两个平面曲面。曲面间过渡的方式由 \"曲面连续性\" 和 \"幅值\" 控制。使用这些特性可以调整曲面相交处的相切和曲率。例如，汽车发动机盖由多个小曲面组成，但看上去却是一个曲面，这是因为它们具有平滑的曲面连续性和幅值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">编辑程序曲面及NURBS曲面</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">NURBS 曲面比传统的程序曲面提供更强大的建模功能，因为前者有控制点 (CV)。而另一方面，程序曲面拥有关联建模优势。在此样例中，沿 U 方向添加了一行 CV。此操作会更改曲面形状。也可通过单击并拖动一个或多个 CV 来重塑对象的形状。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112728620.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在某些情况下，编辑曲面之后，您可能对整体平滑度和形状不满意。此时可以使用 CVREBUILD 命令更改 NURBS 曲面或曲线的整体 CV 结构。通过更改曲线阶数和控制点数目，可以恢复曲面的整体平滑度和形状。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112809439.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">借助于几种诊断工具，您可以检查模型中曲面的质量。这些工具包括斑纹分析、曲率分析和拔模分析。斑纹分析可将条纹投影到模型上，以分析 \"曲面连续性\"，即曲面间相互相交的方式。在此图中，同一个对象显示了三次。三者之间的唯一区别是曲面相交处的曲率和相切不同。通过斑纹条纹可以了解曲线如何相交，使您可以更好地调整平滑度。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112852661.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">修剪和取消修剪曲面在曲面建模工作流中与合并、减除和相交在实体建模工作流中一样常用。程序曲面和 NURBS 曲面都可通过 SURFTRIM 和 SURFUNTRIM 命令进行编辑。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814112932352.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">形成无间隙封闭区域的一组曲面可以自动修剪及合并来生成单个三维实体对象。在此样例中，相交的曲面生成了一个无间隙的封闭区域。SURFSCULPT 命令可将多个曲面转换为一个三维实体。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814113024680.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">将几何体投影到曲面上</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">与将电影投影到银幕上相似，可以将曲线投影到程序曲面和 NURBS 曲面上。此操作可以在曲面上创建修剪边。可以从不同方向投影曲线：UCS、两点和视图，如这些图中所示。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814113146909.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">使用关联曲面和约束</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">与图案填充和标注一样，曲面也可以是关联的。移动或修改一个曲面时，所有关联的曲面会自动随之调整。在此图中，船由四个曲面组成。当拉伸其中一个侧面或重塑其形状时，所有关联的曲面将相应调整。使用 SURFACEASSOCIATIVITY 系统变量可以打开和关闭关联性。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814113305849.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关联性还可用于将数学表达式和参数化约束应用于曲面。数学表达式可以应用于诸如半径和高度等的曲面特性。例如，可以指定曲面高度始终是一个实心长方体长度的一半。参数化约束可限制一个对象距离其他对象的相对位置。在此样例中，通过拉伸而生成曲面的圆弧锁定在一个固定位置。当用户编辑关联的曲面时，该圆弧曲面的位置保持不变。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814113339863.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关联性还可用于将数学表达式和参数化约束应用于曲面。数学表达式可以应用于诸如半径和高度等的曲面特性。例如，可以指定曲面高度始终是一个实心长方体长度的一半。参数化约束可限制一个对象距离其他对象的相对位置。在此样例中，通过拉伸而生成曲面的圆弧锁定在一个固定位置。当用户编辑关联的曲面时，该圆弧曲面的位置保持不变。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814113421855.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; COLOR: #444444; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">修改面</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">几种增强功能提供了修改网格面的其他工具。例如，您可以选择相邻网格面并将其合并来创建单个面 (MESHMERGE)。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814132821167.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">过去，可以使用适用于三维实体对象的命令 (EXTRUDE) 拉伸网格面。但是，对于平滑网格，相邻面会延伸形成单独的 \"丘\"，而没有公共边。使用新的基于网格的命令 (MESHEXTRUDE)，默认情况下相邻面会在拉伸时进行合并。通过更改设置，还可以将面拉伸形成单独的丘。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814132901985.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">还可以旋转相邻三角面的边来更改面的方向 (MESHSPIN)。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814132936846.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">此外也可以合并选定网格面或边的顶点。此方法 (MESHCOLLAPSE) 常常可用于修复网格中的孔。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133019736.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">删除面及修护间隙</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">可使用以下两种方法之一删除网格面：<BR style=\"FONT-FAMILY: \">1：选择该面并按 Delete 键。<BR style=\"FONT-FAMILY: \">2：输入 ERASE 并选择该面。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">这两种方法都会在网格中生成一个间隙。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133251300.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">可以通过选择周围网格面的边，闭合网格对象中的孔（间隙）。该命令 (MESHCAP) 非常适用于修复在编辑期间生成的间隙。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133328522.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>为三维实体生成圆角和倒角</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">可以使用以下两个新命令为三维实体的边生成倒角和圆角：<BR style=\"FONT-FAMILY: \">1：CHAMFEREDGE<BR style=\"FONT-FAMILY: \">2：FILLETEDGE</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">选择要修改的一条或多条边。然后单击并拖动这些边，以调整和预览圆角或倒角。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133605478.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>删除和选择循环</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在一个复杂三维图形中选择对象可能很困难。以下三个新系统变量简化了这一过程：<BR style=\"FONT-FAMILY: \">1：增强的选择循环 (SELECTIONCYCLING)<BR style=\"FONT-FAMILY: \">2：用于控制将光标悬停在一个对象上或选择该对象时亮显哪些子对象 (CULLINGOBJ)<BR style=\"FONT-FAMILY: \">3：用于控制将光标悬停在多个对象上或选择这些对象时亮显哪些对象 (CULLINGOBJSELECTION)</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133722843.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>增强的旋转，拉伸，放样，扫掠</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">现在，通过旋转、拉伸、放样和扫掠操作，可以基于以下对象创建实体和曲面：<BR style=\"FONT-FAMILY: \">1：非平面对象<BR style=\"FONT-FAMILY: \">2：实体边或曲面边</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在此样例中，REVOLVE 命令用于基于一条非平面样条曲线创建曲面。当您旋转、拉伸、放样或扫掠轮廓时，可以指定将创建曲面还是实体。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133843850.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">可使用 REVOLVE、EXTRUDE、LOFT 和 SWEEP 拉伸实体边和曲面边。在此样例中，拉伸并倾斜了一个边子对象来创建 NURBS 曲面。创建倾斜角度时，可以在绘图时更改倾斜角。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814133932851.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">还可以对曲面和实体的边子对象进行旋转、拉伸、放样和扫掠。在此样例中，对现有曲面的边执行了放样来创建一个相连曲面。当执行放样来创建曲面时，可以指定曲面连续性和凸度幅值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814134013159.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">在此样例中，通过沿非平面路径扫掠对象来创建曲面。SURFACEMODELINGMODE 系统变量指定是创建程序曲面还是 NURBS 曲面。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100814134058797.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">关于汇识</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #444444; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #444444; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #3f3f3f; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">厦门汇识科技咨询有限公司成立于2006年，是一家专业从事<FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">CAD，CAM，CAE，PDM领域</FONT>技术支持，教育培训，外包咨询等业务的服务</FONT></FONT></FONT></FONT><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">型企业，</FONT><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">自成立以来，汇识不断开拓与全球顶尖软件公司及业界科技领导商的合作渠道，同时积极与高等院校保持密切联系，</FONT></FONT><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">资源共享，力</FONT><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">争在三者之间搭建桥梁。汇集各种资源服务中国的创新型企业。</FONT></FONT></FONT> </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">更多资讯登入：</FONT><A href=\"http://www.huishisoft.com\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">http://www.huishisoft.com</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR><FONT style=\"FONT-SIZE: 14px\">&nbsp;</FONT></P>',' ','0','2010-08-14 11:14:58','0','','1','0','0','','0','3604','');
INSERT INTO huishi_article VALUES('207','90','AutoCAD Electrical 2011新功能介绍','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><A href=\"http://www.huishisoft.com \"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">AutoCAD Electrical 2011</FONT></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">新功能的最大亮点在于：增加了目录查找功能，可以大大缩短用户指定元件型号，厂家，属性的时间</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">目录查找增强功能</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">目录查找用户界面增强功能：</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">1：控制在目录查找对话框中显示的字段以及字段的次序。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">2：通过从任意目录字段中选择现有值过滤目录记录。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">3：根据为任意一个目录字段提供的值（包括通配符）搜索目录记录。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">4：通过单击显示的任意字段的列标题对目录记录进行排序。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">5：在主对话框（以前称为“目录检查”）上显示 BOM 表详细信息。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">6：使用目录数据库中的扩展 _LISTBOX_DEF 表格为任意目录字段定义默认过滤器值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">7：显示对话框工具提示，用于描述对话框上各个控件的功能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121035655.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121329239.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">输入导线类型</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">导线类型是基于每个图形来进行定义的。您可以将导线类型从现有图形或模板输入到其他图形。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">可以使用“创建/编辑导线类型”对话框中的“输入”按钮将导线类型输入到激活图形。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">可以使用“适用于项目范围的功能”将导线类型输入到一组项目图形。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121420315.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">BOM 表条目号增强功能</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">为面板元件使用固定 BOM 表条目号。运行“重排序 BOM 表条目号”时，固定 BOM 表条目号不会更改。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">根据元件的制造商值重排序 BOM 表条目号。从项目中使用的值列表中选择制造商。仅具有选定制造商值的元件上的 BOM 表条目号才会更改。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">根据元件的制造商值定义重排序次序。使用“上移”和“下移”按钮更改通过“重排序 BOM 表条目号”命令处理的制造商的次序。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121458827.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">特定于项目的目录数据库</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">创建仅包含在项目图形中使用的目录值的目录数据库。此命令可启动 default_cat.mdb 数据库并删除项目图形中未使用的所有目录值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">使用此规模较小的目录数据库可以执行以下操作：</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">连同已完成的项目一起发送给客户。<BR style=\"FONT-FAMILY: \">将未来的目录选择限制到项目中使用的元件。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121550811.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">位置框增强功能</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">插入位置框时，“位置框”对话框中的一个复选框会指示是否要更新位于新位置框内的主元件的位置代号值和安装代号值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><A href=\"http://www.huishisoft.com \"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">AutoCAD Electrical</FONT></A><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"> 命令现在可识别位置框。如果将原理图主元件插入或移动到现有的位置框，则位置代号值和安装代号值将更新以匹配该位置框。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">将原理图主元件移出位置框时，可以选择是否更新元件值以匹配图形默认值。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121632694.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><STRONG><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">禁止导线碰撞检查</FONT></STRONG></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">在插入导线期间暂时禁用或启用碰撞检查。当从一个位置到另一个位置进行导线布线时，默认行为是在元件四周布线。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">要让导线穿过插入该导线时所遇到的任何元件，请禁用碰撞检查功能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">此设置仅为当前任务保留。重新启动 AutoCAD Electrical 时，会启用碰撞检查。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100815121715362.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">关于汇识</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #444444; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #444444; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #3f3f3f; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">厦门汇识科技咨询有限公司成立于2006年，是一家专业从事<FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">CAD，CAM，CAE，PDM领域</FONT>技术支持，教育培训，外包咨询等业务的服务</FONT></FONT></FONT></FONT><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">型企业，</FONT><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">自成立以来，汇识不断开拓与全球顶尖软件公司及业界科技领导商的合作渠道，同时积极与高等院校保持密切联系，</FONT></FONT><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">资源共享，力</FONT><FONT style=\"FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Arial\">争在三者之间搭建桥梁。汇集各种资源服务中国的创新型企业。</FONT></FONT></FONT> </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"COLOR: #000000; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">更多资讯登入：</FONT><A href=\"http://www.huishisoft.com/\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\">http://www.huishisoft.com</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-FAMILY: Arial\"></FONT>&nbsp;</P>',' ','0','2010-08-15 12:03:17','0','','1','0','0','','0','1638','');
INSERT INTO huishi_article VALUES('208','90','Autodesk Inventor Publisher打通产品上市最后的瓶颈','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 12px; FONT-FAMILY: Arial\"><FONT face=宋体>&nbsp;&nbsp;&nbsp;</FONT><FONT style=\"FONT-SIZE: 14px\"> 随着市场竞争愈发激烈，产品研发的各个环节，均体现了企业对研发速度和质量的追求——合理的协同研发，对企业已经不是难题。为了提供给用户最出色的产品体验，甚至在传统的装配指南、产品说明书等资料输出层面，也开始得到企业的重视。对于那些没有CAD背景和设计经验的从业人员来说，要正确和完整地创建产品文件或者装配指南，不是一件容易的事。</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 道理很简单：一个优质的产品，如果没有容易理解的可以增加用户体验的说明书，产品最终可能会被用户抛弃。企业显然不愿意看到这种情况发生，但是，长期以来，由于设计软件本身的复杂性需要对用户进行培训，以及传统设计流程形成的障碍，企业陷入两难。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一方面，依据设计流程生成的二维图纸，如果要嵌入说明书等文档资料，必须要求文档制作人员具备一定的CAD操作经验，而如果企业开始制作三维说明书，无疑加大了这一难度；另一方面，传统上，文档制作必须在产品设计完成之后才能进行，这拉长了产品研发及上市周期。</FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">更痛苦的是，设计更改在产品研发过程中是不可避免而且是经常出现的，这更给产品资料的输出增加了巨大的工作量，加大了出错的可能性。</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 制造商如何打通产品上市最后的瓶颈？如何在激烈的市场竞争中让企业的产品说明脱颖而出？一种易于使用的、非CAD用户也能“读懂”并流畅操作的软件，是企业的必然选择。Autodesk Inventor Publisher软件，对于那些图文档和资料制作、维护人员，提供了这种可能性。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这一款于去年12月开始在欧特克实验室网站上以技术预览亮相的全新Autodesk Inventor Publisher软件，能够让用户在网络上轻松创建和发布交互式三维产品文件——这一功能是该软件的炫目之处，当然，不仅限于此。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长期以来，产品文件和装配指南主要是以文字为主的二维手册，艰涩复杂并且难于理解。利用Autodesk Inventor Publisher制作三维图纸，例如装配说明、操作程序或维修保养指南等，具有高度的可视性，可以有效改善用户体验。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 广大的CAD工程师对Autodesk Inventor软件并不陌生，它是Autodesk一系列用于三维机械设计、仿真、模具创建和设计交流的软件，其功能全面，使用灵活，可以帮助用户经济高效并在更短时间内设计并创建更出色的产品。</FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">但是，对于资料制作人员用户来说，Autodesk Inventor需要他们熟练掌握或了解三维机械设计软件。因此，面对企业资料输出中的最新要求，资料制作人员如何跟上步伐呢？</FONT></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Inventor Publisher实现了用户从二维输出到三维输出的飞跃。Autodesk Inventor Publisher的输出格式包括DWF，也包括视频格式如AVI、Flash等，这样可以让用户更直观地了解产品，很大程度上提高了传统文档的视觉效果。据介绍，相比市场上的同类产品，该软件的最大特点是易用性，从而也降低了学习和培训的成本。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在描述该软件的功能时，欧特克中国研究院的工程师认为，目前，用户在二维图纸生成方面，任何原始模型设计的改动，会造成图纸资料的改动或者返工，非常耗时耗力，造成整个产品设计周期被拉长。而通过Autodesk Inventor Publisher软件平台，则可以达到同步更新的效果，用户只需点一个按钮就可以实现同步更改。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 例如，用户在设计的过程中，如果已经完成某个机器的设计，但该机器有一个配件需要改动或替换，但此时文档已经输出好了——在传统的模式下，用户只能把原来的文档找出来一个一个地手动改，而如果输出的文档不是一份，比如文档牵涉到说明书、内部文献资料等多种文档，则不仅会大幅延长更改时间，更会造成出错的可能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 利用Autodesk Inventor Publisher，用户只需要利用软件的更新功能，就可以把所有文档模型变更成设计师需要的结果，再通过Publisher，就可以实现全部文档的同步更新。有意思的是，Autodesk Inventor Publisher还具有类似拍照的功能，用户可以把每一步的设计进度拍下来，而如果照片和照片连起来，就能达到影像的效果，从而记录整个研发过程。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 工程师介绍，实际上Autodesk Inventor Publisher并不是一个小插件，而是一个独立的软件应用，因此，它完全能够支持各种CAD格式文件。当前，众多企业都利用多CAD平台，Autodesk Inventor Publisher的这种支持多种通用CAD格式的属性无疑给用户提供了更大的方便性和灵活性。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 目前，“数字样机”解决方案是Autodesk面向制造业解决方案的核心理念，其独特之处，在于帮助用户打通从概念设计、详细设计、工程制造以及上市推广各个环节，而Autodesk Inventor软件则是数字化样机的基础，将概念设计、工程及制造团队通过单一的数字模型的使用联系起来。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Inventor模型就是精确的三维数字样机，可以帮助用户在工作中验证设计的外形、结构和功能，减少对物理样机的依赖。它还能够帮助用户利用数字样机完成产品的设计、可视化和仿真，从而加强团队间的沟通，减少设计错误，交付更具创造性的产品设计。&nbsp; </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 因此，从产品研发流程的角度， 今年Autodesk Inventor Publisher的推出，将通过为制造商提供更为清晰和易理解的技术指导，在产品设计和制造过程中使用单一的数字模型，加强欧特克面向制造业的解决方案，无疑对Autodesk面向制造业的解决方案起到了重要的补充和完善作用。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 主导这一新技术开发的是包括欧特克中国研究院在内的欧特克全球研发团队。整个研发团队从产品的需求分析开始，一直到最后的测试阶段，进行了通力合作。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随着</FONT><A href=\"http://www.huishisoft.com/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor Publisher </FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">的发布，众多欧特克用户已经表达出应用的热情，这显示了该产品在解决用户难题方面具有的实用价值。无疑，这也给予了Autodesk Inventor Publisher研发团队的信念。工程师表示，他们将在用户反馈的基础上，对Autodesk Inventor Publisher 进行改进，以更加贴近用户的需求。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在一个制造企业，制造厂商利用Autodesk Inventor Publisher，可以很早就开始考虑说明文档的制作。而由于传统的文档制作人员不全是专业设计师或工程师，因此该软件平台可以使文档制作人员与设计人员保持有效的沟通，减少大量的误解、误差，减少返工，从而缩短产品研发周期，使产品更快地推向市场。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Inventor Publisher，为解决用户难题，打破产品上市最后的桎梏，做好了准备。</FONT></P>',' ','0','2010-07-15 12:59:28','0','','1','0','0','','0','546','');
INSERT INTO huishi_article VALUES('211','90','Autodesk Inventor帮助开发丹麦首个进入家用市场的小型风轮机','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【2010年8月17日，北京】近日，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）将丹麦可再生能源解决方案供应商Vindby公司提名为“欧特克月度发明家”。Vindby公司利用Autodesk Inventor 软件开发了丹麦首个获准进入家用市场的风轮机Vindby 1A。Vindby 1A易于装配和安装，用户可以利用它方便地生成清洁可再生能源，减少对环境的影响。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">来自丹麦的Vindby公司是光伏、小型风轮机和地热热泵领域的可再生能源解决方案领先供应商，Vindby公司主管Ole Jonsson表示：“我们之所以能够快速开发出Vindby 1A，是因为我们用Autodesk Inventor软件构建了一套完整的数字化样机工作流程，这是我们得以快速进入审批程序和取得竞争优势的决定因素，在设计和施工阶段，也因此得到了多方面的实质性优化。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100817193921781.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用<B style=\"FONT-FAMILY: \">Autodesk Inventor</B><B style=\"FONT-FAMILY: \">开发的小型家用风轮机</B></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">按照丹麦的风轮机监管规定，所有涡轮机都必须经过六个月的严格测试，并且其中必须包括冬季的三个月，即使是像Vindby公司生产的占地面积不足五平方米的小型风轮机也不例外。Vindby公司携手欧特克授权经销商CDLIGHT，将Autodesk Inventor软件纳入设计流程，并采取必要的措施，为风轮机测试做好准备。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><B><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">利用数字化样机在短时间内优化设计</FONT></B></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Vindby公司利用Autodesk Inventor软件设计、可视化和模拟了风轮机的性能，减少了所需物理样机的数量，并加快了开发进程——在时间上比竞争对手快了六个月。因此，Vindby公司成为第一家获准进入丹麦家用风轮机市场的公司，随后又将销售扩大到了挪威和瑞典。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克制造业解决方案部高级副总裁Robert “Buzz” Kross表示：“清洁技术公司常常要面对紧张的工期和繁琐的监管审批流程。欧特克数字化样机能在这两个方面为Vindby这样的公司提供帮助，让它们设计出更优秀的产品，同时更快将产品推向市场。” </FONT></P><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section2><H3><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于清洁技术合作计划</FONT></H3><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克清洁技术合作计划向新建清洁技术公司免费提供软件，帮助他们加快创新步伐，以更低成本、更高速度将产品推向市场。每家欧特克清洁技术赠送受益公司都收到了价值高达 15万美元的设计软件，其中包括五个AutoCAD Inventor 专业套装、Autodesk Showcase Professional、Autodesk Vault Manufacturing、Autodesk Navisworks Manage、Autodesk Revit Architecture 和 Autodesk Alias Design 的许可证。欲了解更多信息，请访问</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/cleantech\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">www.autodesk.com/cleantech</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></P></DIV><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section3><H3><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于欧特克“月度发明家”</FONT></H3><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.cnetnews.com.cn/list-0-0-46076-0-1.htm\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">每月都要从Autodesk Inventor 软件的广大用户中择定其一，提名为“月度发明家”，借以表彰在工程技术领域取得突出成绩和突破性创新的用户。Autodesk Inventor软件引导制造商超越三维设计，进入数字化样机时代。</FONT></P></DIV><DIV class=clear><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT></DIV><DIV class=\"section normal\" id=section4><H3><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于Vindby公司</FONT></H3><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">丹麦Vindby公司是光伏、小型风轮机和地热热泵领域的可再生能源解决方案领先供应商。欲了解更多详情，敬请访问</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.vindby.dk/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">www.vindby.dk</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT></P></DIV><P><STRONG><FONT style=\"FONT-SIZE: 14px\"></FONT></STRONG>&nbsp;</P>',' ','0','2010-08-16 19:38:27','0','','1','0','0','','0','660','');
INSERT INTO huishi_article VALUES('218','90','Autodesk Inventor 2011补丁（Service Pack 1）发布','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">Applies to:</STRONG><BR style=\"FONT-FAMILY: \">AutoCAD&reg; Inventor&reg; Professional Suite 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Inventor&reg; Routed Systems Suite 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Inventor&reg; Simulation Suite 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Inventor&reg; Suite 2011<BR style=\"FONT-FAMILY: \">AutoCAD&reg; Inventor&reg; Tooling Suite 2011<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">必读内容 - 安装注意事项 </STRONG><BR style=\"FONT-FAMILY: \">1、您只能安装位型版本与所安装 Autodesk Inventor 2011 的位型版本相对应的 Autodesk Inventor 2011 Service Pack 1。 <BR style=\"FONT-FAMILY: \">2、如果以前安装了 Service Pack 1 Beta 版，请卸载该版本，然后再安装 Service Pack 1。否则将无法正确安装 Service Pack 1。 <BR style=\"FONT-FAMILY: \">3、在某些情况下，安装此 Service Pack 之后，必须重新加载 Vault 附加模块。 <BR style=\"FONT-FAMILY: \">4、随着 Autodesk Vault 2011 Update 2 的发行，Vault 和远程资源中心用户应该利用安装的 Autodesk Inventor 2011 Service Pack 1 更新所访问的服务器。 <BR style=\"FONT-FAMILY: \">5、在 Autodesk Inventor 2011 Service Pack 1 卸载期间，系统会提示您提供一开始安装 Autodesk Inventor 2011 时所使用的原始介质。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">注意：对于 Inventor Tooling 2011 和 Inventor Professional 2011 用户，卸载此 Service Pack 1 将导致 Inventor Tooling 的 Moldflow 附加模块停止运行。若要在卸载后将 Inventor Tooling 2011 或 Inventor Professional 2011 安装恢复到完全可操作状态，请安装 Inventor Tooling 的 Moldflow 附加模块许可证即时补丁程序，然后重新启动计算机。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">安装要求</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">1、确认您具有本地计算机的管理员权限，以安装 Autodesk Inventor 2011 Service Pack 1。 <BR style=\"FONT-FAMILY: \">2、在 Windows Vista 和 Windows 7 上安装时，请禁用“用户帐户控制”功能。 <BR style=\"FONT-FAMILY: \">3、32 位版本的 Autodesk Inventor 2011 Service Pack 1 大小约为 57 MB。用于存放临时文件的驱动器上最少需要有 1300 MB 的可用磁盘空间。 <BR style=\"FONT-FAMILY: \">4、64 位版本的 Autodesk Inventor 2011 Service Pack 1 大小约为 91 MB。用于存放临时文件的驱动器上最少需要有 2000 MB 的可用磁盘空间。 <BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><STRONG style=\"FONT-FAMILY: \">安装说明</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">若要安装 Autodesk Inventor 2011 Service Pack 1，请执行以下步骤： <BR style=\"FONT-FAMILY: \">1、从某个 AutoCAD Inventor 2011 Suite 或者从 Autodesk Inventor 2011 介质套装安装 Autodesk Inventor2011。 2、安装 Autodesk Inventor 2011 Service Pack 1 之前，请先更新操作系统，尤其要留意关于 Vista 的 KB952696。安装完更新程序后重新启动系统。 <BR style=\"FONT-FAMILY: \">3、如果您运行的是 64 位 Windows Vista 或 64 位 Windows 7，请确认您拥有针对用户模式回调异常的 Microsoft 修补程序 (KB976038)。此修补程序可以确保 Autodesk 接收到来自 Inventor 2011 错误报告的正确数据。有关详细信息，以及访问此修补程序和相关 Microsoft 下载程序的途径，请参考 Autodesk 技术解决方案 15492718。 <BR style=\"FONT-FAMILY: \">4、根据操作系统的位型下载相应版本的 Autodesk Inventor 2011 Service Pack 1（32 位或 64 位版本）。 <BR style=\"FONT-FAMILY: \">5、双击 .msp 文件，使用 Service Pack 1 更新 Autodesk Inventor 2011。安装程序更新系统中的文件时，屏幕上会显示一个进度条。完成时，请单击“完成”。 <BR style=\"FONT-FAMILY: \">6、如果需要，请在完成此 Service Pack 的安装后重新启动系统。 <BR style=\"FONT-FAMILY: \">7、如果在 Windows Vista 或 Windows 7 上安装 Inventor 2011，则安装 Autodesk Inventor 2011 Service Pack 1 后第一次启动它时，倘若“用户帐户控制”(UAC) 已启用，或当前用户不属于管理员组，请在 Inventor 快捷方式上单击鼠标右键，并使用“以管理员身份运行”。 <BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">要验证安装是否成功，请启动 Autodesk Inventor。在信息中心的“帮助”下拉菜单中，请选择“关于 Inventor”。如果“关于”框中显示“内部版本号: 282，版本: 2011 SP1”，则表示安装已成功。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">下载地址：<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><A href=\"http://images.autodesk.com/adsk/files/inventor_2011_sp1_x86.msp\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor 2011 Service Pack 1 32位</FONT></A><BR><A href=\"http://images.autodesk.com/adsk/files/inventor_2011_sp1_x64.msp\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor 2011 Service Pack 1 64位</FONT></A></P><P><FONT style=\"FONT-SIZE: 14px\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">补丁解决的软件问题说明：<IMG style=\"FONT-FAMILY: \" src=\"/edit/sysimage/icon16/rar.gif\" border=0></FONT><A href=\"http://www.huishisoft.com/uploadfiles/old_attached/20100910143624487.rar\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor 2011 SP1.rar</FONT></A></FONT></P>',' ','0','2010-09-10 11:55:11','0','','1','0','0','','0','3568','');
INSERT INTO huishi_article VALUES('219','90','AutoCAD Electrical企业培训实施方案','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>一、&nbsp;AutoCAD Electrical实施框架</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100913172107806.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>二、AutoCAD Electrical实施步骤</STRONG></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><TABLE style=\"BORDER-COLLAPSE: collapse\" borderColor=#000000 cellSpacing=2 cellPadding=3 width=\"100%\" bgColor=#ffffff border=1><TBODY><TR><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=center><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;阶 段</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=center><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;项&nbsp;&nbsp; 目</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=center><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;周&nbsp; 期</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\" align=center><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;备&nbsp; 注</FONT></P></TD></TR><TR><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;一</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD Electrical电气工程师培训&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">5天&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">详细内容见附1 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">培训过程中汇识将协助企业创建相关流程和标准&nbsp;</FONT></P></TD></TR><TR><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;二</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">元件符号库，接线图库，面板图库的定制&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">根据数</FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">量</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">1、企业指定相关的人员来创建和管理该库 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">2、外包汇识公司。&nbsp;</FONT></P></TD></TR><TR><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;三</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD Electrical数据的网络构架&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">1天&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;</FONT></P></TD></TR><TR><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;四</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">ERP数据接口的开发及测试&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">1个月&nbsp;</FONT></P></TD><TD><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">改项目需ERP服务商的协助&nbsp;&nbsp;</FONT></P></TD></TR></TBODY></TABLE></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"></FONT>&nbsp;</P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">附1：AutoCAD Electrical培训内容<BR style=\"FONT-FAMILY: \">第一章 AutoCAD Electrical 入门<BR style=\"FONT-FAMILY: \">01.&nbsp;&nbsp; AutoCAD Electrical 基本知识<BR style=\"FONT-FAMILY: \">02.&nbsp;&nbsp; AutoCAD Electrical 工作流程<BR style=\"FONT-FAMILY: \">03.&nbsp;&nbsp; 界面熟悉 <BR style=\"FONT-FAMILY: \">第二章 AutoCAD Electrical 项目管理<BR style=\"FONT-FAMILY: \">04.&nbsp;&nbsp; 创建/关闭 AutoCAD Electrical 项目<BR style=\"FONT-FAMILY: \">05.&nbsp;&nbsp; 复制 AutoCAD Electrical 项目<BR style=\"FONT-FAMILY: \">06.&nbsp;&nbsp; 翻阅察看项目中的图纸<BR style=\"FONT-FAMILY: \">07.&nbsp;&nbsp; 编辑项目图纸列表<BR style=\"FONT-FAMILY: \">08.&nbsp;&nbsp; 改变图纸顺序<BR style=\"FONT-FAMILY: \">09.&nbsp;&nbsp; 配置整个项目的功能<BR style=\"FONT-FAMILY: \">10.&nbsp;&nbsp; 整个项目的相关报表 <BR style=\"FONT-FAMILY: \">第三章 AutoCAD Electrical 导线绘制<BR style=\"FONT-FAMILY: \">11.&nbsp;&nbsp; 配置、插入、编辑梯形图和导线<BR style=\"FONT-FAMILY: \">12.&nbsp;&nbsp; 插入元件<BR style=\"FONT-FAMILY: \">13.&nbsp;&nbsp; 自动插入线号和项目的宽屏显示<BR style=\"FONT-FAMILY: \">14.&nbsp;&nbsp; 设置和插入源信号和目标信号箭头<BR style=\"FONT-FAMILY: \">15.&nbsp;&nbsp; 创建和编辑线路图，包括移动、复制、以及在保存在图标菜单中<BR style=\"FONT-FAMILY: \">16.&nbsp;&nbsp; 插入和编辑多线导线和符号<BR style=\"FONT-FAMILY: \">17.&nbsp;&nbsp; 使用多线和连接器生成点到点接线图 <BR style=\"FONT-FAMILY: \">第四章 AutoCAD Electrical 原理图绘制<BR style=\"FONT-FAMILY: \">18.&nbsp;&nbsp; 使用基本命令编辑、移动、复制、删除、和快速移动元件<BR style=\"FONT-FAMILY: \">19.&nbsp;&nbsp; 复制元件属性和一次操作对齐多个块<BR style=\"FONT-FAMILY: \">20.&nbsp;&nbsp; 重排序和重新标记整个项目<BR style=\"FONT-FAMILY: \">21.&nbsp;&nbsp; 改变诸如元件配置线号的格式等<BR style=\"FONT-FAMILY: \">22.&nbsp;&nbsp; 使用错误检查工具查找和修正图纸中的错误 <BR style=\"FONT-FAMILY: \">第五章 .PLC 原理图绘制<BR style=\"FONT-FAMILY: \">23.&nbsp;&nbsp; .PLC 参数化构造理论<BR style=\"FONT-FAMILY: \">24.&nbsp;&nbsp; PLC 模块的选取/插入及编辑<BR style=\"FONT-FAMILY: \">25.&nbsp;&nbsp; PLC 模块修改,PLC 模块样式及编辑<BR style=\"FONT-FAMILY: \">26.&nbsp;&nbsp; I/O地址标签 <BR style=\"FONT-FAMILY: \">第六章 端子排及接线图<BR style=\"FONT-FAMILY: \">27.&nbsp;&nbsp; 端子连接定义<BR style=\"FONT-FAMILY: \">28.&nbsp;&nbsp; 重新端子排编号<BR style=\"FONT-FAMILY: \">29.&nbsp;&nbsp; 端子跳线及接线顺序<BR style=\"FONT-FAMILY: \">30.&nbsp;&nbsp; 生成端子排及端子排报表 <BR style=\"FONT-FAMILY: \">第七章 面板图<BR style=\"FONT-FAMILY: \">31.&nbsp;&nbsp; 从原理图数据提取面板符号<BR style=\"FONT-FAMILY: \">32.&nbsp;&nbsp; 创建面板报告<BR style=\"FONT-FAMILY: \">33.&nbsp;&nbsp; 原理图与面板图双向更新<BR style=\"FONT-FAMILY: \">34.&nbsp;&nbsp; 铭牌与导轨<BR style=\"FONT-FAMILY: \">35.&nbsp;&nbsp; 序号 <BR style=\"FONT-FAMILY: \">第八章 BOM及相关报表<BR style=\"FONT-FAMILY: \">36.&nbsp;&nbsp; 使用各种提取格式选项生成BOM 报告<BR style=\"FONT-FAMILY: \">37.&nbsp;&nbsp; 生成元件报告及描述它与BOM 报告的区别<BR style=\"FONT-FAMILY: \">38.&nbsp;&nbsp; 生成元件接线报告并描述包含的信息<BR style=\"FONT-FAMILY: \">39.&nbsp;&nbsp; 使用位置代号选项工具生成导线接线报告<BR style=\"FONT-FAMILY: \">40.&nbsp;&nbsp; 使用报告生成工具预览和修改报告信息<BR style=\"FONT-FAMILY: \">41.&nbsp;&nbsp; 改变列显示、列表头和其他格式选项修改报告格式<BR style=\"FONT-FAMILY: \">42.&nbsp;&nbsp; 使用表生成和设置工具把报表插入到图纸中<BR style=\"FONT-FAMILY: \">43.&nbsp;&nbsp; 把报告存为独立的Excel或ASCII文件 <BR style=\"FONT-FAMILY: \">第九章 自定义<BR style=\"FONT-FAMILY: \">44.&nbsp;&nbsp; 元件符号的的自定义<BR style=\"FONT-FAMILY: \">45.&nbsp;&nbsp; 图标菜单向导<BR style=\"FONT-FAMILY: \">46.&nbsp;&nbsp; 面板符号自定义 <BR style=\"FONT-FAMILY: \">第十章 问题解析及交流 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">关于汇识<BR style=\"FONT-FAMILY: \">汇识是Autodesk中国区资深的授权培训服务中心，公司一直致力于整合全球顶尖软件公司及业界科技领导商的资源服务于中国的创新型企业，并为其提供针对性的培训服务，帮助企业建立更有效的设计流程，缩短设计周期。同时我们也为客户提供设计外包，人员派遣，人才推荐等服务，帮助客户最大程度地节省研发成本。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"/edit/sysimage/icon16/pdf.gif\" border=0></FONT><A href=\"http://www.huishisoft.com/uploadfiles/old_attached/20100913173005603.pdf\" target=_blank><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD Electrical企业培训实施方案.pdf</FONT></A><BR style=\"FONT-FAMILY: \"></P></FONT><P><FONT style=\"FONT-FAMILY: Arial\"></FONT>&nbsp;</P>',' ','0','2010-09-13 17:18:46','0','','1','0','0','','0','1266','');
INSERT INTO huishi_article VALUES('222','90','在设计流程中添加Vault数据管理软件的十大理由','<FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk&nbsp; Vault系列产品作为Autodesk数字样机解决方案的组成部分，支持设计的重复使用，可以帮助企业最大限度地提高设计数据方面的投资回报。该产品线-Autodesk&nbsp; Vault、Autodesk&nbsp; Vault Workgroup、Autodesk&nbsp; Vault Collaboration和Autodesk&nbsp; Vault Professional-能够帮助设计、工程设计和制造工作组管理数字样机解决方案流程。通过集中地存储所有工程设计数据和相关文档，您能够节省整理文件所需的时间，避免成本高昂的错误，更加高效地发布和修改设计。随着产品设计的不断演进，设计工作变得日益复杂，Autodesk&nbsp; Vault系列产品可以防止设计师和工程师无意中覆盖优秀设计。此外，用户可以快速部署该数据管理软件的修订流程，或根据特定需求进行定制。<BR style=\"FONT-FAMILY: \">1、一流的Autodesk CAD集成<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk数据管理软件-Autodesk Vault Workgroup、Autodesk Vault Collaboration和Autodesk Vault Professional与Autodesk&nbsp; Inventor 、AutoCAD&nbsp; Electrical、AutoCAD&nbsp; Mechanical和AutoCAD 软件等Autodesk设计应用程序紧密集成。这样的紧密集成意味着，用户能够在从工程设计到制造环节的整个流程中轻松地管理与数字样机有关的数据，从而节省时间并确保数据的准确性。<BR style=\"FONT-FAMILY: \">2、团队合作与协同设计<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 利用多用户功能，团队成员可以同时处理同一数字样机，同时不会覆盖彼此的数据。团队成员能够在修改前检查设计，然后在修改后重新进行检查。由于所有人都能够协同工作，因此您能够更好地平衡资源，加速项目竣工流程，遵循苛刻的项目进度。<BR style=\"FONT-FAMILY: \">3、快速查找数据<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; 利用多种搜索方式（保存的搜索结果和快捷方式）查找和整理数据。Vault Workgroup数据管理软件能够显著减少查找信息和数据的时间，因此您能够将更多时间用于设计。<BR style=\"FONT-FAMILY: \">4、快速复制及复用数据<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; 无需手动重建或复制复杂的模型和图纸集，因此可节约数小时的设计时间。Autodesk数据管理软件支持您复制数字样机（包括所有相关文件和文档），以便将其用于新设计。您可以轻松配置您想要替换、复用或复制的文件。<BR style=\"FONT-FAMILY: \">5、利用版本管理功能控制设计数据访问<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; 集中地审核并跟踪数据文件的版本历史。在设计周期内安全地发布和跟踪文件，降低出现设计和制造错误的几率，确保团队成员仅能够访问正确的数据版本。<BR style=\"FONT-FAMILY: \">6、便捷的管理和配置<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Vault系列产品提供了Vault服务器管理工具，因此您能够最大限度地延长正常运行时间。即使是缺乏IT知识的人员也能够利用直观的管理工具轻松地进行服务器管理。<BR style=\"FONT-FAMILY: \">7、在设计部门外部共享数据<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; 借助Autodesk Vault Collaboration和Vault Professional软件，您能够利用内置的web客户端与制造部门共享工程设计数据，并将相关设计信息发布到Microsoft&nbsp; SharePoint ，以便与上下游及兄弟企业进行数据共享。<BR style=\"FONT-FAMILY: \">8、面向多站点和大型工作组的可扩展性<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Vault Collaboration和Vault Professional软件的多站点功能支持企业在分散的工作组之间同步设计数据，将数字样机应用扩展到整个企业。<BR style=\"FONT-FAMILY: \">9、自动化发布与变更流程<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp; 手动的发布与变更流程容易导致设计项目延误和制造错误。Autodesk Vault Professional软件支持设计团队选择标准的或可配置的发布与工程设计变更单管理流程，从而帮助他们避免成本高昂的错误并消除流程瓶颈。<BR style=\"FONT-FAMILY: \">10、与企业业务系统集成并交换数据<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp; 充分利用Autodesk Vault Professional软件的先进功能和强大工具与制造业务系统交换数据，更加高效地管理物料清单（BOM）并提高早期协作效率。</FONT>',' ','0','2010-09-17 14:09:39','0','','1','0','0','','0','825','');
INSERT INTO huishi_article VALUES('223','90','AutoCAD从1.0到2011版本的发展历程','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"> AutoCAD软件早已被我们熟知，但是你知道吗？AutoCAD从创立到现在，已经经历了28年的时间。这28年来又有怎样的故事？下面就让我们一起来了解AutoCAD背后的故事</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">1.0的诞生</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">这张5.25寸软 盘，大概是我能找得到的最早的AutoCAD的历史照片了，细心的同学可以在照片中看到，当时的版本号是AutoCAD-80，那是1982 年，AutoCAD之父John Walker和Dan Drake及Greg Lutz分别为IBM工作站及Victor 9000（当时的一种计算机）编写最初的AutoCAD辅助绘图程序。当时的计算机，内存小的可怜，普遍只有64K bytes， 其中52k可供用户使用。<BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917193920325.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">接下来的1983年，分别又推出了1.1，1.2，1.3和1.4版本。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194006455.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"COLOR: rgb(0,0,128)\"><STRONG><FONT style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">2.0 的时代</FONT></STRONG></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">从 2.0版本开始，AutoCAD的绘图能力有了质的飞跃，同时改善了兼容性，能够在更多种类的硬件上运行，并增强和完善了DWG文件格式。20多年过去 了，现在看到AutoCAD 2.18版本绘制的航天飞机模型，你是否会赞叹到合不上嘴巴？<BR style=\"FONT-FAMILY: \">更令人惊奇的是，如果你能幸运地找到这个版本的 DWG文件，它仍然可以在最新版的AutoCAD 2011中打开！！</SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194120819.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194127124.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">Rx版本</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">1987 年，2.6之后的版本，没有延续x.x的版本号形式，而是改用了Rx的编号形式，其中x是数字，从1987年到1997年，一共发布了从R9到R14共6 个版本，下面这张图是在R12中编辑模型照片，其中下方的是84年制作的2D模型，上方时88年绘制的3D模型，看，在那个时候AutoCAD就支持3D 了！！！<BR style=\"FONT-FAMILY: \">R13这个版本值得一提，因为它是最后一个同时在UNIX，MS-DOS和WINDOWS 3.1 上共同发布版本。</SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194208508.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><STRONG style=\"FONT-FAMILY: \">21世纪的AutoCAD</STRONG><BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">1999 年，AutoCAD 2000发布了，接下来的几年间，一直到2008版，AutoCAD为不断改进性能，增强DWG文件，改善与其他软件的交互性方面做着不懈的努力。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">这 两张图分别是DWF中打开的2D及3D模型。<BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194259356.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">AutoCAD 2009首次采用了与微软Office 2007类似的Ribbon界面，AutoCAD 2010和2011则在3D建模上达到了新高度，引入了多种新特性，并同时在32和64位平台上兼容Windows 7。<BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194352212.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194444545.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">在2010和2011这两个版本的开发过程中，Autodesk也在同步研发Mac平台上的 AutoCAD，努力让AutoCAD的忠实用户们能在更自由地选择操作平台。</SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194519448.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">下面这张图非常有趣，但同时也体现了AutoCAD强大的向下兼容能力，图中展示的是在5个不同版本的 AutoCAD中打开同一份DWG文件，一切竟然丝毫不差！！<BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194552367.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">最后，给大家列出AutoCAD的历史发展年表，以及一些早期教材的图片。<BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194642928.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100917194650546.jpg\" border=0></SPAN></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN style=\"FONT-SIZE: 14px; COLOR: #000000; FONT-FAMILY: Arial\">28年来，AutoCAD一直坚持不断进行创新，从绘图、三维设计、工作效率、可用性和设计一直演进到现在，已经从简单的绘图平台发展成为了综合端到端设计平台。<BR style=\"FONT-FAMILY: \"></SPAN></P>',' ','0','2010-09-17 19:37:33','0','','1','0','0','','0','1384','');
INSERT INTO huishi_article VALUES('224','90','“欧特克实验室”推出Inventor Optimization高性能模拟产品','<DIV class=\"section normal\" id=section1><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 【2010年9月21日，北京】近日，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）宣布，现在可登陆欧特克实验室（Autodesk Labs）网站免费下载全新的Inventor Optimization技术预览，这项基于互联网的技术可以与</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/pr-inventor\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Inventor</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 2011一起使用，能让工程师利用强大的云计算处理功能在其产品设计中进行数字模拟，并且无需额外费用。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inventor Optimization技术预览提供近乎完美的计算能力，能让用户扩展Autodesk Inventor桌面应用程序的</FONT><A href=\"http://www.autodesk.com.cn/adsk/servlet/index?siteID=1170359&amp;id=9801687\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">数字样机</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">解决方案功能，进行高性能模拟。这种易于应用的基于互联网的模拟功能可帮助设计师和工程师更好地解决减少材料重量和用量等普遍性设计问题，同时提高产品质量和安全性。最大限度减轻重量可以降低材料和运输成本，并有助于设计更具可持续性的产品。&nbsp; </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inventor Optimization是一款面向所有 Autodesk Inventor 用户的直观工具，而不仅仅是针对模拟专家，这与欧特克致力于让更多用户能够使用三维设计软件的承诺是一致的。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Balzer Pacific公司的机械设计工程师Andrew Sears表示，“五年多以来，我们一直依靠Autodesk Inventor软件帮助设计我们在全球的混凝土和沥青搅拌机。Inventor Optimization技术预览能让我把复杂的模拟发送到云环境，与此同时，我的台式电脑可以继续处理其他项目工作。通过在云环境测试我们的Autodesk Inventor三维模型，我们可以考虑更多设计备选方案。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">该技术预览还提供给Autodesk Inventor用户：</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">轻松优化设计</B>——直观的界面能让Autodesk Inventor用户快速方便地进行模拟设置，以便于用户提高产品质量和安全性的同时能够有效减少材料重量和用量。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">协同工作</B>——当软件在云环境进行“幕后”多重模拟时，设计师或工程师可以继续在台式电脑上开展其他工作。设计优化完成后，技术预览的作业监测程序会通过多种通信渠道自动通知用户。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">充分利用超级性能</B>——云环境模拟能充分发挥模拟功能，可以帮助用户同时对多种不同的设计构造进行模拟，并在更短的时间内获得执行模拟所需的足够内存和内存总量。</FONT></LI></UL><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inventor Optimization响应了用户希望通过互联网获取信息的需求，也体现了欧特克持续保持投资和开发“软件即服务”（SaaS）解决方案的一贯传统。在过去十多年中，欧特克一直是设计业SaaS应用软件的先驱，并且早在10多年前就推出了世界上最大的项目托管服务软件Autodesk Buzzsaw。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;据悉，欧特克实验室于2007年正式成立，是欧特克展示新兴技术和支持由用户主导的创新活动的中心，并完全面向公众开放。实验室的全部员工都是各个领域的科学家，包括：高性能计算专家，内容管理专家，计算机图形学专家等等。自成立之日起欧特克实验室就成为软件开发者与普通用户的一个重要交流平台，也是各种创新型会议、交流活动的绝佳场所。与很多商业软件的研发机构不同，欧特克实验室更像是一个学术机构，或者是一个开放的技术创新机构。欧特克实验室从开始发现一项新的技术可能会被应用到工程设计领域当中来，就会通过欧特克实验室网站、博客等各种形式，在用户社区中同客户进行交流，并在整个新技术的研发过程中，不断听取试用用户的反馈，以不断纠正产品研发的方向，这一新颖的举措颠覆了传统的产品开发模式，使得欧特克与用户保持了更为紧密的联系，同时也使开发出的产品能够最大程度的提高用户体验。迄今为止，已经通过欧特克实验室孵化出来和正在孵化的项目包括Freewheel项目、Showroom项目、Draw项目、Twitch项目和产品的技术预览，包括Inventor LT、Autodesk Inventor Fusion、AutoCAD FreeStyle、Autodesk Dragonfly等。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Inventor Optimization技术预览将于2011年3月31日到期。注册试用请访问</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://labs.autodesk.com/\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克实验室</FONT></A><FONT style=\"FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。</FONT><BR style=\"FONT-FAMILY: \"></FONT></P></DIV>',' ','0','2010-09-21 14:41:16','0','','1','0','0','','0','625','');
INSERT INTO huishi_article VALUES('225','90','Autodesk Vault产品系列介绍','<P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Vault产品系列由四款应用组成。 AutoCAD&reg;、AutoCAD&reg; Mechanical、AutoCAD&reg; Electrical和Autodesk&reg; Inventor&reg;中均集成了数据管理软件Autodesk&reg; Vault。Autodesk&reg; Vault是整个产品系列的平台以及面向工作组的集中式应用，能够安全地存储和管理半成品设计数据和相关文档。 该产品线中还包括Vault Workgroup、Vault Collaboration和Vault Professional。Vault Workgroup中增加了版本管理和安全功能；Vault Collaboration具有出色的可扩展性，适用于大型工作组和多个站点；Vault Professional则可以将由Vault管理的数据进一步应用于外部合作企业。<BR style=\"FONT-FAMILY: \"><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100925150823219.jpg\" border=0></FONT></P><P><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100925151452467.jpg\" border=0></P><P><FONT style=\"FONT-SIZE: 14px\"><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100925151822523.jpg\" border=0></FONT></P><P><FONT style=\"FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Autodesk Vault产品线可以随着企业需求的增长而进行扩展。 根据企业的现状及业务挑战，总有一款Autodesk数据管理解决方案适合。</FONT> </FONT></P><P><IMG src=\"http://www.huishisoft.com/uploadfiles/old_attached/20100925171801847.jpg\" border=0></P>',' ','0','2010-09-25 14:49:24','0','','1','0','0','','0','854','');
INSERT INTO huishi_article VALUES('232','90','欧特克推出AutoCAD WS网络和移动应用程序','<DIV class=\"section normal\" id=section1><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">【2010年10月26日，北京】日前，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）宣布推出 </FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/pr-autocadws\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD WS</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">。这款全新的免费网络应用程序利用云计算技术，能够让</FONT><A href=\"http://www.autodesk.com.cn/autocad\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">用户通过网络浏览器和移动设备查看、编辑和共享AutoCAD设计及DWG格式文件。此外，用户现在还可以到Apple iTunes App Store免费下载iOS版AutoCAD WS移动应用程序，该应用程序能让用户在iPhone、iPad和iPod touch上使用AutoCAD WS。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克平台解决方案和新兴业务全球高级副总裁Amar Hanspal表示，“AutoCAD WS网络和移动应用程序能随时随地访问AutoCAD设计，大大简化了设计师和工程师的现场工作方式以及他们与多个利益相关方的合作方式。欧特克一向致力于让设计的访存更加方便，AutoCAD WS 是欧特克利用云计算和移动平台将设计扩展到台式电脑之外的最新例证，同时帮助加快设计速度，提高设计质量。” </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD WS网络应用程序的前身是</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/pr-labs\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">欧特克实验室</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">（Autodesk Labs）的“Project Butterfly”技术预览，有75000多人利用它通过网络浏览器查看、编辑和分享AutoCAD设计。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">随着AutoCAD WS商业版的推出，用户可通过新的免费下载插件，或通过2011版AutoCAD“Subscription维护暨服务合约（速博）”优惠包，在其在线工作空间里直接上传和管理由AutoCAD桌面软件创建的设计文件。该插件与2011英文版AutoCAD、</FONT><A href=\"http://www.autodesk.com.cn/autocadlt\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD LT</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> 等AutoCAD产品兼容。即将推出的</FONT><A onclick=\"return openPopup(this.href,null,null);\" href=\"http://www.autodesk.com/pr-autocadformac\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Mac版AutoCAD</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">软件也将包含该功能。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD WS能让AutoCAD用户与分散在世界各地的利益相关方开展虚拟设计评审，有助于避免设计团队通过电子邮件共享文件或在现场通过纸质文件回复产生的版本控制和准确性问题。AutoCAD WS还利用谷歌地图的集成服务，在CAD图纸中植入地图，帮助用户在环境中更好地展示设计。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">AutoCAD WS功能还包括：</FONT></P><UL><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">网络和移动DWG浏览器</B>可通过网络浏览器或移动设备在任何地方访问AutoCAD设计。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">在线DWG编辑器</B>支持100多个常见的AutoCAD绘图和编辑工具，对CAD专业人士和非CAD专业人士都很直观。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">内置共享功能</B>可生成一个唯一的URL，邀请利益相关方在线查看DWG文件，并能设定其他人查看、编辑或下载图纸和文件夹的控制权限。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">方便的在线存储功能</B>可以把DWG和DXF文件、图像文件以及其他相关项目文件整理存放到项目文件夹中，支持包括DOC、JPEG、PNG和PDF在内的多种文件格式。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">实时协作</B>能让多人同时操作同一个DWG文件，实时查看所做变更。 </FONT><LI><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><B style=\"FONT-FAMILY: \">设计时间表</B>能捕捉和跟踪所有图纸变更，便于版本控制和审核。</FONT></LI></UL><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">Colectivo Triciclo公司主管Luis Guillermo Natera Orozco表示，“AutoCAD WS已经成为我们工作流程中的重要工具，因为无论我们身处何地，都能实时共享图纸，并围绕相同的信息开展工作。AutoCAD WS很有可能大大改变和改善我们的工作方式。”</FONT></P></DIV>',' ','0','2010-10-29 14:17:29','0','','1','0','0','','0','732','');
INSERT INTO huishi_article VALUES('236','90','AutoCAD Electrical 2011补丁（ Update 1）','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><FONT style=\"FONT-SIZE: 14px\"><STRONG>哪些用户应安装此更新？</STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <BR style=\"FONT-FAMILY: \">可以将此更新应用于在所有支持的操作系统上、以支持的语言运行的以下 Autodesk 产品。请确保为您的软件安装正确的更新。 <BR style=\"FONT-FAMILY: \">也可以使用“通讯中心”安装实时更新维护修补程序，系统将自动为产品显示正确的更新。 <BR style=\"FONT-FAMILY: \">产品 更新 <BR style=\"FONT-FAMILY: \">AutoCAD Electrical 2011（32 位）&nbsp; Ace2011_SWL_Update1.exe <BR style=\"FONT-FAMILY: \">AutoCAD Electrical 2011（64 位）&nbsp; Ace2011_SWL_Update1_x64.exe <BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-SIZE: 14px\"><STRONG>支持的操作系统<BR style=\"FONT-FAMILY: \"></STRONG>可以在以下操作系统中使用此更新。 <BR style=\"FONT-FAMILY: \">以下操作系统的 Service Pack 2 (SP2) 和 Service Pack 3 (SP3)： <BR style=\"FONT-FAMILY: \">Microsoft&nbsp; Windows&nbsp; XP Home Edition <BR style=\"FONT-FAMILY: \">Microsoft Windows XP Professional Edition <BR style=\"FONT-FAMILY: \">Microsoft Windows XP Professional x64 Edition <BR style=\"FONT-FAMILY: \">以下操作系统的 Service Pack 1 (SP1) 和 Service Pack 2 (SP2)： <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista&nbsp; Enterprise <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Business <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Ultimate <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Home Premium <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Business（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Enterprise（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Ultimate（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows Vista Home Premium（64 位） <BR style=\"FONT-FAMILY: \">以下 Windows 7 操作系统： <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Enterprise <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Home Premium <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Professional <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Ultimate <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Enterprise（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Home Premium（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Professional（64 位） <BR style=\"FONT-FAMILY: \">Microsoft Windows 7 Ultimate（64 位） <BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-SIZE: 14px\"><STRONG>Windows Vista 和 Windows 7 用户须知 <BR style=\"FONT-FAMILY: \"></STRONG>如果在运行 AutoCAD Electrical 时应用此更新，建议您不要单击“自动关闭应用程序并在安装完成后尝试将其重新启动”选项，而应手动关闭 AutoCAD Electrical，并在系统提示时按“忽略”。还建议您在安装更新之后重新启动系统。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-SIZE: 14px\"><STRONG>此更新解决的主要问题<BR style=\"FONT-FAMILY: \"></STRONG>以下缺陷已修复： </FONT></FONT></P><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">目录查找<BR style=\"FONT-FAMILY: \">在某些情况下，在 64 位操作系统上，目录查找无法执行搜索。 <BR style=\"FONT-FAMILY: \">在“目录查找”对话框中执行所需选择之后，“确定”按钮控件仍然禁用。 <BR style=\"FONT-FAMILY: \">目录查找无法从二级数据库提取导体列表。 <BR style=\"FONT-FAMILY: \">更新 Misc_cat 表格时可能会丢失用户数据。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">交互参考<BR style=\"FONT-FAMILY: \">执行复制回路之后，交互参考表格变得不稳定。 <BR style=\"FONT-FAMILY: \">在应用某项目设置的情况下，无法执行导线信号交互参考更新。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px\"><BR style=\"FONT-FAMILY: \">插入/编辑元件/示意图<BR style=\"FONT-FAMILY: \">“面板示意图”对话框中的某些用户界面控件不起作用。 <BR style=\"FONT-FAMILY: \">执行元件编辑或多次插入时，安装代号/位置代号属性的可见性发生更改。 <BR style=\"FONT-FAMILY: \">如果将 SDI 模式设置为 1，则位置代号/安装代号变得不稳定。 <BR style=\"FONT-FAMILY: \">在没有端号列表的情况下重新指定目录时，线圈端号可以为空。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">其他<BR style=\"FONT-FAMILY: \">无法在作为固定单元插入的 PLC 模块上执行重新标记。 <BR style=\"FONT-FAMILY: \">在编辑符号时符号编译器变得不稳定。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">项目管理器<BR style=\"FONT-FAMILY: \">在更新项目特性时项目管理器变得不稳定。 <BR style=\"FONT-FAMILY: \">如果将 FILEDIA 模式设置为 0，则发布为 DWF 变得不稳定。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">报告<BR style=\"FONT-FAMILY: \">执行 BOM 表报告之后，浏览变得不稳定。 <BR style=\"FONT-FAMILY: \">某些电缆标记信息未在电缆自/到报告中列出。 <BR style=\"FONT-FAMILY: \">在某些情况下，无法在报告表格中浏览。 <BR style=\"FONT-FAMILY: \">电缆自/到报告中存在性能问题。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">端子排编辑器<BR style=\"FONT-FAMILY: \">在应用某项目设置的情况下，端子排编辑器变得不稳定。 <BR style=\"FONT-FAMILY: \">插入或重建端子排时，某些属性的可见性发生更改。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\">导线<BR style=\"FONT-FAMILY: \">更新导线网络之后，线宽值发生更改。 <BR style=\"FONT-FAMILY: \">更新目标箭头导线网络之后，源箭头导线网络无法同步。 <BR style=\"FONT-FAMILY: \">执行导线标记时线号重复。 <BR style=\"FONT-FAMILY: \">如果将 SNAP 模式设置为 1，则无法插入带屏蔽的电缆标记。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><BR style=\"FONT-FAMILY: \"><FONT style=\"FONT-SIZE: 14px\"><STRONG>安装准备<BR style=\"FONT-FAMILY: \"></STRONG>准备安装此更新时，请牢记以下几点：<BR style=\"FONT-FAMILY: \">备份自定义文件<BR style=\"FONT-FAMILY: \">建议您在应用此更新之前备份所有自定义 CUI、MNR 和 MNL 文件。<BR style=\"FONT-FAMILY: \">管理权限 <BR style=\"FONT-FAMILY: \">安装期间，系统会提示您提供原始安装介质或网络映像。若要应用此更新，必须具有安装和卸载产品的管理权限。 <BR style=\"FONT-FAMILY: \">网络展开 <BR style=\"FONT-FAMILY: \">管理员可以使用展开向导在网络上展开此更新。 <BR style=\"FONT-FAMILY: \">关于产品 <BR style=\"FONT-FAMILY: \">安装之后，产品信息会显示在“关于”对话框中。<BR style=\"FONT-FAMILY: \">重新启动 <BR style=\"FONT-FAMILY: \">安装之后，即使系统并未提示，也要确保重新启动系统。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\">&nbsp;</P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><A href=\"http://images.autodesk.com/adsk/files/ace2011_swl_update1.exe\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">ace2011_swl_update1.exe</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> (exe - 12178Kb)</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><SPAN><A href=\"http://images.autodesk.com/adsk/files/ace2011_swl_update1_x64.exe\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">ace2011_swl_update1_x64.exe</FONT></A><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"> (exe - 17378Kb)</FONT></SPAN></FONT></P>',' ','0','2010-11-21 14:00:18','0','','1','0','0','','0','2430','');
INSERT INTO huishi_article VALUES('240','90','在AutoCAD工作流程中添加Inventor软件的十大理由','<P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>Autodesk Inventor带您超越三维设计，体验数字样机解决方案<BR style=\"FONT-FAMILY: \"></STRONG>Autodesk&nbsp; Inventor 三维模型是一种精确的三维数字样机，可以帮助用户验证设计的外形、结构和功能，最大程度减少对物理样机的依赖，减少通常在设计进入制造流程后才发现的成本高昂的工程设计变更。<BR style=\"FONT-FAMILY: \">Inventor软件中包含一套完备的工具，可以从三维模型中直接生成精确的工程设计和制造文档，使AutoCAD 软件用户能够充分利用AutoCAD软件的专业技术和DWG设计数据，确保投资回报，轻松实现数字样机解决方案的诸多优势。<BR style=\"FONT-FAMILY: \">购买Autodesk Inventor软件就可以同时拥有世界领先的二维和三维机械工程设计软件。AutoCAD Inventor Suite包含最新版的AutoCAD&nbsp; Mechanical软件，通过使用专业版的AutoCAD软件，使您体会到使用AutoCAD系列产品为您带来的便利。<BR style=\"FONT-FAMILY: \"><STRONG>超越三维设计<BR style=\"FONT-FAMILY: \"></STRONG>了解Autodesk Inventor软件如何帮助AutoCAD用户，使其能够利用数字样机解决方案更快地设计并制造更高质量的产品。<BR style=\"FONT-FAMILY: \">请访问：www.autodesk.com/inventor。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><STRONG>1 数字样机解决方案<BR style=\"FONT-FAMILY: \"></STRONG>基于Autodesk&nbsp; Inventor 软件的数字化样机解决方案使您能够在实际制造前创建并探索完整的产品。Inventor软件使AutoCAD 用户能够将二维和三维数据集成入单一数字模型，帮助他们轻松获得数字样机解决方案的诸多优势。这个单一的数字模型是最终产品的虚拟图像，使工程师更有效地对产品进行设计、可视化和仿真，减少对成本高昂的物理样机的依赖，进而缩短产品上市时间，获得更大竞争优势。<BR style=\"FONT-FAMILY: \"><STRONG>2 AutoCAD 与DWG 互操作性<BR style=\"FONT-FAMILY: \"></STRONG>Inventor软件为AutoCAD专家提供了熟悉的设计环境、兼容AutoCAD的快捷方式和即购即用的用户配置文件，能够帮助AutoCAD用户迅速掌握数字化样机解决方案工作流。此外，借助真正的DWG 文件支持，Inventor用户能够利用现有的二维绘图创建精确的三维模型。Inventor软件无需转换器，即可直接读写DWG文件。因此，您能够安全、高效、精确地与合作伙伴和供应商共享重要的设计数据。<BR style=\"FONT-FAMILY: \"><STRONG>3 三维机械设计<BR style=\"FONT-FAMILY: \"></STRONG>利用三维软件设计更高质量的产品。Inventor软件提供了广泛的工具，能够帮助AutoCAD软件用户更加简便地过渡到三维设计流程，并帮助他们迅速提高工作效率。装配设计和零件建模方面的突破性进展能够极大地简化设计工具的使用和学习流程。直观熟悉的AutoCAD草图绘图环境和直接操作式建模流程为快速探索和评估设计概念提供了一种不间断的工作流。专业特性能够加速塑料零件和钣金的设计流程。此外，易用的工具能够优化装配部件的创建流程，因此所有零部件都能够正确衔接。<BR style=\"FONT-FAMILY: \"><STRONG>4 自动更新工程图和视图<BR style=\"FONT-FAMILY: \"></STRONG>牵一发而动全身。Inventor软件将工程图视图与原始零部件相关联，因此，零部件中的任何变更都会自动反映在所有关联的工程图中。根据模型自动生成零件和装配部件的正视图、侧视图、等轴侧视图（ISO）、详图、截面图和辅助视图，从而显著提高绘图效率。通过直接从设计中检索尺寸信息，快速标注工程图。此外，Autodesk&nbsp; Inventor&nbsp; Publisher软件能够根据Inventor软件创建的数字样机快速生成令人信服的三维产品文档-从装配说明到操作程序。了解更多信息，请访问：www.autodesk.com/inventorpublisher。<BR style=\"FONT-FAMILY: \"><STRONG>5 设计自动化<BR style=\"FONT-FAMILY: \"></STRONG>Autodesk Inventor软件具有基于规则的设计和自动化工具，能够自动执行日常任务，帮助工程师专注于设计意图而非手动建模几何图形，因此能够加速设计流程。Inventor软件能够准确把握功能需求，进而优化智能构件的自动创建流程并缩短设计周期。完全集成的Inventor iLogic技术能够大幅简化基于规则的设计流程，帮助所有Inventor用户-即使是那些缺乏编程经验的用户-确定复杂的产品配置，提高工程设计效率，优化设计质量。<BR style=\"FONT-FAMILY: \"><STRONG>6 一流的可视化工具<BR style=\"FONT-FAMILY: \"></STRONG>轻松快速地创建逼真的渲染图、动画和演示文档，提高与设计合作伙伴和客户之间的沟通效率。Autodesk Inventor软件的默认工作空间直接集成了一流的可视化、插图和动画工具，帮助您随时创建逼真的设计演示。动态阴影、精确的照明控制和内置的高清晰纹理库帮助您轻松创建最终产品在真实环境中的照片级图像。<BR style=\"FONT-FAMILY: \"><STRONG>7 自动物料清单<BR style=\"FONT-FAMILY: \"></STRONG>自动创建并关联专门面向制造的零件列表和物料清单（BOM）。支持在每张工程图中添加多个零件列表，可拆卸装配部件，自动识别标准零件。自动更新能够将变更扩散至整个设计，帮助所有人按时精确地进行零件计算、识别和分类。用户能够对功能进行定制，以匹配当前的需要，并将BOM数据导入多种企业资源计划（ERP）系统。<BR style=\"FONT-FAMILY: \"><STRONG>8 易用的仿真工具<BR style=\"FONT-FAMILY: \"></STRONG>在实际建造前预测设计在真实环境中的性能。Autodesk&nbsp; Inventor&nbsp; Professional软件提供了易用的运动仿真和应力分析工具，能够帮助您创建更高质量的零件并避免现场故障。全面的仿真环境支持用户对零件、装配部件和承重结构进行运动仿真以及静态和模态有限元分析（FEA）。Autodesk Inventor Professional还具有Moldflow 塑料仿真工具，能够验证塑料零件注塑模具的设计。此外，由于这些工具被紧密集成在三维设计软件中，因此在设计流程中进行仿真将变得实用且经济。<BR style=\"FONT-FAMILY: \"><STRONG>9 管线布置<BR style=\"FONT-FAMILY: \"></STRONG>Autodesk Inventor Professional软件使用户能够快速精确地将布线系统和管路布局添加到三维设计中。布线设计可自动遵从用户定义的设计规则，从而减少错误并节约时间。此外，线缆和线束布线功能能够帮助机械工程师将电子控件集成进三维机械产品设计。当布线模型发生变更时，所有Inventor文件中的装配图都会随之自动更新。<BR style=\"FONT-FAMILY: \"><STRONG>10 集成的数据管理<BR style=\"FONT-FAMILY: \"></STRONG>Autodesk Inventor中集成了Autodesk&nbsp; Vault数据管理软件-一款面向工作组的集中式应用程序，能够安全地存储和管理工作进程中的设计数据和相关文档。其它功能包括修订控制、文件和文件夹安全、BOM和工程变更单（ECO）管理，了解更多有关完整Vault系列产品的信息，请访问： www.autodesk.com/vaultfamily &lt;http://www.autodesk.com/vaultfamily&gt;。<BR style=\"FONT-FAMILY: \"></FONT></P>',' ','0','2010-12-08 12:11:18','0','','1','0','0','','0','1163','');
INSERT INTO huishi_article VALUES('241','90','Autodesk Inventor助小家电企业快速推新品','<FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在深圳宝安区石岩镇12.5万平方米的厂房里，艾美特的工程师正在为全球客户展示三维数字化样机为小家电创新设计和生产制造带来的便利。 </FONT><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　深圳艾美特是一家自制率高达95%的全球知名小家电企业，每年有1500万台电风扇、电暖气、加湿器、电磁炉、空净机、换气扇、排风扇、果汁机、电饭煲、电压力锅产品，从50条生产线上被制造出来销往全球60多个国家和地区，是世界最大的家用电风扇生产厂家之一。艾美特的产品以外销为主，主要面向欧美、日韩两大海外市场，即便是在全球经济危机肆虐的2008年，其外销部分仍然占到六成左右。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20101223160910579.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp; “在巨大的出货压力和海外客户近乎苛刻的品质要求下，借助数字化技术简化流程、提升效率、降低成本成为深圳艾美特打造核心竞争力的关键。” 艾美特电器(深圳)有限公司研发中心经理廖明虎如是说。为此，深圳艾美特通过引入欧特克领先的数字化样机解决方案</FONT><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">革新生产流程，提升交付效率，降低生产成本。“如今，我们平均每两天就可以推出一款新产品”，廖明虎表示。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　据悉，整个2010年，深圳艾美特要开发一百六七十款新产品。如果按照以往的方式，先根据客户需求进行设计，然后按照设计图纸做出物理样机给客户确认，不仅拖长了项目周期，而且生产物理样机的费用昂贵，修改起来也非常不便。而使用数字化样机之后，艾美特的工程师就可以跳过制作物理样机这一流程，直接通过Inventor三维仿真和渲染给客户做演示，整个流程变得更为简单。同时，工程师还可以以三维模型为基础，利用Inventor软件进行结构应力的有限元分析、零部件干涉校验、运动仿真分析等，便捷高效地验证和修改设计。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20101223160940382.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp; “这样做不仅省去了此前需要多次建立的物理样品模型，降低了生产成本，缩短了交付周期，而且直观准确的仿真结果和快速的设计改进，让艾美特和海外客户间的合作效率大幅提升，客户满意度自然也就水涨船高了。”廖明虎说道。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20101223161009581.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作为数字化样机解决方案的基石，Autodesk Inventor软件的统一化是深圳艾美特迈出的第一步。在2007年，深圳艾美特准备在其研发中心全面推广Inventor三维设计软件。而当时，整个研发中心使用的设计软件五花八门，既有Inventor软件，也有其他设计软件，完全依赖于各个工程师的使用习惯。软件不统一造成的后果是，各个工程师之间无法协同工作，新加入的工程师也难以很快上手。在此情况下，凭借出色的易学易用性和优质的售后服务，Inventor软件最终被深圳艾美特选中作为统一的设计软件。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　“到目前为止，我认为欧特克公司的售后服务是最好的。”廖明虎说，“我们之前也买过其他软件厂商的产品，但是售后服务总是跟不上，一般都是演示一次之后就撒手不管了，而欧特克和艾美特之间已经超越了单纯的购买关系走向共赢。”</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20101223161036133.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　&nbsp;&nbsp; 2008年是深圳艾美特全面推广Inventor之后遇到最大挑战的一年。一些资深的工程师因为之前使用的是其他的软件，对于从头学习新的软件比较抗拒，初步接触之后对软件提出了很多问题。欧特克了解到这种情况之后，立即派深圳当地的经销商帮助解决，后来更直接从上海派工程师到深圳艾美特做培训，结合实际应用进行分析讲解、现场演示，很快消除了部分工程师的抗拒情绪，并且在供应商和用户之间建立了双向互动的管道。针对小家电产品的特点，欧特克为艾美特的几款典型产品制定详细的设计流程，帮助深圳艾美特的工程师按照流程进行快速开发。与此同时，由于这些问题在小家电制造行业具备一定的共性，在解决问题的过程中，欧特克的产品和解决方案也更加贴近小家电制造行业用户的特殊需求。 </FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　　在接受欧特克提供的针对性培训之外，深圳艾美特也注重在企业内部营造学习和使用Inventor的良好氛围。受欧特克举办Inventor设计大赛的启发，深圳艾美特在今年5月至7月间组织了自己的Inventor设计竞赛，并且截至目前90%的竞赛作品都已经投产。很多初学Inventor的工程师在竞赛中有着令人惊讶的表现。一个名叫刘乐的助理工程师大学毕业后进厂还不到半年，接触Inventor只有短短两个月的时间，凭着高度的自信他为自己争取到一个法国客户的浴室壁挂电暖气设计项目。在总共只有一个礼拜的项目周期要求下，他仅用三天时间就完成了全部设计并且一次性测试通过，打破了以往电暖气测试往往“难产”的惯例，最终摘得二等奖，印证了Inventor易学易用、容易上手的特点。</FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\"><IMG style=\"FONT-FAMILY: \" src=\"http://www.huishisoft.com/uploadfiles/old_attached/20101223161059485.jpg\" border=0></FONT></P><P style=\"MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px; LINE-HEIGHT: 1.5\"><FONT style=\"FONT-SIZE: 14px; FONT-FAMILY: Arial\">　“在艾美特，我们的工程师都非常忙碌，从设计、开发到生产一直跟下去，平时还要参加各种各样的会议，所以大部分设计时间都被挤压到晚上。因此Inventor易学易用的优势更加凸显出来，它帮助我们的工程师腾出更多的精力去了解客户需求并深入到生产一线，使我们的产品能够更好地满足全球客户的差异化需求。”从廖明虎的讲话中，我们可以感知艾美特工程师团队肩负的使命——借助领先的三维数字化样机解决方案，将从生产一线得来的实务经验转化成推动企业实现突破的生产力，帮助艾美特小家电在全球化竞争中占据先机。<!--[1]--></FONT></P>',' ','0','2010-12-23 16:08:15','0','','1','0','0','','0','898','');
INSERT INTO huishi_article VALUES('244','90','Autodesk Vault 2011 Update 2 发布','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 该补丁适用于 Autodesk Vault 2011、Autodesk Vault Workgroup 2011、Autodesk Vault Collaboration 2011、Autodesk Vault Professional 2011 的 Autodesk Vault 2011 Update 2</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><TABLE class=static-files><TBODY><TR><TD><A href=\"http://images.autodesk.com/adsk/files/autodeskvault2011update_2.zip\"><FONT style=\"FONT-SIZE: 14px\"><IMG alt=\"\" src=\"http://images.autodesk.com/adsk/s062/images/files/zip.gif\" width=16 height=16></FONT></A><FONT style=\"FONT-SIZE: 14px\"> </FONT></TD><TD><A href=\"http://images.autodesk.com/adsk/files/autodeskvault2011update_2.zip\"><FONT style=\"FONT-SIZE: 14px\">autodeskvault2011update_2.zip</FONT></A><FONT style=\"FONT-SIZE: 14px\"> (zip - 33240Kb)</FONT></TD></TR></TBODY></TABLE></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-SIZE: 14px\"><STRONG>安装<BR></STRONG>1、所有客户端和服务器应同时升级到 Autodesk Vault 2011 Update 2 <BR>2、以后的所有 Vault 2011 热修补程序都将取决于此次安装的 Update <BR>3、安装此 Update 之前必须安装 Vault 2011 Update 1 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-SIZE: 14px\"><TABLE class=static-files><TBODY><TR><TD><A href=\"http://images.autodesk.com/adsk/files/autodeskvault2011update1.zip\"><FONT style=\"FONT-SIZE: 14px\"><IMG alt=\"\" src=\"http://images.autodesk.com/adsk/s062/images/files/zip.gif\" width=16 height=16></FONT></A><FONT style=\"FONT-SIZE: 14px\"> </FONT></TD><TD><A href=\"http://images.autodesk.com/adsk/files/autodeskvault2011update1.zip\"><FONT style=\"FONT-SIZE: 14px\">autodeskvault2011update1.zip</FONT></A><FONT style=\"FONT-SIZE: 14px\"> (zip - 10623Kb)</FONT></TD></TR></TBODY></TABLE>4、根据 Windows Vista 或更高版本操作系统上 UAC 的配置方式，用户可能需要关闭“用户帐户控制(UAC)”才能安装此 Update <BR>5、如果 Inventor 2011 已安装，则必须先将其更新至 Inventor 2011 Update 1，然后才能安装此 Update <BR>6、安装 Vault 2011 Update 2 之前，应至少启动一次 Inventor 2011 Update 1。否则，可能需要在 Inventor 中手动加载 Inventor Vault 附加模块。 <BR><STRONG>Update 2 安装 –</STRONG> 适用于每个 Autodesk Data Management Server (ADMS)<BR>1、打开 ADMS Console <BR>2、确保所有数据库均已完全移植到最新版本 <BR>3、先移植所有未移植的数据库和库，然后再继续 <BR>4、关闭 ADMS Console 应用程序 <BR>5、在命令提示下键入“iisreset”以重新启动 Web 服务 <BR>6、在 ADMS 服务器上运行 AutodeskVault2011Update2(Server).msp 以安装 Update <BR>7、请勿打开 ADMS – 数据库移植应推迟到最后执行 <BR>8、对每个 ADMS 服务器重复执行上述步骤 <BR>9、请勿打开 ADMS – 数据库移植应推迟到最后执行 <BR><STRONG>数据库更新 –</STRONG> 只能从指定的 Autodesk Data Management Server (ADMS) 实例应用一次<BR>1、警告：请勿继续操作，等到 Update 2 已在所有 ADMS 服务器上成功应用之后再继续 <BR>2、在以下位置使用 ADMS Console 的一个实例 <BR>&nbsp;&nbsp; 单个站点 <BR>&nbsp;&nbsp; 多个站点（文件数据同步） <BR>&nbsp;&nbsp; 仅发布方工作组上的联网的工作组（文件和 SQL 数据同步） <BR>3、在命令提示下键入“iisreset”以重新启动 Web 服务 <BR>4、打开 ADMS Console 并执行数据库移植<BR><STRONG>所解决问题的汇总<BR></STRONG>1、每次执行检入和更新条目操作后，将条目日期特性回写到 iProperty 日期时，日期会减少一天 <BR>2、如果参考指示器已经映射，则无法更新 AutoCAD Electrical 条目 <BR>3、如果工程图中存在多个块，则无法将值写入某些映射的用户定义的特性 (UDP) <BR>4、在安装的本地化语言版本的 ADMS 上，复制到资源中心中的自定义库操作不起作用 <BR>5、在启用“强制使文件名互不相同”的情况下，某些文件更新工作流会导致在尝试创建可视化文件时出错 <BR>6、重建索引操作期间，从 ADMS Console 查看重建特性索引状态时会导致崩溃 <BR>7、检入或检出期间，Vault 返回“未按顺序编辑”并崩溃 <BR>8、安装并启动 ADMS Console，然后从任意工作组在 Vault 上单击鼠标右键时，会导致崩溃 <BR>9、启动期间，Vault 客户端返回错误消息“值不得为空。参数名称: 链接” <BR>10、在执行登录命令和显示更多命令时崩溃 <BR>11、在条目创建或条目更新期间，出现错误“对象引用未设置为对象的实例” <BR>12、对新分配的条目执行条目更新命令会出现 1200 错误 <BR>13、安装 Vault 客户端之后，在网络上对大型图像文件执行 MAPIINSERT 命令时需要很长的时间 <BR>14、与 Civil 3D 2010 相比，Civil 3D 2011 内对服务器的调用次数增多 <BR>15、将 Windows 身份验证凭据传递至 Web Client 时登录失败 <BR>16、在 Vault 2011 中设置生效日期时速度较为缓慢 <BR>17、重建特性索引操作期间崩溃后，无法再返回到“重建特性索引”对话框 <BR>18、在 Vault 2011 中变更单网格填充速度很慢 <BR>19、移植故障和错误 <BR>20、移植期间总是向基础类别自动分配用户定义的特性 <BR>21、网格填充缓慢，搜索缓慢 <BR>22、在发布方工作组和订阅方工作组上，“不计数”(NO COUNT) 标志不正确 <BR>23、Lucene 搜索失败导致“错误 179: 搜索失败” <BR>24、更新条目时出现错误消息“错误 1200” <BR>25、配置文件导入操作由于错误 232 而失败 <BR>26、文件数量很大时，文件导航的性能很差 <BR>27、重建搜索索引事件由于内存不足错误而失败 <BR>28、当默认生命周期状态为“已发布”时，检入文件操作失败 <BR>29、Web.Config 中模拟的用户默认设置不正确 <BR>30、由于通信错误 1200 导致 ACE 条目更新失败 <BR>31、将特定的搜索条件和通配符与文件内容索引结合使用时会导致错误 <BR>32、Office 文件预览总是显示第一次选择的文件 <BR></P></FONT>',' ','0','2010-10-30 12:03:43','0','','1','0','0','','0','1253','');
INSERT INTO huishi_article VALUES('269','90','使用AutoCAD2012的十大理由','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">优化从概念到竣工的整个流程<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AutoCAD&reg; 2012带来了面向文档编制、真实捕捉与三维概念设计的更加丰富的新工作流程，可以帮助您有效提高生产效率。您能够利用强大的曲面建模工具来探索设计创意。以各类建模格式来快速创建文档，帮助减少手动文件编制工作。获取并导入竣工信息，立即开始设计流程。此外，您还会发现常用功能增加了范围广泛的省时特性。AutoCAD 2012 能够为您提供所需的强大工具，帮助您平稳开展三维设计工作流程，比以往更快地完成项目。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">1&nbsp;快速文档编制并随时连接到任何来源的三维模型<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 自动生成面向AutoCAD、Autodesk&reg; Inventor&reg;的智能文档与三维模型，从而节省时间。与Inventor关联，确保工程设计变更时，工程图视图、边缘显示和位置会立即更新。您可以从广泛的应用导入模型（包括Pro/ENGINEER&reg;、CATIA&reg;、Solidworks&reg;、NX&reg;与Rhinoceros&reg;），因此您能够有效简化几乎所有文档编制流程。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：通过使用最完整的文档编制工具来满足客户要求。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">2&nbsp;使用灵活的三维建模工具探索设计创意<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 借助AutoCAD，您几乎可以设计出各种想像的造型。只需推/拉面、边和顶点，即可创建各种复杂形状的模型，添加平滑曲面等。借助曲面、实体和网格建模工具，AutoCAD 2012能够在进行三维设计时为您提供极强的灵活性和控制力。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：使用易用的工具在三维环境中更加轻松地开发概念设计。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">3&nbsp;充分利用Autodesk Inventor Fusion中的直接建模功能<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 包含在AutoCAD 2012中的Autodesk&reg; Inventor&reg; Fusion软件是对AutoCAD三维概念设计功能的有力补充，为专业三维建模带来了易用性的新标准。其支持您从几乎任何来源导入、灵活地编辑和验证模型，此外，还支持原始 DWG&#8482;格式直接建模。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：利用新的建模标准，提升您的产品设计能力。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"><B style=\"FONT-FAMILY: \">4&nbsp;借助参数化绘图功能极大缩短设计修订时间</B> <BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 参数化绘图功能可以帮助您极大缩短设计修订时间。通过在对象之间定义持久关系，平行线与同心圆将分别自动保持平行和居中。现在，您可以在绘图流程中实时地推断约束，无需再手动定义所有对象关系。AutoCAD 2012支持几何图形和尺寸标注约束，可以帮助您应对耗时的修订任务。<BR style=\"FONT-FAMILY: \"><I style=\"FONT-FAMILY: \">成效：更加轻松的图纸修订。</I></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">5&nbsp;点云支持帮助您更加轻松地实施改造项目<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实现三维数据扫描，简化耗时的改造和翻修项目。AutoCAD 2012的点云功能支持多达20亿个点，具有增强的点云引擎，能够帮助您快速导入扫描对象，对齐点云中的点，并利用三维扫描数据进行设计开发。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：通过在AutoCAD环境中生成竣工状况，极大节省时间。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">6&nbsp;比以往更快地为排列的对像编制文档<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过在排列的对像（如建筑物窗户或桥桁架）间建立并维护一系列关联关系，可以节省极为宝贵的返工时间。借助AutoCAD 2012，您能够以特定的路径来排列对像（无需只使用矩型或极轴），在概念设计或文档制作中节省大量时间。您现在还可以在三维空间排列对像，以此来提高设计工作流程的速度与灵活性。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：更高速、更灵活。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">7&nbsp;将PDF文件添加为底图<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作为有最多客户要求增加的功能，AutoCAD 2012现在添加了导入PDF文件并将其作为底图的功能。现在，与导入DWG、DWF&#8482;、DGN. 及图像文件一样，您可以使用相同的方法将PDF文件导入AutoCAD。借助熟悉的对象捕捉功能，您甚至可以捕捉PDF几何图形中的关键要素，并且您还可以更轻松地重复使用之前的设计内容。<BR style=\"FONT-FAMILY: \"></FONT><I><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">成效：通过重复使用现有PDF设计数据，加强设计协作，节省宝贵时间。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT></I><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">8&nbsp;使用多功能夹点，更轻松地开展设计<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过直接操作夹点，更加轻松地编辑对像。您现在可以在更多的AutoCAD对象中使用多功能夹点，包括线、弧、椭圆弧、标注、多重引线（mleader）以及三维面、边和顶点。<BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><I style=\"FONT-FAMILY: \">成效：最实用的编辑工具就在您的手边。<BR style=\"FONT-FAMILY: \"></I><BR style=\"FONT-FAMILY: \"><B style=\"FONT-FAMILY: \">9&nbsp;更加灵活地处理填充</B>&nbsp;<BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现在，AutoCAD软件的填充功能更为简化、灵活、可靠。AutoCAD 2012软件中的工具支持直接的填充操作、实时预览、改进后的稠密填充处理功能和边界检测功能，并且能够将所有填充发送至工程图后端，帮助您节省宝贵的文档化设计时间。<BR style=\"FONT-FAMILY: \"></FONT><I><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">成效：借助更加灵活可靠的填充工具节省时间。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT></I><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">10&nbsp;使用透明度选项，更加清晰地进行文件编制与沟通<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对象和图层始终具有特定的属性集，例如，颜色、线形和线宽。在AutoCAD 2012中，对象和图层的另一个属性能够帮助您控制工程图的可视外观：透明度。您可以设置图层、图块或单个对象的透明度。您现在能够更加精确地控制工程图的显示方式，从而保持有条不紊的工作流程，更加高效地交流设计细节。<BR style=\"FONT-FAMILY: \"></FONT><I><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">成效：更加明确。更高效率。</FONT></I></P><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG style=\"FONT-FAMILY: \">更多产品咨询！</STRONG></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">电话（Phone）：0592-5590930</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><FONT style=\"FONT-FAMILY: Arial\">邮箱（E-mail）：</FONT><A href=\"mailto:huangam@huishisoft.com\"><FONT style=\"FONT-FAMILY: Arial\">huangam@huishisoft.com</FONT></A></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"></FONT><BR style=\"FONT-FAMILY: \">&nbsp;</P></FONT></DIV>',' ','0','2011-06-03 13:06:09','0','','1','0','0','','0','2924','');
INSERT INTO huishi_article VALUES('275','90','从“建造”房子到“制造”房子','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 150平米的房子，只需要一小时的制造时间。用户购买后再花上三小时，就自行搭建成自己的新房了。这并不是传统的简易房，而是漂亮高档的洋房，而且防风抗震。这就是澳大利亚帕卡萨集团（PACASA）研制并倡导的新一代房屋技术。据帕卡萨折叠房屋技术（重庆）有限公司董事总经理王宇先生介绍：“新一代房屋与传统建筑房屋相比有很大的区别，它是由工程师设计，每个部件由不同贴牌生产商预先加工，由组装生产中心统一组装，一套面积为150平米的房屋组装成型用时约用1小时，所需成本大大低于传统建筑房屋。新一代房屋的设计，组装过程与汽车生产线有些相似。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 澳大利亚帕卡萨集团(PACASA)是一家房屋问题解决方案的高技术公司，它采用折叠技术以达到从制造地到组装地间运输的目的。帕卡萨是世界上第一家成功运用房屋折叠技术同时保证房屋具有足够抗风抗震强度的公司。据了解，此公司历时八年、斥资1.2亿美元，获得了折叠房屋制造技术的多项国际专利技术，在未来式房屋市场上处于全球领先地位。帕卡萨非常看好中国的市场和制造能力。如今，他们落户重庆，帕卡萨中国将投资四亿元建立帕卡萨房屋技术中心、帕卡萨重庆生产基地（即帕卡萨卡福折叠房屋制造（重庆）有限公司）、帕卡萨房屋营销结算中心。未来，帕卡萨还规划陆续在天津、大连、青岛、武汉等地建立九个制造基地，集团在十大基地建成后将形成十万栋房屋产品的生产能力，从而实现房屋建造工业量产化，解决发达国家和发展中国家均普遍存在的房屋严重短缺、住房负担压力过大、房屋建造时间过长、常规建筑成本过高带来的房屋短缺问题，让更多的人能买得起房子。尽管这种说法仍然有人在质疑，但这并不妨碍，帕卡萨集团重庆分公司的董事总经理王宇先生对公司在中国的前景非常看好。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">帕卡萨的秘诀<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 除了商业上的成功运作使帕卡萨迅速壮大外，王宇透露，帕卡萨的核心竞争力就是对革命性房屋设计制造的强大研发能力。他表示，集团成功的研发秘诀之一就是实现设计全部三维化。不同于传统的建筑设计单位以二维设计包打天下，帕卡萨的产品开发工程师全部都采用欧特克公司三维设计软件Autodesk Inventor开展房屋概念设计，结构设计和工程设计。就连新成立的重庆技术中心，也为了和总部保持一致，为自身工程师采购了十套Autodesk Inventor Professional 2010。随着下一步技术中心的扩建。王宇估计，重庆技术中心工程师所需的三维软件Autodesk Inventor的使用量会逐步达到150套。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 王宇指出：“作为跨国企业，帕卡萨集团必须打造跨国研发的统一平台，欧特克公司的三维设计软件Autodesk Inventor能够有效减少设计变更，易学易用，兼容性强，所以被选为集团长期研发策略的基石。而且这种统一的平台还要在产业链上大幅推广，令装配、供应商、分销商，都能在统一的文件格式下分享信息资源。”的确，帕卡萨构建统一的三维数字化设计平台令其快速扩张业务打下了以我为主，高效清晰的信息流共享基础。未来五年，帕卡萨将在中国构建十大生产基地，拥有年产十万栋房屋产品的生产能力。那时这种以产品生命周期为主线的，统一的三维数字化平台，将让帕卡萨全球在设计、生产、销售、物流等诸多环节取得不断放大的效益。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 帕卡萨全球先后购买的30余套欧特克公司三维设计软件Autodesk Inventor广泛应用于其全系列产品的研发、工艺、工程项目的各个环节。集团还选用欧特克公司Autodesk Vault作为项目小组的数据管理平台，Autodesk 3ds Max做效果渲染。他们也正在向着以大工业化制造方式造出更快、更好、更便宜的新一代房屋的目标不断迈进。而这对解决世界各国均普遍存在的房屋严重短缺、住房负担压力过大、房屋建造时间过长及常规建筑成本过高的问题，也是有非常积极意义的。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">“无比钢”的菜单化销售<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 和帕卡萨相比，安徽的贝斯特公司虽然是一家完全本土化的公司，但在技术上也丝毫不逊色。贝斯特把“工厂化制造、现场安装”施工方式，称之为“像造汽车一样造房子”，并把这种“从流水线上走下来的房屋”称之为“贝斯住宅建筑体系”。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 去年8月初，贝斯特公司生产的一批“房子”，通过集装箱在南京出港，已经顺利运抵阿联酋的迪拜港，数百幢由贝斯特创造并制造的别墅即将在阿联酋土地上拔地而起。这种可以在流水线上生产、可以运输的“房子”，准确说，叫做“无比钢”建筑技术体系，即就是房子的墙体、墙面、楼板、屋顶等，都是用钢材在工厂化生产线上加工、制造、组合出来后，由工人像搭积木一样，按照图纸把各种构件、环保材料组装在一起就可以了。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 值得注意的是，贝斯建筑住宅还引领了一种新的“菜单式”售房模式。企业按“菜单”组织生产，然后拼装、室内外装修“一次成型”，消费者拿到钥匙后带几件衣服便可轻松入住。由于贝斯特住宅的工厂化程度高同时制造周期快，客户可根据电脑图库资料，由客户依据个人的使用功能、个人喜好预订房型、装修样式及档次，作出选择或修改意见这种充分考虑客户需求的住宅生产、以人为本的销售模式为贝斯特公司赢得了市场青睐。安徽贝斯特董事长丁正磊介绍说，住宅一次成型、“菜单式”销售，符合国家的住宅产业政策导向，在充分考虑消费者需求的同时，避免了居民因不懂专业知识盲目装修造成的安全和污染隐患，还可以节约大量的时间，一举多得。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从“建造”房子到“制造”房子，一字之差挑战了“砖瓦结构”的传统建筑理念，也反映出我国住宅产业化发展的新趋势。2010年11月，沈阳市召开推进现代建筑产业发展工作会议，确定选择以应用日本鹿岛、积水建设装配式技术为主的6个示范工程项目，这批项目将在浑南新区、沈河区、和平区、铁西区展开，其中包括普通住宅、别墅、酒店式公寓和公共建筑等。现代建筑产业的发展潜力已经逐步凸显出来。<BR style=\"FONT-FAMILY: \"></FONT></P>',' ','0','2011-07-02 08:54:11','0','','1','0','0','','0','953','');
INSERT INTO huishi_article VALUES('276','90','在Inventor中插入DWG文件时，图层和对象导入选项是空的','<P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 3.75pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #333333\">问题描述</SPAN></B><B style=\"FONT-FAMILY: \"></B></FONT></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 3.75pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">当尝试向Inventor中导入或者插入AutoCAD DWG文件时，在导入向导的第二个对话框中没有图层和对象信息，而无法进行选择。</FONT></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 3.75pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">就像下面的图片显示的，在“图层和对象导入选项”对话框中，左边的栏中的“选择性导入”是空的（在正常的情况下，该栏中将显示导入DWG文件的图层列表）。</FONT></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 3.75pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">这表示Trueview 查看器的某个模块没有正确的注册（可能是因为在安装时，用户的权限不够）。</FONT></P><P style=\"TEXT-ALIGN: justify; LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 3.75pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" border=0 src=\"http://www.huishisoft.com/uploadfiles/old_attached/20110719142706739.jpg\"></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 8.25pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #333333\">适用产品</SPAN></B><B style=\"FONT-FAMILY: \"></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk Design Suite 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk Factory Design Suite 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor&reg; 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor&reg; Factory Advanced 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor&reg; Factory Premium 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor&reg; Fusion 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor LT&#8482; 2012</SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 0pt; MARGIN-RIGHT: 0cm\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Inventor&reg; Professional 2012 </SPAN><SPAN style=\"COLOR: #333333\" lang=EN-US><BR></SPAN><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #333333\">解决方案</SPAN></B><B style=\"FONT-FAMILY: \"></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 6.6pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">使用以下的方法手工注册 <I style=\"FONT-FAMILY: \">acctrl.dll </I>文件。</FONT></P><LI style=\"MARGIN: 0cm 0cm 10pt 21pt\"><SPAN lang=EN-US></SPAN><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>&nbsp;</SPAN>点击Windows开始菜单</FONT></LI><LI style=\"MARGIN: 0cm 0cm 10pt 21pt\"><SPAN lang=EN-US></SPAN><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">在“附件”中找到“命令提示符”</FONT></LI><LI style=\"MARGIN: 0cm 0cm 10pt 21pt\"><SPAN style=\"COLOR: #232323\" lang=EN-US></SPAN><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">在启动图标上点击鼠标右键选择“以管理员身份运行”</FONT></LI><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" border=0 src=\"http://www.huishisoft.com/uploadfiles/old_attached/20110719142748908.jpg\"></FONT></P><LI style=\"MARGIN: 0cm 0cm 10pt 21pt\"><SPAN lang=EN-US></SPAN><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">启动命令提示符后，输入以下语句：</FONT></LI><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10pt; MARGIN-RIGHT: 0cm\"><I><SPAN style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\" lang=EN-US>regsvr32 \"C:Program FilesAutodeskDWG TrueView 2012acctrl.dll\"</SPAN></I></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10pt; MARGIN-RIGHT: 0cm\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">如果您的Trueview 2012没有安装在缺省的位置，请将上面的路径更改为相应的安装路径下。</FONT></P>',' ','0','2011-07-19 14:26:00','0','','1','0','0','','0','1367','');
INSERT INTO huishi_article VALUES('277','90','如何删除Lucene索引并重建索引','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" class=-><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG>问题描述</STRONG></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">您想知道如何删除和重建Lucene搜索索引。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" class=-0><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG>适用产品</STRONG></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk&reg; Vault 2012<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault 2011<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault 2010<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault 2009<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Collaboration 2012<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Collaboration 2011<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Collaboration 2010<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Professional 2012<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Manufacturing 2010<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Professional 2011<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Workgroup 2012<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Workgroup 2011<BR style=\"FONT-FAMILY: \">Autodesk&reg; Vault Workgroup 2010<BR style=\"FONT-FAMILY: \"></SPAN><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #333333; FONT-SIZE: 14px\">解决方法</SPAN></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">删除</SPAN></B><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\" lang=EN-US>Lucene</SPAN></B><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">搜索索引</SPAN></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">删除此文件夹<SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>:&nbsp; C:Documents and SettingsAll UsersApplication DataAutodeskVaultServerIndexes</SPAN></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">要成功地做到这一点，您可能需要运行<SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>“Services.msc”</SPAN><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\">，</SPAN>然后停止以下服务<SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\"> </SPAN></FONT></P><UL type=disc><LI style=\"MARGIN: 0cm 0cm 0pt\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>Autodesk Data Management Job Dispatch</SPAN> </FONT><LI style=\"MARGIN: 0cm 0cm 0pt\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>SQL Server (AUTODESKVAULT)</SPAN> </FONT><LI style=\"MARGIN: 0cm 0cm 0pt; COLOR: #232323\"><SPAN style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\" lang=EN-US>World Wide Web Publishing</SPAN></LI></UL><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US>·&nbsp; </SPAN>删除文件夹，然后按照相同的顺序重新启动他们。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">重建搜索索引</SPAN></B><B style=\"FONT-FAMILY: \"></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">ADMS Console：”工具”&gt;重建搜索索引&nbsp;</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\" lang=EN-US>“</SPAN></B><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">重建搜索索引</SPAN></B><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\" lang=EN-US>”</SPAN></B><B style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">的背景知识</SPAN></B><B style=\"FONT-FAMILY: \"></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">如果你正在发现Vault运行缓慢，或得到了不完整的搜索结果，无论是Vault Explorer，Vault Manufacturings, Item Master， 甚至是使用Inventors的从Vault打开命令，那么这个命令是非常有用的。搜索索引是创建一个子程序，允许Vault使用SQL数据库索引，这可以在常用的操作中，避免运行复杂的SQL查询命令，例如列出的项目或文件夹导航。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">该索引的的默认位置：<SPAN style=\"FONT-FAMILY: Arial; COLOR: #232323; FONT-SIZE: 14px\" lang=EN-US> \"C:Documents and SettingsAll UsersApplication dataAutodeskVaultServerIndexes\". </SPAN></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">索引文件很少被损坏，如果软件显示Error 226 和 Error 227（“发生错误，而用于搜索的索引信息。详情请参阅服务器日志”）。或者是，当软件的性能突然下降时，所需要尝试的一件事情就是运行此命令。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">当你运行它时，客户会看到在其浏览器的顶部显示此消息。<B style=\"FONT-FAMILY: \"><I style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\" lang=EN-US>“</SPAN></I></B><B style=\"FONT-FAMILY: \"><I style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\">标准的搜索结果是不完整的，因为性能指标正在创建的，完整的搜索结果将提供一次完全索引文件属性。</SPAN></I></B><B style=\"FONT-FAMILY: \"><I style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: ; COLOR: #232323\" lang=EN-US>“ </SPAN></I></B></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">需要多长时间才能完成，这将取决于数据库的大小。数据库的大小取决于它包含了多少信息，多久你运行SQL维护计划。</FONT></P><!--stopindex-->',' ','0','2011-07-20 13:06:27','0','','1','0','0','','0','1567','');
INSERT INTO huishi_article VALUES('279','90','长安汽车成为Autodesk Moldflow 的传奇缔造者','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">2011年6月，在欧特克公司举办的“第二届Moldflow大师赛”决赛阶段，来自长安汽车工程研究院（简称“长安汽车”）的参赛作品最终脱颖而出获得一等奖。殊不知在2010年第一届Moldflow大赛中，长安汽车同样摘得桂冠。大家在为长安汽车祝贺的同时更深感不可思议，因为长安汽车的参赛团队接触Autodesk Moldflow也不过才三年多的时间，如果从入门的时间来看，绝对是个后来者，但就是这样一个后来者能够连续两次夺取大赛桂冠，其传奇经历不禁引起了大家的兴趣。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “我想‘压力大’或许是我们能在如此短的时间之内熟练掌握并灵活运用Autodesk Moldflow软件的根本所在吧，毕竟在引入Autodesk Moldflow之前，我们交了过多的学费，损失很大，在残酷的市场竞争面前我们没有退路。”长安汽车工程研究总院非金属产品性能开发所所长，同时也是长安汽车Autodesk Moldflow团队的负责人王晓女士略带幽默地表示，“当然这也与欧特克公司自始至终对我们的培训与帮助是分不开的。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长安汽车工程研究院成立于1995年8月，前身为长安汽车技术中心，是全国首批国家认定企业技术中心之一，拥有3000多人的科研开发队伍，其中核心技术人员200多人。目前，长安汽车工程研究院已具备了较强的自主研发能力，具备汽车造型设计、工程化设计、仿真分析、试验开发评价、样车试制五大能力，拥有国内领先的汽车排放和环境试验室、一流的加工中心及试验检测手段等，承担了多项国家“863”重大科研项目。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"><IMG style=\"FONT-FAMILY: \" border=0 src=\"http://www.huishisoft.com/uploadfiles/old_attached/20110722180703644.jpg\"></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><STRONG>技术壁垒推动产品选型<BR style=\"FONT-FAMILY: \"></STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据了解，从长安汽车打出自主研发旗帜以来，其新车型内外饰件的设计开发屡屡受阻，因为没有一定的科学辅助分析手段，这些工作只能依靠设计人员的经验和想象完成。而由于前期产品设计存在诸多缺陷，在后期试模的过程中问题就会暴露出来，有的问题或许能通过修模来解决，但是有时候由于产品结构存在根本问题，修模也无法解决问题，最终只能是模具报废，一切重头再来。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 模具报废带来的经济损失固然令人惋惜，但是耽误新车上市的损失更是难以弥补。终于，在2007年一个专业的与汽车内外饰件相关的技术研讨会上，王晓了解到某国际知名品牌的一款新车型仅用18个月就实现上市，而在当时一款新车型从前期的概念、设计到后期的开模、试模、修模一直到最终的成品下线，平均周期为42个月，如此悬殊的“时间差”简直让人不可思议。通过进一步了解得知，能在如此短的时间内让新车上市，是由于该企业采用了“全虚拟开发”的技术，如此一来大大缩短了整个研发制造周期。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “我当时就在想，我们公司在白车身（汽车覆盖件）方面早已大量采用虚拟设计，因此对这个技术还是了解的，只是没有想到和遇到合适的工具可以应用到内外饰件设计开发上。”王晓如是说，“碰巧也是在那次会议上有关于Autodesk Moldflow的使用讲座，我当时听后第一感觉就是：没错，就是Autodesk Moldflow了。”自此，长安汽车携手Autodesk Moldflow的旅程开始了。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">携手欧特克获得新突破<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 之后，王晓向长安汽车的领导作了汇报，并希望根据实际情况调整公司结构，从而将工作重点从产品设计转向虚拟开发。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 俗话说万事开头难，在王晓看来，要想让员工和领导迅速接受Autodesk Moldflow这一新事物或许还要费一番周折，不过事有凑巧，当时长安汽车产品中心负责研发设计的某款车型的前罩装饰件由于翘曲问题比较严重，不仅不美观，而且严重漏水，当时的产品合格率仅有30%，后来采用Autodesk Moldflow进行模拟分析后，对原有方案进行了评估分析，并根据其结果修改了模具，试模后的产品合格率一下飙升到了99.5%，而此种情况在以前是根本无法想象的。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “之后还有一个案例，有客户反映长安汽车一款已经在售的车型某电器件间隙过大，影响美观，经过多次改善也无法解决这一问题，于是该问题交由王晓所在团队负责处理，“通过Autodesk Moldflow的分析表明该翘曲变形并不是很大，”王晓解释说，“之后我亲自带工程师用游标卡尺测量装配尺寸，发现变形对过大间隙的形成产生很大的影响。”同样借助于Autodesk Moldflow的分析找到翘曲变形的原因，长安汽车很快改进了该零件的加工，产品也做到了严丝合缝，得到了用户的认可。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过这两个案例，包括公司领导以及部门工程师在内的许多人对Autodesk Moldflow有了全新的认识，更坚定了对该软件的信心，“说崇拜似乎都不为过，”王晓坦言，“当然在这个过程中，欧特克Autodesk Moldflow团队对于我们的支持与培训也很重要，这是我们得以顺利使用并熟练掌握该软件的关键因素之一。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">产品深入应用 效益大幅提高<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 经过这两件事情之后，公司领导自然批准了实施Autodesk Moldflow的要求，但是随之衍生出来的就是：领导把所有的难题都交给执行团队解决。但这反而提速了该团队的工程师们对于Autodesk Moldflow的熟练使用以及融会贯通。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 使用Autodesk Moldflow所带来的全新体验尤其是对于工作的帮助更是让这个团队充满激情。据王晓介绍，在公司引入Autodesk Moldflow之前，他们所负责设计的一款车型，其中汽车内外饰件试装出现的问题有三百多个，这并不包括由于无法改模而报废的模具。但是在引入Autodesk Moldflow初期进行研发的一款B301车型上，问题已经减少到一百个左右，而且由于设计变更所带来的损失也由原来的几百万降到几十万。<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “一方面是问题数量大幅度减少，另一方面是设计变更费用大幅度降低，同时整改时间大幅缩短至原来的二分之一，公司使用Autodesk Moldflow带来的效益是看得见、摸得着的。”王晓不无兴奋地说，“在市场对于品质、效率和成本竞争日益激烈的今天，能做到三者兼顾实属不易。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 经过一段时间的摸索，如今团队对于Autodesk Moldflow的使用已经更为熟练。据王晓介绍，他们最近实施的一款车型项目已经全部导入Autodesk Moldflow，从而将试装出现的问题降到了难以置信的16个！王晓说，“和客户一样，完美地造出一款好车是我们所一直追求的，而Autodesk Moldflow帮助我们将产品开发周期从以前的40周降到现在不到15周。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \"></FONT><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">明确目标：走虚拟开发之路<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实践是最好的老师，在经过一次次惨痛的教训及亲身实践的基础上，长安汽车Autodesk Moldflow团队早已经能够熟练使用该软件了，“流动分析、冷却分析、翘曲变形以及精准度分析等准确度都很高，在提高产品品质的同时大大缩短了开发周期，”王晓再次强调，“2010年我们之所以能够夺得Autodesk Moldflow大师赛的第一名，很大因素也是由于设计的精准度，当然这都是借用Autodesk Moldflow本身的数据库。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 即便如此，以王晓为主的Autodesk Moldflow团队并没有停止对于Autodesk Moldflow功能的探索与创新。比如，Autodesk Moldflow本身不带有产品的强度分析和刚度分析功能，但是通过学习得知，Autodesk Moldflow预留了接口，可以与第三方CAE分析软件对接，从而借助其它专业的强度或刚度分析软件，完成该功能。“长安汽车是国内第一家使用并掌握Autodesk Moldflow接口技术的公司，”欧特克公司中国区Autodesk Moldflow销售经理姜勇道经理赞许道，“虽然长安汽车接触Autodesk Moldflow软件的时间不早，但是他们属于后发先至，现在长安汽车对于该软件的使用和理解已经达到了相当高的层次，这是让我们都难以想象的。”<BR style=\"FONT-FAMILY: \"><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 现如今，长安汽车已经明确了其“虚拟分析、虚拟开发”之路。一方面将虚拟设计验证技术融入到产品造型（VR）、DMU和结构刚度仿真环节，另一方面将虚拟制造验证技术纳入制造工艺仿真和装配过程仿真环节。“站在公司的层面，我们已明确要建立标准化、模板化、流程化的虚拟分析体系；完善分析与实际对比数据库并且稳定输入、输出，提升分析精准度。”王晓总结说，“从团队建设上来说，我们更要坚定对虚拟分析技术的信心，调动团队对虚拟技术的好奇心、探索心，争取做到夯实基础，实战第一，归根结底为用户呈现一辆满意的好车才是我们努力的结果。”<BR style=\"FONT-FAMILY: \"></FONT></P>',' ','0','2011-07-22 18:06:17','0','','1','0','0','','0','696','');
INSERT INTO huishi_article VALUES('296','90','欧特克：融合中的CAD/CAE疆界','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设计工程师自从有了CAD系统，设计工具得到前所未有升级的同时，产品开发模式也发生着潜移默化的改变。然而，随着CAD系统的持续普及，以及用户对产品要求的逐步升级，设计工程师发现，仅凭CAD系统已经难以完成全部的产品开发工作——由设计工程师开发的产品模型，需要通过仿真分析工程师的验证才能被最终确认，但如果仿真分析的结果不理想，那么设计工程师就要对产品模型进行修改、优化，甚至重新设计——这种由设计工程师和仿真分析工程师构成的单向循环，已经成为影响产品开发周期的最大障碍。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　事实上，从上个世纪50年代末、60年代初，CAE刚刚诞生之日起，这种利用计算机辅助求解复杂工程和产品结构物理特征的方法，已经成为产品研发阶段校核产品性能的唯一科学方法。但是，也恰恰是因为其复杂性、多学科等特点，其与CAD系统始终没有深入的整合，CAE系统的用户，至今仍然被限定在特殊人群——企业当中经过长期培训的仿真分析师，设计工程师依然没有办法在自己熟悉的CAD环境当中应用CAE系统进行产品开发初期的分析。将CAE系统最大程度地融入以CAD为代表的产品研发流程，无论是对CAD还是CAE，都是必须要突破的应用瓶颈。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　自2008年，作为CAD行业公认“大佬”的欧特克公司陆续收购了Moldflow、Algor和CFdesign。在完成全部的收购以后，2011年8月，欧特克公司立即对所掌握的CAE系统进行了调整，调整后的CAE产品系列分别Autodesk Simulation Mechanical、Autodesk Simulation Multiphysics、Autodesk Simulation CFD和Autodesk Moldflow。此刻的设计工程师们开始意识到，CAD和CAE两种系统真正集成应用的时代可能就快到来了——CAD和CAE的融合已经从一种理想变成了一种可能的现实，至少已经有了一定的技术基础和软件基础。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　模具设计师的CAE专家</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　在欧特克整合的CAE产品线当中，最赫赫有名的，莫过于Autodesk Moldflow了。作为在塑料工业应用最为广泛的CAE系统，Autodesk Moldflow已经是该领域当中事实上的CAE标准。而整合完成的Autodesk Moldflow，充分考虑了不同的用户的需求差异，提供了两种不同的模拟分析模式——AMA(Autodesk Moldflow Adviser，Moldflow塑件顾问)和AMI(Autodesk Moldflow Insight，Moldflow高级成型分析专家)——分别针对设计师和专业CAE工程师。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AMA相对简便易用，主要是提供给设计工程师通过简化注塑成型的模拟，对壁厚、浇口位置、材料和产品几何的变更进行随时的仿真分析结果反馈，以帮助设计工程师随时验证设计结果，进而优化设计的诸多特征(如浇口、流道、模穴的排位等)，通过对成型工艺的模拟，帮助设计者找出并解决潜在的问题。显然，AMA能够快速响应设计者的分析变更，因此AMA的用户——产品设计工程师，项目工程师和模具设计工程师可以利用其在产品开发的早期，快速验证产品的制造可行性、外观质量(熔接线、气穴等)、材料选择、结构优化(壁厚等)、浇口位置和流道(冷流道和热流道)优化等问题，很大程度上满足了设计工程师在产品结构设计研发阶段对CAE系统的要求。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AMI之所以被命名为“分析专家”，是因为其功能更加专业和深入，其主要用于解决与塑料成型相关的更广泛的设计和制造问题，例如：双色成型(Over-Molding)、嵌入成型(Insert-Molding)、气体辅助成型(Gas-assistant Molding)、共注成型(Co-Injection)、注压成型(Injection-Compression)、发泡成型(Mucell)、光学的双折射分析(Birefringence)等。甚至近期兴起的热流道动态进料系统，也可在AMI中进行模拟。很明显，AMI帮助设计工程师解决了产品设计阶段的加工制造问题，换句话说，设计师团队利用AMI就可以在设计阶段预测制造缺陷，从而真正实现对整个流程的把握，提高产品设计的质量。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　无论是AMA还是AMI，可以说，企业通过应用Autodesk Moldflow，即可以将优化设计贯穿于产品诞生的全过程当中，彻底改变传统依靠经验的“试错”设计模式，使产品的设计和制造尽在掌握之中。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　工程师的CAE工具</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk Simulation CFD是一款“前端”CFD软件。所谓CFD (Computational Fluid Dynamics)也叫计算流体动力学，是近代流体力学、数值数学和计算机科学结合的产物，是一门边缘科学。通过应用各种离散化的数学方法，CFD软件对流体力学的各类问题进行数值实验、计算机模拟和分析研究，是目前进行传热、传质、动量传递及燃烧、多相流和化学反应研究的主要方法。而“前端”CFD软件，是将对产品设计的CFD分析放在设计的最前端，由设计工程师在最初设计阶段在自己熟悉的CAD环境中直接进行CFD分析，从而得出优化方案，避免中后期进行设计修改所将带来的高额成本和代价。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　同大多数CFD系统一样，Autodesk Simulation CFD的主要工作是解决在产品开发过程中遇到的各种流体问题，例如流动问题、传热问题和运动问题。而作为欧特克CAD-CAE融合的关键步骤之一，Autodesk Simulation CFD与其他CFD系统的最大不同，是可以直接被MCAD(机械CAD)产品设计团队使用。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　与其他的所有CAE产品相比，Autodesk Simulation CFD可以称得上是同CAD整合最好的一款CAE产品。首先，从集成的深度来看，整合完成的Autodesk Simulation CFD能够成为CAD系统的一个组成部分，设计师可以从CAD系统中直接调用其功能。因此，从某种角度讲，Autodesk Simulation CFD更像是 MCAD应用软件的一种延伸，让设计工程师能够在产品概念设计阶段就可以进行复杂的热传输或流体流动的模拟仿真试验。第二，Autodesk Simulation CFD能够整合的CAD系统范畴非常广泛，不仅能够与常见的三维CAD系统实现整合，而且在与其他基于ACIS或Paraslid几何内核的CAD系统配套时，Autodesk Simulation CFD也能实现本机互操作，从而将标准的MCAD工作站转化成完全互动的流动试验台和热力测试台。第三，Autodesk Simulation CFD具有的与生俱来的易操作性也使得其在与CAD系统整合时，更加容易被设计师掌握：基于CAD工程师的操作习惯开发的功能，使得CAD工程师几乎无需特殊的CFD专业背景，经过短暂培训就可以利用其解决遇到的大多数分析工作。第四，Autodesk Simulation CFD所拥有的强大的通用分析引擎，能在一系列CAD系统中进行精确的模拟设置，因此基本无需人为干预。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　让工程师发挥自己的灵感，把注意力集中在产品而不是工具上，Autodesk Simulation CFD让工程师感受到的快乐和顺畅，是所有CAE系统与CAD系统融合的典范模式，也正是所有CAE系统和CAD系统未来技术和应用的发展方向。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　最广泛通用的CAE</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics是由Algor演进而来，其中，Autodesk Simulation Mechanical是原Aglor产品的基础版本，而Autodesk Simulation Multiphysics属于进阶版本，包括Mechanical所有功能，并加入Steady &amp; Unsteady Fluid Flow与Electrostatic Analysis功能。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　事实上，对于CAD-CAE融合最大的障碍，一方面是如何应对不同行业的不同分析需求，另一方面就是如何解决企业当中的多CAD环境问题，这也是现在制造商经常面对的问题——如何选择一款合适本企业应用的、能够在多CAD环境下工作的CAE系统，并能将其集成至现有设计流程中？</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　作为一个被定义为大型通用分析平台的CAE产品，Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics其具有各类的分析能力(包括热分析、流体分析、动力学分析、物理场分析等)，其旨在为用户提供一整套的CAE工具，以帮助用户在一个集成的环境中进行精确和有效的仿真分析——这些工具包括静力、动力、流体、热传导、静电场、疲劳分析、管道工艺流程等分析与设计，因此其所涉及到的应用领域十分广泛，这一点，从其在汽车、电子、航空航天、医学、军事、电力系统、石化、土木工程、微机电系统、日用品生产等诸多领域中均有数量众多用户可见一斑。因此Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics首先解决了多行业用户的不同需求。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　另外，对于多CAD环境的CAE应用需求，Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics也提供了很好的解决方法。首先，从软件架构上，其可与 Autodesk Inventor、Pro/ENGINEER、Solid Edge、SolidWorks及其他众多的三维CAD软件直接进行数据交换，并实现无缝链接与同步数据，因此能够在多CAD环境中实现高效的工作流程。第二，在数据处理上，Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics的自动网格工具可以立即生成高质量的图元——从而确保关键区域内的仿真精确度，有助于设计师在更短的时间内预测产品性能。第三，在应用上，Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics内嵌的建模功能支持设计师和工程师直接编辑网格，同时，其所提供的专门针对流体的分析模块，还能够帮助设计师只需通过内嵌的对话框简单指定流体介质边界的表面来自动创建流体模型。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　显然，对于那些需要在多个物理环境仿真分析产品模型的CAD工程来讲，Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics无疑是最佳的选择。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　后记</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　CAD作为工具进入工程领域的时间并不长，但是对整个工程研发领域的影响却非常巨大，不仅让更多的设计师甩掉了图板，更是深刻地改变着他们的设计方法和设计模式。但从产品研发的流程上看，CAD系统越来越需要CAE尽早提供支持，尤其是在详细设计阶段——越早介入产品的设计，就对整个产品研发流程越有利。因此，CAD与CAE的融合以及普及，已经成为一种趋势，让更多的人都能使用CAE工具，才能真正帮助企业进行创新设计。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克的CAE产品解决方案正在实践CAD-CAE系统的整合：Autodesk Moldflow是一种专业级的整合模式，旨在满足行业当中专业级的仿真要求，是大多数专业级别的CAE系统与CAD整合的方向;Autodesk Simulation CFD则是一种“最佳融合方案”，将CAD与CAE做到彼此融通，轻巧便捷，是一种针对纯粹工程设计师的CAE应用典范;Autodesk Simulation Mechanical和Autodesk Simulation Multiphysics则反映了CAD-CAE融合在应用阶段的价值，即为更广泛的工程技术人员提供更全面的CAE支持。三个产品代表的是CAD-CAE融合的三个方向，同时，也是针对不同用户的三个解决方案，三个选型标准和三个应用模式。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　相信这种CAD-CAE的融合，无论是对欧特克还是对整个业界，都仅仅是一个开始。而随着设计工程师开始普遍使用CAE工具，研发流程体系将会越来越完善，CAE-CAD的整合也必将更平面化、普及化。</FONT></P><P><FONT style=\"FONT-FAMILY: Arial\"></FONT>&nbsp;</P>',' ','0','2011-11-11 13:26:27','0','','1','0','0','','0','653','');
INSERT INTO huishi_article VALUES('297','90','Simulation CFD：工程师的CAE方法论','<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CAD系统和CAE系统在发展过程中的天然割裂，使得在传统产品开发流程中，CAD工程师和CAE工程师之间的工作泾渭分明对于CAD工程师来讲，在设计完成之前不能确认设计的质量，将增大后期修改的工作量和难度，而对于CAE工程师来说，读取数据过程中的数据缺失不可避免，大量的几何修复工作也会令分析结果的准确性大打折扣。在信息化工具普遍走向融合的大趋势下，CAD与CAE以怎样的模式融合才更符合工程师的工作需求呢？ </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　CAD与CAE的融合更多的是CAE融入到CAD系统中，对于CAD工程师来讲，他们可以在自己熟悉的CAD环境中，应用CAE系统直接对CAD模型进行产品设计阶段的仿真分析，以便能够及时发现问题，同时，CAE工程师直接使用CAD系统当中的产品几何模型，则可以减少数据传输过程中所产生的缺失。事实上，这一过程说起来容易，但在现实的操作当中，适合CAD工程师使用的CAE系统必须符合以下几个关键指标：首先，该CAE系统必须能够被完全整合到CAD环境中，使之更符合CAD工程师的使用习惯；第二，该CAE系统必须具备充分的易用性和智能型，以减少CAD工程师的工作量；第三，该CAE系统的运算结果必须准确和稳定，足以支撑CAD工程师完成设计早期的仿真分析；第四，该系统的运行速度必须更快，不能因为两者的融合而影响到原有CAD系统的运行速度。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk Simulation CFD就是符合以上这些要求的CAE系统。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk Simulation CFD最早是由美国蓝脊数码有限公司（Blue Ridge Numerics）于1992年推出的一款\"前端\"CFD软件当时名称为CFdesign。2011年3月，欧特克以约3900万美元的价格收购该系统，并将其纳入自己的CAE阵营。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　之所以强调其为\"前端\"CFD软件，是因为Autodesk Simulation CFD从开发之初，就被定义成为CAD工程师提供的仿真分析工具而被整合到CAD系统当中。因此，Autodesk Simulation CFD的操作最大程度考虑了CAD工程师的应用习惯，使得产品及设计工程师在不需要太多专业培训的情况下，即可在最初设计阶段用自己熟悉的MCAD环境直接启动CAE工具，进行流动及热性能分析，从而快速对设计进行优化。可以讲，Autodesk Simulation CFD是业界唯一提供与CAD环境无缝集成的流体力学解决方案。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　具体地说，通过采用先进的边界识别算法，Autodesk Simulation CFD可以使用MCAD环境下的任意几何类型，因此CAD工程师在使用Autodesk Simulation CFD进行仿真分析时，无需修补或重构生成任何CAD模型。同时，嵌入式的平台、CAD模型与CFD模型同步更新等功能，也使得流场分析的工作大大简化，工程师几乎不需要太多的操作，即可完成仿真，得到结果。因此，对于使用Inventor、Revit、CATIA、PRO/E、UGS NX、SolidWork或其他CAD系统的工程师来讲，Autodesk Simulation CFD事实上是将标准的MCAD工作站转化成了一个完全互动的流动试验台和热力测试台。而对于其他基于ACIS或Paraslid几何内核的CAD系统，Autodesk Simulation CFD对其本机互操作性的支持，也使得CAD工程师常常觉得Autodesk Simulation CFD就是MCAD应用软件的一种延伸。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　显然，CAD与CAE的无缝集成，让CAD工程师可以尽情发挥自己的灵感，把注意力集中在设计过程中，而不是CAE工具上。但是，CAE系统毕竟是一个涉及多个学科的复杂计算机运算系统，因此普通CAD工程师驾驭这些CAE工具终归还是有些难度。从这个角度讲，Autodesk Simulation CFD的易用性和智能型才是其最核心的应用优势。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　对于Autodesk Simulation CFD来讲，其易用性和智能型得益于其先进的软件技术，这集中反映在网格划分阶段。在应用仿真分析之初，针对非常复杂的CAD模型，Autodesk Simulation CFD可以生成高质量的网格，并且可以自动地生成高质量的附面层网格，而内置的智能网格参数选择设置，更提高了其自动化程度。因此设计工程师几乎无需特殊的CFD专业背景，经过短暂培训就可以利用其解决遇到的大多数分析工作。加之Autodesk Simulation CFD拥有强大的通用分析引擎，能在一系列CAD系统中进行精确的模拟设置，因此基本无需人为干预，操作者也无需具备从事模拟工作的经验。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　易用性的另一个方面，是Autodesk Simulation CFD对CAD工程师实际工作需要的支持。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　对很多CAD工程师来讲，对产品的仿真分析需要通过多工况的对比选择最优的设计方案。对于很多CAE系统来讲，这需要在修改CAD模型后再把新的CAD修改模型导入到分析软件中，进行参数的设置和人工网格重构才能实现。但是Autodesk Simulation CFD提供的设计分析管理器，就可以通过几何的更新创建新的设计和新的工况。当创建了多工况以后，CAD设计师可以在同一个窗口下非常容易地进行几何对比、参数对比，以及曲线或动画的对比，从而为工程设计师带来前所未有的便利感受。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　对于Autodesk Simulation CFD的运行速度和稳定性，有数据显示，其解算速度和稳定性较传统方法提高了近2个数量级。而保障Autodesk Simulation CFD速度和稳定性的关键，是其内置的高效求解器和自适应网格技术。通过应用这些技术，Autodesk Simulation CFD将在PC机上对复杂问题进行快速解算成为可能。对于CAD工程师而言，通过体验改变条件设置而快速得到相应的设计结果，则可以在最短时间内洞察产品的性能，修正产品设计。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　在Autodesk Simulation CFD以往的用户当中，Acutex公司是具有代表性的一个，其业务主要是为汽车供应商设计和制造变速箱控制用电磁阀。过去，Acutex公司用简单的经验方程来选择限流孔的初始尺寸，在并不知道准确的流量系数的情况下进行电子液压模拟。这种方法并不能准确地设计出客户定制的阀门。在使用了Autodesk Simulation CFD后，Acutex公司不仅可以确定阀芯直径，而且能够更有效地进行阀门的成形修正及整合工作，从而更好地确定流量系数。Autodesk Simulation CFD可以在分析过程中，很容易地改变工况，通过多次分析，工程设计师就可以确定在客户提出的温度范围内，哪些尺寸和形状组合可以提供足够和尽量恒定的流量。有统计数据显示，Autodesk Simulation CFD不仅帮助Acutex公司缩短了15%的设计周期时间，而且节省了大量的资金仅仅在冷流体试验一项，就节省了17000美元。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　随着单点技术创新的逐渐匮乏，CAD和CAE技术的发展日显疲态。与此相对，应用模式正在因用户需求的升级而不断更迭。CAD-CAE的融合，已经不是要不要的问题，而是如何做才是最符合工程需要的模式。以往的事实证明，由CAD工程师展开前端CAE应用，无论是对提高产品研发效率，节省研发成本，还是提高产品最终质量，都有非常重要的意义。Autodesk Simulation CFD正是凭借欧特克在CAD领域的技术地位，积极实践这种整合应用的模式。我们能够看到的是，一种以CAD工程师应用CAE工具优化设计的模式正在逐步完善当中，而这种CAD工程师应用CAE的方法，也必将改写产品设计流程模式。</FONT></P>',' ','0','2011-11-11 13:27:23','0','','1','0','0','','0','709','');
INSERT INTO huishi_article VALUES('300','90','视觉之炫 凌越前沿','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一座伟大的建筑即将拔地而起，它吸引着世界人的眼球，它是中国人的骄傲，它就是位于中国上海小陆家嘴核心区的上海中心大厦。它是宏伟的，其主体建筑结构高度580米，总高度632米，总建筑面积57.4万平方米（包括地上建筑面积38万平方米），建成后的上海中心大厦将与金茂大厦、环球金融中心等组成和谐的超高层建筑群；它是绿色的，在建筑设计和运营阶段以绿色建筑为目标，未来将成为国内第一个在建筑全生命周期内满足中国绿色建筑三星级和美国LEED绿色建筑体系高级别认证要求的超高层建筑；它是现代的，上海中心大厦具有国际标准的24小时甲级办公环境，超五星级酒店和配套设施以及集观光、购物、娱乐、餐饮、休闲功能于一体的商业文化城和特色的会议设施；它是经典的，上海中心大厦将在优化城市规划、完善城市空间、提升上海金融中心综合配套功能、促进现代服务业集聚等方面发挥重要作用，并将成为上海标志性建筑和上海金融服务业的重要载体。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/autodesk5.jpg\" width=420 height=315></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 如此庞大的体量，如此炫目的造型，如何能够顺利地得以设计和施工，这在很多人的脑海中都是一个巨大的惊叹号。然而，上海中心大厦建设发展有限公司总经理、董事顾建平道出了其中的奥妙，他说，“上海中心大厦是一个特大型项目，从设计到施工的整个过程都非常复杂，面临着巨大的困难和挑战。为了把项目做得更加完美，我们选择了BIM这个现代化手段，把各个工种、各个阶段不同的工作整合在一个信息平台上来共同完成。Autodesk Revit、Autodesk Navisworks、Autodesk Ecotect、Autodesk Inventor等一系列成熟的设计解决方案，既提高了整个团队的工作效率，又减少了整个过程中可能产生的错误。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">借BIM智慧，突破经典<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 632米的总高度对于中国来讲的确是一个非常巨大的挑战。那么，在设计方面针对于体量和形态应该从哪些方面入手，又该作怎样的思考？这是设计单位所必须要考虑的问题。作为建筑设计和施工图设计的指定单位——Gensler和同济建筑设计研究院（集团）有限公司，更多的想从科技角度去诠释其建筑理念，从而更好地把握经典建筑的核心。在这里，BIM的智慧优势得以充分体现。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海中心大厦的设计灵感溯源于历史和未来，旨在将历史与未来有机结合在一起。旋转的形式，似中国的水墨画，简单立体而一气呵成，同时也表达出对未来的思考。旋转是一个万物形成的本源，这个形态连接了时空、超越了时空，它是未来的一种形态。这样一个既简单又复杂的超高层建筑，最大挑战就是风阻问题，而这样的旋转又恰恰在借力打力，与比较规则的楼体相比，可减少大约32%的风阻，同自然形成了和谐的关系。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/autodesk20.jpg\" width=303 height=381></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 不难看出，这样的外形对于建筑功能与施工建造都是有一定的影响的，“我们利用BIM进行了突破性的处理，采用了双层表皮的概念：内层表皮是非常规律的几何形状，外层表皮采取旋转的方式。” Gensler上海办公室的资深设计师彭武说，“BIM平台在这里起到了很大的作用，建筑的外形完全是基于数字化平台来实现的，传统的二维平台根本无法满足异型建筑各个细部的衔接，尤其是对于这种超级体量的建筑来说，更是难上加难，而BIM在设计阶段的参数化运用，完美地解决了这个复杂的几何问题。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gensler副总裁、亚洲区设计总监夏军作为上海中心大厦项目设计总负责人，在整个设计进程与协调的过程中也充分利用BIM解决了项目本身很多挑战性的课题。从设计角度来看，幕墙就是其中之一。旋转的形态决定其结构与幕墙玻璃必须轻盈，悬挂在整个楼体的外侧，不直接同楼板发生关联，用直面的玻璃做成双曲面的空间形态，在视觉效果实现的同时，考虑可建造性。BIM在这里帮助设计师完成了精确的定位，并把这种定位放到BIM平台上，让所有专业来共享这个计算和设计带来的成果，帮助其选择一个比较好的幕墙设计方案。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BIM在整个设计的过程中扮演了一个非常重要的角色，除建筑设计外，还为施工图设计提供了很多的益处。同济大学建筑设计研究院项目经营部副主任陈继良说：“BIM是施工图设计很好的帮助者。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对于异型建筑来说，用通常的设计手段是无法准确定位这些异型的点的。而且，上海中心大厦这个建筑又非常复杂，尤其是设备层和避难层，由于结构的原因，有很多杆件穿插在设备层中间，通过二维设计基本上是没有办法解决这个设计难题的，所以就运用BIM通过三维设计完成了整个设备层的设计工作，有效地避免了杆件之间的相互碰撞。陈继良介绍到，上海中心大厦项目是以AutoCAD为主进行出图，以Autodesk Revit软件为建模基本手段，并使用Autodesk Navisworks和Autodesk Ecotect进行碰撞检测和CFT模拟，使之互相衔接，从而实现了高效率出图、减少返工、节省材料。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BIM所带来的无处不在的高精确度运算和高灵活度适应的能力，在设计阶段，通过数字化设计的新语境完成了建筑的新范式。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/autodesk30.jpg\" width=420 height=281></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">驾驭BIM，重筹在握<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从方案到施工需要一个深化设计的过程，以支撑施工的顺利进行。如果说在设计阶段，BIM把想象中的概念变为了可视化的形态，那么在施工方面，则看到了BIM更加实际的作用，它将可视化的理念变成了现实，可见，BIM是整个施工阶段的重要筹码。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 正如上海市安装工程有限公司副总工程师于晓明所说，“上海中心大厦项目在施工阶段面临的最大挑战就是它的高度。我们在整个建造的过程中，全程都将BIM纳入其中，整个周期都是通过精细化的管理手段来完成的，正是BIM让我们从模拟阶段轻松过渡到实际的建造上来。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BIM在施工阶段的运用十分广泛。不论幕墙、机电还是结构，BIM在各个专业中都发挥着重要的作用。尤其在结构方面，更多的人都将注意力集中在了建筑的形态、高度和外幕墙结构变化等的问题上。那么，BIM又是如何完美解答这些问题的呢？对此，美国宋腾汤玛沙帝结构师事务所副总裁朱毅表示，“整个项目的结构工程都是相当复杂的。初期，我们总共做了二十多个方案，就旋转的外形而言，最终选定了矩柱与支外伸臂加上支核心筒的结构体系，正是BIM平台，为我们理解复杂几何形态的变化提供了帮助，使结构选型变得非常简单、明了，而且直接。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在这个项目里，上海市安装工程有限公司和美国宋腾汤玛沙帝结构师事务所分别承担着工程设计和结构工程施工的重要任务。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 事实上，上海中心大厦项目的BIM应用是集建模、检测、计算、模拟、数据集成等工作为一体的三维建筑信息管理工程，这项工作覆盖了工程的设计、深化设计、制造、施工管理乃至后期运营管理的建筑全生命周期。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从整个项目来看，碰撞检测是必不可少的，也是非常重要的一个环节。最初，施工技术人员采用传统方法，利用二维图纸将建筑结构图进行叠加，而BIM技术则通过软件对综合管线进行碰撞检测，利用Autodesk Revit系列软件进行三维管线建模，快速查找模型中的所有撞点，并出具碰撞检测报告。在深化设计过程中选用Autodesk Navisworks系列软件，实现管线碰撞检测，从而较好地解决传统二维设计下无法避免的错、漏、碰、撞等现象。根据结果，对管线进行调整，从而满足设计施工规范、体现设计意图、符合业主要求、维护检修空间的要求，使得最终模型显示为零碰撞。同时，借由BIM技术的三维可视化功能，可以直接展现各专业的安装顺序、施工方案以及完成后的最终效果。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “有了一个完整的、正确的模型以后，我们就可以把它展开运用到很多施工的管理方面，比如施工的物流配送。”于晓明说。在上海中心大厦项目中，通过BIM实现的预制加工设计，是以深化设计阶段所拥有的BIM模型为基础，导入Autodesk Inventor软件，通过必要的数据转换、机械设计以及归类标注、材料统计等工作，将BIM模型转换为预制加工设计图纸，指导工厂生产加工，在保证高品质管道制作的前提下，减少现场加工的工作量。然后利用BIM模型进行工作面划分，再通过BIM的材料统计功能，对单个工作区域的材料进行归类统计，要求材料供应商按统计结果将管道、配件分装后送到材料配送中心。BIM模型的精确归类统计大幅减少了材料发放审核的管理工作，有效控制了领用的误差，减少了不必要的人员与材料的运输成本。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">BIM协同&nbsp; 绿色接力</B><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 早在项目的筹建阶段，上海中心大厦的建设理念就已经形成，即垂直城市的理念和绿色建筑的理念。其中的绿色，不仅是理念，更是从设计到施工再到未来运营的一个标准。据顾建平介绍，上海中心大厦以体现人文关怀、强化节资高效、保障职能便捷为绿色建筑技术特色，以室内环境达标率100%、非传统水源利用最大化、可再循环材料利用率超过10%、绿色施工和智能化物业管理为建设目标，旨在建筑设计和运营阶段成为国内第一个在建筑全生命周期内满足中国绿色建筑三星级和美国LEED绿色建筑体系高级别认证要求的超高层建筑。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/clip_image001.jpg\" width=302 height=406></FONT></P><DIV id=section5 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业主在设计的最初阶段就提出了关于可持续发展的高标准要求，然而这期间，项目内部还曾就是否采用BIM技术持有不同的观点。几年过去了，回过头总结BIM在建设管理过程中所立下的功劳，可见当初对BIM的坚持选择不仅是正确的，而且从长远来看，更是明智的，特别是在绿色施工和低碳工程上，BIM为其提供了有力的保障。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 针对超高层建筑体量大、系统设施复杂、运营能耗大、室内环境质量要求高、集中排放负荷大、可再生能源的利用受安全性约束大等先天约束条件所限，围绕节地、节能、节水、节材、室内环境质量把控和运营管理等方面，因地制宜地利用BIM，合理采用绿色建筑技术，通过本地化材料、高强材料和可循环材料的使用，优化结构设计、可视化室内自然采光模拟、营造室内舒适热环境等，实现了超高层建筑的绿色接力和可持续发展，并为今后超高层建筑的环保节能提供了范例，从而推动了中国绿色建筑评价体系的科技进步。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海中心大厦项目存在挑战巨大、项目参与方众多、分支系统复杂、信息量大、有效传递困难、成本控制难度大等问题。从项目全生命周期角度出发，以BIM为手段，应用Autodesk Revit建立模型，并在三维的环境里面完成对项目的修改和深化设计，针对项目的设计、施工以及运营的全过程，有效地控制了工程信息的采集、加工、存储和交流，从而帮助项目的最高决策者对项目进行合理的协调、规划和控制，意义非凡。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 尤其值得一提的是，BIM在项目竣工之后的运营管理和维护方面的巨大作用。传统的运营管理要依靠很多的图纸来开展工作，一旦发生事故，查找图纸就变得非常复杂，耗时耗力。如今，上海中心大厦通过BIM系统建立起来的完整的信息模型，可以非常便捷地进行图纸查询和检修，有利于及时解决突发事故；再者，关于上海中心大厦日后的运营，BIM也作了科学的计划，对此，夏军指出，“对于超高层建筑来说，它的投资非常巨大，建筑生命周期越长，其投资回报也就越高。”在BIM系统中，上海中心大厦整个的生命周期预计达到100年左右，未来的运营、使用、维修和更新等方面的问题，都已经通过BIM进行了充分的考虑和论证，在正常的范围内，生命周期将一直延伸下去。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海的又一建筑传奇——上海中心大厦，已经把BIM技术完整地引入到了项目设计、施工与管理的全过程之中，作为上海发展成就的重要见证，上海中心大厦正竭尽全力为世人展现一座融汇了中华文明内涵与西方建筑艺术的摩天巨作。</FONT></P></DIV>',' ','0','2011-12-05 16:28:29','0','','1','0','0','','0','698','');
INSERT INTO huishi_article VALUES('302','90','Autodesk Vault为全球最大的光学望远镜研发提供数据管理和协同设计','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 【2011 年12月12日】近日，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克” 或 “Autodesk”）宣布，欧洲南方天文台 (ESO)借助Autodesk Vault 数据管理软件及欧特克公司解决方案设计全球最大的光学望远镜，它将成为世界上第一架能够记录太阳系以外类地行星图像的望远镜。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ESO是全球最优秀的天文研究所之一，该天文台目前正在细致调整“欧洲超大型望远镜 (E-ELT)”的设计，这架望远镜预计将在未来十年投入运行。E-ELT 的核心元件是一面直径近 40 米（132 英尺）的镜子。这面镜子由将近 800 个镜坯单元组成，每个分片宽 1.4 米（约4.5 英尺），厚 50 毫米，该望远镜主体结构重约 2700 吨。据统计，E-ELT 收集的光线是当今已经运行大约十年的最先进望远镜的 15 倍，是人眼的一亿倍。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-ELT 强大的仪表也将帮助科学家更深入地探究遥远恒星周围的行星盘上是否存在有机分子和水这两种重要的生命迹象，将进一步帮助天文学家得以更为准确地研究原始星系和黑洞。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 确保 E-ELT 的准确性和功能性是 ESO 的首要任务，而这就需要在未来数年间协调科学家、工程师、承包商以及其他专业人士的工作。现在借助Autodesk Vault 软件能够帮助工程师根据各方的共识着手开展设计工作，并且能让参与项目的众多人员对各个团队生成的 CAD 模型进行生成、检验、对比和更新。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在使用 Autodesk Vault软件的同时，ESO设计师还结合运用 Autodesk Inventor 软件进行三维结构设计、仿真分析和设计可视化沟通，并能对设计过程中的关键系统做到协同设计，确保其团队在整个设计项目中始终保持协调同步。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ESO 机械和低温工程主管Paul Jolley表示，“光线经历了1300 万光年的旅行依然完好如初，但一旦遇到大气层，它们却在最后几微秒之内瞬间扭曲。E-ELT 将帮助我们对光线进行重新成像，让我们研究遥远的宇宙，这在以前根本办不到。欧特克软件使我们的团队得以更迅速、更高效地对比和可视化三维设计，帮助我们节省了设计成本和培训时间。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">数字化样机为天文学研究带来裨益<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ESO 工程师利用欧特克软件对 E-ELT 的内部光学系统进行详细设计。他们借助Inventor软件界定了各个机构周围的“空间外壳”,而 Autodesk Navisworks 软件则帮助设计师和非 CAD 用户对多个CAD 图纸加以比较和可视化，并在三维环境中进行冲突检查。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Autodesk Vault 被用于协调工作流和转化基本的数据模型，以确保工作按计划及时推进。虽然ESO是一个欧洲机构，但E-ELT将安装在位于地震带上的智利阿塔卡玛沙漠。部分仪表将在冷却到77开氏度（液氮的温度计量单位）的低温舱中运行。望远镜的壳体必须能够容纳项目工作人员以及需要使用 E-ELT 开展宇宙研究的研科研人员。此外，望远镜将装在一个直径86米（282 英尺）、高79 米（259 英尺）的专用外壳中。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧特克公司制造业解决方案部高级全球副总裁Robert “Buzz”Kross 表示，“ESO 在产品设计过程中需要高度地精确，因为任何一点微小变动都会对整个项目造成巨大影响。而欧特克软件的作用正是帮助ESO降低意外后果的发生机率。”</FONT></P></DIV>',' ','0','2011-12-14 15:27:02','0','','1','0','0','','0','878','');
INSERT INTO huishi_article VALUES('306','90','改变我们所知的三维技术：Autodesk 123D 系列扩展产品','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">【2011 年 12月26日】日前，全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司（“欧特克”或“Autodesk”）为其最新产品系列 Autodesk 123D 再添两款引人瞩目的新产品——Autodesk 123D Catch 和 Autodesk 123D Make技术预览版。利用这两款产品，任何人都能从身边的环境迅速、轻松地捕捉三维模型，并将模型转变为自己的艺术创作。此项最新技术进一步证明，欧特克正在不断拓展个人制造领域的疆界，让更多的人能够自由地想象和创造，并与他人分享其创作成果，从而共享乐趣、彼此学习或借此获得收益。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk 123D Catch是一款全新发布的公测版应用程序，之前在欧特克实验室(Autodesk Labs)的代号为 Project Photofly，这款应用程序利用云计算的强大能力，可将数码照片迅速转换为逼真的三维模型。只要使用傻瓜相机、手机或高级数码单反相机抓拍物体、人物或场景，人人都能利用123D Catch将照片转换成生动鲜活的三维模型。通过该应用程序，使用者还可在三维环境中轻松捕捉自身的头像或度假场景。同时，此款应用程序还带有内置共享功能，可供用户在移动设备及社交媒体上共享短片和动画。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"Autodesk 123D Catch利用云计算的强大能力，可将数码照片迅速转换为逼真的三维模型\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/20111226_01.jpg\" width=420 height=420></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><B><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk 123D Catch利用云计算的强大能力，可将数码照片迅速转换为逼真的三维模型 </FONT></B></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">利用Project Photofly技术，一支在庞贝考古遗址开展现场工作的研究团队成功完成了三维模型捕捉，从而对庞贝古城之中规模最大、外界了解最少的建筑之一进行了建筑方面的记录和分析。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">马萨诸塞大学阿姆赫斯特校区副教授 Eric Poehler 表示，“虽然标准的考古记录方法比较确切可靠，但却非常费时费力。我们每年只有有限的时间能通过三维模型实地捕捉庞贝考古遗址，使用Project Photofly 之后，我们的效率和准确率都大大提升了。” </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk 123D Make 应用程序是一款面向Mac的全新免费*技术预览，该应用程序能够将数字三维模型转换为二维切割图案，用户可利用硬纸板、木料、布料、金属或塑料等低成本材料将这些图案迅速拼装成实物，从而再现原来的数字化模型。123D Make 可支持用户创作美术、家具、雕塑或其他简单的样机，以便测试设计方案在现实世界中的效果。欧特克开发的这项技术能像数字化工程师一样帮助个人用户创建三维模型，并最终将其转化为实物。123D Make的设计初衷是为了使用户能够发挥创意，让他们能够在量产产品无法满足要求时，自行创建所需的产品。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"Autodesk 123D Make将数字三维模型转换为二维切割图案，用户可利用低成本材料组装实物\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/20111226_02.jpg\" width=420 height=243></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">Autodesk 123D Make将数字三维模型转换为二维切割图案，用户可利用低成本材料组装实物</B> </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">欧特克消费类产品解决方案部副总裁Samir Hanna表示，“当今的 DIY 人士需要多种多样的前沿三维工具来充分把握新兴的自制浪潮所带来的艺术创作机遇和经济机会。在新一轮行业革命不断推进之际，欧特克正在全力为创意和创新活动扫除障碍。” </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk 123D系列还包括 Autodesk 123D 桌面应用程序，可支持人们设计出高度精确且极具制造可行性的物件，从而将创意转化为现实。Autodesk 123D Sculpt 免费*应用程序用于在 iPad 上雕塑和描绘三维创意作品。喜爱发明、创造、艺术和手工艺的人以及创业者可以在各种平台和设备上使用Autodesk 123D产品系列，并在同一个目的网站上访问各种内容以及欧特克制造合作伙伴和关系方。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">定价和上市情况</B> </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk 123D Make技术预览版在 www.123Dapp.com/make 上面向Mac提供免费*下载。Autodesk 123D Catch 公测版应用程序在www.123Dapp.com/catch 上提供免费*下载。 </FONT></P>',' ','0','2011-12-29 11:09:24','0','','1','0','0','','0','634','');
INSERT INTO huishi_article VALUES('311','90','ShoeExpress-制鞋业最佳解决方案','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" dir=ltr><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><STRONG>产品简介</STRONG></SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" dir=ltr><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" border=0 alt=\"\" src=\"http://www.cimatron.com.cn/uploads/Special%20Applications/682.jpg\" width=202 height=162></SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" dir=ltr><SPAN style=\"COLOR: #ff6600; FONT-SIZE: 10pt\"><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">ShoeExpress是一套动态过程导向工具-与CimatronE功能强大的CAD/CAM软件包完美结合-专为制鞋业量身打造的专业解决方案。ShoeExpress提供一系列的解决方案，从数据输入到完全混合级放（点、STL、线框、实体）一应俱全，这些应用工具是基于多年行业经验积累而开发。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\" dir=ltr><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><STRONG><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">产品亮点</SPAN><BR style=\"FONT-FAMILY: \"></STRONG><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;丰富的制鞋业工具；包括鞋面包覆曲线和曲面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;功能强大的最佳级放工具；支持混合建模，固定区域，自由变形区域定义</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;革新的仿型加工技术；从一个鞋底文件提取混合模型到其它鞋底文件进行加工</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;专业的应用工具，搭建起设计者与模具制造者的桥梁</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;鞋模铸造业工艺解决方案；支持多色铸模</SPAN></FONT></P><SPAN style=\"FONT-SIZE: 10pt\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><STRONG>主要优势 </STRONG></SPAN></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;极大地缩短从产品构思到生产出成品的时间</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;流程工艺经由多年行业经验积累而成</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;支持混合建模</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;全面定义3D模型，减少流水作业错误</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;3D数字化模型，进行构思共享、设计预览等操作时无需做出实体模型</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;最终产品保证与所设计模型100%一致</SPAN></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><SPAN style=\"FONT-SIZE: 10pt\"><DIV><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><STRONG>特色</STRONG></SPAN></DIV><DIV><SPAN style=\"FONT-SIZE: 10pt\"></SPAN><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">ShoeExpress由四大模块组成，覆盖了整个制鞋过程：</SPAN></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"></FONT>&nbsp;</DIV><DIV><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;ShoeExpress设计：</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;从数字化数据快速生成曲线和点</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;在位图上绘制轮廓曲线</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;鞋面包覆曲线和曲面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;展开曲面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;自动创建和动态修改曲面侧面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;动态生成表面下的解剖部分，实时显示结果</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;快速便捷地创建鞋底花样几何实体，为后续使用NC模块进行NC加工作准备</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;3D鞋混合模型级放（点、曲线、曲面、实体和STL物体）</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;用户定义区域可设定参数缩放比例</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;固定区域处理logo，插件和安全气囊等</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;一个阶段操作可生成多个尺寸 </SPAN></FONT><DIV>&nbsp;</DIV></DIV><DIV><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;鞋底仿型：</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;仿型现有3D鞋混合模型（点、曲线、曲面、实体和STL物体）做出不同的鞋轮廓</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;ShoeExpress固定区域处理</SPAN><BR style=\"FONT-FAMILY: \"></FONT><SPAN style=\"FONT-SIZE: 10pt\"><BR><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;鞋跟设计: </FONT></SPAN><BR><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;用2D或3D曲线创建3D鞋跟模型</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;动态修改和处理曲线与曲面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;3D级放；通过表格控制每级参数</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;自动创建鞋跟头模型几何实体，为后续的NC加工作准备</SPAN><BR style=\"FONT-FAMILY: \"></FONT><SPAN style=\"FONT-SIZE: 10pt\"><BR><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">&#8226;&nbsp;ShoeExpress铸造: </FONT></SPAN><BR><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;自动识别曲线</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;自动创建鞋面和模型几何实体，为后续使用CimatronE强大的NC模块进行加工操作作准备</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;处理多色模具若干表面</SPAN><BR style=\"FONT-FAMILY: \"><SPAN style=\"FONT-FAMILY: Arial; COLOR: #000000; FONT-SIZE: 14px\">o&nbsp;再次应用加工工艺处理不同模型（几何模板）</SPAN></FONT></DIV><DIV><SPAN style=\"FONT-SIZE: 10pt\"><DIV align=right><FONT style=\"FONT-FAMILY: Arial; COLOR: #000000\"></FONT>&nbsp;</DIV><DIV align=right><DIV style=\"LINE-HEIGHT: 15pt; TEXT-INDENT: 20.65pt\" align=left><FONT style=\"COLOR: #000000\">&nbsp;<IMG style=\"WIDTH: 157px; HEIGHT: 124px\" border=0 alt=\"\" src=\"http://www.cimatron.com.cn/uploads/Special%20Applications/688.jpg\" width=157 height=124>&nbsp;<IMG style=\"WIDTH: 158px; HEIGHT: 123px\" border=0 alt=\"\" src=\"http://www.cimatron.com.cn/uploads/Special%20Applications/686.jpg\" width=158 height=123>&nbsp;<IMG style=\"WIDTH: 152px; HEIGHT: 123px\" border=0 alt=\"\" src=\"http://www.cimatron.com.cn/uploads/Special%20Applications/684.jpg\" width=152 height=123></FONT></DIV></DIV></SPAN></DIV></SPAN></P></SPAN></SPAN>',' ','0','2012-03-10 09:25:07','0','','1','0','0','','0','842','');
INSERT INTO huishi_article VALUES('315','90','AutoCAD WS 移动和网页应用升级啦！--1.4版隆重亮相！','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我们很高兴宣布最新版本的AutoCAD WS刚刚发布。网页应用只需要简单地登录</FONT><A href=\"http://www.autocadws.com/\" target=_blank><SPAN style=\"FONT-FAMILY: Arial; COLOR: #118888; FONT-SIZE: 14px\">www.autocadws.com</SPAN></A><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">就可以体验了。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 您可以到</FONT><A href=\"http://itunes.apple.com/cn/app/autocad-ws/id393149734?mt=8\" target=_blank><SPAN style=\"FONT-FAMILY: Arial; COLOR: #118888; FONT-SIZE: 14px\">App store下载</SPAN></A><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">iPad,iPhone和iPod touch最新版的AutoCAD WS.也可以到安卓市场（Android Market）</FONT><A href=\"https://market.android.com/details?id=com.autodesk.autocadws\" target=_blank><SPAN style=\"FONT-FAMILY: Arial; COLOR: #118888; FONT-SIZE: 14px\">下载安卓版本</SPAN></A><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">的AutoCAD WS手机和平板应用.</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://au.autodesk.com.cn/au/images/autocadws/120229_ws_1.jpg\"></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这次版本更新添加了过去几个月以来很多用户建议的功能，相信这迈出了AutoCAD发展史上的关键一步。和往常一样，我们盼望着听到您关于新版本的意见反馈，也欢迎您提出对今年晚些时候发布的版本的建议和期望。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">GPS支持</B><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GPS新功能允许使用智能手机和平板电脑上面自带的GPS功能将您的地理位置定位到图纸上，也可以添加和地理位置相关联的标注上去。请注意AutoCAD WS依赖于您的设备提供的坐标信息，因此您需要打开设备的GPS功能模块来获取和更新精确的GPS坐标信息。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://au.autodesk.com.cn/au/images/autocadws/120229_ws_2.jpg\"></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">3D（三维）支持</B><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最新版的AutoCAD WS扩充了图纸查看模式，当打开3D图纸时，您可以选择使用2D或者3D模式打开。当使用3D模式来查看时，目前禁用所有的编辑功能。3D工具栏显示有10种不同角度的视图，当然也可以通过用手指拨动来旋转模型。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://au.autodesk.com.cn/au/images/autocadws/120229_ws_3.jpg\"></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">手机打印</B><BR style=\"FONT-FAMILY: \">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 这个版本添加了直接通过AutoCAD WS应用从手机打印的功能。可以打印手机上面的2D或者是3D图纸。可以将图纸打印成PDF发送Email给任何人，或者您也可以将图纸直接发送到网络连接的惠普打印机HP ePrinter.</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://au.autodesk.com.cn/au/images/autocadws/120229_ws_4.jpg\"></FONT></P>',' ','0','2012-04-10 10:17:42','0','','1','0','0','','0','616','');
INSERT INTO huishi_article VALUES('328','90','消费产品企业选择Autodesk的10大理由','<P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk&reg;数字样机解决方案可以帮助消费产品制造商提高创新能力、缩短新产品的开发流程，并优化与合作伙伴和供应商的协作。Autodesk提供了一套完备并且能够用于所有产品开发阶段的工具，使制造商能够通过持续创新实现消费产品品牌的差异化。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">Autodesk数字样机解决方案有助于降低产品开发成本，提高创新能力，进而实现收入和利润的增长。通过提供一种可升级、可实现、经济高效的数字样机解决方案，Autodesk利用其独特的实力帮助消费产品企业加速新产品的开发，同时使其能够在制造物理样机之前对设计进行可视化、优化和管理，并就设计意图进行交流。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">行业设计创造力——概念建模</B><BR style=\"FONT-FAMILY: \">Autodesk提供了一套专门用于实现创造性设计流程的产品。通过旨在为您的设计工作和可交付产品提供正确服务的可升级性，Autodesk&reg; AliasStudio&#8482;产品家族能够提供强大的曲面定义工具，此外，通过能够快速将想法变成现实的建模和可视化工具，该产品家族还能够优化设计流程。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">行业设计自由——概念草图绘制</B><BR style=\"FONT-FAMILY: \">为了使艺术家能够自由地通过其最擅长的方式实现和交流设计意图，Autodesk&reg; SketchBook&reg; Pro提供了一块行业领先的数字几何画板，其中基于姿势的艺术家友好型界面能够将技术和功能转化为自然的绘图体验。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">可视化协作</B><BR style=\"FONT-FAMILY: \">Autodesk&reg; Showcase&#8482;能够帮助设计师创建精确、逼真的图像，这不仅有助于表达设计的外型和功能，而且能够通过创建相应的环境来突出品牌特色。该产品支持用户在一种独特的环境中展示和评审模型，在这种环境中，团队成员能够及时可靠地制定设计评审决策。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">工程设计效率<BR style=\"FONT-FAMILY: \"></B>Autodesk&reg; Inventor&reg;作为数字样机解决方能的基础，能够创建精确的三维模型，帮助用户在实际制造前验证设计的精确度、外形与功能。其中用于制作、验证和文档化完整数字样机的完备设计工具能够帮助消费产品制造商更快地将更多创新型产品投入市场，同时减少物理样机的使用。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">开放式互操作性<BR style=\"FONT-FAMILY: \"></B>从行业设计阶段到工程设计阶段再到制造阶段，Autodesk为其提供了一套具有互操作性和可升级性的产品，实现了在整个新产品开发流程中使用单一的数字模型。不仅如此，完全集成的互操作型合作伙伴解决方案使Autodesk产品能够轻松地集成进现有的软件环境之中。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">同步协作</B><BR style=\"FONT-FAMILY: \">无论是在部门之间还是与外部供应商之间，Autodesk&reg; Design Review（一款能够审阅、标记、测量和跟踪变更的全数字式免费软件）等经济高效的解决方案都能够使协作变得非常轻松。Autodesk Design Review和Autodesk Streamline&reg;的部署能够使企业以托管的方式轻松、集中地在线共享、储存和管理项目文档。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">经过优化的制造流程<BR style=\"FONT-FAMILY: \"></B>Autodesk数字样机解决方案所提供的工具能够提高消费产品制造流程中主要阶段（例如，发布流程、供应链协作、工装模具、文档化、数据管理、生产和工厂布局）的效率。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">无缝数据管理</B><BR style=\"FONT-FAMILY: \">通过组织、管理以及自动处理主要的设计和发布管理流程，缩短开发周期并优化企业在设计数据上的投资。Autodesk&reg; Vault软件能够安全地存储和管理工程设计数据及相关文档，并且能够通过数字样机解决方案工作流在各个工作组之间起到沟通纽带的作用。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">强大的动画、特效和渲染功能</B><BR style=\"FONT-FAMILY: \">Autodesk&reg; Maya&reg;软件提供了快速高效的工具，能够用于创建令人惊叹的高清晰图像和环境，以此为宣传手册、广告、演示和在线内容等销售和营销材料的制作提供支持。借助Autodesk&reg; 3ds Max&reg; Design中高效的动画和绘图工作流工具创建逼真的产品演示。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">集成的仿真和分析</B><BR style=\"FONT-FAMILY: \">Autodesk&reg; Inventor&reg;中包含了易于使用、紧密集成的运动仿真和应力分析工具，使用户能够轻松地验证数字样机，在投产前预测设计在真实工况下的性能。通过数字化的设计数据验证方式，Autodesk能够帮助消费产品企业获得优势，使其能够在缩短产品上市周期的同时最大限度地减少对耗时的高成本物理样机的需求。</FONT></P>',' ','0','2012-07-06 15:45:10','0','','1','0','0','','0','562','');
INSERT INTO huishi_article VALUES('413','90','制造成本：将设计创意从样品变成成品之前需要考虑的九个问题','<div id=\"section1\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;对于那些在餐巾纸上勾画着设计草图、希望认认真真去实现某个产品创意的设计者来说，设计软件、3D打印机以及“众筹”融资模式的普及,已经改变了他们所面对的“游戏规则”。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; 但是，将出色的样品转变成成品究竟需要做些什么呢？</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; 第一步：制作现金流量表。做现金流量表？制造产品不就是为了让现金流动吗？没错，说到底确实如此。一件出色的样品能告诉你，“能不能”做出这件产品；而一份现金流量表则能告诉你，“该不该”做出这件产品。对于将样品转化为制成品所产生的资金流动，在投入生产前对其了解得越多，就越能做出明智的决策，这对一家年轻企业来说十分重要。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; Kickstarter和其他众筹项目为我们提供了大量研究案例，让我们能够了解到将样品转化为大批量制造的成品需要做些什么，延迟或失败的项目通常最能让我们学到经验。Fast Company最近发表的一篇文章《 This Is Why Your Kickstarter Project is Late》中分析了多个项目，均是融资成功却在样品投入量产时，因为对其复杂性和制造成本预料不足而一再错过完工期限。这究竟说明了什么呢？答案就是只要是有可能出问题的地方，那就早晚会出问题，问题出得越晚，造成的损失就越大。不过别泄气，人生本就如此。你应该事先想好应对之策，以防意外发生。&nbsp;&nbsp;&nbsp;</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp;&nbsp;在将你的设计创意从样品变成成品前，应考虑以下九个问题。（下面这些缩写如果你以前没见过，正好可以借此机会了解一下）。</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image_414x328.jpg\" alt=\"\" width=\"414\" height=\"328\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section2\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">1．BOM（材料清单）。制造这件产品要使用什么材料？纸张还是塑料？金属还是织物？你的产品有多少个部件？是批量制造还是定制生产？跟你合作的工厂可不会把成本明细表拿出来给你看，所以必须动用所有的人脉关系来审慎调查，以判断是否真的值得为产品加上某个未必非加不可、但你却无法舍弃的部件。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">2．MOQ（起订量）。你选择的合作工厂将有权参与你的业务决策。你会拿到一份以MOQ为基础的报价，其中包含大量订货折扣价，这个价格考虑了项目启动和结束所需的时间，并加上了所需的劳动力和物料资源，同时也给工厂留出了一定利润的空间。有时候，MOQ是以百为单位，而且可以协商。如果选择在中国制造，MOQ可能就要以千为单位，而且没有商量的余地，除非是像苹果那样的大企业。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">3．PO（采购订单）。为了启动生产，工厂会要求预付总成本的三分之一或一半作为前期资金，其余款项等到发货时再付清。你的投资可能要等数周或数月之后才会有销售回报。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">4．工具作业。如果你要采用的材料是金属、塑料或纸张，那么你的产品可能就需要使用工具来制造，这些工具就是工厂为你生产产品时使用的定制模具或夹具，其成本从1000美元至20万美元不等。这能带来的好处就是这些工具将归你所有，而坏处就是它们可能是专为这家工厂而打造，也只能由这家工厂来使用。所以当你选择工厂时最好慎重一些，因为直到这些工具完成成本摊销之前，你都无法换掉这家工厂。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">5．质量。你应该尽可能深入地了解你的合作工厂，对小企业来说尤其如此。如果你选择在海外进行生产，那么在没有外力帮助的情况下你将很难掌控双方之间的关系，而且就算有外力协助，要处理好这种关系也并不容易。你必须发挥想象力，与样品制作商及合作工厂配合协作，以了解将手工或小批量生产转变为大批量生产所需的步骤。我们公司曾经因为不了解工厂的运作方式而犯过无数错误。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">我们制作过一件白色的仿麂皮产品，样品看上去很不错。然而，在生产过程中，产品不只由一个人经手，而是要从一个工作台转到另一个工作台，整个过程要经过数十人之手。猜猜结果怎样？他们的手并不是都洗得很干净。当我看到联邦快递送来的成品样品时，我差点哭出来，产品表面25%的部分都有清晰可见的指印。没人会花钱去买看起来像旧货一样的产品。这个出乎意料的质量问题耗费了我们的时间和金钱，并且对我们与合作工厂之间的关系产生了不良影响。</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image_414x287.JPG\" alt=\"\" width=\"414\" height=\"287\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section3\" class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">6．包装。如果你的产品是要上架零售的，那么你就需要做好产品包装。包装不仅仅用以保护产品，它也是营销策略的一部分。我们公司花在产品包装开发上的时间要比产品开发多出十倍。如果出现问题，便会浪费我们一年的时间以及数千美元的资金。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">包装也是一种单独的产品，同样要投入资源和时间进行样品设计。包装本身其实就是一种成品。别忘了，产品往往需要在包装之外再加包装。只要货品需要运输，那么无论路程远近，你都需要用内包装盒来保护它们。这种包装成本很低，但你的合作工厂如果没把这件事做好，你收到的就很可能是遭到损坏、无法销售的货品。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">7．运输。货物早晚都要从工厂运往别处。这时候，无论你要选择空运、船运、铁路还是公路，都要给这趟旅程留出1000到5000美元的预算。除非合作工厂离你很近，否则在货物最终发运之前肯定还要通过联邦快递来来回回地递送样品。这听起来好像花不了多少钱，但如果路途遥远，那实际情况就远非如此了——拿我们在中国的合作工厂来说，现在我简直觉得哪怕只是朝那家工厂的方向看看也要付给联邦快递一张一百美元的大钞。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">8．仓储。一旦拿到自己的产品，必须找个地方来存放。除非你有一间车库，否则就需要找一座仓库或运营中心来储存货物。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">9．其他固定成本。如果想创办一家公司来经营你的产品，那么其他成本也会迅速产生，例如网站、电子商务站点、商业账户、会计员、工作空间、贸易展览等等。在销售低迷时，这些成本也大多都无法轻易摆脱掉。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<i>关于作者：</i><i>CINDY GLASS</i><i>原是一名投</i><i>资专</i><i>家，主要工作就是</i><i>对别</i><i>人的企</i><i>业进</i><i>行分析和</i><i>评论</i><i>。后来，她作</i><i>为</i><i>共同</i><i>创</i><i>始人，</i><i>创办</i><i>了自己的</i><i>产</i><i>品</i><i>设计</i><i>公司，但</i><i>问题</i><i>接踵而来，从而令她</i><i>认识</i><i>到</i><i>创业</i><i>是多么的不易，又是多么的有成就感。</i>\n	</p>\n</div>','','1','2014-02-08 17:13:25','0','http://','1','0','0','','0','169','');
INSERT INTO huishi_article VALUES('331','90','恰而立之年 AutoCAD引领革新之路','<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　古人云：“三十而立”。1982年，随着AutoCAD的诞生，这个被誉为“将自动化制图带入了设计界，引发了颠覆式的变革”的设计软件，在黑白字符界面下，需要依靠5.25寸软盘安装下蹒跚起步。2012年，AutoCAD的而立之年，历经30年发展，AutoCAD已经成为工业设计领域最重要的标杆。现在她的版本是2013，运行在绚烂的视窗界面下，安装盘是DVD 。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AutoCAD三十而立之年回顾过往，从简单到复杂，从单一到系统，AutoCAD披荆斩棘一路走来，创新、改革、征服、引领世界，她似乎从来都没有停止前进的脚步。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AutoCAD 30年 </FONT></STRONG><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　1982年，美国人John Walker携15位创业伙伴共同创建了欧特克（Autodesk）公司，并推出售价仅1000美元的AutoCAD软件。一张容量为360Kb的软盘，没有菜单功能，所有命令需要背--即问世之初的AutoCAD V1.0。尽管功能有限，但是作为一款能够在个人电脑上运行的CAD软件，AutoCAD在设计界刮起了一阵旋风，它让数字化设计技术走进普通设计师的视界，大幅提升了设计的速度与精确度的同时，也给了设计师更多释放灵感的空间，成为其日常工作的重要手段，彻底改变了设计的方式。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　之后第一个十年，欧特克公司迅速壮大，为今后的发展奠定了坚实的经济基础和技术基础。1985年，销售收入突破2700万美元，同年问世的AutoCAD V2.1新增了3D功能。1986年，AutoCAD成为美国高校的必修课之一。1991年，欧特克携旗下产品ArcCAD开始进军建筑设计领域。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　第二个十年，技术创新更是突飞猛进。1993年，适用于DOS系统的欧特克3D Studio（V3版）发布，该产品可用于AutoCAD绘图并创作复杂的动画。同年，AutoCAD第12版软件首次应用于windows平台，成为有史以来CAD程序中最成功的一个版本。1995年，欧特克推出第一款面向机械制造行业的软件Mechanical Desktop。1997年，三维变量化技术问世。既保持了参数化技术的原有优点，同时又克服了它的许多不足之处，为CAD 技术的发展提供了更大的空间和机遇。1999年，推出的AutoCADR15.0已经能够支持三维建模和高质量的渲染功能。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　在第三个十年，欧特克继续保持强大的发展势头，大刀阔斧的收购、发展。2009年，AutoCAD2010中，三维设计功能显著提升，可帮助用户解决最具挑战性的设计难题，并支持三维打印。今年，最新推出的2013版AutoCAD软件产品，其中包括AutoCAD 2013、AutoCAD LT 2013。新软件可与AutoCAD WS 及其他欧特克云产品和服务直接连接到一起，便于用户随时随地访问设计文件、开展设计协作。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　如今30年过去了，欧特克公司已发展成为全球最大的二维和三维设计、工程与娱乐的软件公司，在全球111个国家和地区建立了分公司和办事处，拥有16家研发中心，超过3000名研发人员。为各地的制造业、工程建设行业、基础设施业以及传媒娱乐业提供卓越的数字化设计、工程与娱乐软件服务和解决方案。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AutoCAD 兄弟连 </FONT></STRONG><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　“很多时候人们可能很熟悉AutoCAD，但是却不知道Autodesk（欧特克）为何许人也。”这并非单单是一个笑话，而是确有其事。不过这种现象却足以从一个侧面证明AutoCAD的技术领先性和市场普及率。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　如果盘点一下最近两年IT产业最火热的词，“云计算”绝对位列榜首，但时至今日，我们必须要强调纠正的是，云计算不只是数据中心虚拟化，不只是一种技术，而是技术和商业模式相结合的一种应用。如果没有应用，云计算将是无源之水，无本之木。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　回顾过去，其实自十多年前推出世界上最大的项目托管服务软件Autodesk Buzzsaw以来，欧特克一直是设计行业云应用程序的先驱。而直到2010年9月，欧特克正式推出云端软件AutoCAD WS后，这款在App Store就能买到，能让用户通过网络浏览器或移动设备随时随处查看、编辑和共享DWG文档的移动应用程序在全球已经有300万用户。在中国，AutoCAD WS的用户数已经突破35万，用户数量仅次于美国，是采用AutoCAD WS的第二大国，不过这一数字还在继续快速增长。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　时至今日，中国用户对于云端设计的需求强烈，为了顺应这一趋势，在2011年12 月 6日，欧特克顺势推出了面向中国市场的免费在线 CAD 软件--AutoCAD易，并同时推出涵盖AutoCAD易软件、内容和应用商店，以及社区论坛等的综合门户网站--“CAD人”。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克公司大中华区总经理黄志铭介绍， AutoCAD易是欧特克中国研究院（ACRD）研发人员针对中国市场具体需求，专为中国设计与工程人员所研发设计的一款、简单实用、连接到云服务的CAD解决方案，可支持中国用户在线创建并编辑 CAD 文档，还可以通过 AutoCAD WS 在移动设备上访问这些文档。未来，AutoCAD易还将陆续提供更丰富的图纸创建与编辑功能以及专门面向中国用户的内容，而“CAD人”也将不断地丰富网站内容，完善网站功能，为中国设计与工程人员打造一个优质的设计平台。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　虽然同为欧特克云产品，但是AutoCAD WS侧重在移动设备等场景下的随时随地的使用体验，而AutoCAD易则侧重为中国的设计师和工程师提供在桌面端各种功能齐备高度定制化的使用体验。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk 360 云计算大成者 </FONT></STRONG><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　目前，欧特克提供的云产品和服务已经超过25种，而且未来还将继续发展其与云解决方案的组合。毫无疑问欧特克云产品和服务可以为设计师、工程师和数字艺术家提供更大的灵活性以及更先进的功能和更强大的计算能力，从而扩展其桌面电脑功能。除此之外还能让创作者更好地获取高性能渲染、设计优化、仿真分析和协作等改良功能，而这些功能以前仅供那些能访问本地高端计算资源的机构使用。此外，还能加快设计渲染、以更少的时间和资源生成更多设计迭代，实现更加轻松便捷的无缝协作，从而大大改善整体设计及创意过程。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　这里有必要提及一下集欧特克云于大成的Autodesk 360解决方案，Autodesk 360可以为用户提供强大、完整的信息和流程视图，同时还拥有安全的数据管理功能，因此可以在任何时间和地点为用户提供正确的信息。Autodesk 360可与现有的系统和软件集成，供企业内外的技术人士和非专业人士访问，其界面直观，可供用户轻松查看业务信息、协作、管理和共享数据，以及对整个产品生命周期进行计划。云端解决方案的前期成本和维护成本均偏低，减少了不需要的大笔资本支出和部署成本，因此向客户提供了更为经济可行的产品生命周期管理方法。Autodesk 360解决方案还拥有内置的安全性能和常规备份。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AutoCAD 2013 创新让未来无限可能 </FONT></STRONG><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　作为行业的引领者，欧特克从未停止过产品创新的脚步，在AutoCAD 问世三十周年之际，公司又隆重推出作为其旗舰产品的二维及三维CAD设计软件最新版本--2013版AutoCAD 软件产品，其中包括AutoCAD 2013、AutoCAD LT 2013。新软件可与AutoCAD WS 及其他Autodesk 360云平台上的产品和服务直接连接到一起，便于用户随时随地访问设计文件、开展设计协作。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　2013版AutoCAD软件产品配备了强大的全新三维设计工具，能让建筑师、工程师和其他专业设计人员更好地探索设计创意、加快出图速度与整个设计流程无缝连接。AutoCAD 2013软件为用户提供了更大的灵活性，用户可以定制软件，以满足特定的行业需求，还能提高从概念设计到项目完成的全程工作效率。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　AutoCAD 2013为设计整合、云连接、简化设计及制图工作流程提供了强大的新工具。现在用户可以直接连接到Autodesk 360云平台，在任何地方都能访问设计文件、开展设计协作。此外用户还可通过Autodesk Exchange Apps商店访问和安装数百个应用程序，轻松无比地定制其AutoCAD使用体验。而其特点则包括：加快出图速度、无缝连接、轻松定制以及探索设计新创意等。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　对于新产品的问世，欧特克公司AutoCAD产品部副总裁Amy Bunszel表示：“我们致力于帮助各行各业、各种规模的用户将其创新理念转化为实际成果。随着设计环境日趋移动化、竞争越来越激烈，我们的用户正面临着新的挑战，我们竭诚为用户提供强大的功能和灵活性，使之能够提高工作效率、有力应对挑战。” </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克坚信创新会让未来无限可能！ </FONT></P>',' ','0','2012-07-24 15:40:15','0','','1','0','0','','0','611','');
INSERT INTO huishi_article VALUES('332','90','PKPM携Autodesk加速BIM技术在中国深入应用','<FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">【2012 年7月16日，北京】中国建筑行业软件的龙头企业建研科技股份有限公司(“建研科技”或“CABRTECH”)与全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司(“欧特克”或“Autodesk”)在京签署战略合作备忘录，旨在共同推动建筑信息模型(BIM)等技术在中国工程建设行业的研究与应用。BIM技术基于智能三维模型，能够为建筑和基础设施项目提供更快速、更经济的项目管理手段。同时，双方的战略合作也包括二维CAD领域的技术共享，以进一步推动PKPM产品与欧特克产品的数据互连。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　建研科技股份有限公司总裁许杰峰与欧特克公司工程建设行业战略及市场部高级总监Nicolas Mangon代表双方在战略合作备忘录上签字。建研科技股份有限公司常务副总裁王翠坤、建研科技设计软件事业部主任杨志勇、建研科技设计软件事业部副主任顾维平、建研科技设计软件事业部总工程师沈文都、欧特克公司工程建设行业中国区总监李邵建、欧特克公司工程建设行业亚太区政府业务拓展高级经理Sunil MK、欧特克公司工程建设行业业务拓展经理张曦一同出席了签约仪式。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">建研科技股份有限公司是国内著名的工程建设领域软件供应商，其PKPM系列设计软件被中国建筑行业广泛使用。通过此次合作，建研科技PKPM系列设计软件(包括建筑结构设计软件中国版本)与欧特克BIM软件产品Revit将实行数据链接，帮助制图人员、设计人员和工程师之间实现更好的协作。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　建研科技股份有限公司总裁许杰峰表示，“BIM技术是继‘甩图板’之后又一次建筑行业信息技术进步浪潮中的重要一环，建研科技和PKPM软件将通过与欧特克的合作更好地推动中国建筑行业技术进步。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克公司工程建设行业战略及市场部高级总监Nicolas Mangon表示，“在全球工程建设行业领域，BIM 的使用需求持续迅猛增长。我们与建研科技的合作将帮助中国专业人士更好地迎接挑战，提升效率、降低成本并提高项目质量。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　建研科技设计软件事业部主任杨志勇表示，“建筑类设计软件是中国工程建设领域技术进步的重要推动力量之一，PKPM软件承载着中国几代工程师的职业梦想，我们愿意本着开放与互利的心态与欧特克这样的优秀软件企业合作，共同保障建筑行业软件的健康发展。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　欧特克公司大中华区总经理黄志铭表示，“很高兴欧特克与建研科技签署战略合作备忘录，双方携手合作将进一步推动中国工程建设行业的发展。欧特克和建研科技将一如既往地积极推动BIM在中国工程建设行业的深入应用。”</FONT></P><P><FONT style=\"FONT-FAMILY: Arial\"><!-- baidu_tc block_end --></FONT></P>',' ','0','2012-07-24 15:41:01','0','','1','0','0','','0','651','');
INSERT INTO huishi_article VALUES('414','90','影响小企业未来前途的五大制造趋势','<div id=\"section1\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;如果你想成立一家小型的产品设计公司，那下面的消息将为你带来福音。当今市场比以往任何时候都更为平等，而现金的社交媒体和数字化营销工具又能帮助你与消费者建立更紧密的联系。如果你想出了能创造巨额财富的绝妙创意，那你就应该了解下面的五大制造趋势，它们可以帮助你将产品更快、更省钱、更有效地投入市场。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<b><span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;1.</span></b><b><span style=\"font-family:Microsoft YaHei;\">&nbsp;</span></b><b><span style=\"font-family:Microsoft YaHei;\">众筹：</span></b><span style=\"font-family:Microsoft YaHei;\">既然可以从一千个朋友那里借钱，为什么只找一个朋友借呢？越来越多的企业家指望着利用大众的力量获得资本，因为这样可以筹集到大量资金。据估计，全球众筹行业在2013年可筹集到高达50亿美元的资本，这一数字着实令人震惊。规模最大且最知名的众筹引擎当属Kickstarter，像Indiegogo或appbackr这类规模小一些的网站则主要针对有特殊需要的群体。尽管以捐赠为基础的融资有时的确行得通，但是投资还是小企业及其客户所热衷的方式。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; “这是一种新的回报机制，”在欧特克有着“技术未来派大师”之称的Jordan Brandt说道，“想办法为人们提供物质鼓励，让人们有机会露脸，让人们觉得自己为产品入市出了一份力，这些都是十分重要的。”</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;无论选择哪家众筹网站，你的网页都是向大众介绍自己产品的第一阵地。不要低估一段引人注目、制作精良的视频和清晰连贯的宣传信息所能发挥的作用。但要记住，一个Kickstarter页面并不等于一个经营方案众筹宣传的成功之路上常常要经历很多挫折——宣传活动往往从一个绝妙的创意开始，在经历了停滞不前、执行不力的实施过程后却因为缺乏长期规划而以失败告终。</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image001_414x279.jpg\" alt=\"\" width=\"414\" height=\"279\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section2\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<p style=\"font-size:1.181818182em;\">\n							<b><span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;2.&nbsp;</span></b><b><span style=\"font-family:Microsoft YaHei;\">新式国内制造</span></b><span style=\"font-family:Microsoft YaHei;\">：这一趋势有多种叫法，如：新式国内制造、国内再制造、国内制造或分配式制造。随着海外运输成本和环境影响的增加、工资差距的缩小，再加上国内能源价格低廉，许多企业正在将生产厂搬到离消费者更近的地方。由于这些经济因素，加上人们愈发青睐个性化产品，也越来越不愿意等待，“本地制造”的趋势应运而生。“新式国内制造”最能清楚地表述这一趋势，因为这种本地化是前所未有的，产出的产品和工作性质也不同于前些年的离岸制造。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;过去，小企业不得不依附于更为庞大的供应链或与其他小企业合作，因为这样才能凑够订单数目进行海外生产。现在的情况证明，将一切打包回家进行生产更具性价比，而且出现了另外一个现象：“产业公地”（Industrial Commons）重新兴起。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp;“一个明显的例子就是全盛时期的底特律，”Brandt解释说，“你不仅拥有汽车设计师和大型汽车企业，你还必须拥有为它们制造配件的产业链。这样你就拥有了整个物流体系，从而确保大家在适当的时候各尽其责。”随着大企业开始从事新式国内制造，小企业可以利用这一新近形成的本地生态系统在当地实现繁荣发展。</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image002_414x312.jpg\" alt=\"\" width=\"414\" height=\"312\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section3\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<p style=\"font-size:1.181818182em;\">\n							<b><span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; 3.&nbsp;</span></b><b><span style=\"font-family:Microsoft YaHei;\">添加式制造。</span></b><span style=\"font-family:Microsoft YaHei;\">与采用切割或钻孔等技术的“减法式制造”正好相反，添加式制造是通过累加材料层来制作三维物体。尽管这一技术在20世纪80年代中期便已成形，但该技术的成本直到最近才有所下降，这是帮助小企业加强制造管理的重要因素之一。Brandt提到，受到折纸手工启发的Oru Kayak双层聚乙烯船就是由先进的自动化技术、众筹融资方式以及欧特克Fusion 360等协作设计软件共同造就的理想产物。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;在美国首次举行的添加式制造大会RAPID 2013的参加人数比2012年翻了一番，而这一增长中并不包括更为传统的制造行业。从光学仪器制造商到航空工程师都在采用添加式制造法来生产部件和产品，但是生物技术和医疗行业正在将该项技术运用于值得期待的新领域中。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp;“欧特克的生物纳米团队正在建立一个开放式的硬件生物研究工具包，该工具包将充分利用三维打印技术来帮助全球的生物学家和投资者进行细胞和分子研究，而且所需研究开支仅相当于传统研究的一小部分。”Brandt 说道。</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image003_414x304.JPG\" alt=\"\" width=\"414\" height=\"304\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section4\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<table class=\"adsk91-image-section\" style=\"margin:0px;padding:0px;\">\n		<tbody>\n			<tr>\n				<td class=\"image\" style=\"vertical-align:top;\">\n					<div class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;\">\n						<span></span>\n						<p style=\"font-size:1.181818182em;\">\n							<b><span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; 4.&nbsp;</span></b><b><span style=\"font-family:Microsoft YaHei;\">开源硬件：</span></b><span style=\"font-family:Microsoft YaHei;\">对于软件开发者来说，在全世界获取和重新分配信息并不是什么新鲜事，但是随着大批新兴的DIY制造者在网络上提供新颖独特的产品，有价值的知识的分享变得越来越普遍。尽管根据不同活动或兴趣形成了众多联系紧密的小组，有些潜在的行动规范仍然是必须遵守的。只索取却不付出通常会遭人厌恶，那些只为解决自己的问题而来的人也同样遭人厌恶。开源硬件的应用并不是要替代专业知识，它应该只是用来提高你在具体领域的操作能力。此外，如果该群体认为你是某领域的专家，他们就会更加支持你的事业。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;由麻省理工学院的工程师和《连线》（Wired）杂志封面女郎Limor Fried创建的Adafruit Industires是一个面向小企业的开放资源中心，销售上百种电子工具包，旨在服务和启发小企业群体。来自亚利桑那州的Local Motors在宣传语中自称是一家以“开源原则”为根本的企业，他们采用“众包”设计和技术来生产独一无二的汽车。</span>\n						</p>\n						<p style=\"font-size:1.181818182em;\">\n							<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp;“我觉得‘众包’模式的风险就在于资源贡献者有可能失去热情和兴趣，”Brandt说道。“他们为25个不同的广告和设计出谋划策，但是最后并没有从中获得任何回报。Local Motors正在解决其汽车设计的众包问题，并对那些提供设计方案的人们给予奖励，这样他们才会继续提供资源。”</span>\n						</p>\n					</div>\n					<table class=\"image\" style=\"margin:0px 0px 4px;padding:0px;width:1px;\">\n						<tbody>\n							<tr>\n								<td style=\"vertical-align:top;\">\n									<div class=\"image\" style=\"margin:0px;padding:0px;\">\n										<img src=\"http://images.autodesk.com/apac_grtrchina_main/images/image004_414x303.jpg\" alt=\"\" width=\"414\" height=\"303\" />\n									</div>\n								</td>\n							</tr>\n						</tbody>\n					</table>\n				</td>\n			</tr>\n		</tbody>\n	</table>\n</div>\n<div class=\"clear\" style=\"margin:0px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n</div>\n<div id=\"section5\" class=\"section normal\" style=\"margin:0px 0px 11px;padding:0px;color:#333333;font-family:Arial, sans-serif;background-color:#FFFFFF;\">\n	<p style=\"font-size:1.181818182em;\">\n		<b><span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp; &nbsp;5.&nbsp;</span></b><b><span style=\"font-family:Microsoft YaHei;\">先进的自动化：</span></b><span style=\"font-family:Microsoft YaHei;\">传感器网络、视觉系统、人工智能：这些不过是通过一系列编程将基础自动化转变为先进自动化的几种方式，而且这些技术并没有你想象中那么昂贵。带有GPS、指南针和加速器等内置功能的智能手机甚至也可以作为输入设备用于实现先进的自动化。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp;&nbsp;“小企业认为‘机器人是给大企业用的，自动化需要投入大笔资本，我不知道该怎么使用它。’现在是时候改变这种想法了。”Brandt解释道。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<span style=\"font-family:Microsoft YaHei;\">&nbsp; &nbsp; &nbsp;“先进”一词毕竟是相对的，它并不一定意味着昂贵。例如，弹药填装器上可以安装一个传感器来检测室内的湿度，从而调整弹壳中火药填充的紧实度。结果呢？填充的火药数量更加精准了。在意式浓缩咖啡机的蒸汽装置中安装温度计测量牛奶的温度，可以使一杯好喝的卡布奇诺咖啡变得更加香醇。既然有这么多价格合理（甚至可以忽略价格）的技术和众多能为你指引正确方向的开放平台，那么小企业群体迎来复兴也就是情理之中的事了。</span>\n	</p>\n	<p style=\"font-size:1.181818182em;\">\n		<i>关于作者：</i><i>Rich Thomas</i><i>是一位在国际上备受赞誉的记者，他在《洛杉矶时报》、《</i><i>Ray Gun</i><i>》杂志、滚石网站和《</i><i>Flaunt</i><i>》杂志等</i><i>30</i><i>多家杂志、报纸和网站上发表过文章。他还为美泰、红牛、</i><i>Restoration Hardware</i><i>和索尼</i><i>Playstation</i><i>网络等零售或娱乐公司撰写广告文案。</i>\n	</p>\n</div>','','1','2014-02-08 17:17:04','0','http://','1','0','0','','0','249','');
INSERT INTO huishi_article VALUES('408','90','CAD软件创新 牵引三大产业走上数字“蝶变”之路','<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 你能想象吗？一款汽车对外形、成本、结构的设计和修改可以完全放在数字化环境中进行。基于SMOKE系统，配合3dsMax模型软件和Maya动画软件，视频媒体人能在极短的时间里做出漂亮的片子。通过桌面云系统Autodesk 360、在移动平台上的Sketchbook和其他的诸多轻量级应用，能帮助娱乐业的设计师随时随地记录下灵感。这就是计算机辅助设计(CAD)软件的力量。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;“虽然行业和行业之间的需求不同，但是创作的诞生过程都是大同小异——为了一个目标，先有一个想法，然后绘制一张草图，细化、推算、敲定方案并以此制定工作流程，分工，然后按照步骤完成。在不同的工作中，人们的愿景其实是相似的：更加清晰灵活的流程、更加优化的算法、更方便的文件读取和更加强大的软件功能。对于CAD软件提供商来说，在这个细分的时代，潜伏着共振的机缘。” 在日前举行的2013欧特克AU中国“大师汇”上，欧特克公司AutoCAD产品系列副总裁Amy向记者表示，随着全球CAD软件的创新脚步，工程建筑、制造、传媒娱乐等产业都处在“数字裂变”之中。</span><br />\n<span style=\"font-size:13px;line-height:2;\">工程建筑业：BIM正当红</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 记者从今年的工程建设行业论坛上了解到， CAD软件的引入，使建筑信息模型(BIM)的话题一如既往的引起了业内人士的热烈关注，但关注热点已经从BIM如何在中国普及应用上，转移到如何推动BIM在行业深入应用和本地化发展上。同时，BIM的理念已经逐渐从设计院渗透到包括施工方和业主等多方，以期共同推动BIM在整个产业链上的深入应用。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-size:13px;line-height:2;\">“在工程建筑领域，BIM都可以实现给客户提供一个低成本、高质量、减少能耗的最佳方案。”SOHO中国有限公司董事长潘石屹表示，为实现建筑产品设计的多元化，SOHO中国一直致力于建造及管理领域的信息化。自2010年以来，银河SOHO项目设计实现了在建造信息化方面的突破，并帮助SOHO中国将这一实践进一步运用于工程预算、项目进度及能源管理领域。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;“BIM带给项目的全生命周期的设计和管理，让业主不仅能清晰掌握施工方的施工进度，还能准确了解项目每个环节的管理情况，以及对项目各运营阶段预算的精确把握。” 北京中信和业投资有限公司副总经理罗能钧表示，他们的 “中国尊”项目拿到了2013年最佳BIM建筑设计大奖，这其中离不开BIM的应用实践，这也再次印证了BIM应用深入到项目全生命周期的必要性。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 对于中国建筑设计研究院企业BIM标准和应用推广，中国建筑设计研究院BIM设计研究中心主任于洁认为，企业在BIM标准制定上一定要结合自身实际情况，从设计协同走向产业协同是企业BIM应用加深的重要体现，“这个过程会很漫长，但这是必然的趋势”。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-size:13px;line-height:2;\">“从全球化的发展视角来看，BIM已经成为一种主流发展趋势，BIM在中国的推广与发展速度更是极其迅猛。”欧特克公司中国区工程建设行业总监李邵建表示。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; &nbsp;制造业：3D掀起数字设计革命</span><br />\n<span style=\"font-size:13px;line-height:2;\">以3D替代2D的数字设计技术革新正变得触手可及，并潜移默化地影响着全球范围内的制造企业。对于寻求从“中国制造”迈向“中国智造”的国内企业而言，通过CAD软件，依靠自动化设计驱动创新，打造模块化、平台化设计平台显得尤为迫切。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;</span><span style=\"font-size:13px;line-height:2;\">“过去10多年，中国的汽车产业和汽车市场双双经历了爆炸性的增长过程，短短13年汽车产量增长10倍。乐观的气氛弥漫整个汽车行业，汽车企业纷纷扩大产能，设计团队日夜加班，不断开发新的车型来吸引消费者购买。”清华大学美术学院工业设计系主任严扬表示，未来汽车设计的一大趋势是具有中国特色。这一点要获得突破，必须通过创新、定制的方式来实现产品差异化，如借助CAD软件先进的数字化设计理念和技术手段来释放设计者更加自由的创造力，激发设计的思想。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;“大型机械设备的设计水平是衡量一个国家制造业设计水平的重要标志之一。这不仅考验企业在设备核心部件上的设计精度，还对产品设计的全生命周期管理和部门协同提出更高要求。”一重集团大连设计研究院矿用装备研究室、课题机械负责人张道才谈起在一重大型设备设计CAD应用及相关硬件合理配置方面的体会时表示，转型期间，制造企业尤其是中小制造企业面临投资的方向选择，企业对于管理技术、风险控制等缺乏经验而不敢贸然出手，而传统粗放型制造行业因受国家产业政策的限制也不能贸然投资。这决定了制造业的转型面临着缓慢且痛苦的过程，但只有经历了这个阵痛期，制造业才会更加扎实稳健和更具可持续性。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp; 欧特克软件中国有限公司制造业总监严天翌也认为，当前，中国制造业进入了全球化竞争的时代，市场对产品品质、工艺和上市时间的要求也越来越高。在这种情形下，企业越来越重视成本控制与效率驱动，技术因素日益成为制造企业塑造差异化优势的关键所在。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size:13px;line-height:2;\">传媒娱乐业：进入协同创作时代</span><br />\n<span style=\"font-size:13px;line-height:2;\">娱乐产业的蓬勃发展使得现代数字化娱乐生产流水线变得极为重要，数字娱乐内容创作的技术革新将有效提高作品的生产效率，降低制作成本，并实现全球范围内的艺术家协同创作。</span><br />\n<span style=\"font-size:13px;line-height:2;\">&nbsp; &nbsp; &nbsp;“在过去的一年，全球的观众从3D电影、纪录片和精彩纷呈的电视节目中获得了极大的视觉震撼和心理满足，这归功于数字娱乐创作的技术革新。”浙江博采传媒有限公司董事长兼创意总监李炼表示，现在，世界各地的数字艺术家正利用CAD软件制作出具有影响力的电影、游戏包装设计、电视节目等。比如，国产3D动画巨制《昆塔传奇》幕后的秘密武器就是欧特克数字娱乐创作套件。</span>','','1','2013-12-30 09:52:07','0','http://','1','0','0','','0','250','');
INSERT INTO huishi_article VALUES('348','90','Autodesk数字化仿真分析领导制造业变革','&nbsp;&nbsp; &nbsp; <FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">随着信息技术和计算机网络技术的发展，制造业进入了全球化的新时代，竞争愈演愈烈。市场对产品品质、工艺和上市时间的要求也越来越高。在这种情形下，企业越来越重视成本控制与效率驱动，技术因素日益成为制造业企业塑造差异化优势的关键所在。 </FONT><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　作为现代制造业的重要基础行业之一，模具制造业在生产中应用极为广泛。几乎所有的五金、塑料、橡胶制品都需要通过模具的加工制成。模具设计与制造的效率直接关系到产品的开发和生产效率。塑料生产工艺流程中，数字化仿真技术平台已经得到了广泛应用，仿真、分析和优化贯穿整个设计流程。随着CAE、CFD等精细化仿真技术、模型工具的引入，数字化样机的行业应用正在不断落地生根。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　数字化样机面向制造业痛点</FONT></STRONG></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　在当前经济环境下，成本和效率因素不约而同地成为企业发展战略中重点考虑和布局的要素，这种情形在制造业尤其突出。在中国，电子消费行业和汽车行业正为塑料行业带来历史性的创新发展机遇。产品从研发设计到生产制造再到投入市场，速度更快、效率更高。数字化样机能够极大地降低产品流程的成本并提高效率，满足用户从早期概念设计到详细工程模拟过程中不断变化的业务需求。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　作为Autodesk数字化样机仿真解决方案的一部分，Autodesk Simulation Moldflow注塑成型软件能帮助制造商预测、优化和验证塑料零件、注塑模具和挤出模具的设计。通过使用Autodesk Simulation Moldflow，企业能有效减少对高成本物理样机的需求和潜在的制造缺陷，更快地将创新产品推向市场。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　制造业面临的一个普遍难题是，产品在早期设计时都会存在先天不足，而企业往往不得不以牺牲成本的方式解决质量问题。通过Autodesk Simulation Moldflow进行系统优化，产品设计的工艺窗口更宽广，不仅可以在设计初期及时发现产品的质量问题，同时还可以在保证质量的前提下进一步降低注塑成本。这种成本的优化主要体现在以下几个方面：一是降低材料成本，通过Moldflow优化可以把产品的比重减少到最小范围，确保材料成本最低。二是降低生产成本，优化注塑件的成型周期，在缩短冷却周期的同时保证最佳的成型质量。三是减少试模次数，缩短上市周期。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　技术更新实现全方位优化</FONT></STRONG></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　随着技术的不断发展和市场需求的变化，在塑料、汽车、航空航天等诸多领域中，很多新材料和新技术正在应用到实际操作中，例如碳纤维、热渡性材料、复合材料、天然纤维增强材料等新材料。这些新材料和技术对模具成型的测试和建模技术提出了更高的要求。在最新推出的Autodesk Simulation Moldflow2013版本中，针对多种新型材料提供了最新的成型模拟技术，包括专利的长玻纤成型过程中的断裂情况分析、实时分析技术，结晶性材料在成型过程中的结晶度分析和瞬态冷却、急冷急热分析等技术，能帮助用户显著降低大模型分析的时间。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　众所周知，CAE是通过很多理论模型来模拟真实情况的，因此分析结果的准确度至关重要。Autodesk Simulation Moldflow拥有全球最先进和最准确的求解器，能够基于用户输入的条件输出精准的分析结果，在拥有行业知识的专业工程技术人员中拥有非常好的口碑。除了分析结果的准度，材料数据库的丰富程度是衡量模流分析软件的另一个重要标准。目前，Moldflow的材料数据库中已经有多达8，000种的经过测试的主流塑胶牌号数据，以供用户选择。同时，欧特克在澳大利亚和美国设有两个顶级的测试实验室，专门面向新材料需求，能帮助用户在一周时间内完成相关测试，并生成一个可被Moldflow调用的材料数据。这种能力在世界范围内是独一无二的。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　除了面向塑料件成型与分析的Moldflow，欧特克的数字化仿真工具还包含Autodesk Aglor Simulation和Autodesk Simulation CFD，能够针对非塑胶件进行结构和热流分析。Autodesk中国区销售经理姜勇道表示，欧特克提倡集成式的优化。当用户对产品结构做出调整时，需要同时评估其功能合理性、成型工艺性、热环境适应性等多方面的影响。通过集成的解决方案，将设计形成闭环，保证了整体和系统的优化。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><STRONG><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　推动可持续设计创新</FONT></STRONG></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　Autodesk Simulation Moldflow在汽车、航空航天等工业中的应用非常广泛。欧特克中国区制造业行业总监姜伟表示，企业应用仿真分析解决方案Autodesk Simulation Moldflow，一方面可节省材料，另一方面通过系统优化降低了注塑的压力，提升了成本效率。新技术的应用充分体现了欧特克一直以来秉承的可持续设计理念，为市场提供更贴合应用需求、可快速投放并提高效率的解决方案。凭借在塑料行业的创新产品和技术，欧特克公司最近荣获“2012塑料行业——荣格技术创新奖”。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　在云计算时代，按使用支付已经成为软件行业通行的新兴商业模式。现在，仿真分析已经能够在云中进行，最新推出的Autodesk Simulation 360就是一套可在云环境中安全传送数据的综合工具集，可支持企业实现将前期仿真从日常设计到工程阶段的无缝衔接。设计师与工程师能够更轻松地预测、优化与验证各种事物的性能。借助云的近乎无穷的计算能力，主流设计师能进行曾经只能由仿真专家进行的复杂工程测试，而过程就像作者检查文档拼写错误一样简单。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">　　目前，中国已经成为Moldflow在全球的第三大市场。Autodesk Simulation Moldflow解决方案在中国市场已经拥有超过1，500家用户，涵盖各行各业涉及塑料件的企业。全球范围内，Moldflow已经成为全球公认的注塑行业标准。包括通用汽车、苹果等在内的一些顶尖制造商对供应商的要求非常严苛，通过将Moldflow的数据与供应商共享，设计出最优化、最合理的方案，加速产品设计创新，提升效率。姜伟表示，欧特克在全球制造业范围内致力推动标准化的生产流程和工作模式，CAE的观念在注塑行业已经越来越强化。未来，欧特克将继续推动全球认证，并为客户提供多样化、全面、完整的解决方案。</FONT></P><!-- baidu_tc block_end -->',' ','0','2012-10-16 17:54:24','0','','1','0','0','','0','582','');
INSERT INTO huishi_article VALUES('350','90','欧特克成立三十周年回眸','<H2><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">——绘制梦想 拨弄光影</FONT></H2><DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">当全球的建筑师、工程师和数字艺术家，在桌面电脑、笔记本或iPad上描绘出梦想中的建筑，人见人爱的汽车和令人惊叹的影视作品，当身为普通公众的你在iPhone上信手涂鸦，将瞬间的创意跃然于屏上，这些魔术般的设计工具的提供者欧特克，也正从三十年的曼妙时光中走来，续写着属于自己的设计之梦。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">2012年，欧特克公司及其首个产品AutoCAD诞生三十周年。三十年前，欧特克在风起云涌的PC时代诞生，不断拓展着梦想的边界，并最终缔造了一个涵盖设计、可视化和仿真分析工具，横跨工程建设、制造和传媒娱乐等各行各业行业的庞大设计帝国。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">从某种意义上来说，欧特克从诞生到成长再到壮大的发展史，就是PC时代的数字设计从小荷初露到华丽蜕变再到繁荣演进的编年史。今时今日，站在以云计算、移动计算、社交计算为代表的新兴技术浪潮中，欧特克又用它敏锐的技术嗅觉和对数字设计的深刻理解，将一副面向未来的数字设计蓝图铺展在全球设计的创新者面前。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">梦想的起点——风起云涌的PC时代<BR style=\"FONT-FAMILY: \"></B>同所有因梦想而诞生的公司相似，欧特克最初的梦想故事，是大变革中的PC时代和狂热的技术天才邂逅的产物。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">1982注定是IT史上不寻常的一年，这一年，《时代》周刊破天荒地将PC机列为年度风云人物。也正是在这一年的4月，13名计算机程序员出资6万美元，在合伙创始人John Walker位于美国米尔谷的家中成立了一家软件公司Autodesk。它同那个时代诞生的众多IT公司一样：既拥有无限宽广的机会，也随时可能倾覆在时代的浪潮中。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">最初的困难可想而知。“我们当时就是未知数，”合伙创始人Laitinen表示，“我们不是生意人，也不是像生意人那样的人。我们是计算机程序员。”另一名合伙创始人Mauri Laitinen则干脆用“侥幸逃过一劫”来形容欧特克运营资金几乎用尽的日子。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">但Walker和他的12名同伴坚信：个人电脑将会变得非常普遍，而在这些个人电脑上运行的软件将比硬件拥有更大的市场。在1982年1月写给潜在商业伙伴的信中，Walker将当时的技术环境描写为“绝对史无前例的历史转折点”。Walker写道，“根据我的人生经验，我无法想象会有这样一个技术人员享有无限机遇的时刻，而且他们可以在风险很小的情况下抓住这些机遇。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">在尝试并放弃Basic编辑器、C编辑器、拼写检查以及数据库软件后，Walker把目光锁定在计算机绘图程序上。当时，计算机辅助设计主要在大型主机和微型计算机上进行，常常需要搭配专利的图形硬件一起使用，CAD系统通常以集成的软硬件“交钥匙”系统出售，且价格不菲，很多企业无力承担，只能通过手工劳动绘制工程样图。随着IBM个人电脑的问世以及随后许多台式机器的推出，基础的台式办公电脑实现了一个功能，即：使严肃的计算机辅助设计可以在制造商提供的机器上运行。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">那么，如果能够提供一套与硬件分开出售的、能够在现有台式电脑上使用的计算机辅助设计软件包，必将大受欢迎！Walker敏锐地看到了这个机会。经过一番努力，Walker和他的同伴赶在这一年的12月，推出了用于 S-100和 Z-80计算机的Auto CAD 1.0版，并在计算机最大贸易展——COMDEX首次亮相，而当时公司的银行存款仅剩下1.7万美元。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">从此，AutoCAD一发而不可收，不断推出适用于各种操作系统的版本，最终成为世界排名第一的通用工程绘图软件。1984年，欧特克的营业收入首次突破100万美元。1985年6月28日，欧特克上市（交易代码：ADSK）。1986年，欧特克被《商业周刊》评为“美国增长最快的公司”，又于次年再获此殊荣，成为第一个连续两年荣膺该奖的公司。1988年，欧特克的收入首次突破1亿美元。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">商业上的成功并没有冲淡Walker及同伴们对梦想的追逐和对技术的关注。从那时起，欧特克就将为专业人士提供经过实践检验的设计工具，帮助他们挥洒创意，解决设计、商务和环境挑战作为自己的目标。欧特克作为一家创新的、技术驱动型公司的基因也在那个时候奠定了基调。Walker于1986年决定将帅印交给Alvar Green，希望他能将公司的重点放在编程上面。欧特克还创立了非正式的工作环境，鼓励员工不拘一格地发挥创意。Laitinen回忆说，“员工可以穿休闲装上班，还可以将狗带到办公室，甚至还能在周五晚上举办‘啤酒聚会’。” </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">梦想的延伸——不断拓展的设计帝国<BR style=\"FONT-FAMILY: \"></B>正如欧特克首席执行官卡尔&#8226;巴斯所说，“欧特克的第一个辉煌期只与一个产品有关，那就是AutoCAD。”直到1990年，欧特克才发布了另一款软件——用于三维建模、动画和渲染的首个3ds Max 版本。这显然不足以支撑起整个设计王国。欧特克意识到，要实现更大的梦想，就需要更大的舞台。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">1992年4月14日，Carol Bartz被任命为欧特克首席执行官（Bartz）。作为欧特克历史上第一位非技术出身的掌门人，Carol Bartz执掌欧特克长达14年，为欧特克公司的转型做出了杰出贡献。在她的领导下，欧特克成长为一家更现代、关注范围更广的公司。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">上世纪90年代到21世纪初，欧特克通过自身的发展和一系列重要收购，进入了传媒娱乐业、机械工程业、结构工程业等很多行业。1998年，欧特克宣布了收购Discreet Logic公司的计划。这是直到当时欧特克公司最大的收购业务（耗资5.2亿美元），而Discreet Logic公司的产品成为了欧特克传媒娱乐部的基础。1999年，欧特克首次推出Autodesk Inventor软件，从而打开了一条通向制造业市场的新道路。2002年，欧特克收购了Revit Technology公司，这次收购为欧特克带来了一种新的建筑设计软件，让建筑行业专业人士能够应用参数化的、数据库驱动的设计技术，而在此之前，该技术仅在制造业中使用。2006年，欧特克收购了Alias，获得了汽车造型和数字化内容创意的应用程序（包括Maya）。Maya的加入巩固了欧特克在视觉特效行业的地位。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">与此同时，欧特克将AutoCAD变成了面向建筑师、设计师和工程师的专业化版本。1993年，欧特克推出AutoCAD LT。这是一个低成本、基于Windows的软件包，具有各种二维和基本的三维绘图功能。当时，欧特克在80个国家推出了 18 个语言版本的AutoCAD LT。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">通过这些大刀阔斧的举措，欧特克设计帝国得以逐步形成，并奠定了日后在工程建设、制造业和传媒娱乐业发展的牢固基础。在传媒娱乐业，欧特克甚至占据了统治性的地位，为自己赢得了“工业光魔”的美誉。事实上，自1995年以来，荣膺奥斯卡最佳视觉效果奖的每一部影片都使用了欧特克软件。欧特克的科学家、设计师也屡获电影业顶级荣誉。1999年，Flame and Inferno（现为 Autodesk Flame 和 Autodesk Inferno）视觉特效系统的设计师荣获美国电影艺术与科学学院颁发的奥斯卡科学工程奖。2005年，欧特克首席科学家Jos Stam、Ed Catmull 和 Tony DeRose因对细分表面的研究和对电影业做出的贡献而荣获美国电影艺术与科学学院颁发的“技术成就奖”。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">欧特克现任总裁兼首席执行官卡尔&#8226;巴斯于2006年上任，公司继续在各项领域保持良好发展，成功度过了全球性金融危机的冲击，并在新兴平台上取得突破性进步。2007年5月， 欧特克宣布Autodesk Inventor、Autodesk Revit和AutoCAD Civil 3D突破100万用户大关。欧特克建筑信息模型(BIM)、数字化样机(DP)、数字娱乐创作(DEC)理念逐渐成为行业新标杆，欧特克的家族成员也从最初局限于桌面终端，变身为能够适应云计算和移动计算模式的多栖软件。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">现在，欧特克已成长为一家国际公司，2012财年的年营业收入达到22亿美元。公司的软件组合包括以AutoCAD、Revit、Inventor、Maya和 3ds Max为主的100多种产品。目前很多工具是以欧特克通用和娱乐创作套件系列的一部分在销售。这些套件为建筑师、工程师、设计师和创意美术师提供了更多工具，帮助解决世界上最复杂的设计、工程和可持续性挑战，创作令人惊叹的娱乐内容和游戏。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">梦想无边界——拥抱新兴技术潮流<BR style=\"FONT-FAMILY: \"></B>对技术潮流的敏锐把控，是欧特克从一个米尔谷的小企业发展成为全球二维和三维设计软件领导者的关键因素之一。三十年前，基于对个人电脑替代大型主机的革命性判断，欧特克找到了安放梦想的着力点。而今天，移动、云和社交技术会比1982年的PC革命带来的颠覆性更强，欧特克已为此做好了准备。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">早在2001年，欧特克就收购了基于云的软件——Buzzsaw，为实现云端设计未雨绸缪。该软件支持项目团队对项目信息进行集中化和同步，从而加强团队协作。今年，欧特克推出了Autodesk PLM 360，以应用云计算技术对产品生命周期管理进行了全新构想。有了AutoCAD WS和Sketchbook Mobile等产品，数百万的用户已经可以摆脱台式电脑，在任何地方、任何时间利用任何设备进行设计、协作和创造。欧特克利用云计算、移动计算和社交计算提供的各种可能，为自己和数千万新客户创造各种设计和创新契机。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">从最初推出AutoCAD，使绘图人员摆脱手工劳动的束缚，到今天推出基于云计算、移动计算和社交技术的产品，欧特克的梦想一直是最大限度地降低空间、时间、计算资源以及终端对设计的束缚，帮助人们将更多的时间用于创造性工作。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">今天，欧特克正在帮助全球的设计创新者随时随地进行设计，并使数字设计历史性地走出专业人士的密室，而被越来越多的普通公众所掌握。过去两年中，欧特克陆续推出了包括Autodesk WS、Autodesk Homestyler、Autodesk Pixlr和 Sketchbook系列在内的数字化艺术与设计消费版软件产品，这其中包括欧特克首次面向iOS和Android移动平台推出的软件，以及使欧特克用户飙升至5000多万的各种工具。这个数字高出欧特克专业产品用户近四倍。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">正如卡尔&#8226;巴斯说，“有两件事情在发生改变，一是访问权利，二是功能。就访问权利而言，在我们开展业务的近30年时间内，我们发展了1200万用户。而随着消费者产品在移动平台上的推出，今年我们可能会有约8000万至1亿的新用户。仅从规模上讲，这就与从前大大不同。” </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">从根本上来说，欧特克的使命是帮助人们想象、设计和创造一个更好的世界。提高设计技术的普及性正是该公司为之努力的表现。1982年推出的AutoCAD以及过去30年中推出的所有产品都是这项事业的一部分。现在，欧特克已做好准备，利用一系列颠覆性技术帮助下一代设计师在未来30年甚至更长时间内进行想象、设计和创造。</FONT></P></DIV>',' ','0','2012-10-17 14:42:52','0','','1','0','0','','0','659','');
INSERT INTO huishi_article VALUES('351','90','走近Autodesk SketchBook家族','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">热爱信手涂鸦吗？痴心绘画吗？沉醉艺术创作吗？现在，请将这一切交给Autodesk SketchBook，它可以用一种直观有趣、简单易用的方式帮助人们实现想法。Autodesk SketchBook从面世至今，一直深受专业人士及绘画爱好者的青睐，它转变了复杂的技术和专业功能，为用户提供了接近自然的绘画体验。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">SketchBook实际上可以成为你的虚拟速写簿，其笔式交互和触摸交互功能经过了优化，能够将台式电脑、笔记本电脑、平板电脑或智能手机转变为数字速写簿。SketchBook的直观界面能够让用户便捷地使用一系列工具和最先进的功能，包括铅笔、马克笔、喷枪、以及混合颜料笔刷，丰富的颜色选择方案和图层操作。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">SketchBook真正为大众所熟悉实际上是从第一个版本SketchBook Mobile开始的，刚开始的时候只是在iPhone和iPod Touch上，后来随着Android系统越来越流行，我们把SketchBook Mobile移植到了Android平台上，Android 2.1以上的操作系统均可。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/1220.jpg\" width=283 height=396></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">最初的SketchBook只能运行在桌面系统上，配备Wacom公司的手写设备， SketchBook桌面版本的优势可以发挥得淋漓尽致。随着iPad和Google HoneyComb平板电脑的发布， 我们把基于桌面版内核的SketchBook Pro搬到了平板电脑上。在平板电脑上，用户可以获得更大的画布，更丰富的笔刷，以及更贴心的多点触摸体验。平板设备、触摸屏和平板电脑的广泛使用为SketchBook带来了巨大市场。这些设备上的压力敏感型笔式和触摸式输入不仅能方便、自然地绘图，而且操作起来精确、快速。SketchBook充分显示了这些设备的真正优势。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/2136.jpg\" width=501 height=278></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">欧特克一直专注于为用户提供更真实流畅的绘图体验，Autodesk SketchBook速写簿这款产品正是基于这一点而设计的。它是一款全新的基于浏览器的在线绘画软件。与以往不同的是，这款在线版的绘画软件首先面向中国用户开放，这是SketchBook历史上的第一次。它的推出将为任何喜欢通过绘画表达创意的人提供一个简单、易用、有趣的在线绘画工具，使用者即使没有专业手写板设备也能尽情享受随意涂鸦的乐趣。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/3103.jpg\" width=391 height=228></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">欧特克中国研究院核心产品及运营资深总监云浪生表示，“推出这一产品的初衷源于我们清晰地看到了越来越多的人积极体验新鲜事物，希望借助先进的技术来感受创作的乐趣；另一方面，也是来自于欧特克始终致力于通过将复杂的技术转化为简单实用的绘画工具，让更多的普通人可以利用欧特克的技术感受设计为生活带来的乐趣。‘SketchBook速写簿’是我们充分考虑电脑和互联网应用在中国的广泛普及以及中国用户的习惯后为中国用户特别推出的产品，也是欧特克努力将‘云’创新化为实践的又一个步骤。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/474.jpg\" width=389 height=218></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">SketchBook家族目前的下载量已经突破1100万，可以运行在手机、平板电脑、桌面电脑等不同的平台上。每一个平台的上的版本都是基于一个核心开发出来的，但用户操作和界面上又不大相同，主要是考虑到各个不同平台的设备的不同需求，从而给用户更好的操作体验。SketchBook Pro 6是其家族的最新产品。作为备受好评的SketchBook Pro的新版本，该软件具备流畅的界面、多点触控导航、曲线板、合成画笔、涂抹笔刷及更多可供定制的笔刷控制功能。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">“最新的SketchBook Pro的确令这款广受欢迎的产品更上一层楼。”欧特克产品线经理Chris Cheung说道。“全新的笔刷为用户带来一种更加传统的感觉，而且使用起来也更加多样化，但是我们在性能和用户界面上所做的改进也同样重要。我们相信新老用户都会喜欢上这款全新版本的SketchBook Pro 6”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/552.jpg\" width=208 height=280></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">SketchBook Pro 6流畅的新用户界面为用户提供了流畅、直观的环境，可以使艺术家专注于创作过程，从而提高生产率。这次的升级包括全新的笔刷面板、色彩编辑器、图层编辑器、控制环和工具栏，这些功能可以让工作流更加便捷高效。同时增加的功能还包括一系列比尺工具，比如全新的曲线板可帮助艺术家绘制更为流畅、精确的线条。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=\"\" src=\"http://images.autodesk.com/apac_grtrchina_main/images/638.jpg\" width=388 height=292></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">自媒体当道的今天，数字化绘图的优势更是显而易见的。数字化绘图不仅满足了用户随时随地创意涂鸦的需求，更保证了用户能够第一时间将作品发布到围脖、博客、SNS等网站与朋友粉丝们共同分享。 </FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">也许Autodesk SketchBook 软件家族的众多的功能已经让你爱不释手，但作为全球二维和三维设计、工程及娱乐软件的领导者欧特克有限公司所追求的，绝不仅止于此，而是为用户开拓全新的艺术晋升空间，让用户绘制出最高质量的艺术作品，帮助人们去想象设计和创造一个更美好的世界。</FONT></P></DIV>',' ','0','2012-10-17 14:43:50','0','','1','0','0','','0','781','');
INSERT INTO huishi_article VALUES('361','90','驶向深蓝 欧特克软件助力中国船舶行业腾飞','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">目前海洋港口的建设、疏通航道、人工选地与内河环保，都需要高效率、低功耗和低成本的工程船与设备。在此之前，我国全部采用国外的工程船与设备，但由于技术垄断，国外设备价格非常昂贵。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">因此，如何利用一款软件在高效率、低功耗和低成本的情况下，打造工程船与设备，并对企业生产设备做国产化改进，考验着泰州三羊重型机械有限公司。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">为改进这一状况，泰州三羊重型机械有限公司在研发上投入了大量人力物力使设备国产化，从设计到生产，Autodesk Inventor对企业生产设备的国产化起到了关键作用。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=泰州三羊重型机械有限公司办公楼 src=\"http://images.autodesk.com/apac_grtrchina_main/images/1270.jpg\" width=420 height=259></FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">泰州三羊重型机械有限公司办公楼</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">泥浆泵是工程船工作的核心，它关系到工程船的效率与输送泥浆距离的远近，而泥浆泵叶轮的水利曲线光顺与蜗壳内部舌口圆角的圆顺都是其关键参数，它直接影响到泥浆泵的使用寿命与能耗。我们采用Inventor来完成叶轮水利曲线点的输入，采用检测模块的分析功能进行分析，通过曲率分析的结果，调整叶轮的水利曲线的点，达到水利曲线的光顺，从而使设计更加简洁。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">制作泵壳，首先需要制作木胚为铸造做准备，曾经的泵壳木胚是采用手工制作，而蜗壳内部的舌口部分，由木工师傅手工制作，只能大致形似，毫无精度可言。而现在采用Inventor绘制三维模型以后，转为数控软件所需格式，数控多轴联动加工出泵壳木胚，不但节省了90%的加工时间，更使精度得到了质的改变。其他产品也采用了同样的方法，如绞刀、绞刀齿等。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">在泥浆泵其他部件的设计过程中，Autodesk Inventor也发挥出了巨大的作用。例如，利用“渐开线花键生成器”，计算渐开线花键的强度、载荷、与变形等；利用“公差配合计算器”，以选取首选配合；利用“涡轮零部件生成器”，快速绘制涡轮，并做校核分析；利用“查看零部件的重心”，以确定产品重心来设计吊具，同时采用“有限元分析”功能，计算吊具强度是否达到使用要求。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">斗轮式挖泥船是一种用斗轮挖掘水下坚硬泥土或风化岩并通过吸泥管将其排走的挖泥船。作为一种大型钢结构，它的设计不仅要从刚度设计和强度设计两方面考虑，结构的静态和动态平衡稳定性也很重要。相对于传统设计模式，利用三维软件进行方案设计具有直观、快捷、易修改的特点，因此目前利用三维软件进行设计已成为一种方向。利用Inventor对斗轮各零部件进行三维建模、虚拟装配的整个过程，提高斗轮设计的质量，提高产品的设计效率和开发水平，进而增强企业的市场竞争能力。为了数控加工、结构展示和应力及运动分析等的需要，必须对斗轮的变速器进行三维建模设计。根据齿轮变速器的装配连接结构特点，采用Inventor的基于装配的关联设计功能，能比较方便快捷地生成齿轮变速器中的有关零部件，从而能提高齿轮变速器三维建模的设计效率。其斗轮的料斗以前均采用人工钣金展开，众所周知形状复杂的钣金件放样是比较烦琐的工作，需要有较深的理论与制造经验，而采用Inventor后，钣金经过软件计算自动展开，并且与AutoCAD的完美结合，转换为.dwg格式以后，直接数控下料，大幅减少生产所需时间，节约制造成本。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">斗轮最重要的零部件之一的斗齿，由于工作环境复杂，易于磨损，需要进行有限元分析验证强度，在Inventor绘制零件之后，可导入到其他CAE软件Algor，Ansys等中，其中Algor与Inventor同属欧特克公司，两款软件无缝融合，可以直接在Inventor中打开Algor，并可使用Inventor输入的设计数据，如材料特性等。施加边界条件对几种正常和极限工作状态下的力学性能进行了分析，提出了优化设计方案。对优化后的方案进行再分析，得到满意的结果。达到了设计要求，节省了材料，优化方案在工程中得以实施。耙头为耙吸式挖泥船重要的部件，其中采用了很多管件与管路，由于与耙头连接管线属于不规则形状，以前未采用Inventor之前，只能估算大概所需管线长度，采购后，在实际生产过程中经常出现管线过多或者不够的情况，由此出现了二次运输运费、工期加长等问题。在使用了Inventor的布管模块后，可以精确计算出所需管线的长度，避免了以上所提现象的发生。</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">泰州三羊重型机械有限公司董事长徐秀阳表示，“通过三维设计软件Autodesk Inventor，加速了我们企业无纸化生产的进程。”</FONT></P><P style=\"LINE-HEIGHT: 1.5; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">“Autodesk Inventor是一款可以使企业节约制造成本，缩短开发、制造所需周期的软件。”三羊重型机械有限公司总工程师柴立峰说。</FONT></P></DIV>',' ','0','2012-12-10 13:26:29','0','','1','0','0','','0','573','');
INSERT INTO huishi_article VALUES('363','90','设计模型破解“数据之墙” 全数字化研发实现协作创新','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当前，在信息化技术条件的支持下，全球制造业发展正呈现出几个显著特点：第一，全球化。通过信息技术手段，共享的资源配置有效帮助企业实现全球化的发展和部署。第二，精细化。信息技术有效帮助企业实现业务流程和管理方面基于点的控制。第三，协同化。产业链之间不同主体间的协作离不开以信息技术为手段构建的协同平台、供应链平台。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012年12月14日，在上海举办的“欧特克机械设备行业高层研讨会”上，欧特克公司亚太新兴市场制造业销售拓展高级总监黄志铭表示，全球化竞争在制造业的表现尤其突出，平台、模块化和基于规则的设计手法在不同行业中都已有所体现。据了解，此次欧特克举办的机械设备行业高层研讨会正值一年一度的欧特克AU中国 “大师汇”期间，是面向机械设备行业信息化痛点举办的专业化封闭式论坛。多位来自国内知名机械设备行业的信息化专家和欧特克的技术专家们进行了广泛而深入的交流。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><IMG style=\"FONT-FAMILY: \" alt=欧特克机械设备行业高层研讨会嘉宾合影 src=\"http://images.autodesk.com/apac_grtrchina_main/images/1.JPG\" width=420 height=280></FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;欧特克机械设备行业高层研讨会嘉宾合影</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “这些新特征意味着制造企业的角色已经发生变化，不再简单的是制造产品，更要服务于产品，服务于产品全生命周期。”中国航天科技集团总工程师、国家863计划现代集成制造系统信息专家组组长、制造业信息化工程总指挥长杨海成表示，“在这种情况下，企业在其所处产业链中的价值进一步延伸，向服务型制造企业转变显得尤为重要。”作为制造业的重要分支，机械设备行业的信息化实践现状和痛点无疑是具有思考价值和代表意义的。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">数据破“墙”是关键<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 来自第三方研究分析机构Tech-Clarity的一份调查报告显示了机械设备行业的重要发展趋势。黄志铭介绍，在企业业务战略层面，通过创新实现产品差异化、通过定制实现产品差异化和直接参与全球竞争是业绩出众企业中排名前三的策略重点。在工程设计与产品开发方法的执行层面，业绩最佳公司与普通公司的差距则主要体现在平台设计、模块化设计和基于规则的设计方法等方面。在设计和产品开发技术方面，绩优企业与普通企业的差距主要体现在仿真分析、配置器、设计自动化及工厂布局、仿真等方面。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从图纸到模型再到数据，工业产品表达方式的变迁清晰可见。然而，横亘在CAD、CAE等产品设计环节之间的是一堵无形的“数据之墙”。“数字化样机是未来表达产品所有状态最根本的依据。”杨海成认为，“在三维模型状态下，产品的性能、功能、状态、相互的关联、相互的修改都是围绕着产品模型进行的，这是未来定义所有产品的一个基本依据。因此，产品数据在后续的使用过程中非常关键。要将描述产品功能和性能的数据转换成描述产品生产加工过程的数据，以及将来可用于维护、维修等后续服务状态的数据。产品的全生命周期管理是构建企业产品最佳使用和服务状态的最根本的需求。”实现数据关联与共享的关键是设计和定义好的模型、标准和流程体系，并将这些工具规定在有效的框架内实施。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在快速应变的数字化设计和制造领域，通用标准的制定实际上是落后的。然而，企业的产品数据是需要持续和长久保留的，毫无疑问它是企业最重要的知识和财富。在制造业数字化样机相关技术的驱动下，欧特克的解决方案正越来越成为一种事实上的工业产品标准。哈尔滨电气集团副总经理苗立杰表示，在产品数字化设计的全生命周期中，标准化的数据接口和模块化的、集成的平台非常重要。在此基础上，产品在其设计制造的流程中才能有效实现数据的关联、共享，进而实现协同创新。从二维到三维、从仿真、分析到设计、制造，欧特克的数字样机正全面覆盖产品设计的全生命周期。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">全数字化研发打通信息脉络<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在机械设备行业，产品研发过程的一个关键点就是CAD与CAE工程师的协作问题。三一重型装备有限公司研究本院、数字化样机中心主任闫炳雷介绍说，在设备交付过程中，产品对设计的准确性、可靠性的要求非常高，总体设计和详细设计阶段都需要CAD和CAE工程师的全程参与。在此基础上，将数据上传到PDM系统中，并实现统一的规划和管理。包括三维模型、CAE的分析报告等都可以在PDM中进行归档、管理。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实际上，在数字化工具协同设计领域，数据使用的关键点无外乎模型、集成、共享、管理几个方面。在制造业，产品差异化也是体现企业竞争力的通用标准。具体而言，创新和定制化是实现差异化的重要手段。“从技术角度看，平台化、模块化和全自动化的设计可以有效帮助企业达成这一点。最优秀的企业能够提高设计效率，快速地响应市场。” 欧特克技术经理刘雪冬表示，“这一切的核心是基于模型的企业信息管理系统，归根结底是设计模型。设计模型需要携带足够丰富的信息，并且可广泛地使用于任何系统中。”如何建立有效的大模型？打通数字流程的全数字化研发是基础。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 机械设备研发流程需要的不仅是各式各样的设计工具，更包括各种设计工具的整合。当前，在工业设备设计与开发过程中，满足客户的交付时间表和变更管理是两大重要挑战。借助平台化、模块化和自动化的设计方法，能够建立面向机电一体化的全数字化研发平台，在销售、设计制造和管理环节实现招投标、设计层面的充分协作，进而实现差异化和定制化创新。具体而言，包括工程设计、技术文档、可视化、仿真分析、协作等在内的设计模型正在重塑重型机械行业的数字化平台。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在传统设备制造商转向系统集成和服务提供商的背景下，企业更加关注创新和成本控制。在招投标过程中，技术展示能力至关重要。欧特克制造业解决方案能够处理系统集成时的大装配，提供强大的大装配和可视化能力，并将设计数据和业务系统进行集成。通过重用和维护现有二维数据、涵盖从二维到三维的底层至顶层设计、模拟钢结构的应力分析、仿真分析、供应链协同、渲染和可视化等流程减少设计错误、加速上市并提高产品质量。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 云、移动化的技术趋势进一步强化了设计模型的工具属性。这一特质不仅体现在面向特定设计步骤的精准模拟和完整流程的集成化定义上，更体现在按需、实时化的设计体验和产品交付上。未来的数字化设计可以让用户随时随地访问近乎无穷的计算能力，优化工作协作，增强计算能力，从而大大改善其工作方式。欧特克将设计套件与云服务整合，通过Autodesk Vault软件，可将工作组在同一个位置集中组织、管理并跟踪工程CAD数据、制造物料清单以及变更流程。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧特克云让设计者和工程师更好地获取高性能渲染、优化设计、仿真分析和协作等改良功能，而这些功能以前仅供那些能访问本地高端计算资源的机构使用。此外，欧特克云还能加快设计渲染、以更少的时间和资源生成更多设计迭代，实现更加轻松便捷的无缝协作，从而大大改善整体设计及创意过程。</FONT></P></DIV>',' ','0','2013-01-21 09:37:07','0','','1','0','0','','0','545','');
INSERT INTO huishi_article VALUES('364','90','欧特克：以创新助推中国制造转型升级','<DIV id=section1 class=\"section normal\"><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 引言： AutoCAD、Autodesk Inventor、Autodesk 360…你能想象，我们所拥有的世界，你看到的、听到的、用到的以及很多我们无法接触到的，绝大部分都是通过这些简单的设计软件设计出来。平凡而又神奇，这就是欧特克的传奇——在不断创新中储备了改变世界的力量。而在制造业，从30年前一款名为AutoCAD设计软件横空出世，到如今三维技术、云技术的普及，欧特克用不断的创新，赋予了制造业在技术变革和产业升级等方面巨大的能量，并为其发展提供可靠的技术支持。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012年12月13日，欧特克AU中国“大师汇”在上海举行。本届大会以“领驭变革”为主题，这是欧特克AU“大师汇”盛世的第20载，也是其自2008年落地中国后连续第5次举办。大会为期两天，邀请来自两岸三地的工程建设、制造、传媒娱乐等不同行业和领域的企业高层、行业专家、设计精英，通过主题演讲、行业论坛、50场技术专题讲座以及各种展览展示互动活动，分享了他们在创新设计实践中的真知灼见和宝贵经验。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">领导技术变革<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “欧特克作为设计工具的专家，我们的使命在于开发工具，让大家最大限度地发挥创造力、想象力和能力，帮助大家实现最大生产力。”欧特克公司全球高级副总裁、亚太区及新兴市场总裁魏柏德先生在在13日上午举行的开幕仪式暨主题演讲中，以“创新：引领发展”为主题介绍了欧特克最受关注且最具挑战性的设计和技术趋势，阐述了欧特克设计创新理念，分享了在设计领域创新引领行业发展所铸就的辉煌成果。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 众所周知，最早的AutoCAD设计软件只是帮助设计工程师画图，而“现在欧特克所有技术和应用，都更多的是关注整体的设计过程，将工具数据与人联系在一起，包括激发想象力，提高设计成果的功能性、智能表现，制造、设计和建造的艺术与科学性以及设计流程和各种要素的最终汇集情况。”魏柏德先生阐述了欧特克目前的设计理念，并以最新Sketchbook软件工具，向参会嘉宾展示了其简便的可操作性和强大的功能特性。从捕捉灵感，输入数据，建立二维或3D模型，到模拟真实现场效果，提供虚拟空间，操控复杂项目，欧特克从个人操作到复杂项目合作，其技术操作流程达到了最大的简化，数字建造更加实用。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在制造业，欧特克对技术的应用也更注重设计的整体过程。特别对于大型机械设计来说，“团队”概念成为设计重点，设计过程中需要弥合传统流程的边界、打通数据链条并实现协同创新才能保障创新设计资源的有效性。因此，流程组合与分工协作的可视性和效率显得尤为重要。欧特克数字化样机以其在设计制造流程中有效实现数据的关联、共享，进而实现协同创新。从二维到三维、从机械到电气、从仿真分析到设计制造。欧特克数字化样机正全面覆盖产品设计的全生命周期。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 作为欧特克数字化样机中的重要组成部分，Autodesk Inventor三维设计软件便能最大限度的满足以上需求。它包含三维建模、信息管理、协同工作和仿真分析等各种特征。使用Autodesk Inventor可以创建三维模型和二维工程图，可以创建自适应的特征、零件和子部件，还可以管理成千上万的零件和大型部件，它的“连接到网络”工具可以使工作组人员协同工作，方便数据共享和同事之间设计理念的沟通，在加速设计的同时也实现了真正意义上的团队设计。其设计可视化不仅能够为企业提供一个可以预见的产品设计流程，更能通过利用工程设计数据传达产品设计意图，传达机械设备和工厂的布局设计意图，从而帮助企业提高协作效率并赢得更多业务。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp; “欧特克最炫的产品之一欧特克云（Autodesk 360），它是一个聚合点，将所有的要素聚集在一块儿，成为一个中心枢纽。所有要素在这个地方集中，提供所有的数据与你所需要的所有的信息。” 魏柏德先生着重介绍了欧特克云技术，“你可以通过任何设备登陆，PC、平板电脑或者智能手机都可以。能够让你与其他人沟通、了解他们在做什么，也能够让你将项目相关的数据、信息储存在一个地方，随时随地都可以取用。它带来的是基于数据和服务共享的连贯，畅通体验。”</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 长期以来，欧特克一直是设计与工程行业云服务和云应用的先驱者，是第一家能够提供全面的专业级云计算工具的公司。其所有的工具都是由云计算来提供动力，将应用程序与云的力量结合在一起。无论何时何地，你都可以通过任何移动设备使用以及和别人互动，为设计师和工程师提供更灵活、更先进的功能和更强大的计算能力。“欧特克为此推出Autodesk Simulation 360和Autodesk Simulation CFD，它们基于云计算的CAD程序，可以做优化，可以做模拟。”魏柏德先生介绍，“有了这些软件，计算、建模变得轻松简单，无论手机还是平板电脑都可以帮你完成设计。”</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">引领制造业转型升级<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国作为世界制造业大国，正经历着从“中国制造”向“中国智造”的行业变革，因此作为发展中的中国制造业企业，必须在保持其全球市场竞争力的同时，对设计创新进行持续性的投入。欧特克凭借业界领先的设计软件技术优势，以及涵盖、融合整个产品设计生命周期的解决方案，助力并引领中国制造业的创新发展。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在本届大会中“欧特克2012年度卓越工程师评选”是欧特克在中国主持的第三届评选活动，欧特克公司亚太新兴市场制造业销售拓展高级总监黄志铭，在颁奖典礼致辞时表示，“从设计师之夜到卓越工程师评选，从Autodesk Simulation 用户大会到再到AU上的制造行业大师论坛。我们可以看出欧特克对中国制造业的极大重视，我们希望通过为国内广大制造业工程师搭建一个涵盖汽车、工业机械以及注塑仿真等领域的技术交流平台，助力中国工程师提升设计创新，使之成为当下中国制造业产业结构调整的中坚力量，推动中国制造业创新水平的整体跃升。”可以说，欧特克通过自身不断的创新技术，为制造业的设计革新带来了勃勃生机，并结出了累累硕果。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 据了解，欧特克在三维设计技术和此基础上发展起来的数字化样机、数字化工厂、PDM、PLM等应用正在成为行业用户的得力助手，而欧特克云技术的应用，更是为企业提升设计效率、加速产品创新和优化数据管理提供了更多的技术支持。欧特克公司技术总监唐明德在主题演讲中，便通过实际操作向与会嘉宾介绍了欧特克数字技术在“汽车的创意设计到A级曲面工程的流程”的应用。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过介绍，我们可以看到依托欧特克数字化样机技术，其解决方案可涵盖工程设计不同阶段，客户可以开发完整的产品设计定义、集成电气和机械设计。可重新定义数字设计的工具理性，其产品组合涵盖数字化概念设计、数字化工程设计、数字化可视化、数字化仿真分析、数字化文档和数字化工厂的方方面面。进行设计可视化或完成三维工厂布局，帮助设计师、工程师、市场人员在内的制造团队，实现从概念到投产的全程紧密协同，从而提高生产率、预测产品性能，创造出更佳的流程效率，缩短产品推向市场的周期。哈尔滨电气集团公司副总经理苗立杰先生，在主题演讲上便分享了在利用欧特克产品设计套件（PrDS）及Autodesk Vault 数字化技术在核电设备的协同应用方面，如何实现了从概念到投产的全程紧密协同，真正做到数字化整合驱动创新的经验。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\"><B style=\"FONT-FAMILY: \">未来更美好<BR style=\"FONT-FAMILY: \"></B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 创新是欧特克永远的主题，在过去的30年中，欧特克一次又一次的用自己的创新产品改变着世界。“我们要确保欧特克的产品永远是现代化的，个性化的，并相互关联的，而且一定要和消费者的需求息息相关的。”欧特克公司AutoCAD产品系列副总裁Amy Bunszel女士在回顾欧特克Autodesk 30年发展之路时讲道。“我们的使命就是帮助我们的用户想象、设计和创造一个更美好的世界。”</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp; “验证、预测、优化”俨然已经成为制造业行业设计发展的必然趋势，同时也是欧特克为制造业提供解决方案和技术平台的趋势演变。从十多年前推出世界上最大的项目托管服务软件Autodesk Buzzsaw到Autodesk 360，欧特克技术不仅让创造者可以更快的获取高性能渲染、设计优化、仿真分析和协作等改良功能，更能让同一团队内的不同部门之间实现以最少的时间和资源生成最大化的设计迭代，达到更加轻松便捷的无缝协作，从而大大改善了整体设计及创意过程，提高了生产效率。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 可以说，欧特克以完整的解决方案，从概念设计到工程设计，从仿真分析到数据管理，从生产制造到市场营销再到安装服务，为制造业行业在设计创新、产品创新以及理念创新等方面都提供了全面的技术支持，让制造业行业发展蓬勃而充满了力量。</FONT></P><P style=\"LINE-HEIGHT: 2; MARGIN-TOP: 10px; MARGIN-BOTTOM: 10px\"><FONT style=\"FONT-FAMILY: Arial; FONT-SIZE: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 开放的市场环境和巨大的市场需求，为制造业企业的发展和变革提供了丰厚的土壤。“我们希望我们的用户可以通过我们的软件获得最大的工作效率和最大的收益。”Amy Bunszel女士真诚的希望。未来，欧特克将一如既往的以创新为主题，为制造业行业的发展提供全方位的技术支持，引领行业实现更大的创新突破。</FONT></P></DIV>',' ','0','2013-01-21 09:39:41','0','','1','0','0','','0','503','');
INSERT INTO huishi_article VALUES('374','90','欧特克数字样机助哈电引领行业创新','<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2012年4月，哈电集团北京核电设备设计院正式挂牌成立，虽然是哈电集团的一位新成员，但哈电集团北京核电设备设计院却承载了加快集团核电产业发展，实现核电设备成套供货的重任。不过在设计院成立之初，作为产品设计研发、项目管理、数据管理甚至纳入集团企业数据化集成等一系列问题，成为困扰设计院的一道难题。 </span>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> 作为国有重要骨干企业之一，哈电集团是我国最大的发电设备、舰船动力、电气驱动装置研究制造基地和成套设备出口基地。近些年，为了适应国家能源战略的调整，实现节能减排的目标，发展核电已经成为我国能源战略的重点。而经过多年的发展，哈电集团已经在核电设备的研发和制造方面取得了突破性进展，并且已成为目前国家三大核电装备制造基地之一。</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> “现阶段哈电集团发展核电的思路就是以AP1000三代核电技术为突破口，逐步形成并不断增强核电设备设计能力和整体供货能力，最终实现核电设备设计、制造一体化的目标。”哈电集团副总经理苗立杰介绍说，“而这其中具有创新性的产品设计和研发则是重中之重。考虑到北京的人才和资源优势，最终经过集团研究决定将这个核电设备设计院设在了北京。”</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> 集成 舍我其谁</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> 新成立的哈电集团北京核电设备设计院有160余人，其中有超过半数的是主抓设计的工程人员。这其中既有从哈电集团内部抽调过来的设计人员，也有在北京当地招聘的新员工及外聘的专家。由于设计人员的组成是多方面的，而且大家以前使用的设计工具各不相同，所以对于设计院全新的产品业务及项目研发，要想顺利的开展工作，首先就要建立一个总的研发设计平台，选择统一的设计工具，这才是关键所在。</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> 这期间，哈电集团北京核电设备设计院与包括欧特克公司在内的多家设计软件供应商进行了商讨，最终还是选择了与欧特克公司合作。一方面得益于欧特克公司诸如AutoCAD、Autodesk Inventor等二维、三维或其它专业设计模块在设计人员当中的广泛普及度。</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> “更主要的是欧特克软件简单易用，容易上手，并且二维和三维之间可以实现无缝转换。” 哈电集团北京核电设备设计院设计所所长白海永表示，“当然其总体平台整合及培训费用也在我们的考虑范围之内，但综合比较下来我们还是觉得欧特克产品的整体性价比更高一筹。”</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\"> 最终哈电集团北京核电设备设计院选择了欧特克公司旗下的Autodesk PrDS(欧特克产品设计套件)和Autodesk Vault两款设计套件，这是欧特克公司数字样机解决方案的典型产品，其中不仅包含了最基本的设计功能，而且能够安全地存储和管理工程设计信息、设计数据和文档，从而缩短产品从设计到制造的流程。</span>\n</p>\n<p>\n	<img border=\"0\" src=\"http://www.visionunion.com/admin/data/file/img/20130411/20130411005301.jpg\" />\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">核电设备三维渲染图</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于套件的简单易用性，设计院的工程设计人员掌握很快，因此第一阶段的整合过程大大缩短（初期用软件进行设计培训），现如今工程师们已经顺利开始第二阶段的工作，即具体核电项目的工程设计阶段，而这个时间比研究院成立之初大家的预期还要提前。</span><br />\n<span style=\"line-height:2;font-size:13px;\">验证 准确无误</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “核电的工作原理并不复杂，但是由于其对于安全性与可靠性的要求极高，因此对核电设备在设计、生产以及制造等各个环节都马虎不得，可以说核电无小事。”苗立杰如是说。于是有关核电设备在设计阶段的工程认证、分析甚至优化都至关重要，其最终生成的三维建模不仅要满足施工方对于产品质量的要求，同时还要尽可能的降低成本。此前哈电集团已经在使用第三方的软件进行相关的验证工作，而北京核电设备设计院的相关设计验证工作自然也被纳入到了哈电集团的这一统一验证平台之上，因此对于欧特克产品提出的要求就是：如何做到用欧特克软件设计出来的方案能够兼容到哈电集团统一的验证平台而做到不失真。</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 欧特克在三维建模领域的优势是业内众所周知的，而作为一款完备的数字样机解决方案，Autodesk PrDS不仅具有三维设计、可视化和仿真工具，对于建模完成后的后续分析和与其它软件的兼容性同样是其优势所在。“Autodesk PrDS其集成式的工具套件可以实现无缝传输信息，从而满足从设计、仿真到可视化的各个工程阶段的需求。”欧特克中国区制造业大客户销售经理何展介绍说，“针对哈电集团北京核电设备设计院这一案例，我们还特别对整个项目做了一对一的验证，结果没有任何问题，转换效果很好，完全满足哈电集团对于设计方案在集团统一验证平台之上工作的原则。”</span><br />\n<span style=\"line-height:2;font-size:13px;\">图纸管理 势在必行</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 当整合了设计平台、规范了设计软件、设计人员真正开始设计出图以后，随之而来的最明显的一个难题就是如何对设计院众多的文档（设计图纸）进行有效的管理。“当时我们就想首先要对设计图纸的基本信息，比如是谁画的，什么时间画的等有一个最基本的管理，”白海永说，“后来我们还想再丰富一些管理内容，比如为每个设计人员设计电子签名等。”</span>\n</p>\n<p>\n	<img border=\"0\" src=\"http://www.visionunion.com/admin/data/file/img/20130411/20130411005302.jpg\" />\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">集成式的欧特克产品设计套件可以实现无缝传输信息，满足核电设备从设计、仿真到可视化的各个工程阶段的需求</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 设计单位对于图纸管理的要求非哈电集团北京核电设备设计院一家独有，对此欧特克公司专门在其Autodesk Vault 2012软件中加入了图纸集管理器功能模块，用以对在支持的AutoCAD产品中与AutoCAD图纸集管理器进行了集成。这一集成可以帮助客户在协作式环境中添加、访问和修改图纸集，其中Autodesk Vault Collaboration和Autodesk Vault Professional软件还支持图纸集用户使用多站点工作流程。此外，用户还可以在图纸集管理器的工程图纸中获得最新的Vault状态信息。Autodesk Vault还支持所有的图纸集功能，其中包括属性管理、绘图和发布任务。在Vault Explorer中，客户可以根据图纸集管理器中的属性使用搜索功能来查找图纸和图纸集。图纸将在Project Explorer环境中展现，指明图纸和关联工程图之间的关系。</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “所以说在满足了哈电集团北京核电设备设计院自己提出的要求外，我们还利用Autodesk Vault软件进一步丰富了其对于图纸管理的多项诉求。”何展介绍说，“帮助他们实现了对图纸格式化、规范化和安全化管理，以及对于整个设计过程中的验证、记录甚至详细说明等等。”</span><br />\n<span style=\"line-height:2;font-size:13px;\">现如今借助已经成功上线的Autodesk Vault软件，哈电集团北京核电设备设计院轻松解决了其对于图纸管理这一难题。</span><br />\n<span style=\"line-height:2;font-size:13px;\">数字样机引领行业创新</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “如果说让我评价欧特克的软件有什么显著特点的话，那么很突出的一点就是它把一件复杂的事情做简单了。”对于欧特克公司的产品，白海永如此评价，“此外欧特克软件的易用性、开发性、兼容性以及集成性也都是独具特色的。”</span>\n</p>\n<p>\n	<img border=\"0\" src=\"http://www.visionunion.com/admin/data/file/img/20130411/20130411005303.jpg\" />\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">欧特克产品设计套件使您的企业在完备的数字样机解决方案工作流程中设计卓越的产品</span>\n</p>\n<p>\n	<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 其实从整个哈电集团的角度来看，从最初的工业设计、机电设计到工厂布局以至后期的仿真分析和可视化及文档管理，所有这些环节有很多是利用了欧特克数字样机的某些功能模块或套件，再加上欧特克最炫的产品之一欧特克云（Autodesk 360），可以帮助哈电集团不管在什么地方，不管通过何种设备登陆，都可以与其他人沟通、了解他们在做什么，也能够让客户将项目相关的数据、信息储存在一个地方，随时随地都可以取用。它带来的是基于数据和服务共享的连贯，畅通体验。</span><br />\n<span style=\"line-height:2;font-size:13px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “而所有这一切将哈电集团的协同设计和产品数据管理成为可能。”苗立杰如是说，“总的说来，借助欧特克完备的数字样机解决方案，我们可以在产品从最初绘制到最终交付的整个流程中，通过单一环境流畅地处理每个项目。而且所有产品都可以集成兼容到集团统一的信息化架构中来，让我们对未来发展充满了信心。”</span>\n</p>',' ','1','2013-04-12 23:13:39','0','','1','0','0','','0','526','');
INSERT INTO huishi_article VALUES('375','90','激发价值潜能 数字化平台驱动汽车设计革新','<div class=\"temp\">\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">汽车，堪称工业革命以来最为复杂的机械商品之一。怎样通过设计让汽车超越机械本身的美感，成为传达人类思想与理念的工具，一直是汽车设计师矢志不渝的目标。从纯手工打造到自动化主导的规模化生产，从手绘草图、油泥模型到二维软件再到三维设计，汽车业的发展深刻描述和反映了制造业的工艺和设计水平变迁。如果说软件的介入颠覆了汽车业传统设计流程的话，那么三维设计的应用则彻底释放了设计的潜能。可以说，数字化设计技术的应用让汽车工业实现了跨越式的发展。欧特克以AutoCAD软件起家，三十多年来不断丰富数字样机的深度和广度，其发展历程可谓一部数字化软件驱动设计革新的历史。欧特克通过对软件和技术创新的持续投入，推动数字样机平台化解决方案的演进，为数字化设计全面深入行业应用赋能。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">数字化驱动设计 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">过去，设计师通过观看二维草图，然后依靠耗时的传统方式将其直接转化为手工打造的铝合金车身，最后这些一次性的车身被扫描到计算机上，以便于修改曲面用于加工。这种方式不能对汽车曲面快速生成实时渲染的图形，因而需要团队拥有高超的手工技能，不但很耗费时间，而且在制造过程中进行完善的空间也很有限。可以说，在三维可视化软件成熟且广泛应用之前，汽车业始终无法摆脱围绕物理样车设计的“顽疾”：由于物理样车成本高昂，而且模型修改复杂度和难度很高，设计师很难获得多个样本并及时调整。同时，由于并非每款设计都会上市量产，这样的流程也会造成巨大的浪费。欧特克解决方案工程师Mike Russell介绍说，在汽车制造商的传统设计流程中，设计师一开始可能提出100款设计，之后会压缩到10款，而最终呈现的可能只有4款实体样品。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">现在，三维可视化软件的诞生和发展为汽车制造商改造设计流程提供了可能。在欧特克面向汽车制造业的一则美轮美奂的宣传片中描述了这样的一幕：望着窗外滑落的雨滴，设计师放下手中的咖啡，用手持设备拍下窗户上的一滴水珠，一幕经典的汽车工业设计画卷便从这里逐渐展开。从想象、设计到创造，设计师运用各种二维和三维设计软件完成了从概念设计、形成草图到模型创建和仿真模拟再到可视化分析、实时渲染并呈现不同设计效果的全设计流程。在这一过程中，无论是设计的流程和效率，还是其创造性的潜能，都得到了充分的激发与释放。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">从CAD到CAE，从二维到三维，Autodesk Alias、Autodesk Showcase等软件悉数登场，其强大的整合式数字样机设计平台跨越并衔接工业设计从设计师思维到工程师思维的不同阶段，从整体的外部造型设计到内部的零部件工程设计，欧特克机械设备及工厂设计套件最终能将全部的设计内容集成到流程图表之中，并实现从平面图到3D工厂模型的转换，最终提升和优化了生产效率。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">直面设计流程挑战 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">家族式设计、模块化制造，从这些当下汽车制造商广泛采用的策略可以看出，厂商对节省时间和资金的需求比以往更高。与此同时，汽车制造商更多地采用模块化设计，与零部件供应商共同承担风险。可以说，高价值产品的背后离不开设计成本的优化与效率提升。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">汽车是一个复杂的综合产物，并非使用最先进的设计工具和拥有最顶尖的设计师就能设计出最漂亮的汽车。实际上，汽车的设计制造流程涉及面非常广，涵盖造型设计、工程设计、零部件成型、空气动力学模拟、可视化呈现等多个维度。传统汽车设计流程还牵涉到工厂和工厂之间的协作难题。一款汽车并非所有的部件都由汽车厂家设计，比如灯具通常会委托灯具厂设计生产，汽车厂商会给车上留出“洞”，限定好尺寸，同时灯的造型还要符合整个车的造型，灯具厂即便设计出五到六款车灯也可能达不到汽车厂家的要求，拖长了整个项目周期和成本。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">从协作的角度看，零部件供应商、全球化的产品研发团队与汽车制造商之间高效的合作是产品实现加速创新、获得市场成功的关键。成本压力、数据的可用性与集成、设计修改引发的连锁反应、产品潜在的性能问题、与供应商和非技术团队的沟通、概念设计与工程和制造流程之间缺乏联系等，这些都是汽车零部件供应商所面临的共同挑战。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">对于汽车制造商来说，要想在当今的市场中取得成功，需要在从概念设计到产品上市的整个开发流程中致力于消除低效因素。开发团队不仅需要能够在设计流程早期对设计进行研究，而且还必须具备与有关各方就设计进行交流的能力。从最初的概念设计阶段就能对设计进行可视化、优化和管理，可以有效避免在物理样机创建阶段出现设计问题。此外，各领域的相关人员能够在整个开发流程中交流和协作，无需重复创建所需数据，这一点也很重要。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">数字化平台释放价值 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">在全球化日益明显的今天，遍布世界各地的数据中心和供应链企业与主机厂进行协作的同时，伴随着大量的数据交换。因此，在设计之初，数据传输、分析和设计集成就成为汽车行业的一大挑战。在高度分工与协作的生产制造流程中，数字样机与整合式的平台化解决方案逐渐发展成设计工具的主流趋势。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">而实际情况是欧特克对汽车制造设计的主流趋势显然有所预见，其汽车设计解决方案一直处于不断完善之中：从最开始用于造型设计阶段，到面向工程的技术曲面阶段，一直到验证分析阶段。如今，欧特克的汽车设计理念已经延伸至制造阶段的工厂设计环节，保证工厂的设计布局能够最大化地满足汽车设计、生产、制造的全流程需求。以欧特克工业造型设计软件Autodesk Alias、照片级的渲染软件Autodesk Showcase和仿真模拟系列软件Autodesk Simulation，以及欧特克产品设计套件（Autodesk Product Design Suite）和欧特克机械设备及工厂设计套件（Autodesk Factory Design Suite）为例：它们能提供从早期的草图绘制、造型、渲染、仿真模拟，到数字化设计平台，再到工厂的设计布局，涵盖汽车从概念设计到可视化、仿真模拟再到生产制造以及售后整个全流程需求。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">欧特克软件中国有限公司制造业总监严天翌表示，现在，一款汽车对外形、成本、结构的设计和修改可以完全放在数字化环境中进行。草图——模型——修改的设计流程被颠覆：理论上，草图阶段完全可以设计出一千款产品，然后不断在数字化环境中预览、调整和优化，压缩数量，最终只生产出一款样机。同时，包括灯具这样的零部件设计也可以实现早期协同，使之更匹配整车的设计感。欧特克数字样机与整合式的平台化解决方案所倡导设计理念，不仅能让设计师们轻松掌控复杂造型，将他们恣意挥洒地设计灵感变为现实。除此之外，欧特克数字化平台所释放的价值，也给汽车制造厂商带来巨大的经济效益和社会效益。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">在2012年“灵感绽放——欧特克设计师之夜”活动上，上海汽车集团公司乘用车产品造型部总监邵景峰对此深有同感，“国际化的创新思维和创意基因正越来越融入到面向未来的汽车设计理念中，打造高效的设计协同平台，对拥有众多供应链的汽车制造商来说尤为重要。欧特克数字样机在帮助设计师提升设计创新能力、协同设计、数据管理以及优化设计流程等方面功不可没。” </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">实际上，对于汽车企业来说，设计解决方案的选择性有很多，而欧特克聪明地选择了不断扩展解决方案外延的作法，为汽车企业提供了更强的移植和兼容能力，这也是欧特克近年来逐渐凸显的优势之一。更好的设计工具能够让设计更加方便，让设计灵感转换成可生产性的比例提高。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">今天，随着技术的发展，软件与汽车设计结合得愈来愈紧密。来自欧特克的一组数据表明：在“云”中做单一的设计渲染比在实体设备上快3到5倍，建筑师甚至可以借助云技术把制作设计渲染的时间从90分钟缩短为12分钟。简单地说，云计算让软件计算效率成倍提高。效率成倍提高让软件和汽车设计中的一项应用具有了普及的可能性，这就是软件仿真。厂商可以通过软件仿真实现一些测试环境，比如数字化风洞，对车型的加热、空气流通、散热等方面进行仿真测试，甚至对引擎能效本身的情况也可以进行测试，从而进行优化和调整。 </span>\n	</p>\n	<p>\n		<span style=\"line-height:2;font-size:13px;\">未来，云计算、移动化等技术形态将进一步重塑汽车制造业的设计流程和客户体验。移动终端的普及正在逐渐覆盖到消费者，它为汽车企业有效率地实现客户定制生产提供了可能。可视化下一步的发展方向或许就是如何增强虚拟和现实之间的联动，将数据连接的广度进一步扩展。这或许也是平台化解决方案供应商未来可能的发展方向。</span> \n	</p>\n</div>',' ','1','2013-04-12 23:17:25','0','','1','0','0','','0','594','');

