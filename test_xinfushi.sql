/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : test_xinfushi

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2014-09-26 18:35:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sk_aboutcate
-- ----------------------------
DROP TABLE IF EXISTS `sk_aboutcate`;
CREATE TABLE `sk_aboutcate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `child_info` text collate utf8_unicode_ci NOT NULL,
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_aboutcate
-- ----------------------------
INSERT INTO `sk_aboutcate` VALUES ('1', '3', '宏嘉大厦分部', '宏嘉大厦分部', '&lt;a href=&quot;http://www.xinfushi.dev/about/index/cid/3.html#&quot;&gt;宏嘉大厦分部&lt;/a&gt;', '', '2', 'a:7:{s:7:\"address\";s:55:\"中国上海浦东新区福山路388号宏嘉大厦6层\";s:3:\"zip\";s:6:\"200122\";s:3:\"url\";s:15:\"www.hongteng.cc\";s:5:\"phone\";s:12:\"021-51832030\";s:3:\"fax\";s:12:\"021-51832030\";s:5:\"email\";s:17:\"China@hongteng.cc\";s:7:\"hotline\";s:13:\"400-827-0080 \";}', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('2', '0', '公司理念', '公司理念', '公司理念', '', '3', '', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('3', '0', '联系方式', '联系方式', '联系方式', '', '4', '', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('4', '0', '公司介绍', '', '地对地导弹', '', '2', 'a:7:{s:7:\"address\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"hotline\";s:0:\"\";}', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('5', '3', '外滩中心总部', '外滩中心总部', '外滩中心总部', '/attachments/aboutcate/20140417161627_627.jpg', '2', 'a:7:{s:7:\"address\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"hotline\";s:0:\"\";}', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('6', '3', '淮海国际中心分部', '淮海国际中心分部', '&lt;a&gt;淮海国际中心分部&lt;/a&gt;', '', '4', 'a:7:{s:7:\"address\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"hotline\";s:0:\"\";}', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_aboutcate` VALUES ('7', '3', '华润时代广场分部', '华润时代广场分部', '&lt;a&gt;华润时代广场分部&lt;/a&gt;', '', '5', 'a:7:{s:7:\"address\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:3:\"url\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:5:\"email\";s:0:\"\";s:7:\"hotline\";s:0:\"\";}', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_account
-- ----------------------------
DROP TABLE IF EXISTS `sk_account`;
CREATE TABLE `sk_account` (
  `id` int(11) NOT NULL auto_increment,
  `groupid` mediumint(8) unsigned default '0' COMMENT '管理员分组',
  `adminid` int(11) default '0' COMMENT '管理id',
  `memberid` mediumint(8) unsigned default '0' COMMENT '用户分组',
  `utype` tinyint(3) default '0' COMMENT '用户类型',
  `userid` int(6) default '100000' COMMENT '用户ID,用于前台拍卖显示',
  `username` varchar(255) collate utf8_unicode_ci NOT NULL COMMENT '用户名',
  `mobile` varchar(255) collate utf8_unicode_ci default NULL COMMENT '手机号码',
  `password` varchar(255) collate utf8_unicode_ci NOT NULL COMMENT '用户密码',
  `realname` varchar(255) collate utf8_unicode_ci default NULL COMMENT '真实姓名',
  `plate` int(11) default NULL,
  `street` int(11) default NULL,
  `area` int(11) default NULL COMMENT '所在城市区域',
  `address` varchar(255) collate utf8_unicode_ci default NULL COMMENT '收货地址',
  `zipcode` varchar(255) collate utf8_unicode_ci default NULL COMMENT '邮编地址',
  `tel` varchar(255) collate utf8_unicode_ci default NULL COMMENT '联系电话',
  `nickname` varchar(255) collate utf8_unicode_ci default NULL COMMENT '昵称',
  `email` varchar(255) collate utf8_unicode_ci default '' COMMENT '电子邮件',
  `qq` varchar(255) collate utf8_unicode_ci default NULL,
  `rec_uid` int(11) default '0' COMMENT '推荐人id',
  `icon` varchar(255) collate utf8_unicode_ci default '' COMMENT '图像',
  `sign` text collate utf8_unicode_ci COMMENT '签名',
  `fav_goodscate` varchar(255) collate utf8_unicode_ci default NULL COMMENT '收藏范围',
  `icdfile` varchar(255) collate utf8_unicode_ci default NULL COMMENT '身份证电子版',
  `photo` varchar(255) collate utf8_unicode_ci default NULL COMMENT '个人近照',
  `point` int(11) default '0' COMMENT '用户积分',
  `apoint` decimal(10,2) default '0.00' COMMENT '竞拍额度',
  `credit_point` int(11) default '0' COMMENT '信用积分',
  `coin` decimal(10,2) default '0.00' COMMENT '清风币',
  `level` tinyint(3) default '0' COMMENT '用户等级',
  `logintime` int(10) unsigned default '0' COMMENT '登陆时间',
  `loginip` varchar(200) collate utf8_unicode_ci default NULL,
  `lastlogintime` int(11) default NULL,
  `lastloginip` varchar(200) collate utf8_unicode_ci default NULL,
  `state` tinyint(1) default '0' COMMENT '用户状态（0、未审核 1、未激活 2、正常 3、停用）',
  `regtime` int(10) unsigned default '0' COMMENT '注册时间',
  `validity` int(11) default '0' COMMENT '卖家有效期',
  `regip` varchar(255) collate utf8_unicode_ci default NULL COMMENT '注册IP地址',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='管理员表';

-- ----------------------------
-- Records of sk_account
-- ----------------------------
INSERT INTO `sk_account` VALUES ('1', '1', '1', '0', '0', '100001', 'admin', '保密', '4eef1e1ea34879a2ae60c60815927ed9', '管理员', '310000', '310100', '310112', '上海市闵行区', '200237', '保密', '系统管理员', 'admin@wind.com', null, '0', '', null, null, null, null, '1002', '500.00', '0', '0.00', '10', '1411626543', '127.0.0.1', '1411611298', '127.0.0.1', '2', '1345188606', '1376724606', '127.0.0.1');
INSERT INTO `sk_account` VALUES ('2', '1', '1', '0', '0', '100000', 'taikoo', null, 'e626ed742e48be91c6a0a3651284e61e', null, null, null, null, null, null, null, null, '321110400@qq.com', null, '0', '', null, null, null, null, '0', '0.00', '0', '0.00', '0', '1411626543', '127.0.0.1', '1411611298', '127.0.0.1', '2', '1382670835', '0', null);

-- ----------------------------
-- Table structure for sk_admingroups
-- ----------------------------
DROP TABLE IF EXISTS `sk_admingroups`;
CREATE TABLE `sk_admingroups` (
  `adminid` tinyint(3) unsigned NOT NULL default '0',
  `allowadmincp` tinyint(1) NOT NULL default '0',
  `alloweditatc` tinyint(1) NOT NULL default '0',
  `allowdelatc` tinyint(1) NOT NULL default '0',
  `allowcheckatc` tinyint(1) unsigned NOT NULL default '0',
  `allowlockatc` tinyint(1) NOT NULL default '0',
  `allowmoveatc` tinyint(1) NOT NULL default '0',
  `allowcopyatc` tinyint(1) NOT NULL default '0',
  `allowtopatc` tinyint(1) NOT NULL default '0',
  `allowcommend` tinyint(1) NOT NULL default '0',
  `allowshield` tinyint(1) NOT NULL default '0',
  `allowtitlestyle` tinyint(1) unsigned NOT NULL default '0',
  `adminright` text NOT NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_admingroups
-- ----------------------------
INSERT INTO `sk_admingroups` VALUES ('1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'a:95:{s:7:\"setting\";i:1;s:13:\"setting_basic\";i:1;s:12:\"setting_core\";i:1;s:14:\"setting_member\";i:1;s:18:\"setting_attachment\";i:1;s:12:\"setting_safe\";i:1;s:11:\"setting_seo\";i:1;s:13:\"setting_email\";i:1;s:13:\"markoperation\";i:1;s:5:\"share\";i:0;s:10:\"share_cate\";i:1;s:10:\"share_list\";i:1;s:9:\"share_add\";i:1;s:10:\"share_edit\";i:1;s:6:\"advert\";i:0;s:14:\"advert_addcate\";i:1;s:11:\"advert_cate\";i:1;s:15:\"advert_editcate\";i:1;s:11:\"advert_list\";i:1;s:10:\"advert_add\";i:1;s:11:\"advert_edit\";i:1;s:12:\"announcement\";i:0;s:17:\"announcement_list\";i:1;s:16:\"announcement_add\";i:1;s:4:\"mail\";i:0;s:9:\"mail_list\";i:1;s:8:\"mail_add\";i:1;s:9:\"mail_edit\";i:1;s:5:\"setqq\";i:0;s:10:\"setqq_list\";i:1;s:8:\"feedback\";i:0;s:13:\"feedback_list\";i:1;s:7:\"sysinfo\";i:0;s:14:\"sysinfo_list_1\";i:0;s:14:\"sysinfo_list_2\";i:0;s:14:\"sysinfo_list_3\";i:0;s:14:\"sysinfo_list_4\";i:0;s:4:\"menu\";i:1;s:8:\"menu_add\";i:1;s:9:\"menu_list\";i:1;s:9:\"menu_edit\";i:1;s:4:\"area\";i:1;s:9:\"area_list\";i:1;s:7:\"account\";i:1;s:12:\"account_list\";i:1;s:11:\"account_add\";i:1;s:12:\"account_edit\";i:1;s:5:\"group\";i:0;s:11:\"group_admin\";i:1;s:15:\"group_editadmin\";i:1;s:6:\"member\";i:1;s:11:\"member_list\";i:1;s:10:\"member_add\";i:0;s:11:\"member_edit\";i:1;s:10:\"member_del\";i:0;s:4:\"case\";i:1;s:8:\"casecate\";i:0;s:13:\"casecate_list\";i:1;s:8:\"caseinfo\";i:0;s:13:\"caseinfo_list\";i:1;s:4:\"news\";i:1;s:8:\"newscate\";i:0;s:13:\"newscate_edit\";i:1;s:12:\"newscate_add\";i:1;s:13:\"newscate_list\";i:1;s:8:\"news_add\";i:1;s:9:\"news_list\";i:1;s:9:\"news_edit\";i:1;s:11:\"newscomment\";i:0;s:16:\"newscomment_list\";i:1;s:4:\"zone\";i:0;s:9:\"zone_list\";i:1;s:4:\"file\";i:1;s:8:\"filecate\";i:0;s:13:\"filecate_list\";i:1;s:8:\"fileinfo\";i:0;s:13:\"fileinfo_list\";i:1;s:5:\"video\";i:1;s:9:\"video_add\";i:1;s:10:\"video_list\";i:1;s:8:\"products\";i:1;s:12:\"productscate\";i:0;s:17:\"productscate_list\";i:1;s:13:\"products_list\";i:1;s:5:\"param\";i:0;s:10:\"param_list\";i:1;s:8:\"solution\";i:1;s:12:\"solutioncate\";i:0;s:17:\"solutioncate_list\";i:1;s:13:\"solution_list\";i:1;s:6:\"hiring\";i:1;s:8:\"jobclass\";i:0;s:13:\"jobclass_list\";i:1;s:7:\"careers\";i:0;s:12:\"careers_list\";i:1;}');
INSERT INTO `sk_admingroups` VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'a:101:{s:4:\"area\";i:1;s:9:\"area_list\";i:1;s:7:\"account\";i:1;s:12:\"account_list\";i:1;s:11:\"account_add\";i:1;s:12:\"account_edit\";i:1;s:5:\"group\";i:0;s:11:\"group_admin\";i:1;s:15:\"group_editadmin\";i:1;s:7:\"setting\";i:1;s:13:\"setting_basic\";i:1;s:12:\"setting_core\";i:1;s:14:\"setting_member\";i:1;s:18:\"setting_attachment\";i:1;s:12:\"setting_safe\";i:1;s:11:\"setting_seo\";i:0;s:13:\"setting_email\";i:1;s:13:\"markoperation\";i:1;s:5:\"share\";i:0;s:10:\"share_cate\";i:1;s:10:\"share_list\";i:1;s:9:\"share_add\";i:1;s:10:\"share_edit\";i:1;s:6:\"advert\";i:0;s:14:\"advert_addcate\";i:1;s:11:\"advert_cate\";i:1;s:15:\"advert_editcate\";i:1;s:11:\"advert_list\";i:1;s:10:\"advert_add\";i:1;s:11:\"advert_edit\";i:1;s:12:\"announcement\";i:0;s:17:\"announcement_list\";i:0;s:16:\"announcement_add\";i:0;s:4:\"mail\";i:0;s:9:\"mail_list\";i:1;s:8:\"mail_add\";i:1;s:9:\"mail_edit\";i:1;s:5:\"setqq\";i:0;s:10:\"setqq_list\";i:0;s:8:\"feedback\";i:0;s:13:\"feedback_list\";i:0;s:7:\"sysinfo\";i:1;s:14:\"sysinfo_list_1\";i:1;s:14:\"sysinfo_list_2\";i:1;s:14:\"sysinfo_list_3\";i:1;s:14:\"sysinfo_list_4\";i:1;s:4:\"menu\";i:1;s:8:\"menu_add\";i:1;s:9:\"menu_list\";i:1;s:9:\"menu_edit\";i:1;s:4:\"case\";i:1;s:8:\"casecate\";i:0;s:13:\"casecate_list\";i:1;s:8:\"caseinfo\";i:0;s:13:\"caseinfo_list\";i:1;s:4:\"news\";i:1;s:8:\"newscate\";i:0;s:13:\"newscate_edit\";i:1;s:12:\"newscate_add\";i:1;s:13:\"newscate_list\";i:1;s:8:\"news_add\";i:1;s:9:\"news_list\";i:1;s:9:\"news_edit\";i:1;s:11:\"newscomment\";i:0;s:16:\"newscomment_list\";i:1;s:4:\"zone\";i:0;s:9:\"zone_list\";i:1;s:4:\"file\";i:1;s:8:\"filecate\";i:0;s:13:\"filecate_list\";i:1;s:8:\"fileinfo\";i:0;s:13:\"fileinfo_list\";i:1;s:5:\"video\";i:1;s:9:\"video_add\";i:1;s:10:\"video_list\";i:1;s:5:\"goods\";i:1;s:9:\"goodscate\";i:0;s:14:\"goodscate_list\";i:1;s:10:\"goodsbrand\";i:0;s:15:\"goodsbrand_list\";i:1;s:9:\"goodsinfo\";i:0;s:14:\"goodsinfo_list\";i:1;s:8:\"products\";i:1;s:12:\"productscate\";i:0;s:17:\"productscate_list\";i:1;s:13:\"products_list\";i:1;s:5:\"param\";i:0;s:10:\"param_list\";i:1;s:8:\"solution\";i:1;s:12:\"solutioncate\";i:0;s:17:\"solutioncate_list\";i:1;s:13:\"solution_list\";i:1;s:6:\"member\";i:1;s:11:\"member_list\";i:1;s:10:\"group_user\";i:1;s:11:\"member_edit\";i:1;s:6:\"hiring\";i:1;s:8:\"jobclass\";i:0;s:13:\"jobclass_list\";i:1;s:7:\"careers\";i:0;s:12:\"careers_list\";i:1;}');

-- ----------------------------
-- Table structure for sk_adminlogs
-- ----------------------------
DROP TABLE IF EXISTS `sk_adminlogs`;
CREATE TABLE `sk_adminlogs` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `action` text NOT NULL COMMENT '操作类型',
  `description` varchar(255) NOT NULL default '' COMMENT '描述',
  `logdate` int(10) unsigned NOT NULL default '0',
  `logip` char(15) NOT NULL default '' COMMENT '登录ip',
  `result` tinyint(1) NOT NULL default '1',
  `islog` tinyint(1) NOT NULL default '0' COMMENT '是否登录日志',
  PRIMARY KEY  (`id`),
  KEY `logdate` USING BTREE (`logdate`,`islog`),
  KEY `uid` USING BTREE (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=397 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_adminlogs
-- ----------------------------
INSERT INTO `sk_adminlogs` VALUES ('319', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=6nng8&amp;', '', '1380513831', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('320', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=yfm8u&amp;', '', '1380518497', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('321', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5bn8r&amp;', '', '1382518732', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('322', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=x85fp&amp;', '', '1382670798', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('323', '0', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=taikoo&amp;admin_pw=taikoo&amp;checkcode=2yru6&amp;', 'username: taikoo password: taikoo', '1382670880', '127.0.0.1', '0', '1');
INSERT INTO `sk_adminlogs` VALUES ('324', '0', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=taikoo&amp;admin_pw=taikoo&amp;checkcode=ruepa&amp;', 'username: taikoo password: taikoo', '1382670887', '127.0.0.1', '0', '1');
INSERT INTO `sk_adminlogs` VALUES ('325', '2', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=taikoo&amp;admin_pw=taikoo&amp;checkcode=h6v42&amp;', '', '1382670907', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('326', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=c8448&amp;', '', '1382941719', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('327', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5tt7x&amp;', '', '1383039712', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('328', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=429bt&amp;', '', '1383191583', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('329', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=7sxuc&amp;', '', '1383709237', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('330', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5ghcw&amp;', '', '1383727114', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('331', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=v2mbt&amp;', '', '1383978263', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('332', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=gnxss&amp;', '', '1384767554', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('333', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5g8v8&amp;', '', '1384918010', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('334', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=9xrev&amp;', '', '1385002743', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('335', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=9bchp&amp;', '', '1385087949', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('336', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=bec47&amp;', '', '1385533230', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('337', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=3n3te&amp;', '', '1390441588', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('338', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=m8fey&amp;', '', '1390526798', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('339', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=wgxvf&amp;', '', '1392094035', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('340', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=sxsm9&amp;', '', '1392094455', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('341', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=x8822&amp;', '', '1392609136', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('342', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=9yfsr&amp;', '', '1392631932', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('343', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=htcap&amp;', '', '1392686482', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('344', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=4rb46&amp;', '', '1396502098', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('345', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=usc85&amp;', '', '1396593169', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('346', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=m5g8e&amp;', '', '1396938758', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('347', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=hfs2m&amp;', '', '1396957382', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('348', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=gtrfh&amp;', '', '1397004872', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('349', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=96wtv&amp;', '', '1397205317', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('350', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=fepna&amp;', '', '1397437249', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('351', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=nsu66&amp;', '', '1397466064', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('352', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=9hy3h&amp;', '', '1397609512', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('353', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=g2emc&amp;', '', '1397646469', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('354', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=t8pee&amp;', '', '1397696071', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('355', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=wsx5p&amp;', '', '1397782531', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('356', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=6v6pt&amp;', '', '1397872452', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('357', '3', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=啊实打实大&amp;admin_pw=123123&amp;checkcode=26bar&amp;', '', '1397874152', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('358', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=nuvah&amp;', '', '1397874177', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('359', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=xg6ru&amp;', '', '1398042383', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('360', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=xx9wu&amp;', '', '1398329947', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('361', '0', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admi&amp;admin_pw=admi001&amp;checkcode=29rhs&amp;', 'username: admi password: admi001', '1398330180', '180.166.159.70', '0', '1');
INSERT INTO `sk_adminlogs` VALUES ('362', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=rc9hf&amp;', '', '1398330229', '180.166.159.70', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('363', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=ft3hr&amp;', '', '1398395951', '180.166.159.70', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('364', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=y27wf&amp;', '', '1398403665', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('365', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5ytyx&amp;', '', '1398494804', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('366', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=h2w5m&amp;', '', '1398499306', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('367', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=gt5pe&amp;', '', '1398563466', '180.158.34.72', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('368', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=vsb23&amp;', '', '1398663043', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('369', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=v5sem&amp;', '', '1398733165', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('370', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=8fftn&amp;', '', '1398763703', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('371', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=2x3fy&amp;', '', '1398820861', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('372', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=tun2e&amp;', '', '1398821346', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('373', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=4hn9g&amp;', '', '1398839870', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('374', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=wbs23&amp;', '', '1398845620', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('375', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=usmny&amp;', '', '1399180761', '180.166.159.70', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('376', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5uu5p&amp;', '', '1399181985', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('377', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=bwmnr&amp;', '', '1399182931', '180.166.159.70', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('378', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=u4pbm&amp;', '', '1399188280', '180.166.159.70', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('379', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=bgph9&amp;', '', '1399252548', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('380', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=m6py7&amp;', '', '1399356058', '116.231.235.89', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('381', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=t33tu&amp;', '', '1399367285', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('382', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=cpacu&amp;', '', '1399438876', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('383', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=4ueu4&amp;', '', '1399514314', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('384', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=t9pa9&amp;', '', '1399950472', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('385', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=tx54e&amp;', '', '1400122637', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('386', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=rhb67&amp;', '', '1400212422', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('387', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=yn4ps&amp;', '', '1400463966', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('388', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=t2b3v&amp;', '', '1400552724', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('389', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=tnf63&amp;', '', '1400577530', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('390', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=e9snc&amp;', '', '1400636026', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('391', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=9mpmc&amp;', '', '1400653358', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('392', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=5gu3c&amp;', '', '1400663105', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('393', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=4ym2t&amp;', '', '1400752290', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('394', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=em8g8&amp;', '', '1400835562', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('395', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=8fupg&amp;', '', '1401081305', '127.0.0.1', '1', '1');
INSERT INTO `sk_adminlogs` VALUES ('396', '1', '<span class=\"b\">GET:</span><br />action=login<br /><span class=\"g\">POST:</span><br />admin_user=admin&amp;admin_pw=admin001&amp;checkcode=s7hmy&amp;', '', '1401241704', '127.0.0.1', '1', '1');

-- ----------------------------
-- Table structure for sk_adminonlines
-- ----------------------------
DROP TABLE IF EXISTS `sk_adminonlines`;
CREATE TABLE `sk_adminonlines` (
  `sid` char(32) NOT NULL,
  `username` varchar(30) NOT NULL,
  `loginfo` text NOT NULL,
  `logdate` int(10) unsigned NOT NULL default '0',
  `logip` char(15) NOT NULL,
  `lastactivity` int(10) unsigned NOT NULL default '0',
  `super` tinyint(1) unsigned NOT NULL default '0',
  UNIQUE KEY `sid` USING BTREE (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_adminonlines
-- ----------------------------
INSERT INTO `sk_adminonlines` VALUES ('8a1bfa52c48d498c0eb79e5b9579de54', 'admin', 'AzIAb1diBGFXawQqVSBQPQphDWBWflcgUj4EMwZyVmpQcwFuUWQGbgUhAGRSdlM/WnFUOVZkAjpXcFRyUncFZwMhADtXMgQ7VzQEc1VoUHQKaA1vVmZXd1I2BDMGPVY4UG4BdlFuBicFOQBtUm5TJlpyVGJWLwJzVyVUaFJ2BWYDcQBuVyAEbFdiBGNVaVAlCmYNP1Y5VzNSZgQyBmFWNFBhAWdRYQZsBTQAbFI1UzZaY1RmVmoCMFcxVDFSNAU6A2IAYFdqBGRXZgQ0VTdQPgpwDWFWL1dvUmAEbQZyVjBQZAE5UTwGOgVqADFSdlM/WnFUOVZtAjpXcFQ2UiYFOQMgAG9XZARsV3MENlUhUGgKJw0qVjVXMVJ1BGwGI1ZrUDEBblF3BmUFIQBuUidTPlozVDFWZgIiVzNUa1JoBW0DJAA0VzcEO1c4BD9VMFB3CnANYVYvV29SZgRtBnJWYFAiAW9RJgZuBTIAZ1JuUyZaY1RvVjACb1clVGJSYAVrAycANFcnBDVXcwRqVSBQPQpjDWBWfldlUnUEbAYjVmtQMQFlUW8GdgViADlSOFNrWnVUZ1Y5AmxXM1RzUmcFIANoACZXaQRnV2sEc1VjUCUKaQ0pVmZXZFJkBG0GclYwUGwBOFE6BiMFYAA9UjFTZ1ppVGJWKAJjV3BUPFJ3BTgDYgBvV3EEZldzBGpVIFA9CmMNaFZmV3dSNgQ7BjxWPlB3AThROgY3BWgANFIgU2daIFQ4Vi8COldjVD1SJgUyA3EAblcgBGxXYARjVWlQJQozDTZWMFc6UiAEOgY/VidQZQE1USEGNwUhAG5SJ1M+WjNUOVZ+AjBXcFQ8UncFOANiAGdXaQR0VzAEPVU/UGgKJQ05VjNXJVIuBDYGJFYyUCIBb1EmBm4FMgBvUnZTNFogVDhWLwI6V2NUNlI+BSADMgA5Vz8EOVcmBCVVPFB3CjMNLlY/V3dSbAQkBmpWYFA6AXZRZQZ2BTgAJlJuUzVaMFQ5Vn4CYVc+VGtSawV1AzAAOlc+BDtXNAQ/VTdQJQppDSlWZldkUm0EdQZgVnNQOwEnUW8GZQUyAG9SdlNlWm5Ub1YzAndXIVRvUm0FZwM/ADFXcQRtVyIEa1ViUD0KcA1qVn5XblIkBG0GYVZkUDoBdlE0BjgFbwA6UiNTcFprVHdWMAJlVyFUc1J9BW4DNgB3V2gEJVdrBGBVaVAlCmINeFZnVyZSbQRmBmBWa1AiATVRMQY5BWoAO1ImU21aZVRrVigCIldpVHRSPgUwA2MAYldhBGxXcwQwVWlQPgpnDWBWJ1cmUm0EYAZqVnNQcwExUSEGIAVqADtSM1MmWjlUalZmAjFXaVR0Uj4FMwNgAG9XcQQlVzQEJVUnUG4KPA09VgNXN1I2BCQGOVYyUCIBb1E8Bm4FMgBuUidTPlozVDFWZgIiVyFUYlJwBXYDOgA7VzQECVcyBD5VIVBiCnANYVY1V29SZgRsBiNWa1AxAWBRbwZ2BXAAMFIgU3Baa1RtVjsCX1c/VGJSaQVgAzYAJ1dxBG1XOARrVWJQPAohDWBWbVdtUm0EdQYjVjRQdAEgUTwGOgVkAApSNVNwWnZUYlY/AmhXP1RiUmoFdgNxAG5XOgRsV2AEalUgUD0KYw1oVmZXd1IkBDIGJFYlUGkBOlEyBgsFcAA0UjJTYVogVDhWNQI6V2NUPFJ3BTgDYgBkV2kEdFciBDRVJ1BzCjsNNFY7VwpSJAQyBj9Wc1A7AT1RbwZlBTgAJlJuUzVaMVQ5Vn4Cc1c3VHNScAVrAz0AMlcMBDNXPAQwVTpQawpwDWFWNVdvUmYEbAYjVmtQMQFnUW8GdgVuADRSJlNvWm1Uc1Y5AnJXM1RzUm0FbQM9AHdXaAQ/V2sEYFVoUHQKaA1vVmZXd1IkBD8GMVYjUGUBdlFuBj0FOQBlUm9Td1o4VDJWbAI6V3BUdFJsBWMDIQAwVwwENVcwBCVVNlAlCmkNM1ZmV2RSbAQkBmpWYFAwAW5RdwYnBWsANFImU2FaXVRvVjUCc1cmVCVSPwVrA2kAZFdoBCVXawRoVWlQJQohDTJWPVcnUjIECAYxVjVQZAF2UW4GPQU5AGRSb1N3WjhUMlZsAjpXcFR0UmwFYwMhADBXDAQzVzUEOFUnUCUKaQ0zVmZXZFJsBCQGalZnUDoBdlE0BjAFdQAwUiZTcFogVDhWNQI6V2JUPFJ3BTgDYgBhV2kEdFcwBDVVJVBiCiANLlYDVzRSMwQzBjNWMFB0ATFRdwZvBWoAb1JlUz9acVQ5Vm0CMVdoVCVSZQVmAyUAMFchBCJXDgQyVTJQcwo3DXhWZ1c8Um0EZgZrViJQOgFlUWAGbgUhADRSMFNyWmdUcVYoAl9XN1RjUm0FdgMwADRXJwQzV3MEalU6UD0KYw1hVi9Xb1JmBGYGalZzUGEBMFEjBjEFcQAhUgtTaFprVHBWKAIiV2lUblI+BTMDaAAmV2kEZ1dhBGtVcVBmCjYNLFY5VydSIwQIBjFWNVBkAXZRbgY9BTkAZFJvU3daOFQyVm0COldwVGZSYAV0AzYAJ1cnBAlXNAQ1VTpQcwpwDWFWNVdvUmYEbAYjVmtQMQFmUW8GdgViADtSOlNrWndUbVY/AmVXP1RiUmoFdgNxAG5XOgRsV2EEalUgUD0KYw1tVmZXd1I2BDkGPlY+UHUBOlE2BjEFbgAwUjpTcFpdVG9WNQJzVyZUJVI/BWsDaQBkV2gEJVdrBGBVZVA9CnANO1YyVztSOAQiBj5WMlBlATlRMAY6BXcAClI1U2BaZlQhVmcCaVdoVDZSPwVxA2kAYVdpBHRXPAQwVTpQawpwDWFWNVdvUmcEbAYjVmtQOQFuUXcGOQViADxSOFNbWm5UalYvAnRXcFQ8Um0FOANiAG5XIARsV2kEa1VxUGoKMw0zVjBXClI2BDMGNFZzUDsBPVFvBmUFOAAmUm5TPVo4VCFWMQJhVztUa1JbBWcDNwA8VycEdFdqBDhVaVA2CmkNKVZmV2BSbQR1BiNWNFB0ASVRJAZ2BTgAPFJuUzRaOVRwVmYCMVdiVD1SJgVxAzYAIVciBCdXDgQ9VTpQdAomDXhWZ1c8Um0EZgZrViJQOgFsUW8GdgVlADBSMVNgWmBUYlY/AmtXcFQ8Um0FOANjAG5XIARsV2AEYlVpUCUKNA0/VjlXMVI1BDYGM1Y6UF8BOFE8BicFdwB3Um9TbVo4VDJWZwJzV2hUMFI+BSADIAAsVyAEP1c/BDdVPFAlCmkNM1ZmV2VSbAQkBmpWYFA0AW5RdwYnBXoAJlI9U2paZFRsVgMCbFc7VHRScAVdA2IAd1doBD9XawRhVWhQdApoDWtWaFdvUnUEJAYpViJQaQE6UTMGOwVcADlSPVN3WnZUXFZuAiJXaVRuUj4FMgNoACZXaQRnV2UEa1VxUHQKKw0pVjVXO1IxBDgGD1Y9UGkBJ1EhBgsFMAB3Um9TbVo4VDNWZwJzV2hUNlIwBTgDcQAmVyoEJVc4BD9VNVBoCg0NNlY1VyZSIwQIBmRWc1A7AT1RbwZkBTgAJlJuUzBaOFQhVjECZVc8VHJSJgU5AzoAb1diBG1XIgRrVWtQPQpwDTdWOVc7UiIECAYxVjVQZAF2UW4GPQU5AGRSb1N3WjhUOlZmAiJXP1RiUmoFdwMMADlXOgQlVyUEc1VoUG4KaA1rVmdXJlJtBG4GalZzUG0BMVE7BiEFXAAwUjBTbVp2VCFWZwJpV2hUNlI/BXEDaQBhV2kEdFcwBCNVNlBmCnANYVY1V29SZgRsBiNWa1A5AW5RdwY1BXEAMFI1U1tablRqVi8CdFdwVDxSbQU4A2IAblcgBGxXZgRrVXFQZgoxDTlWM1cgUjkEIwZyVmpQaQFuUWQGbwVwAG9SZVM2WjhUIVY9AmNXMVRoUnEFbAMnAApXPwQ/VyIEJVVxUDwKOw1gVm1XblIkBG0GYVZgUDoBdlE0BjcFYAA6UiFTalp2VFxWPQJkVzZUJVI/BWsDaQBkV2gEJVdrBGBVYVA9CnANO1Y/VzZSOAQiBj5WJVBfATFRMQY9BXcAd1JvU21aOFQyVmcCc1doVDJSPgUgAzQAJ1c8BCNXIQRzVWhQbgpoDWpWZ1cmUm0EZgZhVmtQIgEzUScGOwV2ACVSC1NlWmZUblY1Am5XcFQ8Um0FOANiAG5XIARsV2AEZFVpUCUKNQ0oVjNXIFInBAgGNVY1UGkBIFE0BjAFbgA8UjpTJlo5VGpWZgIxV2lUdFI+BTQDaQB3Vz4EM1c8BDNVNlB1CnANYVY1V29SZgRsBiNWa1AxAWVRbwZ2BW4AMFI5U2ZaZ1RxVgMCbFc7VHRScAUgA2gAPFdpBGdXagQiVWlQNgpiDWBWflc4UjIEOgYyVjRQcgELUTQGMAVnAHdSb1NtWjhUM1ZnAnNXaFQ2UjUFOANxADhXNgQ7VzMENFUhUFgKNw0+VjVXIVJ1BGwGOVZrUDEBb1EmBm4FMgBlUm5TJlpvVGZWMQJiVzdUdVJbBWYDNgA5V3EEbVc4BGtVY1A8CiENYFZoV29SdQQ0BjFWIlBlAXZRbgY9BTkAZFJvU3daOFQ7VmYCIlcxVGZSdwVnAzAANFcnBDNXcwRqVTpQPQpiDWFWL1dvUmYEZAZqVnNQYwE1USYGMQVgADRSIFNhWl1Ub1Y1AnNXJlQlUj8FawNpAGRXaAQlV2sEaVVpUCUKMQ07Vi9XMFI+BDkGNlY+UCIBb1E8Bm4FMwBuUidTPlozVDBWZgIiVzFUZlJ3BWcDOgA7VzUEOVcOBD1VOlB0CiYNeFZnVzxSbQRmBmtWIlA6AWBRbwZ2BW0AMFIjU3daIFQ4VjUCOldjVDxSdwU4A2sAb1dxBDhXNAQmVSBQZAozDS5WOVd3UmwEPgZqVmFQOwEnUW8GZQUwAG9SdlNqWmdUdFYvAmNXM1RzUmEFXQM2ADFXOgQiV3MEalU6UD0KYw1hVi9Xb1JmBGUGalZzUG4BMVEiBicFYAA0UiBTYVpdVGJWOAJkV3BUPFJtBTgDYgBuVyAEbFdgBGJVaVAlCjwNP1YrVyZSNAQ2BiRWNFBfAThRPAYnBXcAd1JvU21aOFQyVmcCc1doVD9SPgUgAz0AMFckBCVXDgQwVTdQYwpwDWFWNVdvUmYEbAYjVmtQOQFuUXcGOgVmACJSJ1NbWm5UalYvAnRXcFQ8Um0FOANiAG5XIARsV2gEa1VxUGkKNw0tVi9XClIyBDMGOVYlUCIBb1E8Bm4FMgBuUidTPlozVDJWZgIiVzxUYlJzBXEDMAA6Vz4EO1c0BD9VJ1AlCmkNM1ZmV2VSbAQkBmpWYFA2AW5RdwY6BWYAIlInU2dabVRuVjECZVc8VHNSWwVuAzoAJlcnBHRXagQ4VWlQNgppDSlWZldhUm0EdQYqVj5QbgExUXcGbwVqAG9SZFM/WnFUOVZlAjpXcFR9UmsFbAM2AApXPwQ/VyIEJVVxUDwKOw1gVm1XblIkBG0GZFZrUCIBMlE8BjgFZgB3Um9TbVo4VDJWZwJzV2hUP1I+BSADNQA8Vz8EM1cyBDBVJ1BiCnANYVY1V29SZwRsBiNWa1AxAWdRbwZ2BWUAPFI4U2FaYVRiVigCZVcNVGtSbQVxAycAd1doBD9XawRgVWhQdApoDWJWZld3UjEEPgY8VjRQaQE6UTMGOwUhAG5SPVM+WjJUOFYvAjpXY1Q0Uj4FIAM1ADxXPwQzVzgEP1U1UGgKDQ02VjVXJlIjBHUGa1Y4UDoBZVFuBicFOQBgUm5TJlp0VGpWOAJlVz1UJVI/BWsDaQBkV2gEJVdrBGhVaVAlCiQNM1Y4VzBSOAQIBjFWNVBkAXZRbgY9BTkAZFJvU3daOFQyVmwCOldwVHFSbQVmAzYAOlcMBDpXOAQiVSdQJQppDTNWZldkUmwEJAZqVmlQOgF2USUGJgVsADFSIVNnWnZUcFZ+AjtXO1Q9UjUFOQMgAG9XYgRkV2sEc1UjUHUKPQ0+VilXNlIjBCQGM1YwUHQBMVF3Bm8FagBvUmRTP1pxVDlWbQI3V2hUJVJ0BXADPAAxVyYENVclBCJVMFBmCiYNP1YDVzlSPgQkBiRWc1A7AT1RbwZlBTgAJlJuUzVaMVQ5Vn4CcFcgVGhSYAV3AzAAIVcgBAlXPQQ4VSBQcwpwDWFWNVdvUmYEbAYjVmtQNQFuUXcGJAViACdSNVNpWiBUOFY1AjpXYlQ8UncFOANiAGVXaQR0VyEEMFUhUGYKPw0FVjBXPFIkBCMGclZqUGkBblFkBm8FcABvUmxTPlogVHBWMwJsVydUc1JtBW0DPQB3V2gEP1drBGBVaFB0CmgNa1ZuV29SdQQkBj9WPVB1ASBRPAY7BW0ANlI1U3BaZ1QhVmcCaVdoVDdSPwVxA2kAZFdkBGxXcwQiVTxQawonDS5WNVc6UjkENAYxViVQZQELUTkGPQVwACFSdlM/WmtUOVZtAjtXIVQ9UjUFMQNpAHdXIAQ5Vz0EJFUnUG4KPQ00VgNXOVI+BCQGJFZzUDsBPVFvBmUFOAAmUm5TMlo4VCFWNAJpVyBUblJqBWUDcQBuVzoEbFdgBGpVIFA9CmoNYFZ+Vz9SOAQ1BjNWPVBhASdRJgZ2BTgAPFJuUzRaOVRwVmYCMVdhVD1SJgVoAzwAN1cwBDpXMAQiVSBQWAo+DTNWL1chUnUEbAY5VmtQMQFvUSYGbgU0AG9SdlNnWmNUcVY5AmVXIFR0UiYFOQM6AG9XYwRtVyIEa1ViUDUKaA14Vj9XNFIlBDIGNVYjUHMBC1E5Bj0FcAAhUnZTP1prVDlWbQI7Vy9UJVI/BX8=', '1401241704', '127.0.0.1', '1401243788', '1');

-- ----------------------------
-- Table structure for sk_advert
-- ----------------------------
DROP TABLE IF EXISTS `sk_advert`;
CREATE TABLE `sk_advert` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(20) NOT NULL default '0' COMMENT '广告为类型 / 广告位展示效果',
  `uid` int(10) unsigned NOT NULL default '0' COMMENT '添加用户',
  `sub` int(10) default '0' COMMENT '广告位id',
  `stime` int(10) unsigned NOT NULL default '0' COMMENT '开始时间',
  `etime` int(10) unsigned NOT NULL default '0' COMMENT '结束时间',
  `ifshow` tinyint(3) NOT NULL default '0' COMMENT '是否显示',
  `orderby` tinyint(3) NOT NULL default '0' COMMENT '排序',
  `descrip` varchar(255) NOT NULL default '' COMMENT '描述',
  `config` text NOT NULL COMMENT '广告配置',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of sk_advert
-- ----------------------------
INSERT INTO `sk_advert` VALUES ('1', 'play', '0', '0', '0', '0', '1', '0', '首页滚动图片', 'a:7:{s:4:\"name\";s:18:\"首页滚动图片\";s:4:\"type\";s:4:\"play\";s:7:\"descrip\";s:0:\"\";s:7:\"display\";s:3:\"all\";s:6:\"height\";i:538;s:5:\"width\";i:1200;s:6:\"ifshow\";s:1:\"1\";}');
INSERT INTO `sk_advert` VALUES ('2', 'play', '0', '0', '0', '0', '1', '0', '首页底部小区域滚动', 'a:7:{s:4:\"name\";s:27:\"首页底部小区域滚动\";s:4:\"type\";s:4:\"play\";s:7:\"descrip\";s:0:\"\";s:7:\"display\";s:3:\"all\";s:6:\"height\";i:134;s:5:\"width\";i:444;s:6:\"ifshow\";s:1:\"1\";}');
INSERT INTO `sk_advert` VALUES ('3', 'img', '0', '0', '0', '0', '1', '0', '注册页', 'a:7:{s:4:\"name\";s:9:\"注册页\";s:4:\"type\";s:3:\"img\";s:7:\"descrip\";s:0:\"\";s:7:\"display\";s:4:\"rand\";s:6:\"height\";i:308;s:5:\"width\";i:308;s:6:\"ifshow\";s:1:\"1\";}');
INSERT INTO `sk_advert` VALUES ('4', 'img', '0', '0', '0', '0', '1', '0', '登陆页', 'a:7:{s:4:\"name\";s:9:\"登陆页\";s:4:\"type\";s:3:\"img\";s:7:\"descrip\";s:0:\"\";s:7:\"display\";s:4:\"rand\";s:6:\"height\";i:341;s:5:\"width\";i:606;s:6:\"ifshow\";s:1:\"1\";}');
INSERT INTO `sk_advert` VALUES ('5', 'img', '0', '3', '1398787200', '1461945600', '1', '0', '注册页', 'a:6:{s:9:\"imgupload\";s:1:\"0\";s:3:\"url\";s:41:\"attachments/advert/20140430144729_391.jpg\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');
INSERT INTO `sk_advert` VALUES ('6', 'img', '0', '4', '1398787200', '1461945600', '1', '0', '登陆页', 'a:6:{s:9:\"imgupload\";s:1:\"1\";s:3:\"url\";s:41:\"attachments/advert/20140430144845_551.jpg\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');
INSERT INTO `sk_advert` VALUES ('7', 'img', '0', '1', '1398787200', '1493481600', '1', '0', '第一张', 'a:6:{s:9:\"imgupload\";s:1:\"1\";s:3:\"url\";s:41:\"attachments/advert/20140430145320_620.png\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');
INSERT INTO `sk_advert` VALUES ('8', 'img', '0', '1', '1398787200', '1461945600', '1', '0', '第二章', 'a:6:{s:9:\"imgupload\";s:1:\"1\";s:3:\"url\";s:41:\"attachments/advert/20140430173550_673.png\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');
INSERT INTO `sk_advert` VALUES ('9', 'img', '0', '2', '1398787200', '1461945600', '1', '0', '第一张', 'a:6:{s:9:\"imgupload\";s:1:\"1\";s:3:\"url\";s:41:\"attachments/advert/20140430145649_671.jpg\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');
INSERT INTO `sk_advert` VALUES ('10', 'img', '0', '1', '1398787200', '1461945600', '1', '0', '首页banber', 'a:6:{s:9:\"imgupload\";s:1:\"1\";s:3:\"url\";s:41:\"attachments/advert/20140430154540_816.png\";s:4:\"link\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:5:\"title\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_areas
-- ----------------------------
DROP TABLE IF EXISTS `sk_areas`;
CREATE TABLE `sk_areas` (
  `areaid` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `joinname` varchar(150) NOT NULL default '',
  `parentid` mediumint(8) unsigned NOT NULL default '0',
  `vieworder` smallint(6) unsigned NOT NULL default '0',
  PRIMARY KEY  (`areaid`),
  KEY `idx_name` USING BTREE (`name`),
  KEY `idx_parentid_vieworder` USING BTREE (`parentid`,`vieworder`)
) ENGINE=MyISAM AUTO_INCREMENT=820003 DEFAULT CHARSET=utf8 COMMENT='区域信息表';

-- ----------------------------
-- Records of sk_areas
-- ----------------------------
INSERT INTO `sk_areas` VALUES ('110000', '北京市', '北京市', '0', '1');
INSERT INTO `sk_areas` VALUES ('120000', '天津市', '天津市', '0', '2');
INSERT INTO `sk_areas` VALUES ('130000', '河北省', '河北省', '0', '3');
INSERT INTO `sk_areas` VALUES ('140000', '山西省', '山西省', '0', '4');
INSERT INTO `sk_areas` VALUES ('150000', '内蒙古自治区', '内蒙古自治区', '0', '5');
INSERT INTO `sk_areas` VALUES ('210000', '辽宁省', '辽宁省', '0', '6');
INSERT INTO `sk_areas` VALUES ('220000', '吉林省', '吉林省', '0', '7');
INSERT INTO `sk_areas` VALUES ('230000', '黑龙江省', '黑龙江省', '0', '8');
INSERT INTO `sk_areas` VALUES ('310000', '上海市', '上海市', '0', '9');
INSERT INTO `sk_areas` VALUES ('320000', '江苏省', '江苏省', '0', '10');
INSERT INTO `sk_areas` VALUES ('330000', '浙江省', '浙江省', '0', '11');
INSERT INTO `sk_areas` VALUES ('340000', '安徽省', '安徽省', '0', '12');
INSERT INTO `sk_areas` VALUES ('350000', '福建省', '福建省', '0', '13');
INSERT INTO `sk_areas` VALUES ('360000', '江西省', '江西省', '0', '14');
INSERT INTO `sk_areas` VALUES ('370000', '山东省', '山东省', '0', '15');
INSERT INTO `sk_areas` VALUES ('410000', '河南省', '河南省', '0', '16');
INSERT INTO `sk_areas` VALUES ('420000', '湖北省', '湖北省', '0', '17');
INSERT INTO `sk_areas` VALUES ('430000', '湖南省', '湖南省', '0', '18');
INSERT INTO `sk_areas` VALUES ('440000', '广东省', '广东省', '0', '19');
INSERT INTO `sk_areas` VALUES ('450000', '广西壮族自治区', '广西壮族自治区', '0', '20');
INSERT INTO `sk_areas` VALUES ('460000', '海南省', '海南省', '0', '21');
INSERT INTO `sk_areas` VALUES ('500000', '重庆市', '重庆市', '0', '22');
INSERT INTO `sk_areas` VALUES ('510000', '四川省', '四川省', '0', '23');
INSERT INTO `sk_areas` VALUES ('520000', '贵州省', '贵州省', '0', '24');
INSERT INTO `sk_areas` VALUES ('530000', '云南省', '云南省', '0', '25');
INSERT INTO `sk_areas` VALUES ('540000', '西藏自治区', '西藏自治区', '0', '26');
INSERT INTO `sk_areas` VALUES ('610000', '陕西省', '陕西省', '0', '27');
INSERT INTO `sk_areas` VALUES ('620000', '甘肃省', '甘肃省', '0', '28');
INSERT INTO `sk_areas` VALUES ('630000', '青海省', '青海省', '0', '29');
INSERT INTO `sk_areas` VALUES ('640000', '宁夏回族自治区', '宁夏回族自治区', '0', '30');
INSERT INTO `sk_areas` VALUES ('650000', '新疆维吾尔自治区', '新疆维吾尔自治区', '0', '31');
INSERT INTO `sk_areas` VALUES ('710000', '台湾省', '台湾省', '0', '32');
INSERT INTO `sk_areas` VALUES ('810000', '香港特别行政区', '香港特别行政区', '0', '33');
INSERT INTO `sk_areas` VALUES ('820000', '澳门特别行政区', '澳门特别行政区', '0', '34');
INSERT INTO `sk_areas` VALUES ('110100', '北京市', '北京市,北京市', '110000', '1');
INSERT INTO `sk_areas` VALUES ('110200', '县', '北京市,县', '110000', '2');
INSERT INTO `sk_areas` VALUES ('120100', '市辖区', '天津市,市辖区', '120000', '3');
INSERT INTO `sk_areas` VALUES ('120200', '县', '天津市,县', '120000', '4');
INSERT INTO `sk_areas` VALUES ('130100', '石家庄市', '河北省,石家庄市', '130000', '5');
INSERT INTO `sk_areas` VALUES ('130200', '唐山市', '河北省,唐山市', '130000', '6');
INSERT INTO `sk_areas` VALUES ('130300', '秦皇岛市', '河北省,秦皇岛市', '130000', '7');
INSERT INTO `sk_areas` VALUES ('130400', '邯郸市', '河北省,邯郸市', '130000', '8');
INSERT INTO `sk_areas` VALUES ('130500', '邢台市', '河北省,邢台市', '130000', '9');
INSERT INTO `sk_areas` VALUES ('130600', '保定市', '河北省,保定市', '130000', '10');
INSERT INTO `sk_areas` VALUES ('130700', '张家口市', '河北省,张家口市', '130000', '11');
INSERT INTO `sk_areas` VALUES ('130800', '承德市', '河北省,承德市', '130000', '12');
INSERT INTO `sk_areas` VALUES ('130900', '沧州市', '河北省,沧州市', '130000', '13');
INSERT INTO `sk_areas` VALUES ('131000', '廊坊市', '河北省,廊坊市', '130000', '14');
INSERT INTO `sk_areas` VALUES ('131100', '衡水市', '河北省,衡水市', '130000', '15');
INSERT INTO `sk_areas` VALUES ('140100', '太原市', '山西省,太原市', '140000', '16');
INSERT INTO `sk_areas` VALUES ('140200', '大同市', '山西省,大同市', '140000', '17');
INSERT INTO `sk_areas` VALUES ('140300', '阳泉市', '山西省,阳泉市', '140000', '18');
INSERT INTO `sk_areas` VALUES ('140400', '长治市', '山西省,长治市', '140000', '19');
INSERT INTO `sk_areas` VALUES ('140500', '晋城市', '山西省,晋城市', '140000', '20');
INSERT INTO `sk_areas` VALUES ('140600', '朔州市', '山西省,朔州市', '140000', '21');
INSERT INTO `sk_areas` VALUES ('140700', '晋中市', '山西省,晋中市', '140000', '22');
INSERT INTO `sk_areas` VALUES ('140800', '运城市', '山西省,运城市', '140000', '23');
INSERT INTO `sk_areas` VALUES ('140900', '忻州市', '山西省,忻州市', '140000', '24');
INSERT INTO `sk_areas` VALUES ('141000', '临汾市', '山西省,临汾市', '140000', '25');
INSERT INTO `sk_areas` VALUES ('141100', '吕梁市', '山西省,吕梁市', '140000', '26');
INSERT INTO `sk_areas` VALUES ('150100', '呼和浩特市', '内蒙古自治区,呼和浩特市', '150000', '27');
INSERT INTO `sk_areas` VALUES ('150200', '包头市', '内蒙古自治区,包头市', '150000', '28');
INSERT INTO `sk_areas` VALUES ('150300', '乌海市', '内蒙古自治区,乌海市', '150000', '29');
INSERT INTO `sk_areas` VALUES ('150400', '赤峰市', '内蒙古自治区,赤峰市', '150000', '30');
INSERT INTO `sk_areas` VALUES ('150500', '通辽市', '内蒙古自治区,通辽市', '150000', '31');
INSERT INTO `sk_areas` VALUES ('150600', '鄂尔多斯市', '内蒙古自治区,鄂尔多斯市', '150000', '32');
INSERT INTO `sk_areas` VALUES ('150700', '呼伦贝尔市', '内蒙古自治区,呼伦贝尔市', '150000', '33');
INSERT INTO `sk_areas` VALUES ('150800', '巴彦淖尔市', '内蒙古自治区,巴彦淖尔市', '150000', '34');
INSERT INTO `sk_areas` VALUES ('150900', '乌兰察布市', '内蒙古自治区,乌兰察布市', '150000', '35');
INSERT INTO `sk_areas` VALUES ('152200', '兴安盟', '内蒙古自治区,兴安盟', '150000', '36');
INSERT INTO `sk_areas` VALUES ('152500', '锡林郭勒盟', '内蒙古自治区,锡林郭勒盟', '150000', '37');
INSERT INTO `sk_areas` VALUES ('152900', '阿拉善盟', '内蒙古自治区,阿拉善盟', '150000', '38');
INSERT INTO `sk_areas` VALUES ('210100', '沈阳市', '辽宁省,沈阳市', '210000', '39');
INSERT INTO `sk_areas` VALUES ('210200', '大连市', '辽宁省,大连市', '210000', '40');
INSERT INTO `sk_areas` VALUES ('210300', '鞍山市', '辽宁省,鞍山市', '210000', '41');
INSERT INTO `sk_areas` VALUES ('210400', '抚顺市', '辽宁省,抚顺市', '210000', '42');
INSERT INTO `sk_areas` VALUES ('210500', '本溪市', '辽宁省,本溪市', '210000', '43');
INSERT INTO `sk_areas` VALUES ('210600', '丹东市', '辽宁省,丹东市', '210000', '44');
INSERT INTO `sk_areas` VALUES ('210700', '锦州市', '辽宁省,锦州市', '210000', '45');
INSERT INTO `sk_areas` VALUES ('210800', '营口市', '辽宁省,营口市', '210000', '46');
INSERT INTO `sk_areas` VALUES ('210900', '阜新市', '辽宁省,阜新市', '210000', '47');
INSERT INTO `sk_areas` VALUES ('211000', '辽阳市', '辽宁省,辽阳市', '210000', '48');
INSERT INTO `sk_areas` VALUES ('211100', '盘锦市', '辽宁省,盘锦市', '210000', '49');
INSERT INTO `sk_areas` VALUES ('211200', '铁岭市', '辽宁省,铁岭市', '210000', '50');
INSERT INTO `sk_areas` VALUES ('211300', '朝阳市', '辽宁省,朝阳市', '210000', '51');
INSERT INTO `sk_areas` VALUES ('220100', '长春市', '吉林省,长春市', '220000', '53');
INSERT INTO `sk_areas` VALUES ('220200', '吉林市', '吉林省,吉林市', '220000', '54');
INSERT INTO `sk_areas` VALUES ('220300', '四平市', '吉林省,四平市', '220000', '55');
INSERT INTO `sk_areas` VALUES ('220400', '辽源市', '吉林省,辽源市', '220000', '56');
INSERT INTO `sk_areas` VALUES ('220500', '通化市', '吉林省,通化市', '220000', '57');
INSERT INTO `sk_areas` VALUES ('220600', '白山市', '吉林省,白山市', '220000', '58');
INSERT INTO `sk_areas` VALUES ('220700', '松原市', '吉林省,松原市', '220000', '59');
INSERT INTO `sk_areas` VALUES ('220800', '白城市', '吉林省,白城市', '220000', '60');
INSERT INTO `sk_areas` VALUES ('222400', '延边朝鲜族自治州', '吉林省,延边朝鲜族自治州', '220000', '61');
INSERT INTO `sk_areas` VALUES ('230100', '哈尔滨市', '黑龙江省,哈尔滨市', '230000', '62');
INSERT INTO `sk_areas` VALUES ('230200', '齐齐哈尔市', '黑龙江省,齐齐哈尔市', '230000', '63');
INSERT INTO `sk_areas` VALUES ('230300', '鸡西市', '黑龙江省,鸡西市', '230000', '64');
INSERT INTO `sk_areas` VALUES ('230400', '鹤岗市', '黑龙江省,鹤岗市', '230000', '65');
INSERT INTO `sk_areas` VALUES ('230500', '双鸭山市', '黑龙江省,双鸭山市', '230000', '66');
INSERT INTO `sk_areas` VALUES ('230600', '大庆市', '黑龙江省,大庆市', '230000', '67');
INSERT INTO `sk_areas` VALUES ('230700', '伊春市', '黑龙江省,伊春市', '230000', '68');
INSERT INTO `sk_areas` VALUES ('230800', '佳木斯市', '黑龙江省,佳木斯市', '230000', '69');
INSERT INTO `sk_areas` VALUES ('230900', '七台河市', '黑龙江省,七台河市', '230000', '70');
INSERT INTO `sk_areas` VALUES ('231000', '牡丹江市', '黑龙江省,牡丹江市', '230000', '71');
INSERT INTO `sk_areas` VALUES ('231100', '黑河市', '黑龙江省,黑河市', '230000', '72');
INSERT INTO `sk_areas` VALUES ('231200', '绥化市', '黑龙江省,绥化市', '230000', '73');
INSERT INTO `sk_areas` VALUES ('232700', '大兴安岭地区', '黑龙江省,大兴安岭地区', '230000', '74');
INSERT INTO `sk_areas` VALUES ('310100', '市辖区', '上海市,市辖区', '310000', '75');
INSERT INTO `sk_areas` VALUES ('310200', '县', '上海市,县', '310000', '76');
INSERT INTO `sk_areas` VALUES ('320100', '南京市', '江苏省,南京市', '320000', '77');
INSERT INTO `sk_areas` VALUES ('320200', '无锡市', '江苏省,无锡市', '320000', '78');
INSERT INTO `sk_areas` VALUES ('320300', '徐州市', '江苏省,徐州市', '320000', '79');
INSERT INTO `sk_areas` VALUES ('320400', '常州市', '江苏省,常州市', '320000', '80');
INSERT INTO `sk_areas` VALUES ('320500', '苏州市', '江苏省,苏州市', '320000', '81');
INSERT INTO `sk_areas` VALUES ('320600', '南通市', '江苏省,南通市', '320000', '82');
INSERT INTO `sk_areas` VALUES ('320700', '连云港市', '江苏省,连云港市', '320000', '83');
INSERT INTO `sk_areas` VALUES ('320800', '淮安市', '江苏省,淮安市', '320000', '84');
INSERT INTO `sk_areas` VALUES ('320900', '盐城市', '江苏省,盐城市', '320000', '85');
INSERT INTO `sk_areas` VALUES ('321000', '扬州市', '江苏省,扬州市', '320000', '86');
INSERT INTO `sk_areas` VALUES ('321100', '镇江市', '江苏省,镇江市', '320000', '87');
INSERT INTO `sk_areas` VALUES ('321200', '泰州市', '江苏省,泰州市', '320000', '88');
INSERT INTO `sk_areas` VALUES ('321300', '宿迁市', '江苏省,宿迁市', '320000', '89');
INSERT INTO `sk_areas` VALUES ('330100', '杭州市', '浙江省,杭州市', '330000', '90');
INSERT INTO `sk_areas` VALUES ('330200', '宁波市', '浙江省,宁波市', '330000', '91');
INSERT INTO `sk_areas` VALUES ('330300', '温州市', '浙江省,温州市', '330000', '92');
INSERT INTO `sk_areas` VALUES ('330400', '嘉兴市', '浙江省,嘉兴市', '330000', '93');
INSERT INTO `sk_areas` VALUES ('330500', '湖州市', '浙江省,湖州市', '330000', '94');
INSERT INTO `sk_areas` VALUES ('330600', '绍兴市', '浙江省,绍兴市', '330000', '95');
INSERT INTO `sk_areas` VALUES ('330700', '金华市', '浙江省,金华市', '330000', '96');
INSERT INTO `sk_areas` VALUES ('330800', '衢州市', '浙江省,衢州市', '330000', '97');
INSERT INTO `sk_areas` VALUES ('330900', '舟山市', '浙江省,舟山市', '330000', '98');
INSERT INTO `sk_areas` VALUES ('331000', '台州市', '浙江省,台州市', '330000', '99');
INSERT INTO `sk_areas` VALUES ('331100', '丽水市', '浙江省,丽水市', '330000', '100');
INSERT INTO `sk_areas` VALUES ('340100', '合肥市', '安徽省,合肥市', '340000', '101');
INSERT INTO `sk_areas` VALUES ('340200', '芜湖市', '安徽省,芜湖市', '340000', '102');
INSERT INTO `sk_areas` VALUES ('340300', '蚌埠市', '安徽省,蚌埠市', '340000', '103');
INSERT INTO `sk_areas` VALUES ('340400', '淮南市', '安徽省,淮南市', '340000', '104');
INSERT INTO `sk_areas` VALUES ('340500', '马鞍山市', '安徽省,马鞍山市', '340000', '105');
INSERT INTO `sk_areas` VALUES ('340600', '淮北市', '安徽省,淮北市', '340000', '106');
INSERT INTO `sk_areas` VALUES ('340700', '铜陵市', '安徽省,铜陵市', '340000', '107');
INSERT INTO `sk_areas` VALUES ('340800', '安庆市', '安徽省,安庆市', '340000', '108');
INSERT INTO `sk_areas` VALUES ('341000', '黄山市', '安徽省,黄山市', '340000', '109');
INSERT INTO `sk_areas` VALUES ('341100', '滁州市', '安徽省,滁州市', '340000', '110');
INSERT INTO `sk_areas` VALUES ('341200', '阜阳市', '安徽省,阜阳市', '340000', '111');
INSERT INTO `sk_areas` VALUES ('341300', '宿州市', '安徽省,宿州市', '340000', '112');
INSERT INTO `sk_areas` VALUES ('341400', '巢湖市', '安徽省,巢湖市', '340000', '113');
INSERT INTO `sk_areas` VALUES ('341500', '六安市', '安徽省,六安市', '340000', '114');
INSERT INTO `sk_areas` VALUES ('341600', '亳州市', '安徽省,亳州市', '340000', '115');
INSERT INTO `sk_areas` VALUES ('341700', '池州市', '安徽省,池州市', '340000', '116');
INSERT INTO `sk_areas` VALUES ('341800', '宣城市', '安徽省,宣城市', '340000', '117');
INSERT INTO `sk_areas` VALUES ('350100', '福州市', '福建省,福州市', '350000', '118');
INSERT INTO `sk_areas` VALUES ('350200', '厦门市', '福建省,厦门市', '350000', '119');
INSERT INTO `sk_areas` VALUES ('350300', '莆田市', '福建省,莆田市', '350000', '120');
INSERT INTO `sk_areas` VALUES ('350400', '三明市', '福建省,三明市', '350000', '121');
INSERT INTO `sk_areas` VALUES ('350500', '泉州市', '福建省,泉州市', '350000', '122');
INSERT INTO `sk_areas` VALUES ('350600', '漳州市', '福建省,漳州市', '350000', '123');
INSERT INTO `sk_areas` VALUES ('350700', '南平市', '福建省,南平市', '350000', '124');
INSERT INTO `sk_areas` VALUES ('350800', '龙岩市', '福建省,龙岩市', '350000', '125');
INSERT INTO `sk_areas` VALUES ('350900', '宁德市', '福建省,宁德市', '350000', '126');
INSERT INTO `sk_areas` VALUES ('360100', '南昌市', '江西省,南昌市', '360000', '127');
INSERT INTO `sk_areas` VALUES ('360200', '景德镇市', '江西省,景德镇市', '360000', '128');
INSERT INTO `sk_areas` VALUES ('360300', '萍乡市', '江西省,萍乡市', '360000', '129');
INSERT INTO `sk_areas` VALUES ('360400', '九江市', '江西省,九江市', '360000', '130');
INSERT INTO `sk_areas` VALUES ('360500', '新余市', '江西省,新余市', '360000', '131');
INSERT INTO `sk_areas` VALUES ('360600', '鹰潭市', '江西省,鹰潭市', '360000', '132');
INSERT INTO `sk_areas` VALUES ('360700', '赣州市', '江西省,赣州市', '360000', '133');
INSERT INTO `sk_areas` VALUES ('360800', '吉安市', '江西省,吉安市', '360000', '134');
INSERT INTO `sk_areas` VALUES ('360900', '宜春市', '江西省,宜春市', '360000', '135');
INSERT INTO `sk_areas` VALUES ('361000', '抚州市', '江西省,抚州市', '360000', '136');
INSERT INTO `sk_areas` VALUES ('361100', '上饶市', '江西省,上饶市', '360000', '137');
INSERT INTO `sk_areas` VALUES ('370100', '济南市', '山东省,济南市', '370000', '138');
INSERT INTO `sk_areas` VALUES ('370200', '青岛市', '山东省,青岛市', '370000', '139');
INSERT INTO `sk_areas` VALUES ('370300', '淄博市', '山东省,淄博市', '370000', '140');
INSERT INTO `sk_areas` VALUES ('370400', '枣庄市', '山东省,枣庄市', '370000', '141');
INSERT INTO `sk_areas` VALUES ('370500', '东营市', '山东省,东营市', '370000', '142');
INSERT INTO `sk_areas` VALUES ('370600', '烟台市', '山东省,烟台市', '370000', '143');
INSERT INTO `sk_areas` VALUES ('370700', '潍坊市', '山东省,潍坊市', '370000', '144');
INSERT INTO `sk_areas` VALUES ('370800', '济宁市', '山东省,济宁市', '370000', '145');
INSERT INTO `sk_areas` VALUES ('370900', '泰安市', '山东省,泰安市', '370000', '146');
INSERT INTO `sk_areas` VALUES ('371000', '威海市', '山东省,威海市', '370000', '147');
INSERT INTO `sk_areas` VALUES ('371100', '日照市', '山东省,日照市', '370000', '148');
INSERT INTO `sk_areas` VALUES ('371200', '莱芜市', '山东省,莱芜市', '370000', '149');
INSERT INTO `sk_areas` VALUES ('371300', '临沂市', '山东省,临沂市', '370000', '150');
INSERT INTO `sk_areas` VALUES ('371400', '德州市', '山东省,德州市', '370000', '151');
INSERT INTO `sk_areas` VALUES ('371500', '聊城市', '山东省,聊城市', '370000', '152');
INSERT INTO `sk_areas` VALUES ('371600', '滨州市', '山东省,滨州市', '370000', '153');
INSERT INTO `sk_areas` VALUES ('371700', '荷泽市', '山东省,荷泽市', '370000', '154');
INSERT INTO `sk_areas` VALUES ('410100', '郑州市', '河南省,郑州市', '410000', '155');
INSERT INTO `sk_areas` VALUES ('410200', '开封市', '河南省,开封市', '410000', '156');
INSERT INTO `sk_areas` VALUES ('410300', '洛阳市', '河南省,洛阳市', '410000', '157');
INSERT INTO `sk_areas` VALUES ('410400', '平顶山市', '河南省,平顶山市', '410000', '158');
INSERT INTO `sk_areas` VALUES ('410500', '安阳市', '河南省,安阳市', '410000', '159');
INSERT INTO `sk_areas` VALUES ('410600', '鹤壁市', '河南省,鹤壁市', '410000', '160');
INSERT INTO `sk_areas` VALUES ('410700', '新乡市', '河南省,新乡市', '410000', '161');
INSERT INTO `sk_areas` VALUES ('410800', '焦作市', '河南省,焦作市', '410000', '162');
INSERT INTO `sk_areas` VALUES ('410900', '濮阳市', '河南省,濮阳市', '410000', '163');
INSERT INTO `sk_areas` VALUES ('411000', '许昌市', '河南省,许昌市', '410000', '164');
INSERT INTO `sk_areas` VALUES ('411100', '漯河市', '河南省,漯河市', '410000', '165');
INSERT INTO `sk_areas` VALUES ('411200', '三门峡市', '河南省,三门峡市', '410000', '166');
INSERT INTO `sk_areas` VALUES ('411300', '南阳市', '河南省,南阳市', '410000', '167');
INSERT INTO `sk_areas` VALUES ('411400', '商丘市', '河南省,商丘市', '410000', '168');
INSERT INTO `sk_areas` VALUES ('411500', '信阳市', '河南省,信阳市', '410000', '169');
INSERT INTO `sk_areas` VALUES ('411600', '周口市', '河南省,周口市', '410000', '170');
INSERT INTO `sk_areas` VALUES ('411700', '驻马店市', '河南省,驻马店市', '410000', '171');
INSERT INTO `sk_areas` VALUES ('420100', '武汉市', '湖北省,武汉市', '420000', '172');
INSERT INTO `sk_areas` VALUES ('420200', '黄石市', '湖北省,黄石市', '420000', '173');
INSERT INTO `sk_areas` VALUES ('420300', '十堰市', '湖北省,十堰市', '420000', '174');
INSERT INTO `sk_areas` VALUES ('420500', '宜昌市', '湖北省,宜昌市', '420000', '175');
INSERT INTO `sk_areas` VALUES ('420600', '襄樊市', '湖北省,襄樊市', '420000', '176');
INSERT INTO `sk_areas` VALUES ('420700', '鄂州市', '湖北省,鄂州市', '420000', '177');
INSERT INTO `sk_areas` VALUES ('420800', '荆门市', '湖北省,荆门市', '420000', '178');
INSERT INTO `sk_areas` VALUES ('420900', '孝感市', '湖北省,孝感市', '420000', '179');
INSERT INTO `sk_areas` VALUES ('421000', '荆州市', '湖北省,荆州市', '420000', '180');
INSERT INTO `sk_areas` VALUES ('421100', '黄冈市', '湖北省,黄冈市', '420000', '181');
INSERT INTO `sk_areas` VALUES ('421200', '咸宁市', '湖北省,咸宁市', '420000', '182');
INSERT INTO `sk_areas` VALUES ('421300', '随州市', '湖北省,随州市', '420000', '183');
INSERT INTO `sk_areas` VALUES ('422800', '恩施土家族苗族自治州', '湖北省,恩施土家族苗族自治州', '420000', '184');
INSERT INTO `sk_areas` VALUES ('429000', '省直辖行政单位', '湖北省,省直辖行政单位', '420000', '185');
INSERT INTO `sk_areas` VALUES ('430100', '长沙市', '湖南省,长沙市', '430000', '186');
INSERT INTO `sk_areas` VALUES ('430200', '株洲市', '湖南省,株洲市', '430000', '187');
INSERT INTO `sk_areas` VALUES ('430300', '湘潭市', '湖南省,湘潭市', '430000', '188');
INSERT INTO `sk_areas` VALUES ('430400', '衡阳市', '湖南省,衡阳市', '430000', '189');
INSERT INTO `sk_areas` VALUES ('430500', '邵阳市', '湖南省,邵阳市', '430000', '190');
INSERT INTO `sk_areas` VALUES ('430600', '岳阳市', '湖南省,岳阳市', '430000', '191');
INSERT INTO `sk_areas` VALUES ('430700', '常德市', '湖南省,常德市', '430000', '192');
INSERT INTO `sk_areas` VALUES ('430800', '张家界市', '湖南省,张家界市', '430000', '193');
INSERT INTO `sk_areas` VALUES ('430900', '益阳市', '湖南省,益阳市', '430000', '194');
INSERT INTO `sk_areas` VALUES ('431000', '郴州市', '湖南省,郴州市', '430000', '195');
INSERT INTO `sk_areas` VALUES ('431100', '永州市', '湖南省,永州市', '430000', '196');
INSERT INTO `sk_areas` VALUES ('431200', '怀化市', '湖南省,怀化市', '430000', '197');
INSERT INTO `sk_areas` VALUES ('431300', '娄底市', '湖南省,娄底市', '430000', '198');
INSERT INTO `sk_areas` VALUES ('433100', '湘西土家族苗族自治州', '湖南省,湘西土家族苗族自治州', '430000', '199');
INSERT INTO `sk_areas` VALUES ('440100', '广州市', '广东省,广州市', '440000', '200');
INSERT INTO `sk_areas` VALUES ('440200', '韶关市', '广东省,韶关市', '440000', '201');
INSERT INTO `sk_areas` VALUES ('440300', '深圳市', '广东省,深圳市', '440000', '202');
INSERT INTO `sk_areas` VALUES ('440400', '珠海市', '广东省,珠海市', '440000', '203');
INSERT INTO `sk_areas` VALUES ('440500', '汕头市', '广东省,汕头市', '440000', '204');
INSERT INTO `sk_areas` VALUES ('440600', '佛山市', '广东省,佛山市', '440000', '205');
INSERT INTO `sk_areas` VALUES ('440700', '江门市', '广东省,江门市', '440000', '206');
INSERT INTO `sk_areas` VALUES ('440800', '湛江市', '广东省,湛江市', '440000', '207');
INSERT INTO `sk_areas` VALUES ('440900', '茂名市', '广东省,茂名市', '440000', '208');
INSERT INTO `sk_areas` VALUES ('441200', '肇庆市', '广东省,肇庆市', '440000', '209');
INSERT INTO `sk_areas` VALUES ('441300', '惠州市', '广东省,惠州市', '440000', '210');
INSERT INTO `sk_areas` VALUES ('441400', '梅州市', '广东省,梅州市', '440000', '211');
INSERT INTO `sk_areas` VALUES ('441500', '汕尾市', '广东省,汕尾市', '440000', '212');
INSERT INTO `sk_areas` VALUES ('441600', '河源市', '广东省,河源市', '440000', '213');
INSERT INTO `sk_areas` VALUES ('441700', '阳江市', '广东省,阳江市', '440000', '214');
INSERT INTO `sk_areas` VALUES ('441800', '清远市', '广东省,清远市', '440000', '215');
INSERT INTO `sk_areas` VALUES ('441900', '东莞市', '广东省,东莞市', '440000', '216');
INSERT INTO `sk_areas` VALUES ('442000', '中山市', '广东省,中山市', '440000', '217');
INSERT INTO `sk_areas` VALUES ('445100', '潮州市', '广东省,潮州市', '440000', '218');
INSERT INTO `sk_areas` VALUES ('445200', '揭阳市', '广东省,揭阳市', '440000', '219');
INSERT INTO `sk_areas` VALUES ('445300', '云浮市', '广东省,云浮市', '440000', '220');
INSERT INTO `sk_areas` VALUES ('450100', '南宁市', '广西壮族自治区,南宁市', '450000', '221');
INSERT INTO `sk_areas` VALUES ('450200', '柳州市', '广西壮族自治区,柳州市', '450000', '222');
INSERT INTO `sk_areas` VALUES ('450300', '桂林市', '广西壮族自治区,桂林市', '450000', '223');
INSERT INTO `sk_areas` VALUES ('450400', '梧州市', '广西壮族自治区,梧州市', '450000', '224');
INSERT INTO `sk_areas` VALUES ('450500', '北海市', '广西壮族自治区,北海市', '450000', '225');
INSERT INTO `sk_areas` VALUES ('450600', '防城港市', '广西壮族自治区,防城港市', '450000', '226');
INSERT INTO `sk_areas` VALUES ('450700', '钦州市', '广西壮族自治区,钦州市', '450000', '227');
INSERT INTO `sk_areas` VALUES ('450800', '贵港市', '广西壮族自治区,贵港市', '450000', '228');
INSERT INTO `sk_areas` VALUES ('450900', '玉林市', '广西壮族自治区,玉林市', '450000', '229');
INSERT INTO `sk_areas` VALUES ('451000', '百色市', '广西壮族自治区,百色市', '450000', '230');
INSERT INTO `sk_areas` VALUES ('451100', '贺州市', '广西壮族自治区,贺州市', '450000', '231');
INSERT INTO `sk_areas` VALUES ('451200', '河池市', '广西壮族自治区,河池市', '450000', '232');
INSERT INTO `sk_areas` VALUES ('451300', '来宾市', '广西壮族自治区,来宾市', '450000', '233');
INSERT INTO `sk_areas` VALUES ('451400', '崇左市', '广西壮族自治区,崇左市', '450000', '234');
INSERT INTO `sk_areas` VALUES ('460100', '海口市', '海南省,海口市', '460000', '235');
INSERT INTO `sk_areas` VALUES ('460200', '三亚市', '海南省,三亚市', '460000', '236');
INSERT INTO `sk_areas` VALUES ('469000', '省直辖县级行政单位', '海南省,省直辖县级行政单位', '460000', '237');
INSERT INTO `sk_areas` VALUES ('500100', '市辖区', '重庆市,市辖区', '500000', '238');
INSERT INTO `sk_areas` VALUES ('500200', '县', '重庆市,县', '500000', '239');
INSERT INTO `sk_areas` VALUES ('500300', '市', '重庆市,市', '500000', '240');
INSERT INTO `sk_areas` VALUES ('510100', '成都市', '四川省,成都市', '510000', '241');
INSERT INTO `sk_areas` VALUES ('510300', '自贡市', '四川省,自贡市', '510000', '242');
INSERT INTO `sk_areas` VALUES ('510400', '攀枝花市', '四川省,攀枝花市', '510000', '243');
INSERT INTO `sk_areas` VALUES ('510500', '泸州市', '四川省,泸州市', '510000', '244');
INSERT INTO `sk_areas` VALUES ('510600', '德阳市', '四川省,德阳市', '510000', '245');
INSERT INTO `sk_areas` VALUES ('510700', '绵阳市', '四川省,绵阳市', '510000', '246');
INSERT INTO `sk_areas` VALUES ('510800', '广元市', '四川省,广元市', '510000', '247');
INSERT INTO `sk_areas` VALUES ('510900', '遂宁市', '四川省,遂宁市', '510000', '248');
INSERT INTO `sk_areas` VALUES ('511000', '内江市', '四川省,内江市', '510000', '249');
INSERT INTO `sk_areas` VALUES ('511100', '乐山市', '四川省,乐山市', '510000', '250');
INSERT INTO `sk_areas` VALUES ('511300', '南充市', '四川省,南充市', '510000', '251');
INSERT INTO `sk_areas` VALUES ('511400', '眉山市', '四川省,眉山市', '510000', '252');
INSERT INTO `sk_areas` VALUES ('511500', '宜宾市', '四川省,宜宾市', '510000', '253');
INSERT INTO `sk_areas` VALUES ('511600', '广安市', '四川省,广安市', '510000', '254');
INSERT INTO `sk_areas` VALUES ('511700', '达州市', '四川省,达州市', '510000', '255');
INSERT INTO `sk_areas` VALUES ('511800', '雅安市', '四川省,雅安市', '510000', '256');
INSERT INTO `sk_areas` VALUES ('511900', '巴中市', '四川省,巴中市', '510000', '257');
INSERT INTO `sk_areas` VALUES ('512000', '资阳市', '四川省,资阳市', '510000', '258');
INSERT INTO `sk_areas` VALUES ('513200', '阿坝藏族羌族自治州', '四川省,阿坝藏族羌族自治州', '510000', '259');
INSERT INTO `sk_areas` VALUES ('513300', '甘孜藏族自治州', '四川省,甘孜藏族自治州', '510000', '260');
INSERT INTO `sk_areas` VALUES ('513400', '凉山彝族自治州', '四川省,凉山彝族自治州', '510000', '261');
INSERT INTO `sk_areas` VALUES ('520100', '贵阳市', '贵州省,贵阳市', '520000', '262');
INSERT INTO `sk_areas` VALUES ('520200', '六盘水市', '贵州省,六盘水市', '520000', '263');
INSERT INTO `sk_areas` VALUES ('520300', '遵义市', '贵州省,遵义市', '520000', '264');
INSERT INTO `sk_areas` VALUES ('520400', '安顺市', '贵州省,安顺市', '520000', '265');
INSERT INTO `sk_areas` VALUES ('522200', '铜仁地区', '贵州省,铜仁地区', '520000', '266');
INSERT INTO `sk_areas` VALUES ('522300', '黔西南布依族苗族自治州', '贵州省,黔西南布依族苗族自治州', '520000', '267');
INSERT INTO `sk_areas` VALUES ('522400', '毕节地区', '贵州省,毕节地区', '520000', '268');
INSERT INTO `sk_areas` VALUES ('522600', '黔东南苗族侗族自治州', '贵州省,黔东南苗族侗族自治州', '520000', '269');
INSERT INTO `sk_areas` VALUES ('522700', '黔南布依族苗族自治州', '贵州省,黔南布依族苗族自治州', '520000', '270');
INSERT INTO `sk_areas` VALUES ('530100', '昆明市', '云南省,昆明市', '530000', '271');
INSERT INTO `sk_areas` VALUES ('530300', '曲靖市', '云南省,曲靖市', '530000', '272');
INSERT INTO `sk_areas` VALUES ('530400', '玉溪市', '云南省,玉溪市', '530000', '273');
INSERT INTO `sk_areas` VALUES ('530500', '保山市', '云南省,保山市', '530000', '274');
INSERT INTO `sk_areas` VALUES ('530600', '昭通市', '云南省,昭通市', '530000', '275');
INSERT INTO `sk_areas` VALUES ('530700', '丽江市', '云南省,丽江市', '530000', '276');
INSERT INTO `sk_areas` VALUES ('530800', '思茅市', '云南省,思茅市', '530000', '277');
INSERT INTO `sk_areas` VALUES ('530900', '临沧市', '云南省,临沧市', '530000', '278');
INSERT INTO `sk_areas` VALUES ('532300', '楚雄彝族自治州', '云南省,楚雄彝族自治州', '530000', '279');
INSERT INTO `sk_areas` VALUES ('532500', '红河哈尼族彝族自治州', '云南省,红河哈尼族彝族自治州', '530000', '280');
INSERT INTO `sk_areas` VALUES ('532600', '文山壮族苗族自治州', '云南省,文山壮族苗族自治州', '530000', '281');
INSERT INTO `sk_areas` VALUES ('532800', '西双版纳傣族自治州', '云南省,西双版纳傣族自治州', '530000', '282');
INSERT INTO `sk_areas` VALUES ('532900', '大理白族自治州', '云南省,大理白族自治州', '530000', '283');
INSERT INTO `sk_areas` VALUES ('533100', '德宏傣族景颇族自治州', '云南省,德宏傣族景颇族自治州', '530000', '284');
INSERT INTO `sk_areas` VALUES ('533300', '怒江傈僳族自治州', '云南省,怒江傈僳族自治州', '530000', '285');
INSERT INTO `sk_areas` VALUES ('533400', '迪庆藏族自治州', '云南省,迪庆藏族自治州', '530000', '286');
INSERT INTO `sk_areas` VALUES ('540100', '拉萨市', '西藏自治区,拉萨市', '540000', '287');
INSERT INTO `sk_areas` VALUES ('542100', '昌都地区', '西藏自治区,昌都地区', '540000', '288');
INSERT INTO `sk_areas` VALUES ('542200', '山南地区', '西藏自治区,山南地区', '540000', '289');
INSERT INTO `sk_areas` VALUES ('542300', '日喀则地区', '西藏自治区,日喀则地区', '540000', '290');
INSERT INTO `sk_areas` VALUES ('542400', '那曲地区', '西藏自治区,那曲地区', '540000', '291');
INSERT INTO `sk_areas` VALUES ('542500', '阿里地区', '西藏自治区,阿里地区', '540000', '292');
INSERT INTO `sk_areas` VALUES ('542600', '林芝地区', '西藏自治区,林芝地区', '540000', '293');
INSERT INTO `sk_areas` VALUES ('610100', '西安市', '陕西省,西安市', '610000', '294');
INSERT INTO `sk_areas` VALUES ('610200', '铜川市', '陕西省,铜川市', '610000', '295');
INSERT INTO `sk_areas` VALUES ('610300', '宝鸡市', '陕西省,宝鸡市', '610000', '296');
INSERT INTO `sk_areas` VALUES ('610400', '咸阳市', '陕西省,咸阳市', '610000', '297');
INSERT INTO `sk_areas` VALUES ('610500', '渭南市', '陕西省,渭南市', '610000', '298');
INSERT INTO `sk_areas` VALUES ('610600', '延安市', '陕西省,延安市', '610000', '299');
INSERT INTO `sk_areas` VALUES ('610700', '汉中市', '陕西省,汉中市', '610000', '300');
INSERT INTO `sk_areas` VALUES ('610800', '榆林市', '陕西省,榆林市', '610000', '301');
INSERT INTO `sk_areas` VALUES ('610900', '安康市', '陕西省,安康市', '610000', '302');
INSERT INTO `sk_areas` VALUES ('611000', '商洛市', '陕西省,商洛市', '610000', '303');
INSERT INTO `sk_areas` VALUES ('620100', '兰州市', '甘肃省,兰州市', '620000', '304');
INSERT INTO `sk_areas` VALUES ('620200', '嘉峪关市', '甘肃省,嘉峪关市', '620000', '305');
INSERT INTO `sk_areas` VALUES ('620300', '金昌市', '甘肃省,金昌市', '620000', '306');
INSERT INTO `sk_areas` VALUES ('620400', '白银市', '甘肃省,白银市', '620000', '307');
INSERT INTO `sk_areas` VALUES ('620500', '天水市', '甘肃省,天水市', '620000', '308');
INSERT INTO `sk_areas` VALUES ('620600', '武威市', '甘肃省,武威市', '620000', '309');
INSERT INTO `sk_areas` VALUES ('620700', '张掖市', '甘肃省,张掖市', '620000', '310');
INSERT INTO `sk_areas` VALUES ('620800', '平凉市', '甘肃省,平凉市', '620000', '311');
INSERT INTO `sk_areas` VALUES ('620900', '酒泉市', '甘肃省,酒泉市', '620000', '312');
INSERT INTO `sk_areas` VALUES ('621000', '庆阳市', '甘肃省,庆阳市', '620000', '313');
INSERT INTO `sk_areas` VALUES ('621100', '定西市', '甘肃省,定西市', '620000', '314');
INSERT INTO `sk_areas` VALUES ('621200', '陇南市', '甘肃省,陇南市', '620000', '315');
INSERT INTO `sk_areas` VALUES ('622900', '临夏回族自治州', '甘肃省,临夏回族自治州', '620000', '316');
INSERT INTO `sk_areas` VALUES ('623000', '甘南藏族自治州', '甘肃省,甘南藏族自治州', '620000', '317');
INSERT INTO `sk_areas` VALUES ('630100', '西宁市', '青海省,西宁市', '630000', '318');
INSERT INTO `sk_areas` VALUES ('632100', '海东地区', '青海省,海东地区', '630000', '319');
INSERT INTO `sk_areas` VALUES ('632200', '海北藏族自治州', '青海省,海北藏族自治州', '630000', '320');
INSERT INTO `sk_areas` VALUES ('632300', '黄南藏族自治州', '青海省,黄南藏族自治州', '630000', '321');
INSERT INTO `sk_areas` VALUES ('632500', '海南藏族自治州', '青海省,海南藏族自治州', '630000', '322');
INSERT INTO `sk_areas` VALUES ('632600', '果洛藏族自治州', '青海省,果洛藏族自治州', '630000', '323');
INSERT INTO `sk_areas` VALUES ('632700', '玉树藏族自治州', '青海省,玉树藏族自治州', '630000', '324');
INSERT INTO `sk_areas` VALUES ('632800', '海西蒙古族藏族自治州', '青海省,海西蒙古族藏族自治州', '630000', '325');
INSERT INTO `sk_areas` VALUES ('640100', '银川市', '宁夏回族自治区,银川市', '640000', '326');
INSERT INTO `sk_areas` VALUES ('640200', '石嘴山市', '宁夏回族自治区,石嘴山市', '640000', '327');
INSERT INTO `sk_areas` VALUES ('640300', '吴忠市', '宁夏回族自治区,吴忠市', '640000', '328');
INSERT INTO `sk_areas` VALUES ('640400', '固原市', '宁夏回族自治区,固原市', '640000', '329');
INSERT INTO `sk_areas` VALUES ('640500', '中卫市', '宁夏回族自治区,中卫市', '640000', '330');
INSERT INTO `sk_areas` VALUES ('650100', '乌鲁木齐市', '新疆维吾尔自治区,乌鲁木齐市', '650000', '331');
INSERT INTO `sk_areas` VALUES ('650200', '克拉玛依市', '新疆维吾尔自治区,克拉玛依市', '650000', '332');
INSERT INTO `sk_areas` VALUES ('652100', '吐鲁番地区', '新疆维吾尔自治区,吐鲁番地区', '650000', '333');
INSERT INTO `sk_areas` VALUES ('652200', '哈密地区', '新疆维吾尔自治区,哈密地区', '650000', '334');
INSERT INTO `sk_areas` VALUES ('652300', '昌吉回族自治州', '新疆维吾尔自治区,昌吉回族自治州', '650000', '335');
INSERT INTO `sk_areas` VALUES ('652700', '博尔塔拉蒙古自治州', '新疆维吾尔自治区,博尔塔拉蒙古自治州', '650000', '336');
INSERT INTO `sk_areas` VALUES ('652800', '巴音郭楞蒙古自治州', '新疆维吾尔自治区,巴音郭楞蒙古自治州', '650000', '337');
INSERT INTO `sk_areas` VALUES ('652900', '阿克苏地区', '新疆维吾尔自治区,阿克苏地区', '650000', '338');
INSERT INTO `sk_areas` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州', '650000', '339');
INSERT INTO `sk_areas` VALUES ('653100', '喀什地区', '新疆维吾尔自治区,喀什地区', '650000', '340');
INSERT INTO `sk_areas` VALUES ('653200', '和田地区', '新疆维吾尔自治区,和田地区', '650000', '341');
INSERT INTO `sk_areas` VALUES ('654000', '伊犁哈萨克自治州', '新疆维吾尔自治区,伊犁哈萨克自治州', '650000', '342');
INSERT INTO `sk_areas` VALUES ('654200', '塔城地区', '新疆维吾尔自治区,塔城地区', '650000', '343');
INSERT INTO `sk_areas` VALUES ('654300', '阿勒泰地区', '新疆维吾尔自治区,阿勒泰地区', '650000', '344');
INSERT INTO `sk_areas` VALUES ('659000', '省直辖行政单位', '新疆维吾尔自治区,省直辖行政单位', '650000', '345');
INSERT INTO `sk_areas` VALUES ('110101', '东城区', '北京市,北京市,东城区', '110100', '1');
INSERT INTO `sk_areas` VALUES ('110102', '西城区', '北京市,北京市,西城区', '110100', '2');
INSERT INTO `sk_areas` VALUES ('110103', '崇文区', '北京市,北京市,崇文区', '110100', '3');
INSERT INTO `sk_areas` VALUES ('110104', '宣武区', '北京市,北京市,宣武区', '110100', '4');
INSERT INTO `sk_areas` VALUES ('110105', '朝阳区', '北京市,北京市,朝阳区', '110100', '5');
INSERT INTO `sk_areas` VALUES ('110106', '丰台区', '北京市,北京市,丰台区', '110100', '6');
INSERT INTO `sk_areas` VALUES ('110107', '石景山区', '北京市,北京市,石景山区', '110100', '7');
INSERT INTO `sk_areas` VALUES ('110108', '海淀区', '北京市,北京市,海淀区', '110100', '8');
INSERT INTO `sk_areas` VALUES ('110109', '门头沟区', '北京市,北京市,门头沟区', '110100', '9');
INSERT INTO `sk_areas` VALUES ('110111', '房山区', '北京市,北京市,房山区', '110100', '10');
INSERT INTO `sk_areas` VALUES ('110112', '通州区', '北京市,北京市,通州区', '110100', '11');
INSERT INTO `sk_areas` VALUES ('110113', '顺义区', '北京市,北京市,顺义区', '110100', '12');
INSERT INTO `sk_areas` VALUES ('110114', '昌平区', '北京市,北京市,昌平区', '110100', '13');
INSERT INTO `sk_areas` VALUES ('110115', '大兴区', '北京市,北京市,大兴区', '110100', '14');
INSERT INTO `sk_areas` VALUES ('110116', '怀柔区', '北京市,北京市,怀柔区', '110100', '15');
INSERT INTO `sk_areas` VALUES ('110117', '平谷区', '北京市,北京市,平谷区', '110100', '16');
INSERT INTO `sk_areas` VALUES ('110228', '密云县', '北京市,县,密云县', '110200', '17');
INSERT INTO `sk_areas` VALUES ('110229', '延庆县', '北京市,县,延庆县', '110200', '18');
INSERT INTO `sk_areas` VALUES ('120101', '和平区', '天津市,市辖区,和平区', '120100', '19');
INSERT INTO `sk_areas` VALUES ('120102', '河东区', '天津市,市辖区,河东区', '120100', '20');
INSERT INTO `sk_areas` VALUES ('120103', '河西区', '天津市,市辖区,河西区', '120100', '21');
INSERT INTO `sk_areas` VALUES ('120104', '南开区', '天津市,市辖区,南开区', '120100', '22');
INSERT INTO `sk_areas` VALUES ('120105', '河北区', '天津市,市辖区,河北区', '120100', '23');
INSERT INTO `sk_areas` VALUES ('120106', '红桥区', '天津市,市辖区,红桥区', '120100', '24');
INSERT INTO `sk_areas` VALUES ('120107', '塘沽区', '天津市,市辖区,塘沽区', '120100', '25');
INSERT INTO `sk_areas` VALUES ('120108', '汉沽区', '天津市,市辖区,汉沽区', '120100', '26');
INSERT INTO `sk_areas` VALUES ('120109', '大港区', '天津市,市辖区,大港区', '120100', '27');
INSERT INTO `sk_areas` VALUES ('120110', '东丽区', '天津市,市辖区,东丽区', '120100', '28');
INSERT INTO `sk_areas` VALUES ('120111', '西青区', '天津市,市辖区,西青区', '120100', '29');
INSERT INTO `sk_areas` VALUES ('120112', '津南区', '天津市,市辖区,津南区', '120100', '30');
INSERT INTO `sk_areas` VALUES ('120113', '北辰区', '天津市,市辖区,北辰区', '120100', '31');
INSERT INTO `sk_areas` VALUES ('120114', '武清区', '天津市,市辖区,武清区', '120100', '32');
INSERT INTO `sk_areas` VALUES ('120115', '宝坻区', '天津市,市辖区,宝坻区', '120100', '33');
INSERT INTO `sk_areas` VALUES ('120221', '宁河县', '天津市,县,宁河县', '120200', '34');
INSERT INTO `sk_areas` VALUES ('120223', '静海县', '天津市,县,静海县', '120200', '35');
INSERT INTO `sk_areas` VALUES ('120225', '蓟　县', '天津市,县,蓟　县', '120200', '36');
INSERT INTO `sk_areas` VALUES ('130101', '市辖区', '河北省,石家庄市,市辖区', '130100', '37');
INSERT INTO `sk_areas` VALUES ('130102', '长安区', '河北省,石家庄市,长安区', '130100', '38');
INSERT INTO `sk_areas` VALUES ('130103', '桥东区', '河北省,石家庄市,桥东区', '130100', '39');
INSERT INTO `sk_areas` VALUES ('130104', '桥西区', '河北省,石家庄市,桥西区', '130100', '40');
INSERT INTO `sk_areas` VALUES ('130105', '新华区', '河北省,石家庄市,新华区', '130100', '41');
INSERT INTO `sk_areas` VALUES ('130107', '井陉矿区', '河北省,石家庄市,井陉矿区', '130100', '42');
INSERT INTO `sk_areas` VALUES ('130108', '裕华区', '河北省,石家庄市,裕华区', '130100', '43');
INSERT INTO `sk_areas` VALUES ('130121', '井陉县', '河北省,石家庄市,井陉县', '130100', '44');
INSERT INTO `sk_areas` VALUES ('130123', '正定县', '河北省,石家庄市,正定县', '130100', '45');
INSERT INTO `sk_areas` VALUES ('130124', '栾城县', '河北省,石家庄市,栾城县', '130100', '46');
INSERT INTO `sk_areas` VALUES ('130125', '行唐县', '河北省,石家庄市,行唐县', '130100', '47');
INSERT INTO `sk_areas` VALUES ('130126', '灵寿县', '河北省,石家庄市,灵寿县', '130100', '48');
INSERT INTO `sk_areas` VALUES ('130127', '高邑县', '河北省,石家庄市,高邑县', '130100', '49');
INSERT INTO `sk_areas` VALUES ('130128', '深泽县', '河北省,石家庄市,深泽县', '130100', '50');
INSERT INTO `sk_areas` VALUES ('130129', '赞皇县', '河北省,石家庄市,赞皇县', '130100', '51');
INSERT INTO `sk_areas` VALUES ('130130', '无极县', '河北省,石家庄市,无极县', '130100', '52');
INSERT INTO `sk_areas` VALUES ('130131', '平山县', '河北省,石家庄市,平山县', '130100', '53');
INSERT INTO `sk_areas` VALUES ('130132', '元氏县', '河北省,石家庄市,元氏县', '130100', '54');
INSERT INTO `sk_areas` VALUES ('130133', '赵　县', '河北省,石家庄市,赵　县', '130100', '55');
INSERT INTO `sk_areas` VALUES ('130181', '辛集市', '河北省,石家庄市,辛集市', '130100', '56');
INSERT INTO `sk_areas` VALUES ('130182', '藁城市', '河北省,石家庄市,藁城市', '130100', '57');
INSERT INTO `sk_areas` VALUES ('130183', '晋州市', '河北省,石家庄市,晋州市', '130100', '58');
INSERT INTO `sk_areas` VALUES ('130184', '新乐市', '河北省,石家庄市,新乐市', '130100', '59');
INSERT INTO `sk_areas` VALUES ('130185', '鹿泉市', '河北省,石家庄市,鹿泉市', '130100', '60');
INSERT INTO `sk_areas` VALUES ('130201', '市辖区', '河北省,唐山市,市辖区', '130200', '61');
INSERT INTO `sk_areas` VALUES ('130202', '路南区', '河北省,唐山市,路南区', '130200', '62');
INSERT INTO `sk_areas` VALUES ('130203', '路北区', '河北省,唐山市,路北区', '130200', '63');
INSERT INTO `sk_areas` VALUES ('130204', '古冶区', '河北省,唐山市,古冶区', '130200', '64');
INSERT INTO `sk_areas` VALUES ('130205', '开平区', '河北省,唐山市,开平区', '130200', '65');
INSERT INTO `sk_areas` VALUES ('130207', '丰南区', '河北省,唐山市,丰南区', '130200', '66');
INSERT INTO `sk_areas` VALUES ('130208', '丰润区', '河北省,唐山市,丰润区', '130200', '67');
INSERT INTO `sk_areas` VALUES ('130223', '滦　县', '河北省,唐山市,滦　县', '130200', '68');
INSERT INTO `sk_areas` VALUES ('130224', '滦南县', '河北省,唐山市,滦南县', '130200', '69');
INSERT INTO `sk_areas` VALUES ('130225', '乐亭县', '河北省,唐山市,乐亭县', '130200', '70');
INSERT INTO `sk_areas` VALUES ('130227', '迁西县', '河北省,唐山市,迁西县', '130200', '71');
INSERT INTO `sk_areas` VALUES ('130229', '玉田县', '河北省,唐山市,玉田县', '130200', '72');
INSERT INTO `sk_areas` VALUES ('130230', '唐海县', '河北省,唐山市,唐海县', '130200', '73');
INSERT INTO `sk_areas` VALUES ('130281', '遵化市', '河北省,唐山市,遵化市', '130200', '74');
INSERT INTO `sk_areas` VALUES ('130283', '迁安市', '河北省,唐山市,迁安市', '130200', '75');
INSERT INTO `sk_areas` VALUES ('130301', '市辖区', '河北省,秦皇岛市,市辖区', '130300', '76');
INSERT INTO `sk_areas` VALUES ('130302', '海港区', '河北省,秦皇岛市,海港区', '130300', '77');
INSERT INTO `sk_areas` VALUES ('130303', '山海关区', '河北省,秦皇岛市,山海关区', '130300', '78');
INSERT INTO `sk_areas` VALUES ('130304', '北戴河区', '河北省,秦皇岛市,北戴河区', '130300', '79');
INSERT INTO `sk_areas` VALUES ('130321', '青龙满族自治县', '河北省,秦皇岛市,青龙满族自治县', '130300', '80');
INSERT INTO `sk_areas` VALUES ('130322', '昌黎县', '河北省,秦皇岛市,昌黎县', '130300', '81');
INSERT INTO `sk_areas` VALUES ('130323', '抚宁县', '河北省,秦皇岛市,抚宁县', '130300', '82');
INSERT INTO `sk_areas` VALUES ('130324', '卢龙县', '河北省,秦皇岛市,卢龙县', '130300', '83');
INSERT INTO `sk_areas` VALUES ('130401', '市辖区', '河北省,邯郸市,市辖区', '130400', '84');
INSERT INTO `sk_areas` VALUES ('130402', '邯山区', '河北省,邯郸市,邯山区', '130400', '85');
INSERT INTO `sk_areas` VALUES ('130403', '丛台区', '河北省,邯郸市,丛台区', '130400', '86');
INSERT INTO `sk_areas` VALUES ('130404', '复兴区', '河北省,邯郸市,复兴区', '130400', '87');
INSERT INTO `sk_areas` VALUES ('130406', '峰峰矿区', '河北省,邯郸市,峰峰矿区', '130400', '88');
INSERT INTO `sk_areas` VALUES ('130421', '邯郸县', '河北省,邯郸市,邯郸县', '130400', '89');
INSERT INTO `sk_areas` VALUES ('130423', '临漳县', '河北省,邯郸市,临漳县', '130400', '90');
INSERT INTO `sk_areas` VALUES ('130424', '成安县', '河北省,邯郸市,成安县', '130400', '91');
INSERT INTO `sk_areas` VALUES ('130425', '大名县', '河北省,邯郸市,大名县', '130400', '92');
INSERT INTO `sk_areas` VALUES ('130426', '涉　县', '河北省,邯郸市,涉　县', '130400', '93');
INSERT INTO `sk_areas` VALUES ('130427', '磁　县', '河北省,邯郸市,磁　县', '130400', '94');
INSERT INTO `sk_areas` VALUES ('130428', '肥乡县', '河北省,邯郸市,肥乡县', '130400', '95');
INSERT INTO `sk_areas` VALUES ('130429', '永年县', '河北省,邯郸市,永年县', '130400', '96');
INSERT INTO `sk_areas` VALUES ('130430', '邱　县', '河北省,邯郸市,邱　县', '130400', '97');
INSERT INTO `sk_areas` VALUES ('130431', '鸡泽县', '河北省,邯郸市,鸡泽县', '130400', '98');
INSERT INTO `sk_areas` VALUES ('130432', '广平县', '河北省,邯郸市,广平县', '130400', '99');
INSERT INTO `sk_areas` VALUES ('130433', '馆陶县', '河北省,邯郸市,馆陶县', '130400', '100');
INSERT INTO `sk_areas` VALUES ('130434', '魏　县', '河北省,邯郸市,魏　县', '130400', '101');
INSERT INTO `sk_areas` VALUES ('130435', '曲周县', '河北省,邯郸市,曲周县', '130400', '102');
INSERT INTO `sk_areas` VALUES ('130481', '武安市', '河北省,邯郸市,武安市', '130400', '103');
INSERT INTO `sk_areas` VALUES ('130501', '市辖区', '河北省,邢台市,市辖区', '130500', '104');
INSERT INTO `sk_areas` VALUES ('130502', '桥东区', '河北省,邢台市,桥东区', '130500', '105');
INSERT INTO `sk_areas` VALUES ('130503', '桥西区', '河北省,邢台市,桥西区', '130500', '106');
INSERT INTO `sk_areas` VALUES ('130521', '邢台县', '河北省,邢台市,邢台县', '130500', '107');
INSERT INTO `sk_areas` VALUES ('130522', '临城县', '河北省,邢台市,临城县', '130500', '108');
INSERT INTO `sk_areas` VALUES ('130523', '内丘县', '河北省,邢台市,内丘县', '130500', '109');
INSERT INTO `sk_areas` VALUES ('130524', '柏乡县', '河北省,邢台市,柏乡县', '130500', '110');
INSERT INTO `sk_areas` VALUES ('130525', '隆尧县', '河北省,邢台市,隆尧县', '130500', '111');
INSERT INTO `sk_areas` VALUES ('130526', '任　县', '河北省,邢台市,任　县', '130500', '112');
INSERT INTO `sk_areas` VALUES ('130527', '南和县', '河北省,邢台市,南和县', '130500', '113');
INSERT INTO `sk_areas` VALUES ('130528', '宁晋县', '河北省,邢台市,宁晋县', '130500', '114');
INSERT INTO `sk_areas` VALUES ('130529', '巨鹿县', '河北省,邢台市,巨鹿县', '130500', '115');
INSERT INTO `sk_areas` VALUES ('130530', '新河县', '河北省,邢台市,新河县', '130500', '116');
INSERT INTO `sk_areas` VALUES ('130531', '广宗县', '河北省,邢台市,广宗县', '130500', '117');
INSERT INTO `sk_areas` VALUES ('130532', '平乡县', '河北省,邢台市,平乡县', '130500', '118');
INSERT INTO `sk_areas` VALUES ('130533', '威　县', '河北省,邢台市,威　县', '130500', '119');
INSERT INTO `sk_areas` VALUES ('130534', '清河县', '河北省,邢台市,清河县', '130500', '120');
INSERT INTO `sk_areas` VALUES ('130535', '临西县', '河北省,邢台市,临西县', '130500', '121');
INSERT INTO `sk_areas` VALUES ('130581', '南宫市', '河北省,邢台市,南宫市', '130500', '122');
INSERT INTO `sk_areas` VALUES ('130582', '沙河市', '河北省,邢台市,沙河市', '130500', '123');
INSERT INTO `sk_areas` VALUES ('130601', '市辖区', '河北省,保定市,市辖区', '130600', '124');
INSERT INTO `sk_areas` VALUES ('130602', '新市区', '河北省,保定市,新市区', '130600', '125');
INSERT INTO `sk_areas` VALUES ('130603', '北市区', '河北省,保定市,北市区', '130600', '126');
INSERT INTO `sk_areas` VALUES ('130604', '南市区', '河北省,保定市,南市区', '130600', '127');
INSERT INTO `sk_areas` VALUES ('130621', '满城县', '河北省,保定市,满城县', '130600', '128');
INSERT INTO `sk_areas` VALUES ('130622', '清苑县', '河北省,保定市,清苑县', '130600', '129');
INSERT INTO `sk_areas` VALUES ('130623', '涞水县', '河北省,保定市,涞水县', '130600', '130');
INSERT INTO `sk_areas` VALUES ('130624', '阜平县', '河北省,保定市,阜平县', '130600', '131');
INSERT INTO `sk_areas` VALUES ('130625', '徐水县', '河北省,保定市,徐水县', '130600', '132');
INSERT INTO `sk_areas` VALUES ('130626', '定兴县', '河北省,保定市,定兴县', '130600', '133');
INSERT INTO `sk_areas` VALUES ('130627', '唐　县', '河北省,保定市,唐　县', '130600', '134');
INSERT INTO `sk_areas` VALUES ('130628', '高阳县', '河北省,保定市,高阳县', '130600', '135');
INSERT INTO `sk_areas` VALUES ('130629', '容城县', '河北省,保定市,容城县', '130600', '136');
INSERT INTO `sk_areas` VALUES ('130630', '涞源县', '河北省,保定市,涞源县', '130600', '137');
INSERT INTO `sk_areas` VALUES ('130631', '望都县', '河北省,保定市,望都县', '130600', '138');
INSERT INTO `sk_areas` VALUES ('130632', '安新县', '河北省,保定市,安新县', '130600', '139');
INSERT INTO `sk_areas` VALUES ('130633', '易　县', '河北省,保定市,易　县', '130600', '140');
INSERT INTO `sk_areas` VALUES ('130634', '曲阳县', '河北省,保定市,曲阳县', '130600', '141');
INSERT INTO `sk_areas` VALUES ('130635', '蠡　县', '河北省,保定市,蠡　县', '130600', '142');
INSERT INTO `sk_areas` VALUES ('130636', '顺平县', '河北省,保定市,顺平县', '130600', '143');
INSERT INTO `sk_areas` VALUES ('130637', '博野县', '河北省,保定市,博野县', '130600', '144');
INSERT INTO `sk_areas` VALUES ('130638', '雄　县', '河北省,保定市,雄　县', '130600', '145');
INSERT INTO `sk_areas` VALUES ('130681', '涿州市', '河北省,保定市,涿州市', '130600', '146');
INSERT INTO `sk_areas` VALUES ('130682', '定州市', '河北省,保定市,定州市', '130600', '147');
INSERT INTO `sk_areas` VALUES ('130683', '安国市', '河北省,保定市,安国市', '130600', '148');
INSERT INTO `sk_areas` VALUES ('130684', '高碑店市', '河北省,保定市,高碑店市', '130600', '149');
INSERT INTO `sk_areas` VALUES ('130701', '市辖区', '河北省,张家口市,市辖区', '130700', '150');
INSERT INTO `sk_areas` VALUES ('130702', '桥东区', '河北省,张家口市,桥东区', '130700', '151');
INSERT INTO `sk_areas` VALUES ('130703', '桥西区', '河北省,张家口市,桥西区', '130700', '152');
INSERT INTO `sk_areas` VALUES ('130705', '宣化区', '河北省,张家口市,宣化区', '130700', '153');
INSERT INTO `sk_areas` VALUES ('130706', '下花园区', '河北省,张家口市,下花园区', '130700', '154');
INSERT INTO `sk_areas` VALUES ('130721', '宣化县', '河北省,张家口市,宣化县', '130700', '155');
INSERT INTO `sk_areas` VALUES ('130722', '张北县', '河北省,张家口市,张北县', '130700', '156');
INSERT INTO `sk_areas` VALUES ('130723', '康保县', '河北省,张家口市,康保县', '130700', '157');
INSERT INTO `sk_areas` VALUES ('130724', '沽源县', '河北省,张家口市,沽源县', '130700', '158');
INSERT INTO `sk_areas` VALUES ('130725', '尚义县', '河北省,张家口市,尚义县', '130700', '159');
INSERT INTO `sk_areas` VALUES ('130726', '蔚　县', '河北省,张家口市,蔚　县', '130700', '160');
INSERT INTO `sk_areas` VALUES ('130727', '阳原县', '河北省,张家口市,阳原县', '130700', '161');
INSERT INTO `sk_areas` VALUES ('130728', '怀安县', '河北省,张家口市,怀安县', '130700', '162');
INSERT INTO `sk_areas` VALUES ('130729', '万全县', '河北省,张家口市,万全县', '130700', '163');
INSERT INTO `sk_areas` VALUES ('130730', '怀来县', '河北省,张家口市,怀来县', '130700', '164');
INSERT INTO `sk_areas` VALUES ('130731', '涿鹿县', '河北省,张家口市,涿鹿县', '130700', '165');
INSERT INTO `sk_areas` VALUES ('130732', '赤城县', '河北省,张家口市,赤城县', '130700', '166');
INSERT INTO `sk_areas` VALUES ('130733', '崇礼县', '河北省,张家口市,崇礼县', '130700', '167');
INSERT INTO `sk_areas` VALUES ('130801', '市辖区', '河北省,承德市,市辖区', '130800', '168');
INSERT INTO `sk_areas` VALUES ('130802', '双桥区', '河北省,承德市,双桥区', '130800', '169');
INSERT INTO `sk_areas` VALUES ('130803', '双滦区', '河北省,承德市,双滦区', '130800', '170');
INSERT INTO `sk_areas` VALUES ('130804', '鹰手营子矿区', '河北省,承德市,鹰手营子矿区', '130800', '171');
INSERT INTO `sk_areas` VALUES ('130821', '承德县', '河北省,承德市,承德县', '130800', '172');
INSERT INTO `sk_areas` VALUES ('130822', '兴隆县', '河北省,承德市,兴隆县', '130800', '173');
INSERT INTO `sk_areas` VALUES ('130823', '平泉县', '河北省,承德市,平泉县', '130800', '174');
INSERT INTO `sk_areas` VALUES ('130824', '滦平县', '河北省,承德市,滦平县', '130800', '175');
INSERT INTO `sk_areas` VALUES ('130825', '隆化县', '河北省,承德市,隆化县', '130800', '176');
INSERT INTO `sk_areas` VALUES ('130826', '丰宁满族自治县', '河北省,承德市,丰宁满族自治县', '130800', '177');
INSERT INTO `sk_areas` VALUES ('130827', '宽城满族自治县', '河北省,承德市,宽城满族自治县', '130800', '178');
INSERT INTO `sk_areas` VALUES ('130828', '围场满族蒙古族自治县', '河北省,承德市,围场满族蒙古族自治县', '130800', '179');
INSERT INTO `sk_areas` VALUES ('130901', '市辖区', '河北省,沧州市,市辖区', '130900', '180');
INSERT INTO `sk_areas` VALUES ('130902', '新华区', '河北省,沧州市,新华区', '130900', '181');
INSERT INTO `sk_areas` VALUES ('130903', '运河区', '河北省,沧州市,运河区', '130900', '182');
INSERT INTO `sk_areas` VALUES ('130921', '沧　县', '河北省,沧州市,沧　县', '130900', '183');
INSERT INTO `sk_areas` VALUES ('130922', '青　县', '河北省,沧州市,青　县', '130900', '184');
INSERT INTO `sk_areas` VALUES ('130923', '东光县', '河北省,沧州市,东光县', '130900', '185');
INSERT INTO `sk_areas` VALUES ('130924', '海兴县', '河北省,沧州市,海兴县', '130900', '186');
INSERT INTO `sk_areas` VALUES ('130925', '盐山县', '河北省,沧州市,盐山县', '130900', '187');
INSERT INTO `sk_areas` VALUES ('130926', '肃宁县', '河北省,沧州市,肃宁县', '130900', '188');
INSERT INTO `sk_areas` VALUES ('130927', '南皮县', '河北省,沧州市,南皮县', '130900', '189');
INSERT INTO `sk_areas` VALUES ('130928', '吴桥县', '河北省,沧州市,吴桥县', '130900', '190');
INSERT INTO `sk_areas` VALUES ('130929', '献　县', '河北省,沧州市,献　县', '130900', '191');
INSERT INTO `sk_areas` VALUES ('130930', '孟村回族自治县', '河北省,沧州市,孟村回族自治县', '130900', '192');
INSERT INTO `sk_areas` VALUES ('130981', '泊头市', '河北省,沧州市,泊头市', '130900', '193');
INSERT INTO `sk_areas` VALUES ('130982', '任丘市', '河北省,沧州市,任丘市', '130900', '194');
INSERT INTO `sk_areas` VALUES ('130983', '黄骅市', '河北省,沧州市,黄骅市', '130900', '195');
INSERT INTO `sk_areas` VALUES ('130984', '河间市', '河北省,沧州市,河间市', '130900', '196');
INSERT INTO `sk_areas` VALUES ('131001', '市辖区', '河北省,廊坊市,市辖区', '131000', '197');
INSERT INTO `sk_areas` VALUES ('131002', '安次区', '河北省,廊坊市,安次区', '131000', '198');
INSERT INTO `sk_areas` VALUES ('131003', '广阳区', '河北省,廊坊市,广阳区', '131000', '199');
INSERT INTO `sk_areas` VALUES ('131022', '固安县', '河北省,廊坊市,固安县', '131000', '200');
INSERT INTO `sk_areas` VALUES ('131023', '永清县', '河北省,廊坊市,永清县', '131000', '201');
INSERT INTO `sk_areas` VALUES ('131024', '香河县', '河北省,廊坊市,香河县', '131000', '202');
INSERT INTO `sk_areas` VALUES ('131025', '大城县', '河北省,廊坊市,大城县', '131000', '203');
INSERT INTO `sk_areas` VALUES ('131026', '文安县', '河北省,廊坊市,文安县', '131000', '204');
INSERT INTO `sk_areas` VALUES ('131028', '大厂回族自治县', '河北省,廊坊市,大厂回族自治县', '131000', '205');
INSERT INTO `sk_areas` VALUES ('131081', '霸州市', '河北省,廊坊市,霸州市', '131000', '206');
INSERT INTO `sk_areas` VALUES ('131082', '三河市', '河北省,廊坊市,三河市', '131000', '207');
INSERT INTO `sk_areas` VALUES ('131101', '市辖区', '河北省,衡水市,市辖区', '131100', '208');
INSERT INTO `sk_areas` VALUES ('131102', '桃城区', '河北省,衡水市,桃城区', '131100', '209');
INSERT INTO `sk_areas` VALUES ('131121', '枣强县', '河北省,衡水市,枣强县', '131100', '210');
INSERT INTO `sk_areas` VALUES ('131122', '武邑县', '河北省,衡水市,武邑县', '131100', '211');
INSERT INTO `sk_areas` VALUES ('131123', '武强县', '河北省,衡水市,武强县', '131100', '212');
INSERT INTO `sk_areas` VALUES ('131124', '饶阳县', '河北省,衡水市,饶阳县', '131100', '213');
INSERT INTO `sk_areas` VALUES ('131125', '安平县', '河北省,衡水市,安平县', '131100', '214');
INSERT INTO `sk_areas` VALUES ('131126', '故城县', '河北省,衡水市,故城县', '131100', '215');
INSERT INTO `sk_areas` VALUES ('131127', '景　县', '河北省,衡水市,景　县', '131100', '216');
INSERT INTO `sk_areas` VALUES ('131128', '阜城县', '河北省,衡水市,阜城县', '131100', '217');
INSERT INTO `sk_areas` VALUES ('131181', '冀州市', '河北省,衡水市,冀州市', '131100', '218');
INSERT INTO `sk_areas` VALUES ('131182', '深州市', '河北省,衡水市,深州市', '131100', '219');
INSERT INTO `sk_areas` VALUES ('140101', '市辖区', '山西省,太原市,市辖区', '140100', '220');
INSERT INTO `sk_areas` VALUES ('140105', '小店区', '山西省,太原市,小店区', '140100', '221');
INSERT INTO `sk_areas` VALUES ('140106', '迎泽区', '山西省,太原市,迎泽区', '140100', '222');
INSERT INTO `sk_areas` VALUES ('140107', '杏花岭区', '山西省,太原市,杏花岭区', '140100', '223');
INSERT INTO `sk_areas` VALUES ('140108', '尖草坪区', '山西省,太原市,尖草坪区', '140100', '224');
INSERT INTO `sk_areas` VALUES ('140109', '万柏林区', '山西省,太原市,万柏林区', '140100', '225');
INSERT INTO `sk_areas` VALUES ('140110', '晋源区', '山西省,太原市,晋源区', '140100', '226');
INSERT INTO `sk_areas` VALUES ('140121', '清徐县', '山西省,太原市,清徐县', '140100', '227');
INSERT INTO `sk_areas` VALUES ('140122', '阳曲县', '山西省,太原市,阳曲县', '140100', '228');
INSERT INTO `sk_areas` VALUES ('140123', '娄烦县', '山西省,太原市,娄烦县', '140100', '229');
INSERT INTO `sk_areas` VALUES ('140181', '古交市', '山西省,太原市,古交市', '140100', '230');
INSERT INTO `sk_areas` VALUES ('140201', '市辖区', '山西省,大同市,市辖区', '140200', '231');
INSERT INTO `sk_areas` VALUES ('140202', '城　区', '山西省,大同市,城　区', '140200', '232');
INSERT INTO `sk_areas` VALUES ('140203', '矿　区', '山西省,大同市,矿　区', '140200', '233');
INSERT INTO `sk_areas` VALUES ('140211', '南郊区', '山西省,大同市,南郊区', '140200', '234');
INSERT INTO `sk_areas` VALUES ('140212', '新荣区', '山西省,大同市,新荣区', '140200', '235');
INSERT INTO `sk_areas` VALUES ('140221', '阳高县', '山西省,大同市,阳高县', '140200', '236');
INSERT INTO `sk_areas` VALUES ('140222', '天镇县', '山西省,大同市,天镇县', '140200', '237');
INSERT INTO `sk_areas` VALUES ('140223', '广灵县', '山西省,大同市,广灵县', '140200', '238');
INSERT INTO `sk_areas` VALUES ('140224', '灵丘县', '山西省,大同市,灵丘县', '140200', '239');
INSERT INTO `sk_areas` VALUES ('140225', '浑源县', '山西省,大同市,浑源县', '140200', '240');
INSERT INTO `sk_areas` VALUES ('140226', '左云县', '山西省,大同市,左云县', '140200', '241');
INSERT INTO `sk_areas` VALUES ('140227', '大同县', '山西省,大同市,大同县', '140200', '242');
INSERT INTO `sk_areas` VALUES ('140301', '市辖区', '山西省,阳泉市,市辖区', '140300', '243');
INSERT INTO `sk_areas` VALUES ('140302', '城　区', '山西省,阳泉市,城　区', '140300', '244');
INSERT INTO `sk_areas` VALUES ('140303', '矿　区', '山西省,阳泉市,矿　区', '140300', '245');
INSERT INTO `sk_areas` VALUES ('140311', '郊　区', '山西省,阳泉市,郊　区', '140300', '246');
INSERT INTO `sk_areas` VALUES ('140321', '平定县', '山西省,阳泉市,平定县', '140300', '247');
INSERT INTO `sk_areas` VALUES ('140322', '盂　县', '山西省,阳泉市,盂　县', '140300', '248');
INSERT INTO `sk_areas` VALUES ('140401', '市辖区', '山西省,长治市,市辖区', '140400', '249');
INSERT INTO `sk_areas` VALUES ('140402', '城　区', '山西省,长治市,城　区', '140400', '250');
INSERT INTO `sk_areas` VALUES ('140411', '郊　区', '山西省,长治市,郊　区', '140400', '251');
INSERT INTO `sk_areas` VALUES ('140421', '长治县', '山西省,长治市,长治县', '140400', '252');
INSERT INTO `sk_areas` VALUES ('140423', '襄垣县', '山西省,长治市,襄垣县', '140400', '253');
INSERT INTO `sk_areas` VALUES ('140424', '屯留县', '山西省,长治市,屯留县', '140400', '254');
INSERT INTO `sk_areas` VALUES ('140425', '平顺县', '山西省,长治市,平顺县', '140400', '255');
INSERT INTO `sk_areas` VALUES ('140426', '黎城县', '山西省,长治市,黎城县', '140400', '256');
INSERT INTO `sk_areas` VALUES ('140427', '壶关县', '山西省,长治市,壶关县', '140400', '257');
INSERT INTO `sk_areas` VALUES ('140428', '长子县', '山西省,长治市,长子县', '140400', '258');
INSERT INTO `sk_areas` VALUES ('140429', '武乡县', '山西省,长治市,武乡县', '140400', '259');
INSERT INTO `sk_areas` VALUES ('140430', '沁　县', '山西省,长治市,沁　县', '140400', '260');
INSERT INTO `sk_areas` VALUES ('140431', '沁源县', '山西省,长治市,沁源县', '140400', '261');
INSERT INTO `sk_areas` VALUES ('140481', '潞城市', '山西省,长治市,潞城市', '140400', '262');
INSERT INTO `sk_areas` VALUES ('140501', '市辖区', '山西省,晋城市,市辖区', '140500', '263');
INSERT INTO `sk_areas` VALUES ('140502', '城　区', '山西省,晋城市,城　区', '140500', '264');
INSERT INTO `sk_areas` VALUES ('140521', '沁水县', '山西省,晋城市,沁水县', '140500', '265');
INSERT INTO `sk_areas` VALUES ('140522', '阳城县', '山西省,晋城市,阳城县', '140500', '266');
INSERT INTO `sk_areas` VALUES ('140524', '陵川县', '山西省,晋城市,陵川县', '140500', '267');
INSERT INTO `sk_areas` VALUES ('140525', '泽州县', '山西省,晋城市,泽州县', '140500', '268');
INSERT INTO `sk_areas` VALUES ('140581', '高平市', '山西省,晋城市,高平市', '140500', '269');
INSERT INTO `sk_areas` VALUES ('140601', '市辖区', '山西省,朔州市,市辖区', '140600', '270');
INSERT INTO `sk_areas` VALUES ('140602', '朔城区', '山西省,朔州市,朔城区', '140600', '271');
INSERT INTO `sk_areas` VALUES ('140603', '平鲁区', '山西省,朔州市,平鲁区', '140600', '272');
INSERT INTO `sk_areas` VALUES ('140621', '山阴县', '山西省,朔州市,山阴县', '140600', '273');
INSERT INTO `sk_areas` VALUES ('140622', '应　县', '山西省,朔州市,应　县', '140600', '274');
INSERT INTO `sk_areas` VALUES ('140623', '右玉县', '山西省,朔州市,右玉县', '140600', '275');
INSERT INTO `sk_areas` VALUES ('140624', '怀仁县', '山西省,朔州市,怀仁县', '140600', '276');
INSERT INTO `sk_areas` VALUES ('140701', '市辖区', '山西省,晋中市,市辖区', '140700', '277');
INSERT INTO `sk_areas` VALUES ('140702', '榆次区', '山西省,晋中市,榆次区', '140700', '278');
INSERT INTO `sk_areas` VALUES ('140721', '榆社县', '山西省,晋中市,榆社县', '140700', '279');
INSERT INTO `sk_areas` VALUES ('140722', '左权县', '山西省,晋中市,左权县', '140700', '280');
INSERT INTO `sk_areas` VALUES ('140723', '和顺县', '山西省,晋中市,和顺县', '140700', '281');
INSERT INTO `sk_areas` VALUES ('140724', '昔阳县', '山西省,晋中市,昔阳县', '140700', '282');
INSERT INTO `sk_areas` VALUES ('140725', '寿阳县', '山西省,晋中市,寿阳县', '140700', '283');
INSERT INTO `sk_areas` VALUES ('140726', '太谷县', '山西省,晋中市,太谷县', '140700', '284');
INSERT INTO `sk_areas` VALUES ('140727', '祁　县', '山西省,晋中市,祁　县', '140700', '285');
INSERT INTO `sk_areas` VALUES ('140728', '平遥县', '山西省,晋中市,平遥县', '140700', '286');
INSERT INTO `sk_areas` VALUES ('140729', '灵石县', '山西省,晋中市,灵石县', '140700', '287');
INSERT INTO `sk_areas` VALUES ('140781', '介休市', '山西省,晋中市,介休市', '140700', '288');
INSERT INTO `sk_areas` VALUES ('140801', '市辖区', '山西省,运城市,市辖区', '140800', '289');
INSERT INTO `sk_areas` VALUES ('140802', '盐湖区', '山西省,运城市,盐湖区', '140800', '290');
INSERT INTO `sk_areas` VALUES ('140821', '临猗县', '山西省,运城市,临猗县', '140800', '291');
INSERT INTO `sk_areas` VALUES ('140822', '万荣县', '山西省,运城市,万荣县', '140800', '292');
INSERT INTO `sk_areas` VALUES ('140823', '闻喜县', '山西省,运城市,闻喜县', '140800', '293');
INSERT INTO `sk_areas` VALUES ('140824', '稷山县', '山西省,运城市,稷山县', '140800', '294');
INSERT INTO `sk_areas` VALUES ('140825', '新绛县', '山西省,运城市,新绛县', '140800', '295');
INSERT INTO `sk_areas` VALUES ('140826', '绛　县', '山西省,运城市,绛　县', '140800', '296');
INSERT INTO `sk_areas` VALUES ('140827', '垣曲县', '山西省,运城市,垣曲县', '140800', '297');
INSERT INTO `sk_areas` VALUES ('140828', '夏　县', '山西省,运城市,夏　县', '140800', '298');
INSERT INTO `sk_areas` VALUES ('140829', '平陆县', '山西省,运城市,平陆县', '140800', '299');
INSERT INTO `sk_areas` VALUES ('140830', '芮城县', '山西省,运城市,芮城县', '140800', '300');
INSERT INTO `sk_areas` VALUES ('140881', '永济市', '山西省,运城市,永济市', '140800', '301');
INSERT INTO `sk_areas` VALUES ('140882', '河津市', '山西省,运城市,河津市', '140800', '302');
INSERT INTO `sk_areas` VALUES ('140901', '市辖区', '山西省,忻州市,市辖区', '140900', '303');
INSERT INTO `sk_areas` VALUES ('140902', '忻府区', '山西省,忻州市,忻府区', '140900', '304');
INSERT INTO `sk_areas` VALUES ('140921', '定襄县', '山西省,忻州市,定襄县', '140900', '305');
INSERT INTO `sk_areas` VALUES ('140922', '五台县', '山西省,忻州市,五台县', '140900', '306');
INSERT INTO `sk_areas` VALUES ('140923', '代　县', '山西省,忻州市,代　县', '140900', '307');
INSERT INTO `sk_areas` VALUES ('140924', '繁峙县', '山西省,忻州市,繁峙县', '140900', '308');
INSERT INTO `sk_areas` VALUES ('140925', '宁武县', '山西省,忻州市,宁武县', '140900', '309');
INSERT INTO `sk_areas` VALUES ('140926', '静乐县', '山西省,忻州市,静乐县', '140900', '310');
INSERT INTO `sk_areas` VALUES ('140927', '神池县', '山西省,忻州市,神池县', '140900', '311');
INSERT INTO `sk_areas` VALUES ('140928', '五寨县', '山西省,忻州市,五寨县', '140900', '312');
INSERT INTO `sk_areas` VALUES ('140929', '岢岚县', '山西省,忻州市,岢岚县', '140900', '313');
INSERT INTO `sk_areas` VALUES ('140930', '河曲县', '山西省,忻州市,河曲县', '140900', '314');
INSERT INTO `sk_areas` VALUES ('140931', '保德县', '山西省,忻州市,保德县', '140900', '315');
INSERT INTO `sk_areas` VALUES ('140932', '偏关县', '山西省,忻州市,偏关县', '140900', '316');
INSERT INTO `sk_areas` VALUES ('140981', '原平市', '山西省,忻州市,原平市', '140900', '317');
INSERT INTO `sk_areas` VALUES ('141001', '市辖区', '山西省,临汾市,市辖区', '141000', '318');
INSERT INTO `sk_areas` VALUES ('141002', '尧都区', '山西省,临汾市,尧都区', '141000', '319');
INSERT INTO `sk_areas` VALUES ('141021', '曲沃县', '山西省,临汾市,曲沃县', '141000', '320');
INSERT INTO `sk_areas` VALUES ('141022', '翼城县', '山西省,临汾市,翼城县', '141000', '321');
INSERT INTO `sk_areas` VALUES ('141023', '襄汾县', '山西省,临汾市,襄汾县', '141000', '322');
INSERT INTO `sk_areas` VALUES ('141024', '洪洞县', '山西省,临汾市,洪洞县', '141000', '323');
INSERT INTO `sk_areas` VALUES ('141025', '古　县', '山西省,临汾市,古　县', '141000', '324');
INSERT INTO `sk_areas` VALUES ('141026', '安泽县', '山西省,临汾市,安泽县', '141000', '325');
INSERT INTO `sk_areas` VALUES ('141027', '浮山县', '山西省,临汾市,浮山县', '141000', '326');
INSERT INTO `sk_areas` VALUES ('141028', '吉　县', '山西省,临汾市,吉　县', '141000', '327');
INSERT INTO `sk_areas` VALUES ('141029', '乡宁县', '山西省,临汾市,乡宁县', '141000', '328');
INSERT INTO `sk_areas` VALUES ('141030', '大宁县', '山西省,临汾市,大宁县', '141000', '329');
INSERT INTO `sk_areas` VALUES ('141031', '隰　县', '山西省,临汾市,隰　县', '141000', '330');
INSERT INTO `sk_areas` VALUES ('141032', '永和县', '山西省,临汾市,永和县', '141000', '331');
INSERT INTO `sk_areas` VALUES ('141033', '蒲　县', '山西省,临汾市,蒲　县', '141000', '332');
INSERT INTO `sk_areas` VALUES ('141034', '汾西县', '山西省,临汾市,汾西县', '141000', '333');
INSERT INTO `sk_areas` VALUES ('141081', '侯马市', '山西省,临汾市,侯马市', '141000', '334');
INSERT INTO `sk_areas` VALUES ('141082', '霍州市', '山西省,临汾市,霍州市', '141000', '335');
INSERT INTO `sk_areas` VALUES ('141101', '市辖区', '山西省,吕梁市,市辖区', '141100', '336');
INSERT INTO `sk_areas` VALUES ('141102', '离石区', '山西省,吕梁市,离石区', '141100', '337');
INSERT INTO `sk_areas` VALUES ('141121', '文水县', '山西省,吕梁市,文水县', '141100', '338');
INSERT INTO `sk_areas` VALUES ('141122', '交城县', '山西省,吕梁市,交城县', '141100', '339');
INSERT INTO `sk_areas` VALUES ('141123', '兴　县', '山西省,吕梁市,兴　县', '141100', '340');
INSERT INTO `sk_areas` VALUES ('141124', '临　县', '山西省,吕梁市,临　县', '141100', '341');
INSERT INTO `sk_areas` VALUES ('141125', '柳林县', '山西省,吕梁市,柳林县', '141100', '342');
INSERT INTO `sk_areas` VALUES ('141126', '石楼县', '山西省,吕梁市,石楼县', '141100', '343');
INSERT INTO `sk_areas` VALUES ('141127', '岚　县', '山西省,吕梁市,岚　县', '141100', '344');
INSERT INTO `sk_areas` VALUES ('141128', '方山县', '山西省,吕梁市,方山县', '141100', '345');
INSERT INTO `sk_areas` VALUES ('141129', '中阳县', '山西省,吕梁市,中阳县', '141100', '346');
INSERT INTO `sk_areas` VALUES ('141130', '交口县', '山西省,吕梁市,交口县', '141100', '347');
INSERT INTO `sk_areas` VALUES ('141181', '孝义市', '山西省,吕梁市,孝义市', '141100', '348');
INSERT INTO `sk_areas` VALUES ('141182', '汾阳市', '山西省,吕梁市,汾阳市', '141100', '349');
INSERT INTO `sk_areas` VALUES ('150101', '市辖区', '内蒙古自治区,呼和浩特市,市辖区', '150100', '350');
INSERT INTO `sk_areas` VALUES ('150102', '新城区', '内蒙古自治区,呼和浩特市,新城区', '150100', '351');
INSERT INTO `sk_areas` VALUES ('150103', '回民区', '内蒙古自治区,呼和浩特市,回民区', '150100', '352');
INSERT INTO `sk_areas` VALUES ('150104', '玉泉区', '内蒙古自治区,呼和浩特市,玉泉区', '150100', '353');
INSERT INTO `sk_areas` VALUES ('150105', '赛罕区', '内蒙古自治区,呼和浩特市,赛罕区', '150100', '354');
INSERT INTO `sk_areas` VALUES ('150121', '土默特左旗', '内蒙古自治区,呼和浩特市,土默特左旗', '150100', '355');
INSERT INTO `sk_areas` VALUES ('150122', '托克托县', '内蒙古自治区,呼和浩特市,托克托县', '150100', '356');
INSERT INTO `sk_areas` VALUES ('150123', '和林格尔县', '内蒙古自治区,呼和浩特市,和林格尔县', '150100', '357');
INSERT INTO `sk_areas` VALUES ('150124', '清水河县', '内蒙古自治区,呼和浩特市,清水河县', '150100', '358');
INSERT INTO `sk_areas` VALUES ('150125', '武川县', '内蒙古自治区,呼和浩特市,武川县', '150100', '359');
INSERT INTO `sk_areas` VALUES ('150201', '市辖区', '内蒙古自治区,包头市,市辖区', '150200', '360');
INSERT INTO `sk_areas` VALUES ('150202', '东河区', '内蒙古自治区,包头市,东河区', '150200', '361');
INSERT INTO `sk_areas` VALUES ('150203', '昆都仑区', '内蒙古自治区,包头市,昆都仑区', '150200', '362');
INSERT INTO `sk_areas` VALUES ('150204', '青山区', '内蒙古自治区,包头市,青山区', '150200', '363');
INSERT INTO `sk_areas` VALUES ('150205', '石拐区', '内蒙古自治区,包头市,石拐区', '150200', '364');
INSERT INTO `sk_areas` VALUES ('150206', '白云矿区', '内蒙古自治区,包头市,白云矿区', '150200', '365');
INSERT INTO `sk_areas` VALUES ('150207', '九原区', '内蒙古自治区,包头市,九原区', '150200', '366');
INSERT INTO `sk_areas` VALUES ('150221', '土默特右旗', '内蒙古自治区,包头市,土默特右旗', '150200', '367');
INSERT INTO `sk_areas` VALUES ('150222', '固阳县', '内蒙古自治区,包头市,固阳县', '150200', '368');
INSERT INTO `sk_areas` VALUES ('150223', '达尔罕茂明安联合旗', '内蒙古自治区,包头市,达尔罕茂明安联合旗', '150200', '369');
INSERT INTO `sk_areas` VALUES ('150301', '市辖区', '内蒙古自治区,乌海市,市辖区', '150300', '370');
INSERT INTO `sk_areas` VALUES ('150302', '海勃湾区', '内蒙古自治区,乌海市,海勃湾区', '150300', '371');
INSERT INTO `sk_areas` VALUES ('150303', '海南区', '内蒙古自治区,乌海市,海南区', '150300', '372');
INSERT INTO `sk_areas` VALUES ('150304', '乌达区', '内蒙古自治区,乌海市,乌达区', '150300', '373');
INSERT INTO `sk_areas` VALUES ('150401', '市辖区', '内蒙古自治区,赤峰市,市辖区', '150400', '374');
INSERT INTO `sk_areas` VALUES ('150402', '红山区', '内蒙古自治区,赤峰市,红山区', '150400', '375');
INSERT INTO `sk_areas` VALUES ('150403', '元宝山区', '内蒙古自治区,赤峰市,元宝山区', '150400', '376');
INSERT INTO `sk_areas` VALUES ('150404', '松山区', '内蒙古自治区,赤峰市,松山区', '150400', '377');
INSERT INTO `sk_areas` VALUES ('150421', '阿鲁科尔沁旗', '内蒙古自治区,赤峰市,阿鲁科尔沁旗', '150400', '378');
INSERT INTO `sk_areas` VALUES ('150422', '巴林左旗', '内蒙古自治区,赤峰市,巴林左旗', '150400', '379');
INSERT INTO `sk_areas` VALUES ('150423', '巴林右旗', '内蒙古自治区,赤峰市,巴林右旗', '150400', '380');
INSERT INTO `sk_areas` VALUES ('150424', '林西县', '内蒙古自治区,赤峰市,林西县', '150400', '381');
INSERT INTO `sk_areas` VALUES ('150425', '克什克腾旗', '内蒙古自治区,赤峰市,克什克腾旗', '150400', '382');
INSERT INTO `sk_areas` VALUES ('150426', '翁牛特旗', '内蒙古自治区,赤峰市,翁牛特旗', '150400', '383');
INSERT INTO `sk_areas` VALUES ('150428', '喀喇沁旗', '内蒙古自治区,赤峰市,喀喇沁旗', '150400', '384');
INSERT INTO `sk_areas` VALUES ('150429', '宁城县', '内蒙古自治区,赤峰市,宁城县', '150400', '385');
INSERT INTO `sk_areas` VALUES ('150430', '敖汉旗', '内蒙古自治区,赤峰市,敖汉旗', '150400', '386');
INSERT INTO `sk_areas` VALUES ('150501', '市辖区', '内蒙古自治区,通辽市,市辖区', '150500', '387');
INSERT INTO `sk_areas` VALUES ('150502', '科尔沁区', '内蒙古自治区,通辽市,科尔沁区', '150500', '388');
INSERT INTO `sk_areas` VALUES ('150521', '科尔沁左翼中旗', '内蒙古自治区,通辽市,科尔沁左翼中旗', '150500', '389');
INSERT INTO `sk_areas` VALUES ('150522', '科尔沁左翼后旗', '内蒙古自治区,通辽市,科尔沁左翼后旗', '150500', '390');
INSERT INTO `sk_areas` VALUES ('150523', '开鲁县', '内蒙古自治区,通辽市,开鲁县', '150500', '391');
INSERT INTO `sk_areas` VALUES ('150524', '库伦旗', '内蒙古自治区,通辽市,库伦旗', '150500', '392');
INSERT INTO `sk_areas` VALUES ('150525', '奈曼旗', '内蒙古自治区,通辽市,奈曼旗', '150500', '393');
INSERT INTO `sk_areas` VALUES ('150526', '扎鲁特旗', '内蒙古自治区,通辽市,扎鲁特旗', '150500', '394');
INSERT INTO `sk_areas` VALUES ('150581', '霍林郭勒市', '内蒙古自治区,通辽市,霍林郭勒市', '150500', '395');
INSERT INTO `sk_areas` VALUES ('150602', '东胜区', '内蒙古自治区,鄂尔多斯市,东胜区', '150600', '396');
INSERT INTO `sk_areas` VALUES ('150621', '达拉特旗', '内蒙古自治区,鄂尔多斯市,达拉特旗', '150600', '397');
INSERT INTO `sk_areas` VALUES ('150622', '准格尔旗', '内蒙古自治区,鄂尔多斯市,准格尔旗', '150600', '398');
INSERT INTO `sk_areas` VALUES ('150623', '鄂托克前旗', '内蒙古自治区,鄂尔多斯市,鄂托克前旗', '150600', '399');
INSERT INTO `sk_areas` VALUES ('150624', '鄂托克旗', '内蒙古自治区,鄂尔多斯市,鄂托克旗', '150600', '400');
INSERT INTO `sk_areas` VALUES ('150625', '杭锦旗', '内蒙古自治区,鄂尔多斯市,杭锦旗', '150600', '401');
INSERT INTO `sk_areas` VALUES ('150626', '乌审旗', '内蒙古自治区,鄂尔多斯市,乌审旗', '150600', '402');
INSERT INTO `sk_areas` VALUES ('150627', '伊金霍洛旗', '内蒙古自治区,鄂尔多斯市,伊金霍洛旗', '150600', '403');
INSERT INTO `sk_areas` VALUES ('150701', '市辖区', '内蒙古自治区,呼伦贝尔市,市辖区', '150700', '404');
INSERT INTO `sk_areas` VALUES ('150702', '海拉尔区', '内蒙古自治区,呼伦贝尔市,海拉尔区', '150700', '405');
INSERT INTO `sk_areas` VALUES ('150721', '阿荣旗', '内蒙古自治区,呼伦贝尔市,阿荣旗', '150700', '406');
INSERT INTO `sk_areas` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '内蒙古自治区,呼伦贝尔市,莫力达瓦达斡尔族自治旗', '150700', '407');
INSERT INTO `sk_areas` VALUES ('150723', '鄂伦春自治旗', '内蒙古自治区,呼伦贝尔市,鄂伦春自治旗', '150700', '408');
INSERT INTO `sk_areas` VALUES ('150724', '鄂温克族自治旗', '内蒙古自治区,呼伦贝尔市,鄂温克族自治旗', '150700', '409');
INSERT INTO `sk_areas` VALUES ('150725', '陈巴尔虎旗', '内蒙古自治区,呼伦贝尔市,陈巴尔虎旗', '150700', '410');
INSERT INTO `sk_areas` VALUES ('150726', '新巴尔虎左旗', '内蒙古自治区,呼伦贝尔市,新巴尔虎左旗', '150700', '411');
INSERT INTO `sk_areas` VALUES ('150727', '新巴尔虎右旗', '内蒙古自治区,呼伦贝尔市,新巴尔虎右旗', '150700', '412');
INSERT INTO `sk_areas` VALUES ('150781', '满洲里市', '内蒙古自治区,呼伦贝尔市,满洲里市', '150700', '413');
INSERT INTO `sk_areas` VALUES ('150782', '牙克石市', '内蒙古自治区,呼伦贝尔市,牙克石市', '150700', '414');
INSERT INTO `sk_areas` VALUES ('150783', '扎兰屯市', '内蒙古自治区,呼伦贝尔市,扎兰屯市', '150700', '415');
INSERT INTO `sk_areas` VALUES ('150784', '额尔古纳市', '内蒙古自治区,呼伦贝尔市,额尔古纳市', '150700', '416');
INSERT INTO `sk_areas` VALUES ('150785', '根河市', '内蒙古自治区,呼伦贝尔市,根河市', '150700', '417');
INSERT INTO `sk_areas` VALUES ('150801', '市辖区', '内蒙古自治区,巴彦淖尔市,市辖区', '150800', '418');
INSERT INTO `sk_areas` VALUES ('150802', '临河区', '内蒙古自治区,巴彦淖尔市,临河区', '150800', '419');
INSERT INTO `sk_areas` VALUES ('150821', '五原县', '内蒙古自治区,巴彦淖尔市,五原县', '150800', '420');
INSERT INTO `sk_areas` VALUES ('150822', '磴口县', '内蒙古自治区,巴彦淖尔市,磴口县', '150800', '421');
INSERT INTO `sk_areas` VALUES ('150823', '乌拉特前旗', '内蒙古自治区,巴彦淖尔市,乌拉特前旗', '150800', '422');
INSERT INTO `sk_areas` VALUES ('150824', '乌拉特中旗', '内蒙古自治区,巴彦淖尔市,乌拉特中旗', '150800', '423');
INSERT INTO `sk_areas` VALUES ('150825', '乌拉特后旗', '内蒙古自治区,巴彦淖尔市,乌拉特后旗', '150800', '424');
INSERT INTO `sk_areas` VALUES ('150826', '杭锦后旗', '内蒙古自治区,巴彦淖尔市,杭锦后旗', '150800', '425');
INSERT INTO `sk_areas` VALUES ('150901', '市辖区', '内蒙古自治区,乌兰察布市,市辖区', '150900', '426');
INSERT INTO `sk_areas` VALUES ('150902', '集宁区', '内蒙古自治区,乌兰察布市,集宁区', '150900', '427');
INSERT INTO `sk_areas` VALUES ('150921', '卓资县', '内蒙古自治区,乌兰察布市,卓资县', '150900', '428');
INSERT INTO `sk_areas` VALUES ('150922', '化德县', '内蒙古自治区,乌兰察布市,化德县', '150900', '429');
INSERT INTO `sk_areas` VALUES ('150923', '商都县', '内蒙古自治区,乌兰察布市,商都县', '150900', '430');
INSERT INTO `sk_areas` VALUES ('150924', '兴和县', '内蒙古自治区,乌兰察布市,兴和县', '150900', '431');
INSERT INTO `sk_areas` VALUES ('150925', '凉城县', '内蒙古自治区,乌兰察布市,凉城县', '150900', '432');
INSERT INTO `sk_areas` VALUES ('150926', '察哈尔右翼前旗', '内蒙古自治区,乌兰察布市,察哈尔右翼前旗', '150900', '433');
INSERT INTO `sk_areas` VALUES ('150927', '察哈尔右翼中旗', '内蒙古自治区,乌兰察布市,察哈尔右翼中旗', '150900', '434');
INSERT INTO `sk_areas` VALUES ('150928', '察哈尔右翼后旗', '内蒙古自治区,乌兰察布市,察哈尔右翼后旗', '150900', '435');
INSERT INTO `sk_areas` VALUES ('150929', '四子王旗', '内蒙古自治区,乌兰察布市,四子王旗', '150900', '436');
INSERT INTO `sk_areas` VALUES ('150981', '丰镇市', '内蒙古自治区,乌兰察布市,丰镇市', '150900', '437');
INSERT INTO `sk_areas` VALUES ('152201', '乌兰浩特市', '内蒙古自治区,兴安盟,乌兰浩特市', '152200', '438');
INSERT INTO `sk_areas` VALUES ('152202', '阿尔山市', '内蒙古自治区,兴安盟,阿尔山市', '152200', '439');
INSERT INTO `sk_areas` VALUES ('152221', '科尔沁右翼前旗', '内蒙古自治区,兴安盟,科尔沁右翼前旗', '152200', '440');
INSERT INTO `sk_areas` VALUES ('152222', '科尔沁右翼中旗', '内蒙古自治区,兴安盟,科尔沁右翼中旗', '152200', '441');
INSERT INTO `sk_areas` VALUES ('152223', '扎赉特旗', '内蒙古自治区,兴安盟,扎赉特旗', '152200', '442');
INSERT INTO `sk_areas` VALUES ('152224', '突泉县', '内蒙古自治区,兴安盟,突泉县', '152200', '443');
INSERT INTO `sk_areas` VALUES ('152501', '二连浩特市', '内蒙古自治区,锡林郭勒盟,二连浩特市', '152500', '444');
INSERT INTO `sk_areas` VALUES ('152502', '锡林浩特市', '内蒙古自治区,锡林郭勒盟,锡林浩特市', '152500', '445');
INSERT INTO `sk_areas` VALUES ('152522', '阿巴嘎旗', '内蒙古自治区,锡林郭勒盟,阿巴嘎旗', '152500', '446');
INSERT INTO `sk_areas` VALUES ('152523', '苏尼特左旗', '内蒙古自治区,锡林郭勒盟,苏尼特左旗', '152500', '447');
INSERT INTO `sk_areas` VALUES ('152524', '苏尼特右旗', '内蒙古自治区,锡林郭勒盟,苏尼特右旗', '152500', '448');
INSERT INTO `sk_areas` VALUES ('152525', '东乌珠穆沁旗', '内蒙古自治区,锡林郭勒盟,东乌珠穆沁旗', '152500', '449');
INSERT INTO `sk_areas` VALUES ('152526', '西乌珠穆沁旗', '内蒙古自治区,锡林郭勒盟,西乌珠穆沁旗', '152500', '450');
INSERT INTO `sk_areas` VALUES ('152527', '太仆寺旗', '内蒙古自治区,锡林郭勒盟,太仆寺旗', '152500', '451');
INSERT INTO `sk_areas` VALUES ('152528', '镶黄旗', '内蒙古自治区,锡林郭勒盟,镶黄旗', '152500', '452');
INSERT INTO `sk_areas` VALUES ('152529', '正镶白旗', '内蒙古自治区,锡林郭勒盟,正镶白旗', '152500', '453');
INSERT INTO `sk_areas` VALUES ('152530', '正蓝旗', '内蒙古自治区,锡林郭勒盟,正蓝旗', '152500', '454');
INSERT INTO `sk_areas` VALUES ('152531', '多伦县', '内蒙古自治区,锡林郭勒盟,多伦县', '152500', '455');
INSERT INTO `sk_areas` VALUES ('152921', '阿拉善左旗', '内蒙古自治区,阿拉善盟,阿拉善左旗', '152900', '456');
INSERT INTO `sk_areas` VALUES ('152922', '阿拉善右旗', '内蒙古自治区,阿拉善盟,阿拉善右旗', '152900', '457');
INSERT INTO `sk_areas` VALUES ('152923', '额济纳旗', '内蒙古自治区,阿拉善盟,额济纳旗', '152900', '458');
INSERT INTO `sk_areas` VALUES ('210101', '市辖区', '辽宁省,沈阳市,市辖区', '210100', '459');
INSERT INTO `sk_areas` VALUES ('210102', '和平区', '辽宁省,沈阳市,和平区', '210100', '460');
INSERT INTO `sk_areas` VALUES ('210103', '沈河区', '辽宁省,沈阳市,沈河区', '210100', '461');
INSERT INTO `sk_areas` VALUES ('210104', '大东区', '辽宁省,沈阳市,大东区', '210100', '462');
INSERT INTO `sk_areas` VALUES ('210105', '皇姑区', '辽宁省,沈阳市,皇姑区', '210100', '463');
INSERT INTO `sk_areas` VALUES ('210106', '铁西区', '辽宁省,沈阳市,铁西区', '210100', '464');
INSERT INTO `sk_areas` VALUES ('210111', '苏家屯区', '辽宁省,沈阳市,苏家屯区', '210100', '465');
INSERT INTO `sk_areas` VALUES ('210112', '东陵区', '辽宁省,沈阳市,东陵区', '210100', '466');
INSERT INTO `sk_areas` VALUES ('210113', '新城子区', '辽宁省,沈阳市,新城子区', '210100', '467');
INSERT INTO `sk_areas` VALUES ('210114', '于洪区', '辽宁省,沈阳市,于洪区', '210100', '468');
INSERT INTO `sk_areas` VALUES ('210122', '辽中县', '辽宁省,沈阳市,辽中县', '210100', '469');
INSERT INTO `sk_areas` VALUES ('210123', '康平县', '辽宁省,沈阳市,康平县', '210100', '470');
INSERT INTO `sk_areas` VALUES ('210124', '法库县', '辽宁省,沈阳市,法库县', '210100', '471');
INSERT INTO `sk_areas` VALUES ('210181', '新民市', '辽宁省,沈阳市,新民市', '210100', '472');
INSERT INTO `sk_areas` VALUES ('210201', '市辖区', '辽宁省,大连市,市辖区', '210200', '473');
INSERT INTO `sk_areas` VALUES ('210202', '中山区', '辽宁省,大连市,中山区', '210200', '474');
INSERT INTO `sk_areas` VALUES ('210203', '西岗区', '辽宁省,大连市,西岗区', '210200', '475');
INSERT INTO `sk_areas` VALUES ('210204', '沙河口区', '辽宁省,大连市,沙河口区', '210200', '476');
INSERT INTO `sk_areas` VALUES ('210211', '甘井子区', '辽宁省,大连市,甘井子区', '210200', '477');
INSERT INTO `sk_areas` VALUES ('210212', '旅顺口区', '辽宁省,大连市,旅顺口区', '210200', '478');
INSERT INTO `sk_areas` VALUES ('210213', '金州区', '辽宁省,大连市,金州区', '210200', '479');
INSERT INTO `sk_areas` VALUES ('210224', '长海县', '辽宁省,大连市,长海县', '210200', '480');
INSERT INTO `sk_areas` VALUES ('210281', '瓦房店市', '辽宁省,大连市,瓦房店市', '210200', '481');
INSERT INTO `sk_areas` VALUES ('210282', '普兰店市', '辽宁省,大连市,普兰店市', '210200', '482');
INSERT INTO `sk_areas` VALUES ('210283', '庄河市', '辽宁省,大连市,庄河市', '210200', '483');
INSERT INTO `sk_areas` VALUES ('210301', '市辖区', '辽宁省,鞍山市,市辖区', '210300', '484');
INSERT INTO `sk_areas` VALUES ('210302', '铁东区', '辽宁省,鞍山市,铁东区', '210300', '485');
INSERT INTO `sk_areas` VALUES ('210303', '铁西区', '辽宁省,鞍山市,铁西区', '210300', '486');
INSERT INTO `sk_areas` VALUES ('210304', '立山区', '辽宁省,鞍山市,立山区', '210300', '487');
INSERT INTO `sk_areas` VALUES ('210311', '千山区', '辽宁省,鞍山市,千山区', '210300', '488');
INSERT INTO `sk_areas` VALUES ('210321', '台安县', '辽宁省,鞍山市,台安县', '210300', '489');
INSERT INTO `sk_areas` VALUES ('210323', '岫岩满族自治县', '辽宁省,鞍山市,岫岩满族自治县', '210300', '490');
INSERT INTO `sk_areas` VALUES ('210381', '海城市', '辽宁省,鞍山市,海城市', '210300', '491');
INSERT INTO `sk_areas` VALUES ('210401', '市辖区', '辽宁省,抚顺市,市辖区', '210400', '492');
INSERT INTO `sk_areas` VALUES ('210402', '新抚区', '辽宁省,抚顺市,新抚区', '210400', '493');
INSERT INTO `sk_areas` VALUES ('210403', '东洲区', '辽宁省,抚顺市,东洲区', '210400', '494');
INSERT INTO `sk_areas` VALUES ('210404', '望花区', '辽宁省,抚顺市,望花区', '210400', '495');
INSERT INTO `sk_areas` VALUES ('210411', '顺城区', '辽宁省,抚顺市,顺城区', '210400', '496');
INSERT INTO `sk_areas` VALUES ('210421', '抚顺县', '辽宁省,抚顺市,抚顺县', '210400', '497');
INSERT INTO `sk_areas` VALUES ('210422', '新宾满族自治县', '辽宁省,抚顺市,新宾满族自治县', '210400', '498');
INSERT INTO `sk_areas` VALUES ('210423', '清原满族自治县', '辽宁省,抚顺市,清原满族自治县', '210400', '499');
INSERT INTO `sk_areas` VALUES ('210501', '市辖区', '辽宁省,本溪市,市辖区', '210500', '500');
INSERT INTO `sk_areas` VALUES ('210502', '平山区', '辽宁省,本溪市,平山区', '210500', '501');
INSERT INTO `sk_areas` VALUES ('210503', '溪湖区', '辽宁省,本溪市,溪湖区', '210500', '502');
INSERT INTO `sk_areas` VALUES ('210504', '明山区', '辽宁省,本溪市,明山区', '210500', '503');
INSERT INTO `sk_areas` VALUES ('210505', '南芬区', '辽宁省,本溪市,南芬区', '210500', '504');
INSERT INTO `sk_areas` VALUES ('210521', '本溪满族自治县', '辽宁省,本溪市,本溪满族自治县', '210500', '505');
INSERT INTO `sk_areas` VALUES ('210522', '桓仁满族自治县', '辽宁省,本溪市,桓仁满族自治县', '210500', '506');
INSERT INTO `sk_areas` VALUES ('210601', '市辖区', '辽宁省,丹东市,市辖区', '210600', '507');
INSERT INTO `sk_areas` VALUES ('210602', '元宝区', '辽宁省,丹东市,元宝区', '210600', '508');
INSERT INTO `sk_areas` VALUES ('210603', '振兴区', '辽宁省,丹东市,振兴区', '210600', '509');
INSERT INTO `sk_areas` VALUES ('210604', '振安区', '辽宁省,丹东市,振安区', '210600', '510');
INSERT INTO `sk_areas` VALUES ('210624', '宽甸满族自治县', '辽宁省,丹东市,宽甸满族自治县', '210600', '511');
INSERT INTO `sk_areas` VALUES ('210681', '东港市', '辽宁省,丹东市,东港市', '210600', '512');
INSERT INTO `sk_areas` VALUES ('210682', '凤城市', '辽宁省,丹东市,凤城市', '210600', '513');
INSERT INTO `sk_areas` VALUES ('210701', '市辖区', '辽宁省,锦州市,市辖区', '210700', '514');
INSERT INTO `sk_areas` VALUES ('210702', '古塔区', '辽宁省,锦州市,古塔区', '210700', '515');
INSERT INTO `sk_areas` VALUES ('210703', '凌河区', '辽宁省,锦州市,凌河区', '210700', '516');
INSERT INTO `sk_areas` VALUES ('210711', '太和区', '辽宁省,锦州市,太和区', '210700', '517');
INSERT INTO `sk_areas` VALUES ('210726', '黑山县', '辽宁省,锦州市,黑山县', '210700', '518');
INSERT INTO `sk_areas` VALUES ('210727', '义　县', '辽宁省,锦州市,义　县', '210700', '519');
INSERT INTO `sk_areas` VALUES ('210781', '凌海市', '辽宁省,锦州市,凌海市', '210700', '520');
INSERT INTO `sk_areas` VALUES ('210782', '北宁市', '辽宁省,锦州市,北宁市', '210700', '521');
INSERT INTO `sk_areas` VALUES ('210801', '市辖区', '辽宁省,营口市,市辖区', '210800', '522');
INSERT INTO `sk_areas` VALUES ('210802', '站前区', '辽宁省,营口市,站前区', '210800', '523');
INSERT INTO `sk_areas` VALUES ('210803', '西市区', '辽宁省,营口市,西市区', '210800', '524');
INSERT INTO `sk_areas` VALUES ('210804', '鲅鱼圈区', '辽宁省,营口市,鲅鱼圈区', '210800', '525');
INSERT INTO `sk_areas` VALUES ('210811', '老边区', '辽宁省,营口市,老边区', '210800', '526');
INSERT INTO `sk_areas` VALUES ('210881', '盖州市', '辽宁省,营口市,盖州市', '210800', '527');
INSERT INTO `sk_areas` VALUES ('210882', '大石桥市', '辽宁省,营口市,大石桥市', '210800', '528');
INSERT INTO `sk_areas` VALUES ('210901', '市辖区', '辽宁省,阜新市,市辖区', '210900', '529');
INSERT INTO `sk_areas` VALUES ('210902', '海州区', '辽宁省,阜新市,海州区', '210900', '530');
INSERT INTO `sk_areas` VALUES ('210903', '新邱区', '辽宁省,阜新市,新邱区', '210900', '531');
INSERT INTO `sk_areas` VALUES ('210904', '太平区', '辽宁省,阜新市,太平区', '210900', '532');
INSERT INTO `sk_areas` VALUES ('210905', '清河门区', '辽宁省,阜新市,清河门区', '210900', '533');
INSERT INTO `sk_areas` VALUES ('210911', '细河区', '辽宁省,阜新市,细河区', '210900', '534');
INSERT INTO `sk_areas` VALUES ('210921', '阜新蒙古族自治县', '辽宁省,阜新市,阜新蒙古族自治县', '210900', '535');
INSERT INTO `sk_areas` VALUES ('210922', '彰武县', '辽宁省,阜新市,彰武县', '210900', '536');
INSERT INTO `sk_areas` VALUES ('211001', '市辖区', '辽宁省,辽阳市,市辖区', '211000', '537');
INSERT INTO `sk_areas` VALUES ('211002', '白塔区', '辽宁省,辽阳市,白塔区', '211000', '538');
INSERT INTO `sk_areas` VALUES ('211003', '文圣区', '辽宁省,辽阳市,文圣区', '211000', '539');
INSERT INTO `sk_areas` VALUES ('211004', '宏伟区', '辽宁省,辽阳市,宏伟区', '211000', '540');
INSERT INTO `sk_areas` VALUES ('211005', '弓长岭区', '辽宁省,辽阳市,弓长岭区', '211000', '541');
INSERT INTO `sk_areas` VALUES ('211011', '太子河区', '辽宁省,辽阳市,太子河区', '211000', '542');
INSERT INTO `sk_areas` VALUES ('211021', '辽阳县', '辽宁省,辽阳市,辽阳县', '211000', '543');
INSERT INTO `sk_areas` VALUES ('211081', '灯塔市', '辽宁省,辽阳市,灯塔市', '211000', '544');
INSERT INTO `sk_areas` VALUES ('211101', '市辖区', '辽宁省,盘锦市,市辖区', '211100', '545');
INSERT INTO `sk_areas` VALUES ('211102', '双台子区', '辽宁省,盘锦市,双台子区', '211100', '546');
INSERT INTO `sk_areas` VALUES ('211103', '兴隆台区', '辽宁省,盘锦市,兴隆台区', '211100', '547');
INSERT INTO `sk_areas` VALUES ('211121', '大洼县', '辽宁省,盘锦市,大洼县', '211100', '548');
INSERT INTO `sk_areas` VALUES ('211122', '盘山县', '辽宁省,盘锦市,盘山县', '211100', '549');
INSERT INTO `sk_areas` VALUES ('211201', '市辖区', '辽宁省,铁岭市,市辖区', '211200', '550');
INSERT INTO `sk_areas` VALUES ('211202', '银州区', '辽宁省,铁岭市,银州区', '211200', '551');
INSERT INTO `sk_areas` VALUES ('211204', '清河区', '辽宁省,铁岭市,清河区', '211200', '552');
INSERT INTO `sk_areas` VALUES ('211221', '铁岭县', '辽宁省,铁岭市,铁岭县', '211200', '553');
INSERT INTO `sk_areas` VALUES ('211223', '西丰县', '辽宁省,铁岭市,西丰县', '211200', '554');
INSERT INTO `sk_areas` VALUES ('211224', '昌图县', '辽宁省,铁岭市,昌图县', '211200', '555');
INSERT INTO `sk_areas` VALUES ('211281', '调兵山市', '辽宁省,铁岭市,调兵山市', '211200', '556');
INSERT INTO `sk_areas` VALUES ('211282', '开原市', '辽宁省,铁岭市,开原市', '211200', '557');
INSERT INTO `sk_areas` VALUES ('211301', '市辖区', '辽宁省,朝阳市,市辖区', '211300', '558');
INSERT INTO `sk_areas` VALUES ('211302', '双塔区', '辽宁省,朝阳市,双塔区', '211300', '559');
INSERT INTO `sk_areas` VALUES ('211303', '龙城区', '辽宁省,朝阳市,龙城区', '211300', '560');
INSERT INTO `sk_areas` VALUES ('211321', '朝阳县', '辽宁省,朝阳市,朝阳县', '211300', '561');
INSERT INTO `sk_areas` VALUES ('211322', '建平县', '辽宁省,朝阳市,建平县', '211300', '562');
INSERT INTO `sk_areas` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '辽宁省,朝阳市,喀喇沁左翼蒙古族自治县', '211300', '563');
INSERT INTO `sk_areas` VALUES ('211381', '北票市', '辽宁省,朝阳市,北票市', '211300', '564');
INSERT INTO `sk_areas` VALUES ('211382', '凌源市', '辽宁省,朝阳市,凌源市', '211300', '565');
INSERT INTO `sk_areas` VALUES ('211401', '市辖区', '市辖区', '211400', '566');
INSERT INTO `sk_areas` VALUES ('211402', '连山区', '连山区', '211400', '567');
INSERT INTO `sk_areas` VALUES ('211403', '龙港区', '龙港区', '211400', '568');
INSERT INTO `sk_areas` VALUES ('211404', '南票区', '南票区', '211400', '569');
INSERT INTO `sk_areas` VALUES ('211421', '绥中县', '绥中县', '211400', '570');
INSERT INTO `sk_areas` VALUES ('211422', '建昌县', '建昌县', '211400', '571');
INSERT INTO `sk_areas` VALUES ('211481', '兴城市', '兴城市', '211400', '572');
INSERT INTO `sk_areas` VALUES ('220101', '市辖区', '吉林省,长春市,市辖区', '220100', '573');
INSERT INTO `sk_areas` VALUES ('220102', '南关区', '吉林省,长春市,南关区', '220100', '574');
INSERT INTO `sk_areas` VALUES ('220103', '宽城区', '吉林省,长春市,宽城区', '220100', '575');
INSERT INTO `sk_areas` VALUES ('220104', '朝阳区', '吉林省,长春市,朝阳区', '220100', '576');
INSERT INTO `sk_areas` VALUES ('220105', '二道区', '吉林省,长春市,二道区', '220100', '577');
INSERT INTO `sk_areas` VALUES ('220106', '绿园区', '吉林省,长春市,绿园区', '220100', '578');
INSERT INTO `sk_areas` VALUES ('220112', '双阳区', '吉林省,长春市,双阳区', '220100', '579');
INSERT INTO `sk_areas` VALUES ('220122', '农安县', '吉林省,长春市,农安县', '220100', '580');
INSERT INTO `sk_areas` VALUES ('220181', '九台市', '吉林省,长春市,九台市', '220100', '581');
INSERT INTO `sk_areas` VALUES ('220182', '榆树市', '吉林省,长春市,榆树市', '220100', '582');
INSERT INTO `sk_areas` VALUES ('220183', '德惠市', '吉林省,长春市,德惠市', '220100', '583');
INSERT INTO `sk_areas` VALUES ('220201', '市辖区', '吉林省,吉林市,市辖区', '220200', '584');
INSERT INTO `sk_areas` VALUES ('220202', '昌邑区', '吉林省,吉林市,昌邑区', '220200', '585');
INSERT INTO `sk_areas` VALUES ('220203', '龙潭区', '吉林省,吉林市,龙潭区', '220200', '586');
INSERT INTO `sk_areas` VALUES ('220204', '船营区', '吉林省,吉林市,船营区', '220200', '587');
INSERT INTO `sk_areas` VALUES ('220211', '丰满区', '吉林省,吉林市,丰满区', '220200', '588');
INSERT INTO `sk_areas` VALUES ('220221', '永吉县', '吉林省,吉林市,永吉县', '220200', '589');
INSERT INTO `sk_areas` VALUES ('220281', '蛟河市', '吉林省,吉林市,蛟河市', '220200', '590');
INSERT INTO `sk_areas` VALUES ('220282', '桦甸市', '吉林省,吉林市,桦甸市', '220200', '591');
INSERT INTO `sk_areas` VALUES ('220283', '舒兰市', '吉林省,吉林市,舒兰市', '220200', '592');
INSERT INTO `sk_areas` VALUES ('220284', '磐石市', '吉林省,吉林市,磐石市', '220200', '593');
INSERT INTO `sk_areas` VALUES ('220301', '市辖区', '吉林省,四平市,市辖区', '220300', '594');
INSERT INTO `sk_areas` VALUES ('220302', '铁西区', '吉林省,四平市,铁西区', '220300', '595');
INSERT INTO `sk_areas` VALUES ('220303', '铁东区', '吉林省,四平市,铁东区', '220300', '596');
INSERT INTO `sk_areas` VALUES ('220322', '梨树县', '吉林省,四平市,梨树县', '220300', '597');
INSERT INTO `sk_areas` VALUES ('220323', '伊通满族自治县', '吉林省,四平市,伊通满族自治县', '220300', '598');
INSERT INTO `sk_areas` VALUES ('220381', '公主岭市', '吉林省,四平市,公主岭市', '220300', '599');
INSERT INTO `sk_areas` VALUES ('220382', '双辽市', '吉林省,四平市,双辽市', '220300', '600');
INSERT INTO `sk_areas` VALUES ('220401', '市辖区', '吉林省,辽源市,市辖区', '220400', '601');
INSERT INTO `sk_areas` VALUES ('220402', '龙山区', '吉林省,辽源市,龙山区', '220400', '602');
INSERT INTO `sk_areas` VALUES ('220403', '西安区', '吉林省,辽源市,西安区', '220400', '603');
INSERT INTO `sk_areas` VALUES ('220421', '东丰县', '吉林省,辽源市,东丰县', '220400', '604');
INSERT INTO `sk_areas` VALUES ('220422', '东辽县', '吉林省,辽源市,东辽县', '220400', '605');
INSERT INTO `sk_areas` VALUES ('220501', '市辖区', '吉林省,通化市,市辖区', '220500', '606');
INSERT INTO `sk_areas` VALUES ('220502', '东昌区', '吉林省,通化市,东昌区', '220500', '607');
INSERT INTO `sk_areas` VALUES ('220503', '二道江区', '吉林省,通化市,二道江区', '220500', '608');
INSERT INTO `sk_areas` VALUES ('220521', '通化县', '吉林省,通化市,通化县', '220500', '609');
INSERT INTO `sk_areas` VALUES ('220523', '辉南县', '吉林省,通化市,辉南县', '220500', '610');
INSERT INTO `sk_areas` VALUES ('220524', '柳河县', '吉林省,通化市,柳河县', '220500', '611');
INSERT INTO `sk_areas` VALUES ('220581', '梅河口市', '吉林省,通化市,梅河口市', '220500', '612');
INSERT INTO `sk_areas` VALUES ('220582', '集安市', '吉林省,通化市,集安市', '220500', '613');
INSERT INTO `sk_areas` VALUES ('220601', '市辖区', '吉林省,白山市,市辖区', '220600', '614');
INSERT INTO `sk_areas` VALUES ('220602', '八道江区', '吉林省,白山市,八道江区', '220600', '615');
INSERT INTO `sk_areas` VALUES ('220621', '抚松县', '吉林省,白山市,抚松县', '220600', '616');
INSERT INTO `sk_areas` VALUES ('220622', '靖宇县', '吉林省,白山市,靖宇县', '220600', '617');
INSERT INTO `sk_areas` VALUES ('220623', '长白朝鲜族自治县', '吉林省,白山市,长白朝鲜族自治县', '220600', '618');
INSERT INTO `sk_areas` VALUES ('220625', '江源县', '吉林省,白山市,江源县', '220600', '619');
INSERT INTO `sk_areas` VALUES ('220681', '临江市', '吉林省,白山市,临江市', '220600', '620');
INSERT INTO `sk_areas` VALUES ('220701', '市辖区', '吉林省,松原市,市辖区', '220700', '621');
INSERT INTO `sk_areas` VALUES ('220702', '宁江区', '吉林省,松原市,宁江区', '220700', '622');
INSERT INTO `sk_areas` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '吉林省,松原市,前郭尔罗斯蒙古族自治县', '220700', '623');
INSERT INTO `sk_areas` VALUES ('220722', '长岭县', '吉林省,松原市,长岭县', '220700', '624');
INSERT INTO `sk_areas` VALUES ('220723', '乾安县', '吉林省,松原市,乾安县', '220700', '625');
INSERT INTO `sk_areas` VALUES ('220724', '扶余县', '吉林省,松原市,扶余县', '220700', '626');
INSERT INTO `sk_areas` VALUES ('220801', '市辖区', '吉林省,白城市,市辖区', '220800', '627');
INSERT INTO `sk_areas` VALUES ('220802', '洮北区', '吉林省,白城市,洮北区', '220800', '628');
INSERT INTO `sk_areas` VALUES ('220821', '镇赉县', '吉林省,白城市,镇赉县', '220800', '629');
INSERT INTO `sk_areas` VALUES ('220822', '通榆县', '吉林省,白城市,通榆县', '220800', '630');
INSERT INTO `sk_areas` VALUES ('220881', '洮南市', '吉林省,白城市,洮南市', '220800', '631');
INSERT INTO `sk_areas` VALUES ('220882', '大安市', '吉林省,白城市,大安市', '220800', '632');
INSERT INTO `sk_areas` VALUES ('222401', '延吉市', '吉林省,延边朝鲜族自治州,延吉市', '222400', '633');
INSERT INTO `sk_areas` VALUES ('222402', '图们市', '吉林省,延边朝鲜族自治州,图们市', '222400', '634');
INSERT INTO `sk_areas` VALUES ('222403', '敦化市', '吉林省,延边朝鲜族自治州,敦化市', '222400', '635');
INSERT INTO `sk_areas` VALUES ('222404', '珲春市', '吉林省,延边朝鲜族自治州,珲春市', '222400', '636');
INSERT INTO `sk_areas` VALUES ('222405', '龙井市', '吉林省,延边朝鲜族自治州,龙井市', '222400', '637');
INSERT INTO `sk_areas` VALUES ('222406', '和龙市', '吉林省,延边朝鲜族自治州,和龙市', '222400', '638');
INSERT INTO `sk_areas` VALUES ('222424', '汪清县', '吉林省,延边朝鲜族自治州,汪清县', '222400', '639');
INSERT INTO `sk_areas` VALUES ('222426', '安图县', '吉林省,延边朝鲜族自治州,安图县', '222400', '640');
INSERT INTO `sk_areas` VALUES ('230101', '市辖区', '黑龙江省,哈尔滨市,市辖区', '230100', '641');
INSERT INTO `sk_areas` VALUES ('230102', '道里区', '黑龙江省,哈尔滨市,道里区', '230100', '642');
INSERT INTO `sk_areas` VALUES ('230103', '南岗区', '黑龙江省,哈尔滨市,南岗区', '230100', '643');
INSERT INTO `sk_areas` VALUES ('230104', '道外区', '黑龙江省,哈尔滨市,道外区', '230100', '644');
INSERT INTO `sk_areas` VALUES ('230106', '香坊区', '黑龙江省,哈尔滨市,香坊区', '230100', '645');
INSERT INTO `sk_areas` VALUES ('230107', '动力区', '黑龙江省,哈尔滨市,动力区', '230100', '646');
INSERT INTO `sk_areas` VALUES ('230108', '平房区', '黑龙江省,哈尔滨市,平房区', '230100', '647');
INSERT INTO `sk_areas` VALUES ('230109', '松北区', '黑龙江省,哈尔滨市,松北区', '230100', '648');
INSERT INTO `sk_areas` VALUES ('230111', '呼兰区', '黑龙江省,哈尔滨市,呼兰区', '230100', '649');
INSERT INTO `sk_areas` VALUES ('230123', '依兰县', '黑龙江省,哈尔滨市,依兰县', '230100', '650');
INSERT INTO `sk_areas` VALUES ('230124', '方正县', '黑龙江省,哈尔滨市,方正县', '230100', '651');
INSERT INTO `sk_areas` VALUES ('230125', '宾　县', '黑龙江省,哈尔滨市,宾　县', '230100', '652');
INSERT INTO `sk_areas` VALUES ('230126', '巴彦县', '黑龙江省,哈尔滨市,巴彦县', '230100', '653');
INSERT INTO `sk_areas` VALUES ('230127', '木兰县', '黑龙江省,哈尔滨市,木兰县', '230100', '654');
INSERT INTO `sk_areas` VALUES ('230128', '通河县', '黑龙江省,哈尔滨市,通河县', '230100', '655');
INSERT INTO `sk_areas` VALUES ('230129', '延寿县', '黑龙江省,哈尔滨市,延寿县', '230100', '656');
INSERT INTO `sk_areas` VALUES ('230181', '阿城市', '黑龙江省,哈尔滨市,阿城市', '230100', '657');
INSERT INTO `sk_areas` VALUES ('230182', '双城市', '黑龙江省,哈尔滨市,双城市', '230100', '658');
INSERT INTO `sk_areas` VALUES ('230183', '尚志市', '黑龙江省,哈尔滨市,尚志市', '230100', '659');
INSERT INTO `sk_areas` VALUES ('230184', '五常市', '黑龙江省,哈尔滨市,五常市', '230100', '660');
INSERT INTO `sk_areas` VALUES ('230201', '市辖区', '黑龙江省,齐齐哈尔市,市辖区', '230200', '661');
INSERT INTO `sk_areas` VALUES ('230202', '龙沙区', '黑龙江省,齐齐哈尔市,龙沙区', '230200', '662');
INSERT INTO `sk_areas` VALUES ('230203', '建华区', '黑龙江省,齐齐哈尔市,建华区', '230200', '663');
INSERT INTO `sk_areas` VALUES ('230204', '铁锋区', '黑龙江省,齐齐哈尔市,铁锋区', '230200', '664');
INSERT INTO `sk_areas` VALUES ('230205', '昂昂溪区', '黑龙江省,齐齐哈尔市,昂昂溪区', '230200', '665');
INSERT INTO `sk_areas` VALUES ('230206', '富拉尔基区', '黑龙江省,齐齐哈尔市,富拉尔基区', '230200', '666');
INSERT INTO `sk_areas` VALUES ('230207', '碾子山区', '黑龙江省,齐齐哈尔市,碾子山区', '230200', '667');
INSERT INTO `sk_areas` VALUES ('230208', '梅里斯达斡尔族区', '黑龙江省,齐齐哈尔市,梅里斯达斡尔族区', '230200', '668');
INSERT INTO `sk_areas` VALUES ('230221', '龙江县', '黑龙江省,齐齐哈尔市,龙江县', '230200', '669');
INSERT INTO `sk_areas` VALUES ('230223', '依安县', '黑龙江省,齐齐哈尔市,依安县', '230200', '670');
INSERT INTO `sk_areas` VALUES ('230224', '泰来县', '黑龙江省,齐齐哈尔市,泰来县', '230200', '671');
INSERT INTO `sk_areas` VALUES ('230225', '甘南县', '黑龙江省,齐齐哈尔市,甘南县', '230200', '672');
INSERT INTO `sk_areas` VALUES ('230227', '富裕县', '黑龙江省,齐齐哈尔市,富裕县', '230200', '673');
INSERT INTO `sk_areas` VALUES ('230229', '克山县', '黑龙江省,齐齐哈尔市,克山县', '230200', '674');
INSERT INTO `sk_areas` VALUES ('230230', '克东县', '黑龙江省,齐齐哈尔市,克东县', '230200', '675');
INSERT INTO `sk_areas` VALUES ('230231', '拜泉县', '黑龙江省,齐齐哈尔市,拜泉县', '230200', '676');
INSERT INTO `sk_areas` VALUES ('230281', '讷河市', '黑龙江省,齐齐哈尔市,讷河市', '230200', '677');
INSERT INTO `sk_areas` VALUES ('230301', '市辖区', '黑龙江省,鸡西市,市辖区', '230300', '678');
INSERT INTO `sk_areas` VALUES ('230302', '鸡冠区', '黑龙江省,鸡西市,鸡冠区', '230300', '679');
INSERT INTO `sk_areas` VALUES ('230303', '恒山区', '黑龙江省,鸡西市,恒山区', '230300', '680');
INSERT INTO `sk_areas` VALUES ('230304', '滴道区', '黑龙江省,鸡西市,滴道区', '230300', '681');
INSERT INTO `sk_areas` VALUES ('230305', '梨树区', '黑龙江省,鸡西市,梨树区', '230300', '682');
INSERT INTO `sk_areas` VALUES ('230306', '城子河区', '黑龙江省,鸡西市,城子河区', '230300', '683');
INSERT INTO `sk_areas` VALUES ('230307', '麻山区', '黑龙江省,鸡西市,麻山区', '230300', '684');
INSERT INTO `sk_areas` VALUES ('230321', '鸡东县', '黑龙江省,鸡西市,鸡东县', '230300', '685');
INSERT INTO `sk_areas` VALUES ('230381', '虎林市', '黑龙江省,鸡西市,虎林市', '230300', '686');
INSERT INTO `sk_areas` VALUES ('230382', '密山市', '黑龙江省,鸡西市,密山市', '230300', '687');
INSERT INTO `sk_areas` VALUES ('230401', '市辖区', '黑龙江省,鹤岗市,市辖区', '230400', '688');
INSERT INTO `sk_areas` VALUES ('230402', '向阳区', '黑龙江省,鹤岗市,向阳区', '230400', '689');
INSERT INTO `sk_areas` VALUES ('230403', '工农区', '黑龙江省,鹤岗市,工农区', '230400', '690');
INSERT INTO `sk_areas` VALUES ('230404', '南山区', '黑龙江省,鹤岗市,南山区', '230400', '691');
INSERT INTO `sk_areas` VALUES ('230405', '兴安区', '黑龙江省,鹤岗市,兴安区', '230400', '692');
INSERT INTO `sk_areas` VALUES ('230406', '东山区', '黑龙江省,鹤岗市,东山区', '230400', '693');
INSERT INTO `sk_areas` VALUES ('230407', '兴山区', '黑龙江省,鹤岗市,兴山区', '230400', '694');
INSERT INTO `sk_areas` VALUES ('230421', '萝北县', '黑龙江省,鹤岗市,萝北县', '230400', '695');
INSERT INTO `sk_areas` VALUES ('230422', '绥滨县', '黑龙江省,鹤岗市,绥滨县', '230400', '696');
INSERT INTO `sk_areas` VALUES ('230501', '市辖区', '黑龙江省,双鸭山市,市辖区', '230500', '697');
INSERT INTO `sk_areas` VALUES ('230502', '尖山区', '黑龙江省,双鸭山市,尖山区', '230500', '698');
INSERT INTO `sk_areas` VALUES ('230503', '岭东区', '黑龙江省,双鸭山市,岭东区', '230500', '699');
INSERT INTO `sk_areas` VALUES ('230505', '四方台区', '黑龙江省,双鸭山市,四方台区', '230500', '700');
INSERT INTO `sk_areas` VALUES ('230506', '宝山区', '黑龙江省,双鸭山市,宝山区', '230500', '701');
INSERT INTO `sk_areas` VALUES ('230521', '集贤县', '黑龙江省,双鸭山市,集贤县', '230500', '702');
INSERT INTO `sk_areas` VALUES ('230522', '友谊县', '黑龙江省,双鸭山市,友谊县', '230500', '703');
INSERT INTO `sk_areas` VALUES ('230523', '宝清县', '黑龙江省,双鸭山市,宝清县', '230500', '704');
INSERT INTO `sk_areas` VALUES ('230524', '饶河县', '黑龙江省,双鸭山市,饶河县', '230500', '705');
INSERT INTO `sk_areas` VALUES ('230601', '市辖区', '黑龙江省,大庆市,市辖区', '230600', '706');
INSERT INTO `sk_areas` VALUES ('230602', '萨尔图区', '黑龙江省,大庆市,萨尔图区', '230600', '707');
INSERT INTO `sk_areas` VALUES ('230603', '龙凤区', '黑龙江省,大庆市,龙凤区', '230600', '708');
INSERT INTO `sk_areas` VALUES ('230604', '让胡路区', '黑龙江省,大庆市,让胡路区', '230600', '709');
INSERT INTO `sk_areas` VALUES ('230605', '红岗区', '黑龙江省,大庆市,红岗区', '230600', '710');
INSERT INTO `sk_areas` VALUES ('230606', '大同区', '黑龙江省,大庆市,大同区', '230600', '711');
INSERT INTO `sk_areas` VALUES ('230621', '肇州县', '黑龙江省,大庆市,肇州县', '230600', '712');
INSERT INTO `sk_areas` VALUES ('230622', '肇源县', '黑龙江省,大庆市,肇源县', '230600', '713');
INSERT INTO `sk_areas` VALUES ('230623', '林甸县', '黑龙江省,大庆市,林甸县', '230600', '714');
INSERT INTO `sk_areas` VALUES ('230624', '杜尔伯特蒙古族自治县', '黑龙江省,大庆市,杜尔伯特蒙古族自治县', '230600', '715');
INSERT INTO `sk_areas` VALUES ('230701', '市辖区', '黑龙江省,伊春市,市辖区', '230700', '716');
INSERT INTO `sk_areas` VALUES ('230702', '伊春区', '黑龙江省,伊春市,伊春区', '230700', '717');
INSERT INTO `sk_areas` VALUES ('230703', '南岔区', '黑龙江省,伊春市,南岔区', '230700', '718');
INSERT INTO `sk_areas` VALUES ('230704', '友好区', '黑龙江省,伊春市,友好区', '230700', '719');
INSERT INTO `sk_areas` VALUES ('230705', '西林区', '黑龙江省,伊春市,西林区', '230700', '720');
INSERT INTO `sk_areas` VALUES ('230706', '翠峦区', '黑龙江省,伊春市,翠峦区', '230700', '721');
INSERT INTO `sk_areas` VALUES ('230707', '新青区', '黑龙江省,伊春市,新青区', '230700', '722');
INSERT INTO `sk_areas` VALUES ('230708', '美溪区', '黑龙江省,伊春市,美溪区', '230700', '723');
INSERT INTO `sk_areas` VALUES ('230709', '金山屯区', '黑龙江省,伊春市,金山屯区', '230700', '724');
INSERT INTO `sk_areas` VALUES ('230710', '五营区', '黑龙江省,伊春市,五营区', '230700', '725');
INSERT INTO `sk_areas` VALUES ('230711', '乌马河区', '黑龙江省,伊春市,乌马河区', '230700', '726');
INSERT INTO `sk_areas` VALUES ('230712', '汤旺河区', '黑龙江省,伊春市,汤旺河区', '230700', '727');
INSERT INTO `sk_areas` VALUES ('230713', '带岭区', '黑龙江省,伊春市,带岭区', '230700', '728');
INSERT INTO `sk_areas` VALUES ('230714', '乌伊岭区', '黑龙江省,伊春市,乌伊岭区', '230700', '729');
INSERT INTO `sk_areas` VALUES ('230715', '红星区', '黑龙江省,伊春市,红星区', '230700', '730');
INSERT INTO `sk_areas` VALUES ('230716', '上甘岭区', '黑龙江省,伊春市,上甘岭区', '230700', '731');
INSERT INTO `sk_areas` VALUES ('230722', '嘉荫县', '黑龙江省,伊春市,嘉荫县', '230700', '732');
INSERT INTO `sk_areas` VALUES ('230781', '铁力市', '黑龙江省,伊春市,铁力市', '230700', '733');
INSERT INTO `sk_areas` VALUES ('230801', '市辖区', '黑龙江省,佳木斯市,市辖区', '230800', '734');
INSERT INTO `sk_areas` VALUES ('230802', '永红区', '黑龙江省,佳木斯市,永红区', '230800', '735');
INSERT INTO `sk_areas` VALUES ('230803', '向阳区', '黑龙江省,佳木斯市,向阳区', '230800', '736');
INSERT INTO `sk_areas` VALUES ('230804', '前进区', '黑龙江省,佳木斯市,前进区', '230800', '737');
INSERT INTO `sk_areas` VALUES ('230805', '东风区', '黑龙江省,佳木斯市,东风区', '230800', '738');
INSERT INTO `sk_areas` VALUES ('230811', '郊　区', '黑龙江省,佳木斯市,郊　区', '230800', '739');
INSERT INTO `sk_areas` VALUES ('230822', '桦南县', '黑龙江省,佳木斯市,桦南县', '230800', '740');
INSERT INTO `sk_areas` VALUES ('230826', '桦川县', '黑龙江省,佳木斯市,桦川县', '230800', '741');
INSERT INTO `sk_areas` VALUES ('230828', '汤原县', '黑龙江省,佳木斯市,汤原县', '230800', '742');
INSERT INTO `sk_areas` VALUES ('230833', '抚远县', '黑龙江省,佳木斯市,抚远县', '230800', '743');
INSERT INTO `sk_areas` VALUES ('230881', '同江市', '黑龙江省,佳木斯市,同江市', '230800', '744');
INSERT INTO `sk_areas` VALUES ('230882', '富锦市', '黑龙江省,佳木斯市,富锦市', '230800', '745');
INSERT INTO `sk_areas` VALUES ('230901', '市辖区', '黑龙江省,七台河市,市辖区', '230900', '746');
INSERT INTO `sk_areas` VALUES ('230902', '新兴区', '黑龙江省,七台河市,新兴区', '230900', '747');
INSERT INTO `sk_areas` VALUES ('230903', '桃山区', '黑龙江省,七台河市,桃山区', '230900', '748');
INSERT INTO `sk_areas` VALUES ('230904', '茄子河区', '黑龙江省,七台河市,茄子河区', '230900', '749');
INSERT INTO `sk_areas` VALUES ('230921', '勃利县', '黑龙江省,七台河市,勃利县', '230900', '750');
INSERT INTO `sk_areas` VALUES ('231001', '市辖区', '黑龙江省,牡丹江市,市辖区', '231000', '751');
INSERT INTO `sk_areas` VALUES ('231002', '东安区', '黑龙江省,牡丹江市,东安区', '231000', '752');
INSERT INTO `sk_areas` VALUES ('231003', '阳明区', '黑龙江省,牡丹江市,阳明区', '231000', '753');
INSERT INTO `sk_areas` VALUES ('231004', '爱民区', '黑龙江省,牡丹江市,爱民区', '231000', '754');
INSERT INTO `sk_areas` VALUES ('231005', '西安区', '黑龙江省,牡丹江市,西安区', '231000', '755');
INSERT INTO `sk_areas` VALUES ('231024', '东宁县', '黑龙江省,牡丹江市,东宁县', '231000', '756');
INSERT INTO `sk_areas` VALUES ('231025', '林口县', '黑龙江省,牡丹江市,林口县', '231000', '757');
INSERT INTO `sk_areas` VALUES ('231081', '绥芬河市', '黑龙江省,牡丹江市,绥芬河市', '231000', '758');
INSERT INTO `sk_areas` VALUES ('231083', '海林市', '黑龙江省,牡丹江市,海林市', '231000', '759');
INSERT INTO `sk_areas` VALUES ('231084', '宁安市', '黑龙江省,牡丹江市,宁安市', '231000', '760');
INSERT INTO `sk_areas` VALUES ('231085', '穆棱市', '黑龙江省,牡丹江市,穆棱市', '231000', '761');
INSERT INTO `sk_areas` VALUES ('231101', '市辖区', '黑龙江省,黑河市,市辖区', '231100', '762');
INSERT INTO `sk_areas` VALUES ('231102', '爱辉区', '黑龙江省,黑河市,爱辉区', '231100', '763');
INSERT INTO `sk_areas` VALUES ('231121', '嫩江县', '黑龙江省,黑河市,嫩江县', '231100', '764');
INSERT INTO `sk_areas` VALUES ('231123', '逊克县', '黑龙江省,黑河市,逊克县', '231100', '765');
INSERT INTO `sk_areas` VALUES ('231124', '孙吴县', '黑龙江省,黑河市,孙吴县', '231100', '766');
INSERT INTO `sk_areas` VALUES ('231181', '北安市', '黑龙江省,黑河市,北安市', '231100', '767');
INSERT INTO `sk_areas` VALUES ('231182', '五大连池市', '黑龙江省,黑河市,五大连池市', '231100', '768');
INSERT INTO `sk_areas` VALUES ('231201', '市辖区', '黑龙江省,绥化市,市辖区', '231200', '769');
INSERT INTO `sk_areas` VALUES ('231202', '北林区', '黑龙江省,绥化市,北林区', '231200', '770');
INSERT INTO `sk_areas` VALUES ('231221', '望奎县', '黑龙江省,绥化市,望奎县', '231200', '771');
INSERT INTO `sk_areas` VALUES ('231222', '兰西县', '黑龙江省,绥化市,兰西县', '231200', '772');
INSERT INTO `sk_areas` VALUES ('231223', '青冈县', '黑龙江省,绥化市,青冈县', '231200', '773');
INSERT INTO `sk_areas` VALUES ('231224', '庆安县', '黑龙江省,绥化市,庆安县', '231200', '774');
INSERT INTO `sk_areas` VALUES ('231225', '明水县', '黑龙江省,绥化市,明水县', '231200', '775');
INSERT INTO `sk_areas` VALUES ('231226', '绥棱县', '黑龙江省,绥化市,绥棱县', '231200', '776');
INSERT INTO `sk_areas` VALUES ('231281', '安达市', '黑龙江省,绥化市,安达市', '231200', '777');
INSERT INTO `sk_areas` VALUES ('231282', '肇东市', '黑龙江省,绥化市,肇东市', '231200', '778');
INSERT INTO `sk_areas` VALUES ('231283', '海伦市', '黑龙江省,绥化市,海伦市', '231200', '779');
INSERT INTO `sk_areas` VALUES ('232721', '呼玛县', '黑龙江省,大兴安岭地区,呼玛县', '232700', '780');
INSERT INTO `sk_areas` VALUES ('232722', '塔河县', '黑龙江省,大兴安岭地区,塔河县', '232700', '781');
INSERT INTO `sk_areas` VALUES ('232723', '漠河县', '黑龙江省,大兴安岭地区,漠河县', '232700', '782');
INSERT INTO `sk_areas` VALUES ('310101', '黄浦区', '上海市,市辖区,黄浦区', '310100', '783');
INSERT INTO `sk_areas` VALUES ('310103', '卢湾区', '上海市,市辖区,卢湾区', '310100', '784');
INSERT INTO `sk_areas` VALUES ('310104', '徐汇区', '上海市,市辖区,徐汇区', '310100', '785');
INSERT INTO `sk_areas` VALUES ('310105', '长宁区', '上海市,市辖区,长宁区', '310100', '786');
INSERT INTO `sk_areas` VALUES ('310106', '静安区', '上海市,市辖区,静安区', '310100', '787');
INSERT INTO `sk_areas` VALUES ('310107', '普陀区', '上海市,市辖区,普陀区', '310100', '788');
INSERT INTO `sk_areas` VALUES ('310108', '闸北区', '上海市,市辖区,闸北区', '310100', '789');
INSERT INTO `sk_areas` VALUES ('310109', '虹口区', '上海市,市辖区,虹口区', '310100', '790');
INSERT INTO `sk_areas` VALUES ('310110', '杨浦区', '上海市,市辖区,杨浦区', '310100', '791');
INSERT INTO `sk_areas` VALUES ('310112', '闵行区', '上海市,市辖区,闵行区', '310100', '792');
INSERT INTO `sk_areas` VALUES ('310113', '宝山区', '上海市,市辖区,宝山区', '310100', '793');
INSERT INTO `sk_areas` VALUES ('310114', '嘉定区', '上海市,市辖区,嘉定区', '310100', '794');
INSERT INTO `sk_areas` VALUES ('310115', '浦东新区', '上海市,市辖区,浦东新区', '310100', '795');
INSERT INTO `sk_areas` VALUES ('310116', '金山区', '上海市,市辖区,金山区', '310100', '796');
INSERT INTO `sk_areas` VALUES ('310117', '松江区', '上海市,市辖区,松江区', '310100', '797');
INSERT INTO `sk_areas` VALUES ('310118', '青浦区', '上海市,市辖区,青浦区', '310100', '798');
INSERT INTO `sk_areas` VALUES ('310119', '南汇区', '上海市,市辖区,南汇区', '310100', '799');
INSERT INTO `sk_areas` VALUES ('310120', '奉贤区', '上海市,市辖区,奉贤区', '310100', '800');
INSERT INTO `sk_areas` VALUES ('310230', '崇明县', '上海市,县,崇明县', '310200', '801');
INSERT INTO `sk_areas` VALUES ('320101', '市辖区', '江苏省,南京市,市辖区', '320100', '802');
INSERT INTO `sk_areas` VALUES ('320102', '玄武区', '江苏省,南京市,玄武区', '320100', '803');
INSERT INTO `sk_areas` VALUES ('320103', '白下区', '江苏省,南京市,白下区', '320100', '804');
INSERT INTO `sk_areas` VALUES ('320104', '秦淮区', '江苏省,南京市,秦淮区', '320100', '805');
INSERT INTO `sk_areas` VALUES ('320105', '建邺区', '江苏省,南京市,建邺区', '320100', '806');
INSERT INTO `sk_areas` VALUES ('320106', '鼓楼区', '江苏省,南京市,鼓楼区', '320100', '807');
INSERT INTO `sk_areas` VALUES ('320107', '下关区', '江苏省,南京市,下关区', '320100', '808');
INSERT INTO `sk_areas` VALUES ('320111', '浦口区', '江苏省,南京市,浦口区', '320100', '809');
INSERT INTO `sk_areas` VALUES ('320113', '栖霞区', '江苏省,南京市,栖霞区', '320100', '810');
INSERT INTO `sk_areas` VALUES ('320114', '雨花台区', '江苏省,南京市,雨花台区', '320100', '811');
INSERT INTO `sk_areas` VALUES ('320115', '江宁区', '江苏省,南京市,江宁区', '320100', '812');
INSERT INTO `sk_areas` VALUES ('320116', '六合区', '江苏省,南京市,六合区', '320100', '813');
INSERT INTO `sk_areas` VALUES ('320124', '溧水县', '江苏省,南京市,溧水县', '320100', '814');
INSERT INTO `sk_areas` VALUES ('320125', '高淳县', '江苏省,南京市,高淳县', '320100', '815');
INSERT INTO `sk_areas` VALUES ('320201', '市辖区', '江苏省,无锡市,市辖区', '320200', '816');
INSERT INTO `sk_areas` VALUES ('320202', '崇安区', '江苏省,无锡市,崇安区', '320200', '817');
INSERT INTO `sk_areas` VALUES ('320203', '南长区', '江苏省,无锡市,南长区', '320200', '818');
INSERT INTO `sk_areas` VALUES ('320204', '北塘区', '江苏省,无锡市,北塘区', '320200', '819');
INSERT INTO `sk_areas` VALUES ('320205', '锡山区', '江苏省,无锡市,锡山区', '320200', '820');
INSERT INTO `sk_areas` VALUES ('320206', '惠山区', '江苏省,无锡市,惠山区', '320200', '821');
INSERT INTO `sk_areas` VALUES ('320211', '滨湖区', '江苏省,无锡市,滨湖区', '320200', '822');
INSERT INTO `sk_areas` VALUES ('320281', '江阴市', '江苏省,无锡市,江阴市', '320200', '823');
INSERT INTO `sk_areas` VALUES ('320282', '宜兴市', '江苏省,无锡市,宜兴市', '320200', '824');
INSERT INTO `sk_areas` VALUES ('320301', '市辖区', '江苏省,徐州市,市辖区', '320300', '825');
INSERT INTO `sk_areas` VALUES ('320302', '鼓楼区', '江苏省,徐州市,鼓楼区', '320300', '826');
INSERT INTO `sk_areas` VALUES ('320303', '云龙区', '江苏省,徐州市,云龙区', '320300', '827');
INSERT INTO `sk_areas` VALUES ('320304', '九里区', '江苏省,徐州市,九里区', '320300', '828');
INSERT INTO `sk_areas` VALUES ('320305', '贾汪区', '江苏省,徐州市,贾汪区', '320300', '829');
INSERT INTO `sk_areas` VALUES ('320311', '泉山区', '江苏省,徐州市,泉山区', '320300', '830');
INSERT INTO `sk_areas` VALUES ('320321', '丰　县', '江苏省,徐州市,丰　县', '320300', '831');
INSERT INTO `sk_areas` VALUES ('320322', '沛　县', '江苏省,徐州市,沛　县', '320300', '832');
INSERT INTO `sk_areas` VALUES ('320323', '铜山县', '江苏省,徐州市,铜山县', '320300', '833');
INSERT INTO `sk_areas` VALUES ('320324', '睢宁县', '江苏省,徐州市,睢宁县', '320300', '834');
INSERT INTO `sk_areas` VALUES ('320381', '新沂市', '江苏省,徐州市,新沂市', '320300', '835');
INSERT INTO `sk_areas` VALUES ('320382', '邳州市', '江苏省,徐州市,邳州市', '320300', '836');
INSERT INTO `sk_areas` VALUES ('320401', '市辖区', '江苏省,常州市,市辖区', '320400', '837');
INSERT INTO `sk_areas` VALUES ('320402', '天宁区', '江苏省,常州市,天宁区', '320400', '838');
INSERT INTO `sk_areas` VALUES ('320404', '钟楼区', '江苏省,常州市,钟楼区', '320400', '839');
INSERT INTO `sk_areas` VALUES ('320405', '戚墅堰区', '江苏省,常州市,戚墅堰区', '320400', '840');
INSERT INTO `sk_areas` VALUES ('320411', '新北区', '江苏省,常州市,新北区', '320400', '841');
INSERT INTO `sk_areas` VALUES ('320412', '武进区', '江苏省,常州市,武进区', '320400', '842');
INSERT INTO `sk_areas` VALUES ('320481', '溧阳市', '江苏省,常州市,溧阳市', '320400', '843');
INSERT INTO `sk_areas` VALUES ('320482', '金坛市', '江苏省,常州市,金坛市', '320400', '844');
INSERT INTO `sk_areas` VALUES ('320501', '市辖区', '江苏省,苏州市,市辖区', '320500', '845');
INSERT INTO `sk_areas` VALUES ('320502', '沧浪区', '江苏省,苏州市,沧浪区', '320500', '846');
INSERT INTO `sk_areas` VALUES ('320503', '平江区', '江苏省,苏州市,平江区', '320500', '847');
INSERT INTO `sk_areas` VALUES ('320504', '金阊区', '江苏省,苏州市,金阊区', '320500', '848');
INSERT INTO `sk_areas` VALUES ('320505', '虎丘区', '江苏省,苏州市,虎丘区', '320500', '849');
INSERT INTO `sk_areas` VALUES ('320506', '吴中区', '江苏省,苏州市,吴中区', '320500', '850');
INSERT INTO `sk_areas` VALUES ('320507', '相城区', '江苏省,苏州市,相城区', '320500', '851');
INSERT INTO `sk_areas` VALUES ('320581', '常熟市', '江苏省,苏州市,常熟市', '320500', '852');
INSERT INTO `sk_areas` VALUES ('320582', '张家港市', '江苏省,苏州市,张家港市', '320500', '853');
INSERT INTO `sk_areas` VALUES ('320583', '昆山市', '江苏省,苏州市,昆山市', '320500', '854');
INSERT INTO `sk_areas` VALUES ('320584', '吴江市', '江苏省,苏州市,吴江市', '320500', '855');
INSERT INTO `sk_areas` VALUES ('320585', '太仓市', '江苏省,苏州市,太仓市', '320500', '856');
INSERT INTO `sk_areas` VALUES ('320601', '市辖区', '江苏省,南通市,市辖区', '320600', '857');
INSERT INTO `sk_areas` VALUES ('320602', '崇川区', '江苏省,南通市,崇川区', '320600', '858');
INSERT INTO `sk_areas` VALUES ('320611', '港闸区', '江苏省,南通市,港闸区', '320600', '859');
INSERT INTO `sk_areas` VALUES ('320621', '海安县', '江苏省,南通市,海安县', '320600', '860');
INSERT INTO `sk_areas` VALUES ('320623', '如东县', '江苏省,南通市,如东县', '320600', '861');
INSERT INTO `sk_areas` VALUES ('320681', '启东市', '江苏省,南通市,启东市', '320600', '862');
INSERT INTO `sk_areas` VALUES ('320682', '如皋市', '江苏省,南通市,如皋市', '320600', '863');
INSERT INTO `sk_areas` VALUES ('320683', '通州市', '江苏省,南通市,通州市', '320600', '864');
INSERT INTO `sk_areas` VALUES ('320684', '海门市', '江苏省,南通市,海门市', '320600', '865');
INSERT INTO `sk_areas` VALUES ('320701', '市辖区', '江苏省,连云港市,市辖区', '320700', '866');
INSERT INTO `sk_areas` VALUES ('320703', '连云区', '江苏省,连云港市,连云区', '320700', '867');
INSERT INTO `sk_areas` VALUES ('320705', '新浦区', '江苏省,连云港市,新浦区', '320700', '868');
INSERT INTO `sk_areas` VALUES ('320706', '海州区', '江苏省,连云港市,海州区', '320700', '869');
INSERT INTO `sk_areas` VALUES ('320721', '赣榆县', '江苏省,连云港市,赣榆县', '320700', '870');
INSERT INTO `sk_areas` VALUES ('320722', '东海县', '江苏省,连云港市,东海县', '320700', '871');
INSERT INTO `sk_areas` VALUES ('320723', '灌云县', '江苏省,连云港市,灌云县', '320700', '872');
INSERT INTO `sk_areas` VALUES ('320724', '灌南县', '江苏省,连云港市,灌南县', '320700', '873');
INSERT INTO `sk_areas` VALUES ('320801', '市辖区', '江苏省,淮安市,市辖区', '320800', '874');
INSERT INTO `sk_areas` VALUES ('320802', '清河区', '江苏省,淮安市,清河区', '320800', '875');
INSERT INTO `sk_areas` VALUES ('320803', '楚州区', '江苏省,淮安市,楚州区', '320800', '876');
INSERT INTO `sk_areas` VALUES ('320804', '淮阴区', '江苏省,淮安市,淮阴区', '320800', '877');
INSERT INTO `sk_areas` VALUES ('320811', '清浦区', '江苏省,淮安市,清浦区', '320800', '878');
INSERT INTO `sk_areas` VALUES ('320826', '涟水县', '江苏省,淮安市,涟水县', '320800', '879');
INSERT INTO `sk_areas` VALUES ('320829', '洪泽县', '江苏省,淮安市,洪泽县', '320800', '880');
INSERT INTO `sk_areas` VALUES ('320830', '盱眙县', '江苏省,淮安市,盱眙县', '320800', '881');
INSERT INTO `sk_areas` VALUES ('320831', '金湖县', '江苏省,淮安市,金湖县', '320800', '882');
INSERT INTO `sk_areas` VALUES ('320901', '市辖区', '江苏省,盐城市,市辖区', '320900', '883');
INSERT INTO `sk_areas` VALUES ('320902', '亭湖区', '江苏省,盐城市,亭湖区', '320900', '884');
INSERT INTO `sk_areas` VALUES ('320903', '盐都区', '江苏省,盐城市,盐都区', '320900', '885');
INSERT INTO `sk_areas` VALUES ('320921', '响水县', '江苏省,盐城市,响水县', '320900', '886');
INSERT INTO `sk_areas` VALUES ('320922', '滨海县', '江苏省,盐城市,滨海县', '320900', '887');
INSERT INTO `sk_areas` VALUES ('320923', '阜宁县', '江苏省,盐城市,阜宁县', '320900', '888');
INSERT INTO `sk_areas` VALUES ('320924', '射阳县', '江苏省,盐城市,射阳县', '320900', '889');
INSERT INTO `sk_areas` VALUES ('320925', '建湖县', '江苏省,盐城市,建湖县', '320900', '890');
INSERT INTO `sk_areas` VALUES ('320981', '东台市', '江苏省,盐城市,东台市', '320900', '891');
INSERT INTO `sk_areas` VALUES ('320982', '大丰市', '江苏省,盐城市,大丰市', '320900', '892');
INSERT INTO `sk_areas` VALUES ('321001', '市辖区', '江苏省,扬州市,市辖区', '321000', '893');
INSERT INTO `sk_areas` VALUES ('321002', '广陵区', '江苏省,扬州市,广陵区', '321000', '894');
INSERT INTO `sk_areas` VALUES ('321003', '邗江区', '江苏省,扬州市,邗江区', '321000', '895');
INSERT INTO `sk_areas` VALUES ('321011', '郊　区', '江苏省,扬州市,郊　区', '321000', '896');
INSERT INTO `sk_areas` VALUES ('321023', '宝应县', '江苏省,扬州市,宝应县', '321000', '897');
INSERT INTO `sk_areas` VALUES ('321081', '仪征市', '江苏省,扬州市,仪征市', '321000', '898');
INSERT INTO `sk_areas` VALUES ('321084', '高邮市', '江苏省,扬州市,高邮市', '321000', '899');
INSERT INTO `sk_areas` VALUES ('321088', '江都市', '江苏省,扬州市,江都市', '321000', '900');
INSERT INTO `sk_areas` VALUES ('321101', '市辖区', '江苏省,镇江市,市辖区', '321100', '901');
INSERT INTO `sk_areas` VALUES ('321102', '京口区', '江苏省,镇江市,京口区', '321100', '902');
INSERT INTO `sk_areas` VALUES ('321111', '润州区', '江苏省,镇江市,润州区', '321100', '903');
INSERT INTO `sk_areas` VALUES ('321112', '丹徒区', '江苏省,镇江市,丹徒区', '321100', '904');
INSERT INTO `sk_areas` VALUES ('321181', '丹阳市', '江苏省,镇江市,丹阳市', '321100', '905');
INSERT INTO `sk_areas` VALUES ('321182', '扬中市', '江苏省,镇江市,扬中市', '321100', '906');
INSERT INTO `sk_areas` VALUES ('321183', '句容市', '江苏省,镇江市,句容市', '321100', '907');
INSERT INTO `sk_areas` VALUES ('321201', '市辖区', '江苏省,泰州市,市辖区', '321200', '908');
INSERT INTO `sk_areas` VALUES ('321202', '海陵区', '江苏省,泰州市,海陵区', '321200', '909');
INSERT INTO `sk_areas` VALUES ('321203', '高港区', '江苏省,泰州市,高港区', '321200', '910');
INSERT INTO `sk_areas` VALUES ('321281', '兴化市', '江苏省,泰州市,兴化市', '321200', '911');
INSERT INTO `sk_areas` VALUES ('321282', '靖江市', '江苏省,泰州市,靖江市', '321200', '912');
INSERT INTO `sk_areas` VALUES ('321283', '泰兴市', '江苏省,泰州市,泰兴市', '321200', '913');
INSERT INTO `sk_areas` VALUES ('321284', '姜堰市', '江苏省,泰州市,姜堰市', '321200', '914');
INSERT INTO `sk_areas` VALUES ('321301', '市辖区', '江苏省,宿迁市,市辖区', '321300', '915');
INSERT INTO `sk_areas` VALUES ('321302', '宿城区', '江苏省,宿迁市,宿城区', '321300', '916');
INSERT INTO `sk_areas` VALUES ('321311', '宿豫区', '江苏省,宿迁市,宿豫区', '321300', '917');
INSERT INTO `sk_areas` VALUES ('321322', '沭阳县', '江苏省,宿迁市,沭阳县', '321300', '918');
INSERT INTO `sk_areas` VALUES ('321323', '泗阳县', '江苏省,宿迁市,泗阳县', '321300', '919');
INSERT INTO `sk_areas` VALUES ('321324', '泗洪县', '江苏省,宿迁市,泗洪县', '321300', '920');
INSERT INTO `sk_areas` VALUES ('330101', '市辖区', '浙江省,杭州市,市辖区', '330100', '921');
INSERT INTO `sk_areas` VALUES ('330102', '上城区', '浙江省,杭州市,上城区', '330100', '922');
INSERT INTO `sk_areas` VALUES ('330103', '下城区', '浙江省,杭州市,下城区', '330100', '923');
INSERT INTO `sk_areas` VALUES ('330104', '江干区', '浙江省,杭州市,江干区', '330100', '924');
INSERT INTO `sk_areas` VALUES ('330105', '拱墅区', '浙江省,杭州市,拱墅区', '330100', '925');
INSERT INTO `sk_areas` VALUES ('330106', '西湖区', '浙江省,杭州市,西湖区', '330100', '926');
INSERT INTO `sk_areas` VALUES ('330108', '滨江区', '浙江省,杭州市,滨江区', '330100', '927');
INSERT INTO `sk_areas` VALUES ('330109', '萧山区', '浙江省,杭州市,萧山区', '330100', '928');
INSERT INTO `sk_areas` VALUES ('330110', '余杭区', '浙江省,杭州市,余杭区', '330100', '929');
INSERT INTO `sk_areas` VALUES ('330122', '桐庐县', '浙江省,杭州市,桐庐县', '330100', '930');
INSERT INTO `sk_areas` VALUES ('330127', '淳安县', '浙江省,杭州市,淳安县', '330100', '931');
INSERT INTO `sk_areas` VALUES ('330182', '建德市', '浙江省,杭州市,建德市', '330100', '932');
INSERT INTO `sk_areas` VALUES ('330183', '富阳市', '浙江省,杭州市,富阳市', '330100', '933');
INSERT INTO `sk_areas` VALUES ('330185', '临安市', '浙江省,杭州市,临安市', '330100', '934');
INSERT INTO `sk_areas` VALUES ('330201', '市辖区', '浙江省,宁波市,市辖区', '330200', '935');
INSERT INTO `sk_areas` VALUES ('330203', '海曙区', '浙江省,宁波市,海曙区', '330200', '936');
INSERT INTO `sk_areas` VALUES ('330204', '江东区', '浙江省,宁波市,江东区', '330200', '937');
INSERT INTO `sk_areas` VALUES ('330205', '江北区', '浙江省,宁波市,江北区', '330200', '938');
INSERT INTO `sk_areas` VALUES ('330206', '北仑区', '浙江省,宁波市,北仑区', '330200', '939');
INSERT INTO `sk_areas` VALUES ('330211', '镇海区', '浙江省,宁波市,镇海区', '330200', '940');
INSERT INTO `sk_areas` VALUES ('330212', '鄞州区', '浙江省,宁波市,鄞州区', '330200', '941');
INSERT INTO `sk_areas` VALUES ('330225', '象山县', '浙江省,宁波市,象山县', '330200', '942');
INSERT INTO `sk_areas` VALUES ('330226', '宁海县', '浙江省,宁波市,宁海县', '330200', '943');
INSERT INTO `sk_areas` VALUES ('330281', '余姚市', '浙江省,宁波市,余姚市', '330200', '944');
INSERT INTO `sk_areas` VALUES ('330282', '慈溪市', '浙江省,宁波市,慈溪市', '330200', '945');
INSERT INTO `sk_areas` VALUES ('330283', '奉化市', '浙江省,宁波市,奉化市', '330200', '946');
INSERT INTO `sk_areas` VALUES ('330301', '市辖区', '浙江省,温州市,市辖区', '330300', '947');
INSERT INTO `sk_areas` VALUES ('330302', '鹿城区', '浙江省,温州市,鹿城区', '330300', '948');
INSERT INTO `sk_areas` VALUES ('330303', '龙湾区', '浙江省,温州市,龙湾区', '330300', '949');
INSERT INTO `sk_areas` VALUES ('330304', '瓯海区', '浙江省,温州市,瓯海区', '330300', '950');
INSERT INTO `sk_areas` VALUES ('330322', '洞头县', '浙江省,温州市,洞头县', '330300', '951');
INSERT INTO `sk_areas` VALUES ('330324', '永嘉县', '浙江省,温州市,永嘉县', '330300', '952');
INSERT INTO `sk_areas` VALUES ('330326', '平阳县', '浙江省,温州市,平阳县', '330300', '953');
INSERT INTO `sk_areas` VALUES ('330327', '苍南县', '浙江省,温州市,苍南县', '330300', '954');
INSERT INTO `sk_areas` VALUES ('330328', '文成县', '浙江省,温州市,文成县', '330300', '955');
INSERT INTO `sk_areas` VALUES ('330329', '泰顺县', '浙江省,温州市,泰顺县', '330300', '956');
INSERT INTO `sk_areas` VALUES ('330381', '瑞安市', '浙江省,温州市,瑞安市', '330300', '957');
INSERT INTO `sk_areas` VALUES ('330382', '乐清市', '浙江省,温州市,乐清市', '330300', '958');
INSERT INTO `sk_areas` VALUES ('330401', '市辖区', '浙江省,嘉兴市,市辖区', '330400', '959');
INSERT INTO `sk_areas` VALUES ('330402', '秀城区', '浙江省,嘉兴市,秀城区', '330400', '960');
INSERT INTO `sk_areas` VALUES ('330411', '秀洲区', '浙江省,嘉兴市,秀洲区', '330400', '961');
INSERT INTO `sk_areas` VALUES ('330421', '嘉善县', '浙江省,嘉兴市,嘉善县', '330400', '962');
INSERT INTO `sk_areas` VALUES ('330424', '海盐县', '浙江省,嘉兴市,海盐县', '330400', '963');
INSERT INTO `sk_areas` VALUES ('330481', '海宁市', '浙江省,嘉兴市,海宁市', '330400', '964');
INSERT INTO `sk_areas` VALUES ('330482', '平湖市', '浙江省,嘉兴市,平湖市', '330400', '965');
INSERT INTO `sk_areas` VALUES ('330483', '桐乡市', '浙江省,嘉兴市,桐乡市', '330400', '966');
INSERT INTO `sk_areas` VALUES ('330501', '市辖区', '浙江省,湖州市,市辖区', '330500', '967');
INSERT INTO `sk_areas` VALUES ('330502', '吴兴区', '浙江省,湖州市,吴兴区', '330500', '968');
INSERT INTO `sk_areas` VALUES ('330503', '南浔区', '浙江省,湖州市,南浔区', '330500', '969');
INSERT INTO `sk_areas` VALUES ('330521', '德清县', '浙江省,湖州市,德清县', '330500', '970');
INSERT INTO `sk_areas` VALUES ('330522', '长兴县', '浙江省,湖州市,长兴县', '330500', '971');
INSERT INTO `sk_areas` VALUES ('330523', '安吉县', '浙江省,湖州市,安吉县', '330500', '972');
INSERT INTO `sk_areas` VALUES ('330601', '市辖区', '浙江省,绍兴市,市辖区', '330600', '973');
INSERT INTO `sk_areas` VALUES ('330602', '越城区', '浙江省,绍兴市,越城区', '330600', '974');
INSERT INTO `sk_areas` VALUES ('330621', '绍兴县', '浙江省,绍兴市,绍兴县', '330600', '975');
INSERT INTO `sk_areas` VALUES ('330624', '新昌县', '浙江省,绍兴市,新昌县', '330600', '976');
INSERT INTO `sk_areas` VALUES ('330681', '诸暨市', '浙江省,绍兴市,诸暨市', '330600', '977');
INSERT INTO `sk_areas` VALUES ('330682', '上虞市', '浙江省,绍兴市,上虞市', '330600', '978');
INSERT INTO `sk_areas` VALUES ('330683', '嵊州市', '浙江省,绍兴市,嵊州市', '330600', '979');
INSERT INTO `sk_areas` VALUES ('330701', '市辖区', '浙江省,金华市,市辖区', '330700', '980');
INSERT INTO `sk_areas` VALUES ('330702', '婺城区', '浙江省,金华市,婺城区', '330700', '981');
INSERT INTO `sk_areas` VALUES ('330703', '金东区', '浙江省,金华市,金东区', '330700', '982');
INSERT INTO `sk_areas` VALUES ('330723', '武义县', '浙江省,金华市,武义县', '330700', '983');
INSERT INTO `sk_areas` VALUES ('330726', '浦江县', '浙江省,金华市,浦江县', '330700', '984');
INSERT INTO `sk_areas` VALUES ('330727', '磐安县', '浙江省,金华市,磐安县', '330700', '985');
INSERT INTO `sk_areas` VALUES ('330781', '兰溪市', '浙江省,金华市,兰溪市', '330700', '986');
INSERT INTO `sk_areas` VALUES ('330782', '义乌市', '浙江省,金华市,义乌市', '330700', '987');
INSERT INTO `sk_areas` VALUES ('330783', '东阳市', '浙江省,金华市,东阳市', '330700', '988');
INSERT INTO `sk_areas` VALUES ('330784', '永康市', '浙江省,金华市,永康市', '330700', '989');
INSERT INTO `sk_areas` VALUES ('330801', '市辖区', '浙江省,衢州市,市辖区', '330800', '990');
INSERT INTO `sk_areas` VALUES ('330802', '柯城区', '浙江省,衢州市,柯城区', '330800', '991');
INSERT INTO `sk_areas` VALUES ('330803', '衢江区', '浙江省,衢州市,衢江区', '330800', '992');
INSERT INTO `sk_areas` VALUES ('330822', '常山县', '浙江省,衢州市,常山县', '330800', '993');
INSERT INTO `sk_areas` VALUES ('330824', '开化县', '浙江省,衢州市,开化县', '330800', '994');
INSERT INTO `sk_areas` VALUES ('330825', '龙游县', '浙江省,衢州市,龙游县', '330800', '995');
INSERT INTO `sk_areas` VALUES ('330881', '江山市', '浙江省,衢州市,江山市', '330800', '996');
INSERT INTO `sk_areas` VALUES ('330901', '市辖区', '浙江省,舟山市,市辖区', '330900', '997');
INSERT INTO `sk_areas` VALUES ('330902', '定海区', '浙江省,舟山市,定海区', '330900', '998');
INSERT INTO `sk_areas` VALUES ('330903', '普陀区', '浙江省,舟山市,普陀区', '330900', '999');
INSERT INTO `sk_areas` VALUES ('330921', '岱山县', '浙江省,舟山市,岱山县', '330900', '1000');
INSERT INTO `sk_areas` VALUES ('330922', '嵊泗县', '浙江省,舟山市,嵊泗县', '330900', '1001');
INSERT INTO `sk_areas` VALUES ('331001', '市辖区', '浙江省,台州市,市辖区', '331000', '1002');
INSERT INTO `sk_areas` VALUES ('331002', '椒江区', '浙江省,台州市,椒江区', '331000', '1003');
INSERT INTO `sk_areas` VALUES ('331003', '黄岩区', '浙江省,台州市,黄岩区', '331000', '1004');
INSERT INTO `sk_areas` VALUES ('331004', '路桥区', '浙江省,台州市,路桥区', '331000', '1005');
INSERT INTO `sk_areas` VALUES ('331021', '玉环县', '浙江省,台州市,玉环县', '331000', '1006');
INSERT INTO `sk_areas` VALUES ('331022', '三门县', '浙江省,台州市,三门县', '331000', '1007');
INSERT INTO `sk_areas` VALUES ('331023', '天台县', '浙江省,台州市,天台县', '331000', '1008');
INSERT INTO `sk_areas` VALUES ('331024', '仙居县', '浙江省,台州市,仙居县', '331000', '1009');
INSERT INTO `sk_areas` VALUES ('331081', '温岭市', '浙江省,台州市,温岭市', '331000', '1010');
INSERT INTO `sk_areas` VALUES ('331082', '临海市', '浙江省,台州市,临海市', '331000', '1011');
INSERT INTO `sk_areas` VALUES ('331101', '市辖区', '浙江省,丽水市,市辖区', '331100', '1012');
INSERT INTO `sk_areas` VALUES ('331102', '莲都区', '浙江省,丽水市,莲都区', '331100', '1013');
INSERT INTO `sk_areas` VALUES ('331121', '青田县', '浙江省,丽水市,青田县', '331100', '1014');
INSERT INTO `sk_areas` VALUES ('331122', '缙云县', '浙江省,丽水市,缙云县', '331100', '1015');
INSERT INTO `sk_areas` VALUES ('331123', '遂昌县', '浙江省,丽水市,遂昌县', '331100', '1016');
INSERT INTO `sk_areas` VALUES ('331124', '松阳县', '浙江省,丽水市,松阳县', '331100', '1017');
INSERT INTO `sk_areas` VALUES ('331125', '云和县', '浙江省,丽水市,云和县', '331100', '1018');
INSERT INTO `sk_areas` VALUES ('331126', '庆元县', '浙江省,丽水市,庆元县', '331100', '1019');
INSERT INTO `sk_areas` VALUES ('331127', '景宁畲族自治县', '浙江省,丽水市,景宁畲族自治县', '331100', '1020');
INSERT INTO `sk_areas` VALUES ('331181', '龙泉市', '浙江省,丽水市,龙泉市', '331100', '1021');
INSERT INTO `sk_areas` VALUES ('340101', '市辖区', '安徽省,合肥市,市辖区', '340100', '1022');
INSERT INTO `sk_areas` VALUES ('340102', '瑶海区', '安徽省,合肥市,瑶海区', '340100', '1023');
INSERT INTO `sk_areas` VALUES ('340103', '庐阳区', '安徽省,合肥市,庐阳区', '340100', '1024');
INSERT INTO `sk_areas` VALUES ('340104', '蜀山区', '安徽省,合肥市,蜀山区', '340100', '1025');
INSERT INTO `sk_areas` VALUES ('340111', '包河区', '安徽省,合肥市,包河区', '340100', '1026');
INSERT INTO `sk_areas` VALUES ('340121', '长丰县', '安徽省,合肥市,长丰县', '340100', '1027');
INSERT INTO `sk_areas` VALUES ('340122', '肥东县', '安徽省,合肥市,肥东县', '340100', '1028');
INSERT INTO `sk_areas` VALUES ('340123', '肥西县', '安徽省,合肥市,肥西县', '340100', '1029');
INSERT INTO `sk_areas` VALUES ('340201', '市辖区', '安徽省,芜湖市,市辖区', '340200', '1030');
INSERT INTO `sk_areas` VALUES ('340202', '镜湖区', '安徽省,芜湖市,镜湖区', '340200', '1031');
INSERT INTO `sk_areas` VALUES ('340203', '马塘区', '安徽省,芜湖市,马塘区', '340200', '1032');
INSERT INTO `sk_areas` VALUES ('340204', '新芜区', '安徽省,芜湖市,新芜区', '340200', '1033');
INSERT INTO `sk_areas` VALUES ('340207', '鸠江区', '安徽省,芜湖市,鸠江区', '340200', '1034');
INSERT INTO `sk_areas` VALUES ('340221', '芜湖县', '安徽省,芜湖市,芜湖县', '340200', '1035');
INSERT INTO `sk_areas` VALUES ('340222', '繁昌县', '安徽省,芜湖市,繁昌县', '340200', '1036');
INSERT INTO `sk_areas` VALUES ('340223', '南陵县', '安徽省,芜湖市,南陵县', '340200', '1037');
INSERT INTO `sk_areas` VALUES ('340301', '市辖区', '安徽省,蚌埠市,市辖区', '340300', '1038');
INSERT INTO `sk_areas` VALUES ('340302', '龙子湖区', '安徽省,蚌埠市,龙子湖区', '340300', '1039');
INSERT INTO `sk_areas` VALUES ('340303', '蚌山区', '安徽省,蚌埠市,蚌山区', '340300', '1040');
INSERT INTO `sk_areas` VALUES ('340304', '禹会区', '安徽省,蚌埠市,禹会区', '340300', '1041');
INSERT INTO `sk_areas` VALUES ('340311', '淮上区', '安徽省,蚌埠市,淮上区', '340300', '1042');
INSERT INTO `sk_areas` VALUES ('340321', '怀远县', '安徽省,蚌埠市,怀远县', '340300', '1043');
INSERT INTO `sk_areas` VALUES ('340322', '五河县', '安徽省,蚌埠市,五河县', '340300', '1044');
INSERT INTO `sk_areas` VALUES ('340323', '固镇县', '安徽省,蚌埠市,固镇县', '340300', '1045');
INSERT INTO `sk_areas` VALUES ('340401', '市辖区', '安徽省,淮南市,市辖区', '340400', '1046');
INSERT INTO `sk_areas` VALUES ('340402', '大通区', '安徽省,淮南市,大通区', '340400', '1047');
INSERT INTO `sk_areas` VALUES ('340403', '田家庵区', '安徽省,淮南市,田家庵区', '340400', '1048');
INSERT INTO `sk_areas` VALUES ('340404', '谢家集区', '安徽省,淮南市,谢家集区', '340400', '1049');
INSERT INTO `sk_areas` VALUES ('340405', '八公山区', '安徽省,淮南市,八公山区', '340400', '1050');
INSERT INTO `sk_areas` VALUES ('340406', '潘集区', '安徽省,淮南市,潘集区', '340400', '1051');
INSERT INTO `sk_areas` VALUES ('340421', '凤台县', '安徽省,淮南市,凤台县', '340400', '1052');
INSERT INTO `sk_areas` VALUES ('340501', '市辖区', '安徽省,马鞍山市,市辖区', '340500', '1053');
INSERT INTO `sk_areas` VALUES ('340502', '金家庄区', '安徽省,马鞍山市,金家庄区', '340500', '1054');
INSERT INTO `sk_areas` VALUES ('340503', '花山区', '安徽省,马鞍山市,花山区', '340500', '1055');
INSERT INTO `sk_areas` VALUES ('340504', '雨山区', '安徽省,马鞍山市,雨山区', '340500', '1056');
INSERT INTO `sk_areas` VALUES ('340521', '当涂县', '安徽省,马鞍山市,当涂县', '340500', '1057');
INSERT INTO `sk_areas` VALUES ('340601', '市辖区', '安徽省,淮北市,市辖区', '340600', '1058');
INSERT INTO `sk_areas` VALUES ('340602', '杜集区', '安徽省,淮北市,杜集区', '340600', '1059');
INSERT INTO `sk_areas` VALUES ('340603', '相山区', '安徽省,淮北市,相山区', '340600', '1060');
INSERT INTO `sk_areas` VALUES ('340604', '烈山区', '安徽省,淮北市,烈山区', '340600', '1061');
INSERT INTO `sk_areas` VALUES ('340621', '濉溪县', '安徽省,淮北市,濉溪县', '340600', '1062');
INSERT INTO `sk_areas` VALUES ('340701', '市辖区', '安徽省,铜陵市,市辖区', '340700', '1063');
INSERT INTO `sk_areas` VALUES ('340702', '铜官山区', '安徽省,铜陵市,铜官山区', '340700', '1064');
INSERT INTO `sk_areas` VALUES ('340703', '狮子山区', '安徽省,铜陵市,狮子山区', '340700', '1065');
INSERT INTO `sk_areas` VALUES ('340711', '郊　区', '安徽省,铜陵市,郊　区', '340700', '1066');
INSERT INTO `sk_areas` VALUES ('340721', '铜陵县', '安徽省,铜陵市,铜陵县', '340700', '1067');
INSERT INTO `sk_areas` VALUES ('340801', '市辖区', '安徽省,安庆市,市辖区', '340800', '1068');
INSERT INTO `sk_areas` VALUES ('340802', '迎江区', '安徽省,安庆市,迎江区', '340800', '1069');
INSERT INTO `sk_areas` VALUES ('340803', '大观区', '安徽省,安庆市,大观区', '340800', '1070');
INSERT INTO `sk_areas` VALUES ('340811', '郊　区', '安徽省,安庆市,郊　区', '340800', '1071');
INSERT INTO `sk_areas` VALUES ('340822', '怀宁县', '安徽省,安庆市,怀宁县', '340800', '1072');
INSERT INTO `sk_areas` VALUES ('340823', '枞阳县', '安徽省,安庆市,枞阳县', '340800', '1073');
INSERT INTO `sk_areas` VALUES ('340824', '潜山县', '安徽省,安庆市,潜山县', '340800', '1074');
INSERT INTO `sk_areas` VALUES ('340825', '太湖县', '安徽省,安庆市,太湖县', '340800', '1075');
INSERT INTO `sk_areas` VALUES ('340826', '宿松县', '安徽省,安庆市,宿松县', '340800', '1076');
INSERT INTO `sk_areas` VALUES ('340827', '望江县', '安徽省,安庆市,望江县', '340800', '1077');
INSERT INTO `sk_areas` VALUES ('340828', '岳西县', '安徽省,安庆市,岳西县', '340800', '1078');
INSERT INTO `sk_areas` VALUES ('340881', '桐城市', '安徽省,安庆市,桐城市', '340800', '1079');
INSERT INTO `sk_areas` VALUES ('341001', '市辖区', '安徽省,黄山市,市辖区', '341000', '1080');
INSERT INTO `sk_areas` VALUES ('341002', '屯溪区', '安徽省,黄山市,屯溪区', '341000', '1081');
INSERT INTO `sk_areas` VALUES ('341003', '黄山区', '安徽省,黄山市,黄山区', '341000', '1082');
INSERT INTO `sk_areas` VALUES ('341004', '徽州区', '安徽省,黄山市,徽州区', '341000', '1083');
INSERT INTO `sk_areas` VALUES ('341021', '歙　县', '安徽省,黄山市,歙　县', '341000', '1084');
INSERT INTO `sk_areas` VALUES ('341022', '休宁县', '安徽省,黄山市,休宁县', '341000', '1085');
INSERT INTO `sk_areas` VALUES ('341023', '黟　县', '安徽省,黄山市,黟　县', '341000', '1086');
INSERT INTO `sk_areas` VALUES ('341024', '祁门县', '安徽省,黄山市,祁门县', '341000', '1087');
INSERT INTO `sk_areas` VALUES ('341101', '市辖区', '安徽省,滁州市,市辖区', '341100', '1088');
INSERT INTO `sk_areas` VALUES ('341102', '琅琊区', '安徽省,滁州市,琅琊区', '341100', '1089');
INSERT INTO `sk_areas` VALUES ('341103', '南谯区', '安徽省,滁州市,南谯区', '341100', '1090');
INSERT INTO `sk_areas` VALUES ('341122', '来安县', '安徽省,滁州市,来安县', '341100', '1091');
INSERT INTO `sk_areas` VALUES ('341124', '全椒县', '安徽省,滁州市,全椒县', '341100', '1092');
INSERT INTO `sk_areas` VALUES ('341125', '定远县', '安徽省,滁州市,定远县', '341100', '1093');
INSERT INTO `sk_areas` VALUES ('341126', '凤阳县', '安徽省,滁州市,凤阳县', '341100', '1094');
INSERT INTO `sk_areas` VALUES ('341181', '天长市', '安徽省,滁州市,天长市', '341100', '1095');
INSERT INTO `sk_areas` VALUES ('341182', '明光市', '安徽省,滁州市,明光市', '341100', '1096');
INSERT INTO `sk_areas` VALUES ('341201', '市辖区', '安徽省,阜阳市,市辖区', '341200', '1097');
INSERT INTO `sk_areas` VALUES ('341202', '颍州区', '安徽省,阜阳市,颍州区', '341200', '1098');
INSERT INTO `sk_areas` VALUES ('341203', '颍东区', '安徽省,阜阳市,颍东区', '341200', '1099');
INSERT INTO `sk_areas` VALUES ('341204', '颍泉区', '安徽省,阜阳市,颍泉区', '341200', '1100');
INSERT INTO `sk_areas` VALUES ('341221', '临泉县', '安徽省,阜阳市,临泉县', '341200', '1101');
INSERT INTO `sk_areas` VALUES ('341222', '太和县', '安徽省,阜阳市,太和县', '341200', '1102');
INSERT INTO `sk_areas` VALUES ('341225', '阜南县', '安徽省,阜阳市,阜南县', '341200', '1103');
INSERT INTO `sk_areas` VALUES ('341226', '颍上县', '安徽省,阜阳市,颍上县', '341200', '1104');
INSERT INTO `sk_areas` VALUES ('341282', '界首市', '安徽省,阜阳市,界首市', '341200', '1105');
INSERT INTO `sk_areas` VALUES ('341301', '市辖区', '安徽省,宿州市,市辖区', '341300', '1106');
INSERT INTO `sk_areas` VALUES ('341302', '墉桥区', '安徽省,宿州市,墉桥区', '341300', '1107');
INSERT INTO `sk_areas` VALUES ('341321', '砀山县', '安徽省,宿州市,砀山县', '341300', '1108');
INSERT INTO `sk_areas` VALUES ('341322', '萧　县', '安徽省,宿州市,萧　县', '341300', '1109');
INSERT INTO `sk_areas` VALUES ('341323', '灵璧县', '安徽省,宿州市,灵璧县', '341300', '1110');
INSERT INTO `sk_areas` VALUES ('341324', '泗　县', '安徽省,宿州市,泗　县', '341300', '1111');
INSERT INTO `sk_areas` VALUES ('341401', '市辖区', '安徽省,巢湖市,市辖区', '341400', '1112');
INSERT INTO `sk_areas` VALUES ('341402', '居巢区', '安徽省,巢湖市,居巢区', '341400', '1113');
INSERT INTO `sk_areas` VALUES ('341421', '庐江县', '安徽省,巢湖市,庐江县', '341400', '1114');
INSERT INTO `sk_areas` VALUES ('341422', '无为县', '安徽省,巢湖市,无为县', '341400', '1115');
INSERT INTO `sk_areas` VALUES ('341423', '含山县', '安徽省,巢湖市,含山县', '341400', '1116');
INSERT INTO `sk_areas` VALUES ('341424', '和　县', '安徽省,巢湖市,和　县', '341400', '1117');
INSERT INTO `sk_areas` VALUES ('341501', '市辖区', '安徽省,六安市,市辖区', '341500', '1118');
INSERT INTO `sk_areas` VALUES ('341502', '金安区', '安徽省,六安市,金安区', '341500', '1119');
INSERT INTO `sk_areas` VALUES ('341503', '裕安区', '安徽省,六安市,裕安区', '341500', '1120');
INSERT INTO `sk_areas` VALUES ('341521', '寿　县', '安徽省,六安市,寿　县', '341500', '1121');
INSERT INTO `sk_areas` VALUES ('341522', '霍邱县', '安徽省,六安市,霍邱县', '341500', '1122');
INSERT INTO `sk_areas` VALUES ('341523', '舒城县', '安徽省,六安市,舒城县', '341500', '1123');
INSERT INTO `sk_areas` VALUES ('341524', '金寨县', '安徽省,六安市,金寨县', '341500', '1124');
INSERT INTO `sk_areas` VALUES ('341525', '霍山县', '安徽省,六安市,霍山县', '341500', '1125');
INSERT INTO `sk_areas` VALUES ('341601', '市辖区', '安徽省,亳州市,市辖区', '341600', '1126');
INSERT INTO `sk_areas` VALUES ('341602', '谯城区', '安徽省,亳州市,谯城区', '341600', '1127');
INSERT INTO `sk_areas` VALUES ('341621', '涡阳县', '安徽省,亳州市,涡阳县', '341600', '1128');
INSERT INTO `sk_areas` VALUES ('341622', '蒙城县', '安徽省,亳州市,蒙城县', '341600', '1129');
INSERT INTO `sk_areas` VALUES ('341623', '利辛县', '安徽省,亳州市,利辛县', '341600', '1130');
INSERT INTO `sk_areas` VALUES ('341701', '市辖区', '安徽省,池州市,市辖区', '341700', '1131');
INSERT INTO `sk_areas` VALUES ('341702', '贵池区', '安徽省,池州市,贵池区', '341700', '1132');
INSERT INTO `sk_areas` VALUES ('341721', '东至县', '安徽省,池州市,东至县', '341700', '1133');
INSERT INTO `sk_areas` VALUES ('341722', '石台县', '安徽省,池州市,石台县', '341700', '1134');
INSERT INTO `sk_areas` VALUES ('341723', '青阳县', '安徽省,池州市,青阳县', '341700', '1135');
INSERT INTO `sk_areas` VALUES ('341801', '市辖区', '安徽省,宣城市,市辖区', '341800', '1136');
INSERT INTO `sk_areas` VALUES ('341802', '宣州区', '安徽省,宣城市,宣州区', '341800', '1137');
INSERT INTO `sk_areas` VALUES ('341821', '郎溪县', '安徽省,宣城市,郎溪县', '341800', '1138');
INSERT INTO `sk_areas` VALUES ('341822', '广德县', '安徽省,宣城市,广德县', '341800', '1139');
INSERT INTO `sk_areas` VALUES ('341823', '泾　县', '安徽省,宣城市,泾　县', '341800', '1140');
INSERT INTO `sk_areas` VALUES ('341824', '绩溪县', '安徽省,宣城市,绩溪县', '341800', '1141');
INSERT INTO `sk_areas` VALUES ('341825', '旌德县', '安徽省,宣城市,旌德县', '341800', '1142');
INSERT INTO `sk_areas` VALUES ('341881', '宁国市', '安徽省,宣城市,宁国市', '341800', '1143');
INSERT INTO `sk_areas` VALUES ('350101', '市辖区', '福建省,福州市,市辖区', '350100', '1144');
INSERT INTO `sk_areas` VALUES ('350102', '鼓楼区', '福建省,福州市,鼓楼区', '350100', '1145');
INSERT INTO `sk_areas` VALUES ('350103', '台江区', '福建省,福州市,台江区', '350100', '1146');
INSERT INTO `sk_areas` VALUES ('350104', '仓山区', '福建省,福州市,仓山区', '350100', '1147');
INSERT INTO `sk_areas` VALUES ('350105', '马尾区', '福建省,福州市,马尾区', '350100', '1148');
INSERT INTO `sk_areas` VALUES ('350111', '晋安区', '福建省,福州市,晋安区', '350100', '1149');
INSERT INTO `sk_areas` VALUES ('350121', '闽侯县', '福建省,福州市,闽侯县', '350100', '1150');
INSERT INTO `sk_areas` VALUES ('350122', '连江县', '福建省,福州市,连江县', '350100', '1151');
INSERT INTO `sk_areas` VALUES ('350123', '罗源县', '福建省,福州市,罗源县', '350100', '1152');
INSERT INTO `sk_areas` VALUES ('350124', '闽清县', '福建省,福州市,闽清县', '350100', '1153');
INSERT INTO `sk_areas` VALUES ('350125', '永泰县', '福建省,福州市,永泰县', '350100', '1154');
INSERT INTO `sk_areas` VALUES ('350128', '平潭县', '福建省,福州市,平潭县', '350100', '1155');
INSERT INTO `sk_areas` VALUES ('350181', '福清市', '福建省,福州市,福清市', '350100', '1156');
INSERT INTO `sk_areas` VALUES ('350182', '长乐市', '福建省,福州市,长乐市', '350100', '1157');
INSERT INTO `sk_areas` VALUES ('350201', '市辖区', '福建省,厦门市,市辖区', '350200', '1158');
INSERT INTO `sk_areas` VALUES ('350203', '思明区', '福建省,厦门市,思明区', '350200', '1159');
INSERT INTO `sk_areas` VALUES ('350205', '海沧区', '福建省,厦门市,海沧区', '350200', '1160');
INSERT INTO `sk_areas` VALUES ('350206', '湖里区', '福建省,厦门市,湖里区', '350200', '1161');
INSERT INTO `sk_areas` VALUES ('350211', '集美区', '福建省,厦门市,集美区', '350200', '1162');
INSERT INTO `sk_areas` VALUES ('350212', '同安区', '福建省,厦门市,同安区', '350200', '1163');
INSERT INTO `sk_areas` VALUES ('350213', '翔安区', '福建省,厦门市,翔安区', '350200', '1164');
INSERT INTO `sk_areas` VALUES ('350301', '市辖区', '福建省,莆田市,市辖区', '350300', '1165');
INSERT INTO `sk_areas` VALUES ('350302', '城厢区', '福建省,莆田市,城厢区', '350300', '1166');
INSERT INTO `sk_areas` VALUES ('350303', '涵江区', '福建省,莆田市,涵江区', '350300', '1167');
INSERT INTO `sk_areas` VALUES ('350304', '荔城区', '福建省,莆田市,荔城区', '350300', '1168');
INSERT INTO `sk_areas` VALUES ('350305', '秀屿区', '福建省,莆田市,秀屿区', '350300', '1169');
INSERT INTO `sk_areas` VALUES ('350322', '仙游县', '福建省,莆田市,仙游县', '350300', '1170');
INSERT INTO `sk_areas` VALUES ('350401', '市辖区', '福建省,三明市,市辖区', '350400', '1171');
INSERT INTO `sk_areas` VALUES ('350402', '梅列区', '福建省,三明市,梅列区', '350400', '1172');
INSERT INTO `sk_areas` VALUES ('350403', '三元区', '福建省,三明市,三元区', '350400', '1173');
INSERT INTO `sk_areas` VALUES ('350421', '明溪县', '福建省,三明市,明溪县', '350400', '1174');
INSERT INTO `sk_areas` VALUES ('350423', '清流县', '福建省,三明市,清流县', '350400', '1175');
INSERT INTO `sk_areas` VALUES ('350424', '宁化县', '福建省,三明市,宁化县', '350400', '1176');
INSERT INTO `sk_areas` VALUES ('350425', '大田县', '福建省,三明市,大田县', '350400', '1177');
INSERT INTO `sk_areas` VALUES ('350426', '尤溪县', '福建省,三明市,尤溪县', '350400', '1178');
INSERT INTO `sk_areas` VALUES ('350427', '沙　县', '福建省,三明市,沙　县', '350400', '1179');
INSERT INTO `sk_areas` VALUES ('350428', '将乐县', '福建省,三明市,将乐县', '350400', '1180');
INSERT INTO `sk_areas` VALUES ('350429', '泰宁县', '福建省,三明市,泰宁县', '350400', '1181');
INSERT INTO `sk_areas` VALUES ('350430', '建宁县', '福建省,三明市,建宁县', '350400', '1182');
INSERT INTO `sk_areas` VALUES ('350481', '永安市', '福建省,三明市,永安市', '350400', '1183');
INSERT INTO `sk_areas` VALUES ('350501', '市辖区', '福建省,泉州市,市辖区', '350500', '1184');
INSERT INTO `sk_areas` VALUES ('350502', '鲤城区', '福建省,泉州市,鲤城区', '350500', '1185');
INSERT INTO `sk_areas` VALUES ('350503', '丰泽区', '福建省,泉州市,丰泽区', '350500', '1186');
INSERT INTO `sk_areas` VALUES ('350504', '洛江区', '福建省,泉州市,洛江区', '350500', '1187');
INSERT INTO `sk_areas` VALUES ('350505', '泉港区', '福建省,泉州市,泉港区', '350500', '1188');
INSERT INTO `sk_areas` VALUES ('350521', '惠安县', '福建省,泉州市,惠安县', '350500', '1189');
INSERT INTO `sk_areas` VALUES ('350524', '安溪县', '福建省,泉州市,安溪县', '350500', '1190');
INSERT INTO `sk_areas` VALUES ('350525', '永春县', '福建省,泉州市,永春县', '350500', '1191');
INSERT INTO `sk_areas` VALUES ('350526', '德化县', '福建省,泉州市,德化县', '350500', '1192');
INSERT INTO `sk_areas` VALUES ('350527', '金门县', '福建省,泉州市,金门县', '350500', '1193');
INSERT INTO `sk_areas` VALUES ('350581', '石狮市', '福建省,泉州市,石狮市', '350500', '1194');
INSERT INTO `sk_areas` VALUES ('350582', '晋江市', '福建省,泉州市,晋江市', '350500', '1195');
INSERT INTO `sk_areas` VALUES ('350583', '南安市', '福建省,泉州市,南安市', '350500', '1196');
INSERT INTO `sk_areas` VALUES ('350601', '市辖区', '福建省,漳州市,市辖区', '350600', '1197');
INSERT INTO `sk_areas` VALUES ('350602', '芗城区', '福建省,漳州市,芗城区', '350600', '1198');
INSERT INTO `sk_areas` VALUES ('350603', '龙文区', '福建省,漳州市,龙文区', '350600', '1199');
INSERT INTO `sk_areas` VALUES ('350622', '云霄县', '福建省,漳州市,云霄县', '350600', '1200');
INSERT INTO `sk_areas` VALUES ('350623', '漳浦县', '福建省,漳州市,漳浦县', '350600', '1201');
INSERT INTO `sk_areas` VALUES ('350624', '诏安县', '福建省,漳州市,诏安县', '350600', '1202');
INSERT INTO `sk_areas` VALUES ('350625', '长泰县', '福建省,漳州市,长泰县', '350600', '1203');
INSERT INTO `sk_areas` VALUES ('350626', '东山县', '福建省,漳州市,东山县', '350600', '1204');
INSERT INTO `sk_areas` VALUES ('350627', '南靖县', '福建省,漳州市,南靖县', '350600', '1205');
INSERT INTO `sk_areas` VALUES ('350628', '平和县', '福建省,漳州市,平和县', '350600', '1206');
INSERT INTO `sk_areas` VALUES ('350629', '华安县', '福建省,漳州市,华安县', '350600', '1207');
INSERT INTO `sk_areas` VALUES ('350681', '龙海市', '福建省,漳州市,龙海市', '350600', '1208');
INSERT INTO `sk_areas` VALUES ('350701', '市辖区', '福建省,南平市,市辖区', '350700', '1209');
INSERT INTO `sk_areas` VALUES ('350702', '延平区', '福建省,南平市,延平区', '350700', '1210');
INSERT INTO `sk_areas` VALUES ('350721', '顺昌县', '福建省,南平市,顺昌县', '350700', '1211');
INSERT INTO `sk_areas` VALUES ('350722', '浦城县', '福建省,南平市,浦城县', '350700', '1212');
INSERT INTO `sk_areas` VALUES ('350723', '光泽县', '福建省,南平市,光泽县', '350700', '1213');
INSERT INTO `sk_areas` VALUES ('350724', '松溪县', '福建省,南平市,松溪县', '350700', '1214');
INSERT INTO `sk_areas` VALUES ('350725', '政和县', '福建省,南平市,政和县', '350700', '1215');
INSERT INTO `sk_areas` VALUES ('350781', '邵武市', '福建省,南平市,邵武市', '350700', '1216');
INSERT INTO `sk_areas` VALUES ('350782', '武夷山市', '福建省,南平市,武夷山市', '350700', '1217');
INSERT INTO `sk_areas` VALUES ('350783', '建瓯市', '福建省,南平市,建瓯市', '350700', '1218');
INSERT INTO `sk_areas` VALUES ('350784', '建阳市', '福建省,南平市,建阳市', '350700', '1219');
INSERT INTO `sk_areas` VALUES ('350801', '市辖区', '福建省,龙岩市,市辖区', '350800', '1220');
INSERT INTO `sk_areas` VALUES ('350802', '新罗区', '福建省,龙岩市,新罗区', '350800', '1221');
INSERT INTO `sk_areas` VALUES ('350821', '长汀县', '福建省,龙岩市,长汀县', '350800', '1222');
INSERT INTO `sk_areas` VALUES ('350822', '永定县', '福建省,龙岩市,永定县', '350800', '1223');
INSERT INTO `sk_areas` VALUES ('350823', '上杭县', '福建省,龙岩市,上杭县', '350800', '1224');
INSERT INTO `sk_areas` VALUES ('350824', '武平县', '福建省,龙岩市,武平县', '350800', '1225');
INSERT INTO `sk_areas` VALUES ('350825', '连城县', '福建省,龙岩市,连城县', '350800', '1226');
INSERT INTO `sk_areas` VALUES ('350881', '漳平市', '福建省,龙岩市,漳平市', '350800', '1227');
INSERT INTO `sk_areas` VALUES ('350901', '市辖区', '福建省,宁德市,市辖区', '350900', '1228');
INSERT INTO `sk_areas` VALUES ('350902', '蕉城区', '福建省,宁德市,蕉城区', '350900', '1229');
INSERT INTO `sk_areas` VALUES ('350921', '霞浦县', '福建省,宁德市,霞浦县', '350900', '1230');
INSERT INTO `sk_areas` VALUES ('350922', '古田县', '福建省,宁德市,古田县', '350900', '1231');
INSERT INTO `sk_areas` VALUES ('350923', '屏南县', '福建省,宁德市,屏南县', '350900', '1232');
INSERT INTO `sk_areas` VALUES ('350924', '寿宁县', '福建省,宁德市,寿宁县', '350900', '1233');
INSERT INTO `sk_areas` VALUES ('350925', '周宁县', '福建省,宁德市,周宁县', '350900', '1234');
INSERT INTO `sk_areas` VALUES ('350926', '柘荣县', '福建省,宁德市,柘荣县', '350900', '1235');
INSERT INTO `sk_areas` VALUES ('350981', '福安市', '福建省,宁德市,福安市', '350900', '1236');
INSERT INTO `sk_areas` VALUES ('350982', '福鼎市', '福建省,宁德市,福鼎市', '350900', '1237');
INSERT INTO `sk_areas` VALUES ('360101', '市辖区', '江西省,南昌市,市辖区', '360100', '1238');
INSERT INTO `sk_areas` VALUES ('360102', '东湖区', '江西省,南昌市,东湖区', '360100', '1239');
INSERT INTO `sk_areas` VALUES ('360103', '西湖区', '江西省,南昌市,西湖区', '360100', '1240');
INSERT INTO `sk_areas` VALUES ('360104', '青云谱区', '江西省,南昌市,青云谱区', '360100', '1241');
INSERT INTO `sk_areas` VALUES ('360105', '湾里区', '江西省,南昌市,湾里区', '360100', '1242');
INSERT INTO `sk_areas` VALUES ('360111', '青山湖区', '江西省,南昌市,青山湖区', '360100', '1243');
INSERT INTO `sk_areas` VALUES ('360121', '南昌县', '江西省,南昌市,南昌县', '360100', '1244');
INSERT INTO `sk_areas` VALUES ('360122', '新建县', '江西省,南昌市,新建县', '360100', '1245');
INSERT INTO `sk_areas` VALUES ('360123', '安义县', '江西省,南昌市,安义县', '360100', '1246');
INSERT INTO `sk_areas` VALUES ('360124', '进贤县', '江西省,南昌市,进贤县', '360100', '1247');
INSERT INTO `sk_areas` VALUES ('360201', '市辖区', '江西省,景德镇市,市辖区', '360200', '1248');
INSERT INTO `sk_areas` VALUES ('360202', '昌江区', '江西省,景德镇市,昌江区', '360200', '1249');
INSERT INTO `sk_areas` VALUES ('360203', '珠山区', '江西省,景德镇市,珠山区', '360200', '1250');
INSERT INTO `sk_areas` VALUES ('360222', '浮梁县', '江西省,景德镇市,浮梁县', '360200', '1251');
INSERT INTO `sk_areas` VALUES ('360281', '乐平市', '江西省,景德镇市,乐平市', '360200', '1252');
INSERT INTO `sk_areas` VALUES ('360301', '市辖区', '江西省,萍乡市,市辖区', '360300', '1253');
INSERT INTO `sk_areas` VALUES ('360302', '安源区', '江西省,萍乡市,安源区', '360300', '1254');
INSERT INTO `sk_areas` VALUES ('360313', '湘东区', '江西省,萍乡市,湘东区', '360300', '1255');
INSERT INTO `sk_areas` VALUES ('360321', '莲花县', '江西省,萍乡市,莲花县', '360300', '1256');
INSERT INTO `sk_areas` VALUES ('360322', '上栗县', '江西省,萍乡市,上栗县', '360300', '1257');
INSERT INTO `sk_areas` VALUES ('360323', '芦溪县', '江西省,萍乡市,芦溪县', '360300', '1258');
INSERT INTO `sk_areas` VALUES ('360401', '市辖区', '江西省,九江市,市辖区', '360400', '1259');
INSERT INTO `sk_areas` VALUES ('360402', '庐山区', '江西省,九江市,庐山区', '360400', '1260');
INSERT INTO `sk_areas` VALUES ('360403', '浔阳区', '江西省,九江市,浔阳区', '360400', '1261');
INSERT INTO `sk_areas` VALUES ('360421', '九江县', '江西省,九江市,九江县', '360400', '1262');
INSERT INTO `sk_areas` VALUES ('360423', '武宁县', '江西省,九江市,武宁县', '360400', '1263');
INSERT INTO `sk_areas` VALUES ('360424', '修水县', '江西省,九江市,修水县', '360400', '1264');
INSERT INTO `sk_areas` VALUES ('360425', '永修县', '江西省,九江市,永修县', '360400', '1265');
INSERT INTO `sk_areas` VALUES ('360426', '德安县', '江西省,九江市,德安县', '360400', '1266');
INSERT INTO `sk_areas` VALUES ('360427', '星子县', '江西省,九江市,星子县', '360400', '1267');
INSERT INTO `sk_areas` VALUES ('360428', '都昌县', '江西省,九江市,都昌县', '360400', '1268');
INSERT INTO `sk_areas` VALUES ('360429', '湖口县', '江西省,九江市,湖口县', '360400', '1269');
INSERT INTO `sk_areas` VALUES ('360430', '彭泽县', '江西省,九江市,彭泽县', '360400', '1270');
INSERT INTO `sk_areas` VALUES ('360481', '瑞昌市', '江西省,九江市,瑞昌市', '360400', '1271');
INSERT INTO `sk_areas` VALUES ('360501', '市辖区', '江西省,新余市,市辖区', '360500', '1272');
INSERT INTO `sk_areas` VALUES ('360502', '渝水区', '江西省,新余市,渝水区', '360500', '1273');
INSERT INTO `sk_areas` VALUES ('360521', '分宜县', '江西省,新余市,分宜县', '360500', '1274');
INSERT INTO `sk_areas` VALUES ('360601', '市辖区', '江西省,鹰潭市,市辖区', '360600', '1275');
INSERT INTO `sk_areas` VALUES ('360602', '月湖区', '江西省,鹰潭市,月湖区', '360600', '1276');
INSERT INTO `sk_areas` VALUES ('360622', '余江县', '江西省,鹰潭市,余江县', '360600', '1277');
INSERT INTO `sk_areas` VALUES ('360681', '贵溪市', '江西省,鹰潭市,贵溪市', '360600', '1278');
INSERT INTO `sk_areas` VALUES ('360701', '市辖区', '江西省,赣州市,市辖区', '360700', '1279');
INSERT INTO `sk_areas` VALUES ('360702', '章贡区', '江西省,赣州市,章贡区', '360700', '1280');
INSERT INTO `sk_areas` VALUES ('360721', '赣　县', '江西省,赣州市,赣　县', '360700', '1281');
INSERT INTO `sk_areas` VALUES ('360722', '信丰县', '江西省,赣州市,信丰县', '360700', '1282');
INSERT INTO `sk_areas` VALUES ('360723', '大余县', '江西省,赣州市,大余县', '360700', '1283');
INSERT INTO `sk_areas` VALUES ('360724', '上犹县', '江西省,赣州市,上犹县', '360700', '1284');
INSERT INTO `sk_areas` VALUES ('360725', '崇义县', '江西省,赣州市,崇义县', '360700', '1285');
INSERT INTO `sk_areas` VALUES ('360726', '安远县', '江西省,赣州市,安远县', '360700', '1286');
INSERT INTO `sk_areas` VALUES ('360727', '龙南县', '江西省,赣州市,龙南县', '360700', '1287');
INSERT INTO `sk_areas` VALUES ('360728', '定南县', '江西省,赣州市,定南县', '360700', '1288');
INSERT INTO `sk_areas` VALUES ('360729', '全南县', '江西省,赣州市,全南县', '360700', '1289');
INSERT INTO `sk_areas` VALUES ('360730', '宁都县', '江西省,赣州市,宁都县', '360700', '1290');
INSERT INTO `sk_areas` VALUES ('360731', '于都县', '江西省,赣州市,于都县', '360700', '1291');
INSERT INTO `sk_areas` VALUES ('360732', '兴国县', '江西省,赣州市,兴国县', '360700', '1292');
INSERT INTO `sk_areas` VALUES ('360733', '会昌县', '江西省,赣州市,会昌县', '360700', '1293');
INSERT INTO `sk_areas` VALUES ('360734', '寻乌县', '江西省,赣州市,寻乌县', '360700', '1294');
INSERT INTO `sk_areas` VALUES ('360735', '石城县', '江西省,赣州市,石城县', '360700', '1295');
INSERT INTO `sk_areas` VALUES ('360781', '瑞金市', '江西省,赣州市,瑞金市', '360700', '1296');
INSERT INTO `sk_areas` VALUES ('360782', '南康市', '江西省,赣州市,南康市', '360700', '1297');
INSERT INTO `sk_areas` VALUES ('360801', '市辖区', '江西省,吉安市,市辖区', '360800', '1298');
INSERT INTO `sk_areas` VALUES ('360802', '吉州区', '江西省,吉安市,吉州区', '360800', '1299');
INSERT INTO `sk_areas` VALUES ('360803', '青原区', '江西省,吉安市,青原区', '360800', '1300');
INSERT INTO `sk_areas` VALUES ('360821', '吉安县', '江西省,吉安市,吉安县', '360800', '1301');
INSERT INTO `sk_areas` VALUES ('360822', '吉水县', '江西省,吉安市,吉水县', '360800', '1302');
INSERT INTO `sk_areas` VALUES ('360823', '峡江县', '江西省,吉安市,峡江县', '360800', '1303');
INSERT INTO `sk_areas` VALUES ('360824', '新干县', '江西省,吉安市,新干县', '360800', '1304');
INSERT INTO `sk_areas` VALUES ('360825', '永丰县', '江西省,吉安市,永丰县', '360800', '1305');
INSERT INTO `sk_areas` VALUES ('360826', '泰和县', '江西省,吉安市,泰和县', '360800', '1306');
INSERT INTO `sk_areas` VALUES ('360827', '遂川县', '江西省,吉安市,遂川县', '360800', '1307');
INSERT INTO `sk_areas` VALUES ('360828', '万安县', '江西省,吉安市,万安县', '360800', '1308');
INSERT INTO `sk_areas` VALUES ('360829', '安福县', '江西省,吉安市,安福县', '360800', '1309');
INSERT INTO `sk_areas` VALUES ('360830', '永新县', '江西省,吉安市,永新县', '360800', '1310');
INSERT INTO `sk_areas` VALUES ('360881', '井冈山市', '江西省,吉安市,井冈山市', '360800', '1311');
INSERT INTO `sk_areas` VALUES ('360901', '市辖区', '江西省,宜春市,市辖区', '360900', '1312');
INSERT INTO `sk_areas` VALUES ('360902', '袁州区', '江西省,宜春市,袁州区', '360900', '1313');
INSERT INTO `sk_areas` VALUES ('360921', '奉新县', '江西省,宜春市,奉新县', '360900', '1314');
INSERT INTO `sk_areas` VALUES ('360922', '万载县', '江西省,宜春市,万载县', '360900', '1315');
INSERT INTO `sk_areas` VALUES ('360923', '上高县', '江西省,宜春市,上高县', '360900', '1316');
INSERT INTO `sk_areas` VALUES ('360924', '宜丰县', '江西省,宜春市,宜丰县', '360900', '1317');
INSERT INTO `sk_areas` VALUES ('360925', '靖安县', '江西省,宜春市,靖安县', '360900', '1318');
INSERT INTO `sk_areas` VALUES ('360926', '铜鼓县', '江西省,宜春市,铜鼓县', '360900', '1319');
INSERT INTO `sk_areas` VALUES ('360981', '丰城市', '江西省,宜春市,丰城市', '360900', '1320');
INSERT INTO `sk_areas` VALUES ('360982', '樟树市', '江西省,宜春市,樟树市', '360900', '1321');
INSERT INTO `sk_areas` VALUES ('360983', '高安市', '江西省,宜春市,高安市', '360900', '1322');
INSERT INTO `sk_areas` VALUES ('361001', '市辖区', '江西省,抚州市,市辖区', '361000', '1323');
INSERT INTO `sk_areas` VALUES ('361002', '临川区', '江西省,抚州市,临川区', '361000', '1324');
INSERT INTO `sk_areas` VALUES ('361021', '南城县', '江西省,抚州市,南城县', '361000', '1325');
INSERT INTO `sk_areas` VALUES ('361022', '黎川县', '江西省,抚州市,黎川县', '361000', '1326');
INSERT INTO `sk_areas` VALUES ('361023', '南丰县', '江西省,抚州市,南丰县', '361000', '1327');
INSERT INTO `sk_areas` VALUES ('361024', '崇仁县', '江西省,抚州市,崇仁县', '361000', '1328');
INSERT INTO `sk_areas` VALUES ('361025', '乐安县', '江西省,抚州市,乐安县', '361000', '1329');
INSERT INTO `sk_areas` VALUES ('361026', '宜黄县', '江西省,抚州市,宜黄县', '361000', '1330');
INSERT INTO `sk_areas` VALUES ('361027', '金溪县', '江西省,抚州市,金溪县', '361000', '1331');
INSERT INTO `sk_areas` VALUES ('361028', '资溪县', '江西省,抚州市,资溪县', '361000', '1332');
INSERT INTO `sk_areas` VALUES ('361029', '东乡县', '江西省,抚州市,东乡县', '361000', '1333');
INSERT INTO `sk_areas` VALUES ('361030', '广昌县', '江西省,抚州市,广昌县', '361000', '1334');
INSERT INTO `sk_areas` VALUES ('361101', '市辖区', '江西省,上饶市,市辖区', '361100', '1335');
INSERT INTO `sk_areas` VALUES ('361102', '信州区', '江西省,上饶市,信州区', '361100', '1336');
INSERT INTO `sk_areas` VALUES ('361121', '上饶县', '江西省,上饶市,上饶县', '361100', '1337');
INSERT INTO `sk_areas` VALUES ('361122', '广丰县', '江西省,上饶市,广丰县', '361100', '1338');
INSERT INTO `sk_areas` VALUES ('361123', '玉山县', '江西省,上饶市,玉山县', '361100', '1339');
INSERT INTO `sk_areas` VALUES ('361124', '铅山县', '江西省,上饶市,铅山县', '361100', '1340');
INSERT INTO `sk_areas` VALUES ('361125', '横峰县', '江西省,上饶市,横峰县', '361100', '1341');
INSERT INTO `sk_areas` VALUES ('361126', '弋阳县', '江西省,上饶市,弋阳县', '361100', '1342');
INSERT INTO `sk_areas` VALUES ('361127', '余干县', '江西省,上饶市,余干县', '361100', '1343');
INSERT INTO `sk_areas` VALUES ('361128', '鄱阳县', '江西省,上饶市,鄱阳县', '361100', '1344');
INSERT INTO `sk_areas` VALUES ('361129', '万年县', '江西省,上饶市,万年县', '361100', '1345');
INSERT INTO `sk_areas` VALUES ('361130', '婺源县', '江西省,上饶市,婺源县', '361100', '1346');
INSERT INTO `sk_areas` VALUES ('361181', '德兴市', '江西省,上饶市,德兴市', '361100', '1347');
INSERT INTO `sk_areas` VALUES ('370101', '市辖区', '山东省,济南市,市辖区', '370100', '1348');
INSERT INTO `sk_areas` VALUES ('370102', '历下区', '山东省,济南市,历下区', '370100', '1349');
INSERT INTO `sk_areas` VALUES ('370103', '市中区', '山东省,济南市,市中区', '370100', '1350');
INSERT INTO `sk_areas` VALUES ('370104', '槐荫区', '山东省,济南市,槐荫区', '370100', '1351');
INSERT INTO `sk_areas` VALUES ('370105', '天桥区', '山东省,济南市,天桥区', '370100', '1352');
INSERT INTO `sk_areas` VALUES ('370112', '历城区', '山东省,济南市,历城区', '370100', '1353');
INSERT INTO `sk_areas` VALUES ('370113', '长清区', '山东省,济南市,长清区', '370100', '1354');
INSERT INTO `sk_areas` VALUES ('370124', '平阴县', '山东省,济南市,平阴县', '370100', '1355');
INSERT INTO `sk_areas` VALUES ('370125', '济阳县', '山东省,济南市,济阳县', '370100', '1356');
INSERT INTO `sk_areas` VALUES ('370126', '商河县', '山东省,济南市,商河县', '370100', '1357');
INSERT INTO `sk_areas` VALUES ('370181', '章丘市', '山东省,济南市,章丘市', '370100', '1358');
INSERT INTO `sk_areas` VALUES ('370201', '市辖区', '山东省,青岛市,市辖区', '370200', '1359');
INSERT INTO `sk_areas` VALUES ('370202', '市南区', '山东省,青岛市,市南区', '370200', '1360');
INSERT INTO `sk_areas` VALUES ('370203', '市北区', '山东省,青岛市,市北区', '370200', '1361');
INSERT INTO `sk_areas` VALUES ('370205', '四方区', '山东省,青岛市,四方区', '370200', '1362');
INSERT INTO `sk_areas` VALUES ('370211', '黄岛区', '山东省,青岛市,黄岛区', '370200', '1363');
INSERT INTO `sk_areas` VALUES ('370212', '崂山区', '山东省,青岛市,崂山区', '370200', '1364');
INSERT INTO `sk_areas` VALUES ('370213', '李沧区', '山东省,青岛市,李沧区', '370200', '1365');
INSERT INTO `sk_areas` VALUES ('370214', '城阳区', '山东省,青岛市,城阳区', '370200', '1366');
INSERT INTO `sk_areas` VALUES ('370281', '胶州市', '山东省,青岛市,胶州市', '370200', '1367');
INSERT INTO `sk_areas` VALUES ('370282', '即墨市', '山东省,青岛市,即墨市', '370200', '1368');
INSERT INTO `sk_areas` VALUES ('370283', '平度市', '山东省,青岛市,平度市', '370200', '1369');
INSERT INTO `sk_areas` VALUES ('370284', '胶南市', '山东省,青岛市,胶南市', '370200', '1370');
INSERT INTO `sk_areas` VALUES ('370285', '莱西市', '山东省,青岛市,莱西市', '370200', '1371');
INSERT INTO `sk_areas` VALUES ('370301', '市辖区', '山东省,淄博市,市辖区', '370300', '1372');
INSERT INTO `sk_areas` VALUES ('370302', '淄川区', '山东省,淄博市,淄川区', '370300', '1373');
INSERT INTO `sk_areas` VALUES ('370303', '张店区', '山东省,淄博市,张店区', '370300', '1374');
INSERT INTO `sk_areas` VALUES ('370304', '博山区', '山东省,淄博市,博山区', '370300', '1375');
INSERT INTO `sk_areas` VALUES ('370305', '临淄区', '山东省,淄博市,临淄区', '370300', '1376');
INSERT INTO `sk_areas` VALUES ('370306', '周村区', '山东省,淄博市,周村区', '370300', '1377');
INSERT INTO `sk_areas` VALUES ('370321', '桓台县', '山东省,淄博市,桓台县', '370300', '1378');
INSERT INTO `sk_areas` VALUES ('370322', '高青县', '山东省,淄博市,高青县', '370300', '1379');
INSERT INTO `sk_areas` VALUES ('370323', '沂源县', '山东省,淄博市,沂源县', '370300', '1380');
INSERT INTO `sk_areas` VALUES ('370401', '市辖区', '山东省,枣庄市,市辖区', '370400', '1381');
INSERT INTO `sk_areas` VALUES ('370402', '市中区', '山东省,枣庄市,市中区', '370400', '1382');
INSERT INTO `sk_areas` VALUES ('370403', '薛城区', '山东省,枣庄市,薛城区', '370400', '1383');
INSERT INTO `sk_areas` VALUES ('370404', '峄城区', '山东省,枣庄市,峄城区', '370400', '1384');
INSERT INTO `sk_areas` VALUES ('370405', '台儿庄区', '山东省,枣庄市,台儿庄区', '370400', '1385');
INSERT INTO `sk_areas` VALUES ('370406', '山亭区', '山东省,枣庄市,山亭区', '370400', '1386');
INSERT INTO `sk_areas` VALUES ('370481', '滕州市', '山东省,枣庄市,滕州市', '370400', '1387');
INSERT INTO `sk_areas` VALUES ('370501', '市辖区', '山东省,东营市,市辖区', '370500', '1388');
INSERT INTO `sk_areas` VALUES ('370502', '东营区', '山东省,东营市,东营区', '370500', '1389');
INSERT INTO `sk_areas` VALUES ('370503', '河口区', '山东省,东营市,河口区', '370500', '1390');
INSERT INTO `sk_areas` VALUES ('370521', '垦利县', '山东省,东营市,垦利县', '370500', '1391');
INSERT INTO `sk_areas` VALUES ('370522', '利津县', '山东省,东营市,利津县', '370500', '1392');
INSERT INTO `sk_areas` VALUES ('370523', '广饶县', '山东省,东营市,广饶县', '370500', '1393');
INSERT INTO `sk_areas` VALUES ('370601', '市辖区', '山东省,烟台市,市辖区', '370600', '1394');
INSERT INTO `sk_areas` VALUES ('370602', '芝罘区', '山东省,烟台市,芝罘区', '370600', '1395');
INSERT INTO `sk_areas` VALUES ('370611', '福山区', '山东省,烟台市,福山区', '370600', '1396');
INSERT INTO `sk_areas` VALUES ('370612', '牟平区', '山东省,烟台市,牟平区', '370600', '1397');
INSERT INTO `sk_areas` VALUES ('370613', '莱山区', '山东省,烟台市,莱山区', '370600', '1398');
INSERT INTO `sk_areas` VALUES ('370634', '长岛县', '山东省,烟台市,长岛县', '370600', '1399');
INSERT INTO `sk_areas` VALUES ('370681', '龙口市', '山东省,烟台市,龙口市', '370600', '1400');
INSERT INTO `sk_areas` VALUES ('370682', '莱阳市', '山东省,烟台市,莱阳市', '370600', '1401');
INSERT INTO `sk_areas` VALUES ('370683', '莱州市', '山东省,烟台市,莱州市', '370600', '1402');
INSERT INTO `sk_areas` VALUES ('370684', '蓬莱市', '山东省,烟台市,蓬莱市', '370600', '1403');
INSERT INTO `sk_areas` VALUES ('370685', '招远市', '山东省,烟台市,招远市', '370600', '1404');
INSERT INTO `sk_areas` VALUES ('370686', '栖霞市', '山东省,烟台市,栖霞市', '370600', '1405');
INSERT INTO `sk_areas` VALUES ('370687', '海阳市', '山东省,烟台市,海阳市', '370600', '1406');
INSERT INTO `sk_areas` VALUES ('370701', '市辖区', '山东省,潍坊市,市辖区', '370700', '1407');
INSERT INTO `sk_areas` VALUES ('370702', '潍城区', '山东省,潍坊市,潍城区', '370700', '1408');
INSERT INTO `sk_areas` VALUES ('370703', '寒亭区', '山东省,潍坊市,寒亭区', '370700', '1409');
INSERT INTO `sk_areas` VALUES ('370704', '坊子区', '山东省,潍坊市,坊子区', '370700', '1410');
INSERT INTO `sk_areas` VALUES ('370705', '奎文区', '山东省,潍坊市,奎文区', '370700', '1411');
INSERT INTO `sk_areas` VALUES ('370724', '临朐县', '山东省,潍坊市,临朐县', '370700', '1412');
INSERT INTO `sk_areas` VALUES ('370725', '昌乐县', '山东省,潍坊市,昌乐县', '370700', '1413');
INSERT INTO `sk_areas` VALUES ('370781', '青州市', '山东省,潍坊市,青州市', '370700', '1414');
INSERT INTO `sk_areas` VALUES ('370782', '诸城市', '山东省,潍坊市,诸城市', '370700', '1415');
INSERT INTO `sk_areas` VALUES ('370783', '寿光市', '山东省,潍坊市,寿光市', '370700', '1416');
INSERT INTO `sk_areas` VALUES ('370784', '安丘市', '山东省,潍坊市,安丘市', '370700', '1417');
INSERT INTO `sk_areas` VALUES ('370785', '高密市', '山东省,潍坊市,高密市', '370700', '1418');
INSERT INTO `sk_areas` VALUES ('370786', '昌邑市', '山东省,潍坊市,昌邑市', '370700', '1419');
INSERT INTO `sk_areas` VALUES ('370801', '市辖区', '山东省,济宁市,市辖区', '370800', '1420');
INSERT INTO `sk_areas` VALUES ('370802', '市中区', '山东省,济宁市,市中区', '370800', '1421');
INSERT INTO `sk_areas` VALUES ('370811', '任城区', '山东省,济宁市,任城区', '370800', '1422');
INSERT INTO `sk_areas` VALUES ('370826', '微山县', '山东省,济宁市,微山县', '370800', '1423');
INSERT INTO `sk_areas` VALUES ('370827', '鱼台县', '山东省,济宁市,鱼台县', '370800', '1424');
INSERT INTO `sk_areas` VALUES ('370828', '金乡县', '山东省,济宁市,金乡县', '370800', '1425');
INSERT INTO `sk_areas` VALUES ('370829', '嘉祥县', '山东省,济宁市,嘉祥县', '370800', '1426');
INSERT INTO `sk_areas` VALUES ('370830', '汶上县', '山东省,济宁市,汶上县', '370800', '1427');
INSERT INTO `sk_areas` VALUES ('370831', '泗水县', '山东省,济宁市,泗水县', '370800', '1428');
INSERT INTO `sk_areas` VALUES ('370832', '梁山县', '山东省,济宁市,梁山县', '370800', '1429');
INSERT INTO `sk_areas` VALUES ('370881', '曲阜市', '山东省,济宁市,曲阜市', '370800', '1430');
INSERT INTO `sk_areas` VALUES ('370882', '兖州市', '山东省,济宁市,兖州市', '370800', '1431');
INSERT INTO `sk_areas` VALUES ('370883', '邹城市', '山东省,济宁市,邹城市', '370800', '1432');
INSERT INTO `sk_areas` VALUES ('370901', '市辖区', '山东省,泰安市,市辖区', '370900', '1433');
INSERT INTO `sk_areas` VALUES ('370902', '泰山区', '山东省,泰安市,泰山区', '370900', '1434');
INSERT INTO `sk_areas` VALUES ('370903', '岱岳区', '山东省,泰安市,岱岳区', '370900', '1435');
INSERT INTO `sk_areas` VALUES ('370921', '宁阳县', '山东省,泰安市,宁阳县', '370900', '1436');
INSERT INTO `sk_areas` VALUES ('370923', '东平县', '山东省,泰安市,东平县', '370900', '1437');
INSERT INTO `sk_areas` VALUES ('370982', '新泰市', '山东省,泰安市,新泰市', '370900', '1438');
INSERT INTO `sk_areas` VALUES ('370983', '肥城市', '山东省,泰安市,肥城市', '370900', '1439');
INSERT INTO `sk_areas` VALUES ('371001', '市辖区', '山东省,威海市,市辖区', '371000', '1440');
INSERT INTO `sk_areas` VALUES ('371002', '环翠区', '山东省,威海市,环翠区', '371000', '1441');
INSERT INTO `sk_areas` VALUES ('371081', '文登市', '山东省,威海市,文登市', '371000', '1442');
INSERT INTO `sk_areas` VALUES ('371082', '荣成市', '山东省,威海市,荣成市', '371000', '1443');
INSERT INTO `sk_areas` VALUES ('371083', '乳山市', '山东省,威海市,乳山市', '371000', '1444');
INSERT INTO `sk_areas` VALUES ('371101', '市辖区', '山东省,日照市,市辖区', '371100', '1445');
INSERT INTO `sk_areas` VALUES ('371102', '东港区', '山东省,日照市,东港区', '371100', '1446');
INSERT INTO `sk_areas` VALUES ('371103', '岚山区', '山东省,日照市,岚山区', '371100', '1447');
INSERT INTO `sk_areas` VALUES ('371121', '五莲县', '山东省,日照市,五莲县', '371100', '1448');
INSERT INTO `sk_areas` VALUES ('371122', '莒　县', '山东省,日照市,莒　县', '371100', '1449');
INSERT INTO `sk_areas` VALUES ('371201', '市辖区', '山东省,莱芜市,市辖区', '371200', '1450');
INSERT INTO `sk_areas` VALUES ('371202', '莱城区', '山东省,莱芜市,莱城区', '371200', '1451');
INSERT INTO `sk_areas` VALUES ('371203', '钢城区', '山东省,莱芜市,钢城区', '371200', '1452');
INSERT INTO `sk_areas` VALUES ('371301', '市辖区', '山东省,临沂市,市辖区', '371300', '1453');
INSERT INTO `sk_areas` VALUES ('371302', '兰山区', '山东省,临沂市,兰山区', '371300', '1454');
INSERT INTO `sk_areas` VALUES ('371311', '罗庄区', '山东省,临沂市,罗庄区', '371300', '1455');
INSERT INTO `sk_areas` VALUES ('371312', '河东区', '山东省,临沂市,河东区', '371300', '1456');
INSERT INTO `sk_areas` VALUES ('371321', '沂南县', '山东省,临沂市,沂南县', '371300', '1457');
INSERT INTO `sk_areas` VALUES ('371322', '郯城县', '山东省,临沂市,郯城县', '371300', '1458');
INSERT INTO `sk_areas` VALUES ('371323', '沂水县', '山东省,临沂市,沂水县', '371300', '1459');
INSERT INTO `sk_areas` VALUES ('371324', '苍山县', '山东省,临沂市,苍山县', '371300', '1460');
INSERT INTO `sk_areas` VALUES ('371325', '费　县', '山东省,临沂市,费　县', '371300', '1461');
INSERT INTO `sk_areas` VALUES ('371326', '平邑县', '山东省,临沂市,平邑县', '371300', '1462');
INSERT INTO `sk_areas` VALUES ('371327', '莒南县', '山东省,临沂市,莒南县', '371300', '1463');
INSERT INTO `sk_areas` VALUES ('371328', '蒙阴县', '山东省,临沂市,蒙阴县', '371300', '1464');
INSERT INTO `sk_areas` VALUES ('371329', '临沭县', '山东省,临沂市,临沭县', '371300', '1465');
INSERT INTO `sk_areas` VALUES ('371401', '市辖区', '山东省,德州市,市辖区', '371400', '1466');
INSERT INTO `sk_areas` VALUES ('371402', '德城区', '山东省,德州市,德城区', '371400', '1467');
INSERT INTO `sk_areas` VALUES ('371421', '陵　县', '山东省,德州市,陵　县', '371400', '1468');
INSERT INTO `sk_areas` VALUES ('371422', '宁津县', '山东省,德州市,宁津县', '371400', '1469');
INSERT INTO `sk_areas` VALUES ('371423', '庆云县', '山东省,德州市,庆云县', '371400', '1470');
INSERT INTO `sk_areas` VALUES ('371424', '临邑县', '山东省,德州市,临邑县', '371400', '1471');
INSERT INTO `sk_areas` VALUES ('371425', '齐河县', '山东省,德州市,齐河县', '371400', '1472');
INSERT INTO `sk_areas` VALUES ('371426', '平原县', '山东省,德州市,平原县', '371400', '1473');
INSERT INTO `sk_areas` VALUES ('371427', '夏津县', '山东省,德州市,夏津县', '371400', '1474');
INSERT INTO `sk_areas` VALUES ('371428', '武城县', '山东省,德州市,武城县', '371400', '1475');
INSERT INTO `sk_areas` VALUES ('371481', '乐陵市', '山东省,德州市,乐陵市', '371400', '1476');
INSERT INTO `sk_areas` VALUES ('371482', '禹城市', '山东省,德州市,禹城市', '371400', '1477');
INSERT INTO `sk_areas` VALUES ('371501', '市辖区', '山东省,聊城市,市辖区', '371500', '1478');
INSERT INTO `sk_areas` VALUES ('371502', '东昌府区', '山东省,聊城市,东昌府区', '371500', '1479');
INSERT INTO `sk_areas` VALUES ('371521', '阳谷县', '山东省,聊城市,阳谷县', '371500', '1480');
INSERT INTO `sk_areas` VALUES ('371522', '莘　县', '山东省,聊城市,莘　县', '371500', '1481');
INSERT INTO `sk_areas` VALUES ('371523', '茌平县', '山东省,聊城市,茌平县', '371500', '1482');
INSERT INTO `sk_areas` VALUES ('371524', '东阿县', '山东省,聊城市,东阿县', '371500', '1483');
INSERT INTO `sk_areas` VALUES ('371525', '冠　县', '山东省,聊城市,冠　县', '371500', '1484');
INSERT INTO `sk_areas` VALUES ('371526', '高唐县', '山东省,聊城市,高唐县', '371500', '1485');
INSERT INTO `sk_areas` VALUES ('371581', '临清市', '山东省,聊城市,临清市', '371500', '1486');
INSERT INTO `sk_areas` VALUES ('371601', '市辖区', '山东省,滨州市,市辖区', '371600', '1487');
INSERT INTO `sk_areas` VALUES ('371602', '滨城区', '山东省,滨州市,滨城区', '371600', '1488');
INSERT INTO `sk_areas` VALUES ('371621', '惠民县', '山东省,滨州市,惠民县', '371600', '1489');
INSERT INTO `sk_areas` VALUES ('371622', '阳信县', '山东省,滨州市,阳信县', '371600', '1490');
INSERT INTO `sk_areas` VALUES ('371623', '无棣县', '山东省,滨州市,无棣县', '371600', '1491');
INSERT INTO `sk_areas` VALUES ('371624', '沾化县', '山东省,滨州市,沾化县', '371600', '1492');
INSERT INTO `sk_areas` VALUES ('371625', '博兴县', '山东省,滨州市,博兴县', '371600', '1493');
INSERT INTO `sk_areas` VALUES ('371626', '邹平县', '山东省,滨州市,邹平县', '371600', '1494');
INSERT INTO `sk_areas` VALUES ('371701', '市辖区', '山东省,荷泽市,市辖区', '371700', '1495');
INSERT INTO `sk_areas` VALUES ('371702', '牡丹区', '山东省,荷泽市,牡丹区', '371700', '1496');
INSERT INTO `sk_areas` VALUES ('371721', '曹　县', '山东省,荷泽市,曹　县', '371700', '1497');
INSERT INTO `sk_areas` VALUES ('371722', '单　县', '山东省,荷泽市,单　县', '371700', '1498');
INSERT INTO `sk_areas` VALUES ('371723', '成武县', '山东省,荷泽市,成武县', '371700', '1499');
INSERT INTO `sk_areas` VALUES ('371724', '巨野县', '山东省,荷泽市,巨野县', '371700', '1500');
INSERT INTO `sk_areas` VALUES ('371725', '郓城县', '山东省,荷泽市,郓城县', '371700', '1501');
INSERT INTO `sk_areas` VALUES ('371726', '鄄城县', '山东省,荷泽市,鄄城县', '371700', '1502');
INSERT INTO `sk_areas` VALUES ('371727', '定陶县', '山东省,荷泽市,定陶县', '371700', '1503');
INSERT INTO `sk_areas` VALUES ('371728', '东明县', '山东省,荷泽市,东明县', '371700', '1504');
INSERT INTO `sk_areas` VALUES ('410101', '市辖区', '河南省,郑州市,市辖区', '410100', '1505');
INSERT INTO `sk_areas` VALUES ('410102', '中原区', '河南省,郑州市,中原区', '410100', '1506');
INSERT INTO `sk_areas` VALUES ('410103', '二七区', '河南省,郑州市,二七区', '410100', '1507');
INSERT INTO `sk_areas` VALUES ('410104', '管城回族区', '河南省,郑州市,管城回族区', '410100', '1508');
INSERT INTO `sk_areas` VALUES ('410105', '金水区', '河南省,郑州市,金水区', '410100', '1509');
INSERT INTO `sk_areas` VALUES ('410106', '上街区', '河南省,郑州市,上街区', '410100', '1510');
INSERT INTO `sk_areas` VALUES ('410108', '邙山区', '河南省,郑州市,邙山区', '410100', '1511');
INSERT INTO `sk_areas` VALUES ('410122', '中牟县', '河南省,郑州市,中牟县', '410100', '1512');
INSERT INTO `sk_areas` VALUES ('410181', '巩义市', '河南省,郑州市,巩义市', '410100', '1513');
INSERT INTO `sk_areas` VALUES ('410182', '荥阳市', '河南省,郑州市,荥阳市', '410100', '1514');
INSERT INTO `sk_areas` VALUES ('410183', '新密市', '河南省,郑州市,新密市', '410100', '1515');
INSERT INTO `sk_areas` VALUES ('410184', '新郑市', '河南省,郑州市,新郑市', '410100', '1516');
INSERT INTO `sk_areas` VALUES ('410185', '登封市', '河南省,郑州市,登封市', '410100', '1517');
INSERT INTO `sk_areas` VALUES ('410201', '市辖区', '河南省,开封市,市辖区', '410200', '1518');
INSERT INTO `sk_areas` VALUES ('410202', '龙亭区', '河南省,开封市,龙亭区', '410200', '1519');
INSERT INTO `sk_areas` VALUES ('410203', '顺河回族区', '河南省,开封市,顺河回族区', '410200', '1520');
INSERT INTO `sk_areas` VALUES ('410204', '鼓楼区', '河南省,开封市,鼓楼区', '410200', '1521');
INSERT INTO `sk_areas` VALUES ('410205', '南关区', '河南省,开封市,南关区', '410200', '1522');
INSERT INTO `sk_areas` VALUES ('410211', '郊　区', '河南省,开封市,郊　区', '410200', '1523');
INSERT INTO `sk_areas` VALUES ('410221', '杞　县', '河南省,开封市,杞　县', '410200', '1524');
INSERT INTO `sk_areas` VALUES ('410222', '通许县', '河南省,开封市,通许县', '410200', '1525');
INSERT INTO `sk_areas` VALUES ('410223', '尉氏县', '河南省,开封市,尉氏县', '410200', '1526');
INSERT INTO `sk_areas` VALUES ('410224', '开封县', '河南省,开封市,开封县', '410200', '1527');
INSERT INTO `sk_areas` VALUES ('410225', '兰考县', '河南省,开封市,兰考县', '410200', '1528');
INSERT INTO `sk_areas` VALUES ('410301', '市辖区', '河南省,洛阳市,市辖区', '410300', '1529');
INSERT INTO `sk_areas` VALUES ('410302', '老城区', '河南省,洛阳市,老城区', '410300', '1530');
INSERT INTO `sk_areas` VALUES ('410303', '西工区', '河南省,洛阳市,西工区', '410300', '1531');
INSERT INTO `sk_areas` VALUES ('410304', '廛河回族区', '河南省,洛阳市,廛河回族区', '410300', '1532');
INSERT INTO `sk_areas` VALUES ('410305', '涧西区', '河南省,洛阳市,涧西区', '410300', '1533');
INSERT INTO `sk_areas` VALUES ('410306', '吉利区', '河南省,洛阳市,吉利区', '410300', '1534');
INSERT INTO `sk_areas` VALUES ('410307', '洛龙区', '河南省,洛阳市,洛龙区', '410300', '1535');
INSERT INTO `sk_areas` VALUES ('410322', '孟津县', '河南省,洛阳市,孟津县', '410300', '1536');
INSERT INTO `sk_areas` VALUES ('410323', '新安县', '河南省,洛阳市,新安县', '410300', '1537');
INSERT INTO `sk_areas` VALUES ('410324', '栾川县', '河南省,洛阳市,栾川县', '410300', '1538');
INSERT INTO `sk_areas` VALUES ('410325', '嵩　县', '河南省,洛阳市,嵩　县', '410300', '1539');
INSERT INTO `sk_areas` VALUES ('410326', '汝阳县', '河南省,洛阳市,汝阳县', '410300', '1540');
INSERT INTO `sk_areas` VALUES ('410327', '宜阳县', '河南省,洛阳市,宜阳县', '410300', '1541');
INSERT INTO `sk_areas` VALUES ('410328', '洛宁县', '河南省,洛阳市,洛宁县', '410300', '1542');
INSERT INTO `sk_areas` VALUES ('410329', '伊川县', '河南省,洛阳市,伊川县', '410300', '1543');
INSERT INTO `sk_areas` VALUES ('410381', '偃师市', '河南省,洛阳市,偃师市', '410300', '1544');
INSERT INTO `sk_areas` VALUES ('410401', '市辖区', '河南省,平顶山市,市辖区', '410400', '1545');
INSERT INTO `sk_areas` VALUES ('410402', '新华区', '河南省,平顶山市,新华区', '410400', '1546');
INSERT INTO `sk_areas` VALUES ('410403', '卫东区', '河南省,平顶山市,卫东区', '410400', '1547');
INSERT INTO `sk_areas` VALUES ('410404', '石龙区', '河南省,平顶山市,石龙区', '410400', '1548');
INSERT INTO `sk_areas` VALUES ('410411', '湛河区', '河南省,平顶山市,湛河区', '410400', '1549');
INSERT INTO `sk_areas` VALUES ('410421', '宝丰县', '河南省,平顶山市,宝丰县', '410400', '1550');
INSERT INTO `sk_areas` VALUES ('410422', '叶　县', '河南省,平顶山市,叶　县', '410400', '1551');
INSERT INTO `sk_areas` VALUES ('410423', '鲁山县', '河南省,平顶山市,鲁山县', '410400', '1552');
INSERT INTO `sk_areas` VALUES ('410425', '郏　县', '河南省,平顶山市,郏　县', '410400', '1553');
INSERT INTO `sk_areas` VALUES ('410481', '舞钢市', '河南省,平顶山市,舞钢市', '410400', '1554');
INSERT INTO `sk_areas` VALUES ('410482', '汝州市', '河南省,平顶山市,汝州市', '410400', '1555');
INSERT INTO `sk_areas` VALUES ('410501', '市辖区', '河南省,安阳市,市辖区', '410500', '1556');
INSERT INTO `sk_areas` VALUES ('410502', '文峰区', '河南省,安阳市,文峰区', '410500', '1557');
INSERT INTO `sk_areas` VALUES ('410503', '北关区', '河南省,安阳市,北关区', '410500', '1558');
INSERT INTO `sk_areas` VALUES ('410505', '殷都区', '河南省,安阳市,殷都区', '410500', '1559');
INSERT INTO `sk_areas` VALUES ('410506', '龙安区', '河南省,安阳市,龙安区', '410500', '1560');
INSERT INTO `sk_areas` VALUES ('410522', '安阳县', '河南省,安阳市,安阳县', '410500', '1561');
INSERT INTO `sk_areas` VALUES ('410523', '汤阴县', '河南省,安阳市,汤阴县', '410500', '1562');
INSERT INTO `sk_areas` VALUES ('410526', '滑　县', '河南省,安阳市,滑　县', '410500', '1563');
INSERT INTO `sk_areas` VALUES ('410527', '内黄县', '河南省,安阳市,内黄县', '410500', '1564');
INSERT INTO `sk_areas` VALUES ('410581', '林州市', '河南省,安阳市,林州市', '410500', '1565');
INSERT INTO `sk_areas` VALUES ('410601', '市辖区', '河南省,鹤壁市,市辖区', '410600', '1566');
INSERT INTO `sk_areas` VALUES ('410602', '鹤山区', '河南省,鹤壁市,鹤山区', '410600', '1567');
INSERT INTO `sk_areas` VALUES ('410603', '山城区', '河南省,鹤壁市,山城区', '410600', '1568');
INSERT INTO `sk_areas` VALUES ('410611', '淇滨区', '河南省,鹤壁市,淇滨区', '410600', '1569');
INSERT INTO `sk_areas` VALUES ('410621', '浚　县', '河南省,鹤壁市,浚　县', '410600', '1570');
INSERT INTO `sk_areas` VALUES ('410622', '淇　县', '河南省,鹤壁市,淇　县', '410600', '1571');
INSERT INTO `sk_areas` VALUES ('410701', '市辖区', '河南省,新乡市,市辖区', '410700', '1572');
INSERT INTO `sk_areas` VALUES ('410702', '红旗区', '河南省,新乡市,红旗区', '410700', '1573');
INSERT INTO `sk_areas` VALUES ('410703', '卫滨区', '河南省,新乡市,卫滨区', '410700', '1574');
INSERT INTO `sk_areas` VALUES ('410704', '凤泉区', '河南省,新乡市,凤泉区', '410700', '1575');
INSERT INTO `sk_areas` VALUES ('410711', '牧野区', '河南省,新乡市,牧野区', '410700', '1576');
INSERT INTO `sk_areas` VALUES ('410721', '新乡县', '河南省,新乡市,新乡县', '410700', '1577');
INSERT INTO `sk_areas` VALUES ('410724', '获嘉县', '河南省,新乡市,获嘉县', '410700', '1578');
INSERT INTO `sk_areas` VALUES ('410725', '原阳县', '河南省,新乡市,原阳县', '410700', '1579');
INSERT INTO `sk_areas` VALUES ('410726', '延津县', '河南省,新乡市,延津县', '410700', '1580');
INSERT INTO `sk_areas` VALUES ('410727', '封丘县', '河南省,新乡市,封丘县', '410700', '1581');
INSERT INTO `sk_areas` VALUES ('410728', '长垣县', '河南省,新乡市,长垣县', '410700', '1582');
INSERT INTO `sk_areas` VALUES ('410781', '卫辉市', '河南省,新乡市,卫辉市', '410700', '1583');
INSERT INTO `sk_areas` VALUES ('410782', '辉县市', '河南省,新乡市,辉县市', '410700', '1584');
INSERT INTO `sk_areas` VALUES ('410801', '市辖区', '河南省,焦作市,市辖区', '410800', '1585');
INSERT INTO `sk_areas` VALUES ('410802', '解放区', '河南省,焦作市,解放区', '410800', '1586');
INSERT INTO `sk_areas` VALUES ('410803', '中站区', '河南省,焦作市,中站区', '410800', '1587');
INSERT INTO `sk_areas` VALUES ('410804', '马村区', '河南省,焦作市,马村区', '410800', '1588');
INSERT INTO `sk_areas` VALUES ('410811', '山阳区', '河南省,焦作市,山阳区', '410800', '1589');
INSERT INTO `sk_areas` VALUES ('410821', '修武县', '河南省,焦作市,修武县', '410800', '1590');
INSERT INTO `sk_areas` VALUES ('410822', '博爱县', '河南省,焦作市,博爱县', '410800', '1591');
INSERT INTO `sk_areas` VALUES ('410823', '武陟县', '河南省,焦作市,武陟县', '410800', '1592');
INSERT INTO `sk_areas` VALUES ('410825', '温　县', '河南省,焦作市,温　县', '410800', '1593');
INSERT INTO `sk_areas` VALUES ('410881', '济源市', '河南省,焦作市,济源市', '410800', '1594');
INSERT INTO `sk_areas` VALUES ('410882', '沁阳市', '河南省,焦作市,沁阳市', '410800', '1595');
INSERT INTO `sk_areas` VALUES ('410883', '孟州市', '河南省,焦作市,孟州市', '410800', '1596');
INSERT INTO `sk_areas` VALUES ('410901', '市辖区', '河南省,濮阳市,市辖区', '410900', '1597');
INSERT INTO `sk_areas` VALUES ('410902', '华龙区', '河南省,濮阳市,华龙区', '410900', '1598');
INSERT INTO `sk_areas` VALUES ('410922', '清丰县', '河南省,濮阳市,清丰县', '410900', '1599');
INSERT INTO `sk_areas` VALUES ('410923', '南乐县', '河南省,濮阳市,南乐县', '410900', '1600');
INSERT INTO `sk_areas` VALUES ('410926', '范　县', '河南省,濮阳市,范　县', '410900', '1601');
INSERT INTO `sk_areas` VALUES ('410927', '台前县', '河南省,濮阳市,台前县', '410900', '1602');
INSERT INTO `sk_areas` VALUES ('410928', '濮阳县', '河南省,濮阳市,濮阳县', '410900', '1603');
INSERT INTO `sk_areas` VALUES ('411001', '市辖区', '河南省,许昌市,市辖区', '411000', '1604');
INSERT INTO `sk_areas` VALUES ('411002', '魏都区', '河南省,许昌市,魏都区', '411000', '1605');
INSERT INTO `sk_areas` VALUES ('411023', '许昌县', '河南省,许昌市,许昌县', '411000', '1606');
INSERT INTO `sk_areas` VALUES ('411024', '鄢陵县', '河南省,许昌市,鄢陵县', '411000', '1607');
INSERT INTO `sk_areas` VALUES ('411025', '襄城县', '河南省,许昌市,襄城县', '411000', '1608');
INSERT INTO `sk_areas` VALUES ('411081', '禹州市', '河南省,许昌市,禹州市', '411000', '1609');
INSERT INTO `sk_areas` VALUES ('411082', '长葛市', '河南省,许昌市,长葛市', '411000', '1610');
INSERT INTO `sk_areas` VALUES ('411101', '市辖区', '河南省,漯河市,市辖区', '411100', '1611');
INSERT INTO `sk_areas` VALUES ('411102', '源汇区', '河南省,漯河市,源汇区', '411100', '1612');
INSERT INTO `sk_areas` VALUES ('411103', '郾城区', '河南省,漯河市,郾城区', '411100', '1613');
INSERT INTO `sk_areas` VALUES ('411104', '召陵区', '河南省,漯河市,召陵区', '411100', '1614');
INSERT INTO `sk_areas` VALUES ('411121', '舞阳县', '河南省,漯河市,舞阳县', '411100', '1615');
INSERT INTO `sk_areas` VALUES ('411122', '临颍县', '河南省,漯河市,临颍县', '411100', '1616');
INSERT INTO `sk_areas` VALUES ('411201', '市辖区', '河南省,三门峡市,市辖区', '411200', '1617');
INSERT INTO `sk_areas` VALUES ('411202', '湖滨区', '河南省,三门峡市,湖滨区', '411200', '1618');
INSERT INTO `sk_areas` VALUES ('411221', '渑池县', '河南省,三门峡市,渑池县', '411200', '1619');
INSERT INTO `sk_areas` VALUES ('411222', '陕　县', '河南省,三门峡市,陕　县', '411200', '1620');
INSERT INTO `sk_areas` VALUES ('411224', '卢氏县', '河南省,三门峡市,卢氏县', '411200', '1621');
INSERT INTO `sk_areas` VALUES ('411281', '义马市', '河南省,三门峡市,义马市', '411200', '1622');
INSERT INTO `sk_areas` VALUES ('411282', '灵宝市', '河南省,三门峡市,灵宝市', '411200', '1623');
INSERT INTO `sk_areas` VALUES ('411301', '市辖区', '河南省,南阳市,市辖区', '411300', '1624');
INSERT INTO `sk_areas` VALUES ('411302', '宛城区', '河南省,南阳市,宛城区', '411300', '1625');
INSERT INTO `sk_areas` VALUES ('411303', '卧龙区', '河南省,南阳市,卧龙区', '411300', '1626');
INSERT INTO `sk_areas` VALUES ('411321', '南召县', '河南省,南阳市,南召县', '411300', '1627');
INSERT INTO `sk_areas` VALUES ('411322', '方城县', '河南省,南阳市,方城县', '411300', '1628');
INSERT INTO `sk_areas` VALUES ('411323', '西峡县', '河南省,南阳市,西峡县', '411300', '1629');
INSERT INTO `sk_areas` VALUES ('411324', '镇平县', '河南省,南阳市,镇平县', '411300', '1630');
INSERT INTO `sk_areas` VALUES ('411325', '内乡县', '河南省,南阳市,内乡县', '411300', '1631');
INSERT INTO `sk_areas` VALUES ('411326', '淅川县', '河南省,南阳市,淅川县', '411300', '1632');
INSERT INTO `sk_areas` VALUES ('411327', '社旗县', '河南省,南阳市,社旗县', '411300', '1633');
INSERT INTO `sk_areas` VALUES ('411328', '唐河县', '河南省,南阳市,唐河县', '411300', '1634');
INSERT INTO `sk_areas` VALUES ('411329', '新野县', '河南省,南阳市,新野县', '411300', '1635');
INSERT INTO `sk_areas` VALUES ('411330', '桐柏县', '河南省,南阳市,桐柏县', '411300', '1636');
INSERT INTO `sk_areas` VALUES ('411381', '邓州市', '河南省,南阳市,邓州市', '411300', '1637');
INSERT INTO `sk_areas` VALUES ('411401', '市辖区', '河南省,商丘市,市辖区', '411400', '1638');
INSERT INTO `sk_areas` VALUES ('411402', '梁园区', '河南省,商丘市,梁园区', '411400', '1639');
INSERT INTO `sk_areas` VALUES ('411403', '睢阳区', '河南省,商丘市,睢阳区', '411400', '1640');
INSERT INTO `sk_areas` VALUES ('411421', '民权县', '河南省,商丘市,民权县', '411400', '1641');
INSERT INTO `sk_areas` VALUES ('411422', '睢　县', '河南省,商丘市,睢　县', '411400', '1642');
INSERT INTO `sk_areas` VALUES ('411423', '宁陵县', '河南省,商丘市,宁陵县', '411400', '1643');
INSERT INTO `sk_areas` VALUES ('411424', '柘城县', '河南省,商丘市,柘城县', '411400', '1644');
INSERT INTO `sk_areas` VALUES ('411425', '虞城县', '河南省,商丘市,虞城县', '411400', '1645');
INSERT INTO `sk_areas` VALUES ('411426', '夏邑县', '河南省,商丘市,夏邑县', '411400', '1646');
INSERT INTO `sk_areas` VALUES ('411481', '永城市', '河南省,商丘市,永城市', '411400', '1647');
INSERT INTO `sk_areas` VALUES ('411501', '市辖区', '河南省,信阳市,市辖区', '411500', '1648');
INSERT INTO `sk_areas` VALUES ('411502', '师河区', '河南省,信阳市,师河区', '411500', '1649');
INSERT INTO `sk_areas` VALUES ('411503', '平桥区', '河南省,信阳市,平桥区', '411500', '1650');
INSERT INTO `sk_areas` VALUES ('411521', '罗山县', '河南省,信阳市,罗山县', '411500', '1651');
INSERT INTO `sk_areas` VALUES ('411522', '光山县', '河南省,信阳市,光山县', '411500', '1652');
INSERT INTO `sk_areas` VALUES ('411523', '新　县', '河南省,信阳市,新　县', '411500', '1653');
INSERT INTO `sk_areas` VALUES ('411524', '商城县', '河南省,信阳市,商城县', '411500', '1654');
INSERT INTO `sk_areas` VALUES ('411525', '固始县', '河南省,信阳市,固始县', '411500', '1655');
INSERT INTO `sk_areas` VALUES ('411526', '潢川县', '河南省,信阳市,潢川县', '411500', '1656');
INSERT INTO `sk_areas` VALUES ('411527', '淮滨县', '河南省,信阳市,淮滨县', '411500', '1657');
INSERT INTO `sk_areas` VALUES ('411528', '息　县', '河南省,信阳市,息　县', '411500', '1658');
INSERT INTO `sk_areas` VALUES ('411601', '市辖区', '河南省,周口市,市辖区', '411600', '1659');
INSERT INTO `sk_areas` VALUES ('411602', '川汇区', '河南省,周口市,川汇区', '411600', '1660');
INSERT INTO `sk_areas` VALUES ('411621', '扶沟县', '河南省,周口市,扶沟县', '411600', '1661');
INSERT INTO `sk_areas` VALUES ('411622', '西华县', '河南省,周口市,西华县', '411600', '1662');
INSERT INTO `sk_areas` VALUES ('411623', '商水县', '河南省,周口市,商水县', '411600', '1663');
INSERT INTO `sk_areas` VALUES ('411624', '沈丘县', '河南省,周口市,沈丘县', '411600', '1664');
INSERT INTO `sk_areas` VALUES ('411625', '郸城县', '河南省,周口市,郸城县', '411600', '1665');
INSERT INTO `sk_areas` VALUES ('411626', '淮阳县', '河南省,周口市,淮阳县', '411600', '1666');
INSERT INTO `sk_areas` VALUES ('411627', '太康县', '河南省,周口市,太康县', '411600', '1667');
INSERT INTO `sk_areas` VALUES ('411628', '鹿邑县', '河南省,周口市,鹿邑县', '411600', '1668');
INSERT INTO `sk_areas` VALUES ('411681', '项城市', '河南省,周口市,项城市', '411600', '1669');
INSERT INTO `sk_areas` VALUES ('411701', '市辖区', '河南省,驻马店市,市辖区', '411700', '1670');
INSERT INTO `sk_areas` VALUES ('411702', '驿城区', '河南省,驻马店市,驿城区', '411700', '1671');
INSERT INTO `sk_areas` VALUES ('411721', '西平县', '河南省,驻马店市,西平县', '411700', '1672');
INSERT INTO `sk_areas` VALUES ('411722', '上蔡县', '河南省,驻马店市,上蔡县', '411700', '1673');
INSERT INTO `sk_areas` VALUES ('411723', '平舆县', '河南省,驻马店市,平舆县', '411700', '1674');
INSERT INTO `sk_areas` VALUES ('411724', '正阳县', '河南省,驻马店市,正阳县', '411700', '1675');
INSERT INTO `sk_areas` VALUES ('411725', '确山县', '河南省,驻马店市,确山县', '411700', '1676');
INSERT INTO `sk_areas` VALUES ('411726', '泌阳县', '河南省,驻马店市,泌阳县', '411700', '1677');
INSERT INTO `sk_areas` VALUES ('411727', '汝南县', '河南省,驻马店市,汝南县', '411700', '1678');
INSERT INTO `sk_areas` VALUES ('411728', '遂平县', '河南省,驻马店市,遂平县', '411700', '1679');
INSERT INTO `sk_areas` VALUES ('411729', '新蔡县', '河南省,驻马店市,新蔡县', '411700', '1680');
INSERT INTO `sk_areas` VALUES ('420101', '市辖区', '湖北省,武汉市,市辖区', '420100', '1681');
INSERT INTO `sk_areas` VALUES ('420102', '江岸区', '湖北省,武汉市,江岸区', '420100', '1682');
INSERT INTO `sk_areas` VALUES ('420103', '江汉区', '湖北省,武汉市,江汉区', '420100', '1683');
INSERT INTO `sk_areas` VALUES ('420104', '乔口区', '湖北省,武汉市,乔口区', '420100', '1684');
INSERT INTO `sk_areas` VALUES ('420105', '汉阳区', '湖北省,武汉市,汉阳区', '420100', '1685');
INSERT INTO `sk_areas` VALUES ('420106', '武昌区', '湖北省,武汉市,武昌区', '420100', '1686');
INSERT INTO `sk_areas` VALUES ('420107', '青山区', '湖北省,武汉市,青山区', '420100', '1687');
INSERT INTO `sk_areas` VALUES ('420111', '洪山区', '湖北省,武汉市,洪山区', '420100', '1688');
INSERT INTO `sk_areas` VALUES ('420112', '东西湖区', '湖北省,武汉市,东西湖区', '420100', '1689');
INSERT INTO `sk_areas` VALUES ('420113', '汉南区', '湖北省,武汉市,汉南区', '420100', '1690');
INSERT INTO `sk_areas` VALUES ('420114', '蔡甸区', '湖北省,武汉市,蔡甸区', '420100', '1691');
INSERT INTO `sk_areas` VALUES ('420115', '江夏区', '湖北省,武汉市,江夏区', '420100', '1692');
INSERT INTO `sk_areas` VALUES ('420116', '黄陂区', '湖北省,武汉市,黄陂区', '420100', '1693');
INSERT INTO `sk_areas` VALUES ('420117', '新洲区', '湖北省,武汉市,新洲区', '420100', '1694');
INSERT INTO `sk_areas` VALUES ('420201', '市辖区', '湖北省,黄石市,市辖区', '420200', '1695');
INSERT INTO `sk_areas` VALUES ('420202', '黄石港区', '湖北省,黄石市,黄石港区', '420200', '1696');
INSERT INTO `sk_areas` VALUES ('420203', '西塞山区', '湖北省,黄石市,西塞山区', '420200', '1697');
INSERT INTO `sk_areas` VALUES ('420204', '下陆区', '湖北省,黄石市,下陆区', '420200', '1698');
INSERT INTO `sk_areas` VALUES ('420205', '铁山区', '湖北省,黄石市,铁山区', '420200', '1699');
INSERT INTO `sk_areas` VALUES ('420222', '阳新县', '湖北省,黄石市,阳新县', '420200', '1700');
INSERT INTO `sk_areas` VALUES ('420281', '大冶市', '湖北省,黄石市,大冶市', '420200', '1701');
INSERT INTO `sk_areas` VALUES ('420301', '市辖区', '湖北省,十堰市,市辖区', '420300', '1702');
INSERT INTO `sk_areas` VALUES ('420302', '茅箭区', '湖北省,十堰市,茅箭区', '420300', '1703');
INSERT INTO `sk_areas` VALUES ('420303', '张湾区', '湖北省,十堰市,张湾区', '420300', '1704');
INSERT INTO `sk_areas` VALUES ('420321', '郧　县', '湖北省,十堰市,郧　县', '420300', '1705');
INSERT INTO `sk_areas` VALUES ('420322', '郧西县', '湖北省,十堰市,郧西县', '420300', '1706');
INSERT INTO `sk_areas` VALUES ('420323', '竹山县', '湖北省,十堰市,竹山县', '420300', '1707');
INSERT INTO `sk_areas` VALUES ('420324', '竹溪县', '湖北省,十堰市,竹溪县', '420300', '1708');
INSERT INTO `sk_areas` VALUES ('420325', '房　县', '湖北省,十堰市,房　县', '420300', '1709');
INSERT INTO `sk_areas` VALUES ('420381', '丹江口市', '湖北省,十堰市,丹江口市', '420300', '1710');
INSERT INTO `sk_areas` VALUES ('420501', '市辖区', '湖北省,宜昌市,市辖区', '420500', '1711');
INSERT INTO `sk_areas` VALUES ('420502', '西陵区', '湖北省,宜昌市,西陵区', '420500', '1712');
INSERT INTO `sk_areas` VALUES ('420503', '伍家岗区', '湖北省,宜昌市,伍家岗区', '420500', '1713');
INSERT INTO `sk_areas` VALUES ('420504', '点军区', '湖北省,宜昌市,点军区', '420500', '1714');
INSERT INTO `sk_areas` VALUES ('420505', '猇亭区', '湖北省,宜昌市,猇亭区', '420500', '1715');
INSERT INTO `sk_areas` VALUES ('420506', '夷陵区', '湖北省,宜昌市,夷陵区', '420500', '1716');
INSERT INTO `sk_areas` VALUES ('420525', '远安县', '湖北省,宜昌市,远安县', '420500', '1717');
INSERT INTO `sk_areas` VALUES ('420526', '兴山县', '湖北省,宜昌市,兴山县', '420500', '1718');
INSERT INTO `sk_areas` VALUES ('420527', '秭归县', '湖北省,宜昌市,秭归县', '420500', '1719');
INSERT INTO `sk_areas` VALUES ('420528', '长阳土家族自治县', '湖北省,宜昌市,长阳土家族自治县', '420500', '1720');
INSERT INTO `sk_areas` VALUES ('420529', '五峰土家族自治县', '湖北省,宜昌市,五峰土家族自治县', '420500', '1721');
INSERT INTO `sk_areas` VALUES ('420581', '宜都市', '湖北省,宜昌市,宜都市', '420500', '1722');
INSERT INTO `sk_areas` VALUES ('420582', '当阳市', '湖北省,宜昌市,当阳市', '420500', '1723');
INSERT INTO `sk_areas` VALUES ('420583', '枝江市', '湖北省,宜昌市,枝江市', '420500', '1724');
INSERT INTO `sk_areas` VALUES ('420601', '市辖区', '湖北省,襄樊市,市辖区', '420600', '1725');
INSERT INTO `sk_areas` VALUES ('420602', '襄城区', '湖北省,襄樊市,襄城区', '420600', '1726');
INSERT INTO `sk_areas` VALUES ('420606', '樊城区', '湖北省,襄樊市,樊城区', '420600', '1727');
INSERT INTO `sk_areas` VALUES ('420607', '襄阳区', '湖北省,襄樊市,襄阳区', '420600', '1728');
INSERT INTO `sk_areas` VALUES ('420624', '南漳县', '湖北省,襄樊市,南漳县', '420600', '1729');
INSERT INTO `sk_areas` VALUES ('420625', '谷城县', '湖北省,襄樊市,谷城县', '420600', '1730');
INSERT INTO `sk_areas` VALUES ('420626', '保康县', '湖北省,襄樊市,保康县', '420600', '1731');
INSERT INTO `sk_areas` VALUES ('420682', '老河口市', '湖北省,襄樊市,老河口市', '420600', '1732');
INSERT INTO `sk_areas` VALUES ('420683', '枣阳市', '湖北省,襄樊市,枣阳市', '420600', '1733');
INSERT INTO `sk_areas` VALUES ('420684', '宜城市', '湖北省,襄樊市,宜城市', '420600', '1734');
INSERT INTO `sk_areas` VALUES ('420701', '市辖区', '湖北省,鄂州市,市辖区', '420700', '1735');
INSERT INTO `sk_areas` VALUES ('420702', '梁子湖区', '湖北省,鄂州市,梁子湖区', '420700', '1736');
INSERT INTO `sk_areas` VALUES ('420703', '华容区', '湖北省,鄂州市,华容区', '420700', '1737');
INSERT INTO `sk_areas` VALUES ('420704', '鄂城区', '湖北省,鄂州市,鄂城区', '420700', '1738');
INSERT INTO `sk_areas` VALUES ('420801', '市辖区', '湖北省,荆门市,市辖区', '420800', '1739');
INSERT INTO `sk_areas` VALUES ('420802', '东宝区', '湖北省,荆门市,东宝区', '420800', '1740');
INSERT INTO `sk_areas` VALUES ('420804', '掇刀区', '湖北省,荆门市,掇刀区', '420800', '1741');
INSERT INTO `sk_areas` VALUES ('420821', '京山县', '湖北省,荆门市,京山县', '420800', '1742');
INSERT INTO `sk_areas` VALUES ('420822', '沙洋县', '湖北省,荆门市,沙洋县', '420800', '1743');
INSERT INTO `sk_areas` VALUES ('420881', '钟祥市', '湖北省,荆门市,钟祥市', '420800', '1744');
INSERT INTO `sk_areas` VALUES ('420901', '市辖区', '湖北省,孝感市,市辖区', '420900', '1745');
INSERT INTO `sk_areas` VALUES ('420902', '孝南区', '湖北省,孝感市,孝南区', '420900', '1746');
INSERT INTO `sk_areas` VALUES ('420921', '孝昌县', '湖北省,孝感市,孝昌县', '420900', '1747');
INSERT INTO `sk_areas` VALUES ('420922', '大悟县', '湖北省,孝感市,大悟县', '420900', '1748');
INSERT INTO `sk_areas` VALUES ('420923', '云梦县', '湖北省,孝感市,云梦县', '420900', '1749');
INSERT INTO `sk_areas` VALUES ('420981', '应城市', '湖北省,孝感市,应城市', '420900', '1750');
INSERT INTO `sk_areas` VALUES ('420982', '安陆市', '湖北省,孝感市,安陆市', '420900', '1751');
INSERT INTO `sk_areas` VALUES ('420984', '汉川市', '湖北省,孝感市,汉川市', '420900', '1752');
INSERT INTO `sk_areas` VALUES ('421001', '市辖区', '湖北省,荆州市,市辖区', '421000', '1753');
INSERT INTO `sk_areas` VALUES ('421002', '沙市区', '湖北省,荆州市,沙市区', '421000', '1754');
INSERT INTO `sk_areas` VALUES ('421003', '荆州区', '湖北省,荆州市,荆州区', '421000', '1755');
INSERT INTO `sk_areas` VALUES ('421022', '公安县', '湖北省,荆州市,公安县', '421000', '1756');
INSERT INTO `sk_areas` VALUES ('421023', '监利县', '湖北省,荆州市,监利县', '421000', '1757');
INSERT INTO `sk_areas` VALUES ('421024', '江陵县', '湖北省,荆州市,江陵县', '421000', '1758');
INSERT INTO `sk_areas` VALUES ('421081', '石首市', '湖北省,荆州市,石首市', '421000', '1759');
INSERT INTO `sk_areas` VALUES ('421083', '洪湖市', '湖北省,荆州市,洪湖市', '421000', '1760');
INSERT INTO `sk_areas` VALUES ('421087', '松滋市', '湖北省,荆州市,松滋市', '421000', '1761');
INSERT INTO `sk_areas` VALUES ('421101', '市辖区', '湖北省,黄冈市,市辖区', '421100', '1762');
INSERT INTO `sk_areas` VALUES ('421102', '黄州区', '湖北省,黄冈市,黄州区', '421100', '1763');
INSERT INTO `sk_areas` VALUES ('421121', '团风县', '湖北省,黄冈市,团风县', '421100', '1764');
INSERT INTO `sk_areas` VALUES ('421122', '红安县', '湖北省,黄冈市,红安县', '421100', '1765');
INSERT INTO `sk_areas` VALUES ('421123', '罗田县', '湖北省,黄冈市,罗田县', '421100', '1766');
INSERT INTO `sk_areas` VALUES ('421124', '英山县', '湖北省,黄冈市,英山县', '421100', '1767');
INSERT INTO `sk_areas` VALUES ('421125', '浠水县', '湖北省,黄冈市,浠水县', '421100', '1768');
INSERT INTO `sk_areas` VALUES ('421126', '蕲春县', '湖北省,黄冈市,蕲春县', '421100', '1769');
INSERT INTO `sk_areas` VALUES ('421127', '黄梅县', '湖北省,黄冈市,黄梅县', '421100', '1770');
INSERT INTO `sk_areas` VALUES ('421181', '麻城市', '湖北省,黄冈市,麻城市', '421100', '1771');
INSERT INTO `sk_areas` VALUES ('421182', '武穴市', '湖北省,黄冈市,武穴市', '421100', '1772');
INSERT INTO `sk_areas` VALUES ('421201', '市辖区', '湖北省,咸宁市,市辖区', '421200', '1773');
INSERT INTO `sk_areas` VALUES ('421202', '咸安区', '湖北省,咸宁市,咸安区', '421200', '1774');
INSERT INTO `sk_areas` VALUES ('421221', '嘉鱼县', '湖北省,咸宁市,嘉鱼县', '421200', '1775');
INSERT INTO `sk_areas` VALUES ('421222', '通城县', '湖北省,咸宁市,通城县', '421200', '1776');
INSERT INTO `sk_areas` VALUES ('421223', '崇阳县', '湖北省,咸宁市,崇阳县', '421200', '1777');
INSERT INTO `sk_areas` VALUES ('421224', '通山县', '湖北省,咸宁市,通山县', '421200', '1778');
INSERT INTO `sk_areas` VALUES ('421281', '赤壁市', '湖北省,咸宁市,赤壁市', '421200', '1779');
INSERT INTO `sk_areas` VALUES ('421301', '市辖区', '湖北省,随州市,市辖区', '421300', '1780');
INSERT INTO `sk_areas` VALUES ('421302', '曾都区', '湖北省,随州市,曾都区', '421300', '1781');
INSERT INTO `sk_areas` VALUES ('421381', '广水市', '湖北省,随州市,广水市', '421300', '1782');
INSERT INTO `sk_areas` VALUES ('422801', '恩施市', '湖北省,恩施土家族苗族自治州,恩施市', '422800', '1783');
INSERT INTO `sk_areas` VALUES ('422802', '利川市', '湖北省,恩施土家族苗族自治州,利川市', '422800', '1784');
INSERT INTO `sk_areas` VALUES ('422822', '建始县', '湖北省,恩施土家族苗族自治州,建始县', '422800', '1785');
INSERT INTO `sk_areas` VALUES ('422823', '巴东县', '湖北省,恩施土家族苗族自治州,巴东县', '422800', '1786');
INSERT INTO `sk_areas` VALUES ('422825', '宣恩县', '湖北省,恩施土家族苗族自治州,宣恩县', '422800', '1787');
INSERT INTO `sk_areas` VALUES ('422826', '咸丰县', '湖北省,恩施土家族苗族自治州,咸丰县', '422800', '1788');
INSERT INTO `sk_areas` VALUES ('422827', '来凤县', '湖北省,恩施土家族苗族自治州,来凤县', '422800', '1789');
INSERT INTO `sk_areas` VALUES ('422828', '鹤峰县', '湖北省,恩施土家族苗族自治州,鹤峰县', '422800', '1790');
INSERT INTO `sk_areas` VALUES ('429004', '仙桃市', '湖北省,省直辖行政单位,仙桃市', '429000', '1791');
INSERT INTO `sk_areas` VALUES ('429005', '潜江市', '湖北省,省直辖行政单位,潜江市', '429000', '1792');
INSERT INTO `sk_areas` VALUES ('429006', '天门市', '湖北省,省直辖行政单位,天门市', '429000', '1793');
INSERT INTO `sk_areas` VALUES ('429021', '神农架林区', '湖北省,省直辖行政单位,神农架林区', '429000', '1794');
INSERT INTO `sk_areas` VALUES ('430101', '市辖区', '湖南省,长沙市,市辖区', '430100', '1795');
INSERT INTO `sk_areas` VALUES ('430102', '芙蓉区', '湖南省,长沙市,芙蓉区', '430100', '1796');
INSERT INTO `sk_areas` VALUES ('430103', '天心区', '湖南省,长沙市,天心区', '430100', '1797');
INSERT INTO `sk_areas` VALUES ('430104', '岳麓区', '湖南省,长沙市,岳麓区', '430100', '1798');
INSERT INTO `sk_areas` VALUES ('430105', '开福区', '湖南省,长沙市,开福区', '430100', '1799');
INSERT INTO `sk_areas` VALUES ('430111', '雨花区', '湖南省,长沙市,雨花区', '430100', '1800');
INSERT INTO `sk_areas` VALUES ('430121', '长沙县', '湖南省,长沙市,长沙县', '430100', '1801');
INSERT INTO `sk_areas` VALUES ('430122', '望城县', '湖南省,长沙市,望城县', '430100', '1802');
INSERT INTO `sk_areas` VALUES ('430124', '宁乡县', '湖南省,长沙市,宁乡县', '430100', '1803');
INSERT INTO `sk_areas` VALUES ('430181', '浏阳市', '湖南省,长沙市,浏阳市', '430100', '1804');
INSERT INTO `sk_areas` VALUES ('430201', '市辖区', '湖南省,株洲市,市辖区', '430200', '1805');
INSERT INTO `sk_areas` VALUES ('430202', '荷塘区', '湖南省,株洲市,荷塘区', '430200', '1806');
INSERT INTO `sk_areas` VALUES ('430203', '芦淞区', '湖南省,株洲市,芦淞区', '430200', '1807');
INSERT INTO `sk_areas` VALUES ('430204', '石峰区', '湖南省,株洲市,石峰区', '430200', '1808');
INSERT INTO `sk_areas` VALUES ('430211', '天元区', '湖南省,株洲市,天元区', '430200', '1809');
INSERT INTO `sk_areas` VALUES ('430221', '株洲县', '湖南省,株洲市,株洲县', '430200', '1810');
INSERT INTO `sk_areas` VALUES ('430223', '攸　县', '湖南省,株洲市,攸　县', '430200', '1811');
INSERT INTO `sk_areas` VALUES ('430224', '茶陵县', '湖南省,株洲市,茶陵县', '430200', '1812');
INSERT INTO `sk_areas` VALUES ('430225', '炎陵县', '湖南省,株洲市,炎陵县', '430200', '1813');
INSERT INTO `sk_areas` VALUES ('430281', '醴陵市', '湖南省,株洲市,醴陵市', '430200', '1814');
INSERT INTO `sk_areas` VALUES ('430301', '市辖区', '湖南省,湘潭市,市辖区', '430300', '1815');
INSERT INTO `sk_areas` VALUES ('430302', '雨湖区', '湖南省,湘潭市,雨湖区', '430300', '1816');
INSERT INTO `sk_areas` VALUES ('430304', '岳塘区', '湖南省,湘潭市,岳塘区', '430300', '1817');
INSERT INTO `sk_areas` VALUES ('430321', '湘潭县', '湖南省,湘潭市,湘潭县', '430300', '1818');
INSERT INTO `sk_areas` VALUES ('430381', '湘乡市', '湖南省,湘潭市,湘乡市', '430300', '1819');
INSERT INTO `sk_areas` VALUES ('430382', '韶山市', '湖南省,湘潭市,韶山市', '430300', '1820');
INSERT INTO `sk_areas` VALUES ('430401', '市辖区', '湖南省,衡阳市,市辖区', '430400', '1821');
INSERT INTO `sk_areas` VALUES ('430405', '珠晖区', '湖南省,衡阳市,珠晖区', '430400', '1822');
INSERT INTO `sk_areas` VALUES ('430406', '雁峰区', '湖南省,衡阳市,雁峰区', '430400', '1823');
INSERT INTO `sk_areas` VALUES ('430407', '石鼓区', '湖南省,衡阳市,石鼓区', '430400', '1824');
INSERT INTO `sk_areas` VALUES ('430408', '蒸湘区', '湖南省,衡阳市,蒸湘区', '430400', '1825');
INSERT INTO `sk_areas` VALUES ('430412', '南岳区', '湖南省,衡阳市,南岳区', '430400', '1826');
INSERT INTO `sk_areas` VALUES ('430421', '衡阳县', '湖南省,衡阳市,衡阳县', '430400', '1827');
INSERT INTO `sk_areas` VALUES ('430422', '衡南县', '湖南省,衡阳市,衡南县', '430400', '1828');
INSERT INTO `sk_areas` VALUES ('430423', '衡山县', '湖南省,衡阳市,衡山县', '430400', '1829');
INSERT INTO `sk_areas` VALUES ('430424', '衡东县', '湖南省,衡阳市,衡东县', '430400', '1830');
INSERT INTO `sk_areas` VALUES ('430426', '祁东县', '湖南省,衡阳市,祁东县', '430400', '1831');
INSERT INTO `sk_areas` VALUES ('430481', '耒阳市', '湖南省,衡阳市,耒阳市', '430400', '1832');
INSERT INTO `sk_areas` VALUES ('430482', '常宁市', '湖南省,衡阳市,常宁市', '430400', '1833');
INSERT INTO `sk_areas` VALUES ('430501', '市辖区', '湖南省,邵阳市,市辖区', '430500', '1834');
INSERT INTO `sk_areas` VALUES ('430502', '双清区', '湖南省,邵阳市,双清区', '430500', '1835');
INSERT INTO `sk_areas` VALUES ('430503', '大祥区', '湖南省,邵阳市,大祥区', '430500', '1836');
INSERT INTO `sk_areas` VALUES ('430511', '北塔区', '湖南省,邵阳市,北塔区', '430500', '1837');
INSERT INTO `sk_areas` VALUES ('430521', '邵东县', '湖南省,邵阳市,邵东县', '430500', '1838');
INSERT INTO `sk_areas` VALUES ('430522', '新邵县', '湖南省,邵阳市,新邵县', '430500', '1839');
INSERT INTO `sk_areas` VALUES ('430523', '邵阳县', '湖南省,邵阳市,邵阳县', '430500', '1840');
INSERT INTO `sk_areas` VALUES ('430524', '隆回县', '湖南省,邵阳市,隆回县', '430500', '1841');
INSERT INTO `sk_areas` VALUES ('430525', '洞口县', '湖南省,邵阳市,洞口县', '430500', '1842');
INSERT INTO `sk_areas` VALUES ('430527', '绥宁县', '湖南省,邵阳市,绥宁县', '430500', '1843');
INSERT INTO `sk_areas` VALUES ('430528', '新宁县', '湖南省,邵阳市,新宁县', '430500', '1844');
INSERT INTO `sk_areas` VALUES ('430529', '城步苗族自治县', '湖南省,邵阳市,城步苗族自治县', '430500', '1845');
INSERT INTO `sk_areas` VALUES ('430581', '武冈市', '湖南省,邵阳市,武冈市', '430500', '1846');
INSERT INTO `sk_areas` VALUES ('430601', '市辖区', '湖南省,岳阳市,市辖区', '430600', '1847');
INSERT INTO `sk_areas` VALUES ('430602', '岳阳楼区', '湖南省,岳阳市,岳阳楼区', '430600', '1848');
INSERT INTO `sk_areas` VALUES ('430603', '云溪区', '湖南省,岳阳市,云溪区', '430600', '1849');
INSERT INTO `sk_areas` VALUES ('430611', '君山区', '湖南省,岳阳市,君山区', '430600', '1850');
INSERT INTO `sk_areas` VALUES ('430621', '岳阳县', '湖南省,岳阳市,岳阳县', '430600', '1851');
INSERT INTO `sk_areas` VALUES ('430623', '华容县', '湖南省,岳阳市,华容县', '430600', '1852');
INSERT INTO `sk_areas` VALUES ('430624', '湘阴县', '湖南省,岳阳市,湘阴县', '430600', '1853');
INSERT INTO `sk_areas` VALUES ('430626', '平江县', '湖南省,岳阳市,平江县', '430600', '1854');
INSERT INTO `sk_areas` VALUES ('430681', '汨罗市', '湖南省,岳阳市,汨罗市', '430600', '1855');
INSERT INTO `sk_areas` VALUES ('430682', '临湘市', '湖南省,岳阳市,临湘市', '430600', '1856');
INSERT INTO `sk_areas` VALUES ('430701', '市辖区', '湖南省,常德市,市辖区', '430700', '1857');
INSERT INTO `sk_areas` VALUES ('430702', '武陵区', '湖南省,常德市,武陵区', '430700', '1858');
INSERT INTO `sk_areas` VALUES ('430703', '鼎城区', '湖南省,常德市,鼎城区', '430700', '1859');
INSERT INTO `sk_areas` VALUES ('430721', '安乡县', '湖南省,常德市,安乡县', '430700', '1860');
INSERT INTO `sk_areas` VALUES ('430722', '汉寿县', '湖南省,常德市,汉寿县', '430700', '1861');
INSERT INTO `sk_areas` VALUES ('430723', '澧　县', '湖南省,常德市,澧　县', '430700', '1862');
INSERT INTO `sk_areas` VALUES ('430724', '临澧县', '湖南省,常德市,临澧县', '430700', '1863');
INSERT INTO `sk_areas` VALUES ('430725', '桃源县', '湖南省,常德市,桃源县', '430700', '1864');
INSERT INTO `sk_areas` VALUES ('430726', '石门县', '湖南省,常德市,石门县', '430700', '1865');
INSERT INTO `sk_areas` VALUES ('430781', '津市市', '湖南省,常德市,津市市', '430700', '1866');
INSERT INTO `sk_areas` VALUES ('430801', '市辖区', '湖南省,张家界市,市辖区', '430800', '1867');
INSERT INTO `sk_areas` VALUES ('430802', '永定区', '湖南省,张家界市,永定区', '430800', '1868');
INSERT INTO `sk_areas` VALUES ('430811', '武陵源区', '湖南省,张家界市,武陵源区', '430800', '1869');
INSERT INTO `sk_areas` VALUES ('430821', '慈利县', '湖南省,张家界市,慈利县', '430800', '1870');
INSERT INTO `sk_areas` VALUES ('430822', '桑植县', '湖南省,张家界市,桑植县', '430800', '1871');
INSERT INTO `sk_areas` VALUES ('430901', '市辖区', '湖南省,益阳市,市辖区', '430900', '1872');
INSERT INTO `sk_areas` VALUES ('430902', '资阳区', '湖南省,益阳市,资阳区', '430900', '1873');
INSERT INTO `sk_areas` VALUES ('430903', '赫山区', '湖南省,益阳市,赫山区', '430900', '1874');
INSERT INTO `sk_areas` VALUES ('430921', '南　县', '湖南省,益阳市,南　县', '430900', '1875');
INSERT INTO `sk_areas` VALUES ('430922', '桃江县', '湖南省,益阳市,桃江县', '430900', '1876');
INSERT INTO `sk_areas` VALUES ('430923', '安化县', '湖南省,益阳市,安化县', '430900', '1877');
INSERT INTO `sk_areas` VALUES ('430981', '沅江市', '湖南省,益阳市,沅江市', '430900', '1878');
INSERT INTO `sk_areas` VALUES ('431001', '市辖区', '湖南省,郴州市,市辖区', '431000', '1879');
INSERT INTO `sk_areas` VALUES ('431002', '北湖区', '湖南省,郴州市,北湖区', '431000', '1880');
INSERT INTO `sk_areas` VALUES ('431003', '苏仙区', '湖南省,郴州市,苏仙区', '431000', '1881');
INSERT INTO `sk_areas` VALUES ('431021', '桂阳县', '湖南省,郴州市,桂阳县', '431000', '1882');
INSERT INTO `sk_areas` VALUES ('431022', '宜章县', '湖南省,郴州市,宜章县', '431000', '1883');
INSERT INTO `sk_areas` VALUES ('431023', '永兴县', '湖南省,郴州市,永兴县', '431000', '1884');
INSERT INTO `sk_areas` VALUES ('431024', '嘉禾县', '湖南省,郴州市,嘉禾县', '431000', '1885');
INSERT INTO `sk_areas` VALUES ('431025', '临武县', '湖南省,郴州市,临武县', '431000', '1886');
INSERT INTO `sk_areas` VALUES ('431026', '汝城县', '湖南省,郴州市,汝城县', '431000', '1887');
INSERT INTO `sk_areas` VALUES ('431027', '桂东县', '湖南省,郴州市,桂东县', '431000', '1888');
INSERT INTO `sk_areas` VALUES ('431028', '安仁县', '湖南省,郴州市,安仁县', '431000', '1889');
INSERT INTO `sk_areas` VALUES ('431081', '资兴市', '湖南省,郴州市,资兴市', '431000', '1890');
INSERT INTO `sk_areas` VALUES ('431101', '市辖区', '湖南省,永州市,市辖区', '431100', '1891');
INSERT INTO `sk_areas` VALUES ('431102', '芝山区', '湖南省,永州市,芝山区', '431100', '1892');
INSERT INTO `sk_areas` VALUES ('431103', '冷水滩区', '湖南省,永州市,冷水滩区', '431100', '1893');
INSERT INTO `sk_areas` VALUES ('431121', '祁阳县', '湖南省,永州市,祁阳县', '431100', '1894');
INSERT INTO `sk_areas` VALUES ('431122', '东安县', '湖南省,永州市,东安县', '431100', '1895');
INSERT INTO `sk_areas` VALUES ('431123', '双牌县', '湖南省,永州市,双牌县', '431100', '1896');
INSERT INTO `sk_areas` VALUES ('431124', '道　县', '湖南省,永州市,道　县', '431100', '1897');
INSERT INTO `sk_areas` VALUES ('431125', '江永县', '湖南省,永州市,江永县', '431100', '1898');
INSERT INTO `sk_areas` VALUES ('431126', '宁远县', '湖南省,永州市,宁远县', '431100', '1899');
INSERT INTO `sk_areas` VALUES ('431127', '蓝山县', '湖南省,永州市,蓝山县', '431100', '1900');
INSERT INTO `sk_areas` VALUES ('431128', '新田县', '湖南省,永州市,新田县', '431100', '1901');
INSERT INTO `sk_areas` VALUES ('431129', '江华瑶族自治县', '湖南省,永州市,江华瑶族自治县', '431100', '1902');
INSERT INTO `sk_areas` VALUES ('431201', '市辖区', '湖南省,怀化市,市辖区', '431200', '1903');
INSERT INTO `sk_areas` VALUES ('431202', '鹤城区', '湖南省,怀化市,鹤城区', '431200', '1904');
INSERT INTO `sk_areas` VALUES ('431221', '中方县', '湖南省,怀化市,中方县', '431200', '1905');
INSERT INTO `sk_areas` VALUES ('431222', '沅陵县', '湖南省,怀化市,沅陵县', '431200', '1906');
INSERT INTO `sk_areas` VALUES ('431223', '辰溪县', '湖南省,怀化市,辰溪县', '431200', '1907');
INSERT INTO `sk_areas` VALUES ('431224', '溆浦县', '湖南省,怀化市,溆浦县', '431200', '1908');
INSERT INTO `sk_areas` VALUES ('431225', '会同县', '湖南省,怀化市,会同县', '431200', '1909');
INSERT INTO `sk_areas` VALUES ('431226', '麻阳苗族自治县', '湖南省,怀化市,麻阳苗族自治县', '431200', '1910');
INSERT INTO `sk_areas` VALUES ('431227', '新晃侗族自治县', '湖南省,怀化市,新晃侗族自治县', '431200', '1911');
INSERT INTO `sk_areas` VALUES ('431228', '芷江侗族自治县', '湖南省,怀化市,芷江侗族自治县', '431200', '1912');
INSERT INTO `sk_areas` VALUES ('431229', '靖州苗族侗族自治县', '湖南省,怀化市,靖州苗族侗族自治县', '431200', '1913');
INSERT INTO `sk_areas` VALUES ('431230', '通道侗族自治县', '湖南省,怀化市,通道侗族自治县', '431200', '1914');
INSERT INTO `sk_areas` VALUES ('431281', '洪江市', '湖南省,怀化市,洪江市', '431200', '1915');
INSERT INTO `sk_areas` VALUES ('431301', '市辖区', '湖南省,娄底市,市辖区', '431300', '1916');
INSERT INTO `sk_areas` VALUES ('431302', '娄星区', '湖南省,娄底市,娄星区', '431300', '1917');
INSERT INTO `sk_areas` VALUES ('431321', '双峰县', '湖南省,娄底市,双峰县', '431300', '1918');
INSERT INTO `sk_areas` VALUES ('431322', '新化县', '湖南省,娄底市,新化县', '431300', '1919');
INSERT INTO `sk_areas` VALUES ('431381', '冷水江市', '湖南省,娄底市,冷水江市', '431300', '1920');
INSERT INTO `sk_areas` VALUES ('431382', '涟源市', '湖南省,娄底市,涟源市', '431300', '1921');
INSERT INTO `sk_areas` VALUES ('433101', '吉首市', '湖南省,湘西土家族苗族自治州,吉首市', '433100', '1922');
INSERT INTO `sk_areas` VALUES ('433122', '泸溪县', '湖南省,湘西土家族苗族自治州,泸溪县', '433100', '1923');
INSERT INTO `sk_areas` VALUES ('433123', '凤凰县', '湖南省,湘西土家族苗族自治州,凤凰县', '433100', '1924');
INSERT INTO `sk_areas` VALUES ('433124', '花垣县', '湖南省,湘西土家族苗族自治州,花垣县', '433100', '1925');
INSERT INTO `sk_areas` VALUES ('433125', '保靖县', '湖南省,湘西土家族苗族自治州,保靖县', '433100', '1926');
INSERT INTO `sk_areas` VALUES ('433126', '古丈县', '湖南省,湘西土家族苗族自治州,古丈县', '433100', '1927');
INSERT INTO `sk_areas` VALUES ('433127', '永顺县', '湖南省,湘西土家族苗族自治州,永顺县', '433100', '1928');
INSERT INTO `sk_areas` VALUES ('433130', '龙山县', '湖南省,湘西土家族苗族自治州,龙山县', '433100', '1929');
INSERT INTO `sk_areas` VALUES ('440101', '市辖区', '广东省,广州市,市辖区', '440100', '1930');
INSERT INTO `sk_areas` VALUES ('440102', '东山区', '广东省,广州市,东山区', '440100', '1931');
INSERT INTO `sk_areas` VALUES ('440103', '荔湾区', '广东省,广州市,荔湾区', '440100', '1932');
INSERT INTO `sk_areas` VALUES ('440104', '越秀区', '广东省,广州市,越秀区', '440100', '1933');
INSERT INTO `sk_areas` VALUES ('440105', '海珠区', '广东省,广州市,海珠区', '440100', '1934');
INSERT INTO `sk_areas` VALUES ('440106', '天河区', '广东省,广州市,天河区', '440100', '1935');
INSERT INTO `sk_areas` VALUES ('440107', '芳村区', '广东省,广州市,芳村区', '440100', '1936');
INSERT INTO `sk_areas` VALUES ('440111', '白云区', '广东省,广州市,白云区', '440100', '1937');
INSERT INTO `sk_areas` VALUES ('440112', '黄埔区', '广东省,广州市,黄埔区', '440100', '1938');
INSERT INTO `sk_areas` VALUES ('440113', '番禺区', '广东省,广州市,番禺区', '440100', '1939');
INSERT INTO `sk_areas` VALUES ('440114', '花都区', '广东省,广州市,花都区', '440100', '1940');
INSERT INTO `sk_areas` VALUES ('440183', '增城市', '广东省,广州市,增城市', '440100', '1941');
INSERT INTO `sk_areas` VALUES ('440184', '从化市', '广东省,广州市,从化市', '440100', '1942');
INSERT INTO `sk_areas` VALUES ('440201', '市辖区', '广东省,韶关市,市辖区', '440200', '1943');
INSERT INTO `sk_areas` VALUES ('440203', '武江区', '广东省,韶关市,武江区', '440200', '1944');
INSERT INTO `sk_areas` VALUES ('440204', '浈江区', '广东省,韶关市,浈江区', '440200', '1945');
INSERT INTO `sk_areas` VALUES ('440205', '曲江区', '广东省,韶关市,曲江区', '440200', '1946');
INSERT INTO `sk_areas` VALUES ('440222', '始兴县', '广东省,韶关市,始兴县', '440200', '1947');
INSERT INTO `sk_areas` VALUES ('440224', '仁化县', '广东省,韶关市,仁化县', '440200', '1948');
INSERT INTO `sk_areas` VALUES ('440229', '翁源县', '广东省,韶关市,翁源县', '440200', '1949');
INSERT INTO `sk_areas` VALUES ('440232', '乳源瑶族自治县', '广东省,韶关市,乳源瑶族自治县', '440200', '1950');
INSERT INTO `sk_areas` VALUES ('440233', '新丰县', '广东省,韶关市,新丰县', '440200', '1951');
INSERT INTO `sk_areas` VALUES ('440281', '乐昌市', '广东省,韶关市,乐昌市', '440200', '1952');
INSERT INTO `sk_areas` VALUES ('440282', '南雄市', '广东省,韶关市,南雄市', '440200', '1953');
INSERT INTO `sk_areas` VALUES ('440301', '市辖区', '广东省,深圳市,市辖区', '440300', '1954');
INSERT INTO `sk_areas` VALUES ('440303', '罗湖区', '广东省,深圳市,罗湖区', '440300', '1955');
INSERT INTO `sk_areas` VALUES ('440304', '福田区', '广东省,深圳市,福田区', '440300', '1956');
INSERT INTO `sk_areas` VALUES ('440305', '南山区', '广东省,深圳市,南山区', '440300', '1957');
INSERT INTO `sk_areas` VALUES ('440306', '宝安区', '广东省,深圳市,宝安区', '440300', '1958');
INSERT INTO `sk_areas` VALUES ('440307', '龙岗区', '广东省,深圳市,龙岗区', '440300', '1959');
INSERT INTO `sk_areas` VALUES ('440308', '盐田区', '广东省,深圳市,盐田区', '440300', '1960');
INSERT INTO `sk_areas` VALUES ('440401', '市辖区', '广东省,珠海市,市辖区', '440400', '1961');
INSERT INTO `sk_areas` VALUES ('440402', '香洲区', '广东省,珠海市,香洲区', '440400', '1962');
INSERT INTO `sk_areas` VALUES ('440403', '斗门区', '广东省,珠海市,斗门区', '440400', '1963');
INSERT INTO `sk_areas` VALUES ('440404', '金湾区', '广东省,珠海市,金湾区', '440400', '1964');
INSERT INTO `sk_areas` VALUES ('440501', '市辖区', '广东省,汕头市,市辖区', '440500', '1965');
INSERT INTO `sk_areas` VALUES ('440507', '龙湖区', '广东省,汕头市,龙湖区', '440500', '1966');
INSERT INTO `sk_areas` VALUES ('440511', '金平区', '广东省,汕头市,金平区', '440500', '1967');
INSERT INTO `sk_areas` VALUES ('440512', '濠江区', '广东省,汕头市,濠江区', '440500', '1968');
INSERT INTO `sk_areas` VALUES ('440513', '潮阳区', '广东省,汕头市,潮阳区', '440500', '1969');
INSERT INTO `sk_areas` VALUES ('440514', '潮南区', '广东省,汕头市,潮南区', '440500', '1970');
INSERT INTO `sk_areas` VALUES ('440515', '澄海区', '广东省,汕头市,澄海区', '440500', '1971');
INSERT INTO `sk_areas` VALUES ('440523', '南澳县', '广东省,汕头市,南澳县', '440500', '1972');
INSERT INTO `sk_areas` VALUES ('440601', '市辖区', '广东省,佛山市,市辖区', '440600', '1973');
INSERT INTO `sk_areas` VALUES ('440604', '禅城区', '广东省,佛山市,禅城区', '440600', '1974');
INSERT INTO `sk_areas` VALUES ('440605', '南海区', '广东省,佛山市,南海区', '440600', '1975');
INSERT INTO `sk_areas` VALUES ('440606', '顺德区', '广东省,佛山市,顺德区', '440600', '1976');
INSERT INTO `sk_areas` VALUES ('440607', '三水区', '广东省,佛山市,三水区', '440600', '1977');
INSERT INTO `sk_areas` VALUES ('440608', '高明区', '广东省,佛山市,高明区', '440600', '1978');
INSERT INTO `sk_areas` VALUES ('440701', '市辖区', '广东省,江门市,市辖区', '440700', '1979');
INSERT INTO `sk_areas` VALUES ('440703', '蓬江区', '广东省,江门市,蓬江区', '440700', '1980');
INSERT INTO `sk_areas` VALUES ('440704', '江海区', '广东省,江门市,江海区', '440700', '1981');
INSERT INTO `sk_areas` VALUES ('440705', '新会区', '广东省,江门市,新会区', '440700', '1982');
INSERT INTO `sk_areas` VALUES ('440781', '台山市', '广东省,江门市,台山市', '440700', '1983');
INSERT INTO `sk_areas` VALUES ('440783', '开平市', '广东省,江门市,开平市', '440700', '1984');
INSERT INTO `sk_areas` VALUES ('440784', '鹤山市', '广东省,江门市,鹤山市', '440700', '1985');
INSERT INTO `sk_areas` VALUES ('440785', '恩平市', '广东省,江门市,恩平市', '440700', '1986');
INSERT INTO `sk_areas` VALUES ('440801', '市辖区', '广东省,湛江市,市辖区', '440800', '1987');
INSERT INTO `sk_areas` VALUES ('440802', '赤坎区', '广东省,湛江市,赤坎区', '440800', '1988');
INSERT INTO `sk_areas` VALUES ('440803', '霞山区', '广东省,湛江市,霞山区', '440800', '1989');
INSERT INTO `sk_areas` VALUES ('440804', '坡头区', '广东省,湛江市,坡头区', '440800', '1990');
INSERT INTO `sk_areas` VALUES ('440811', '麻章区', '广东省,湛江市,麻章区', '440800', '1991');
INSERT INTO `sk_areas` VALUES ('440823', '遂溪县', '广东省,湛江市,遂溪县', '440800', '1992');
INSERT INTO `sk_areas` VALUES ('440825', '徐闻县', '广东省,湛江市,徐闻县', '440800', '1993');
INSERT INTO `sk_areas` VALUES ('440881', '廉江市', '广东省,湛江市,廉江市', '440800', '1994');
INSERT INTO `sk_areas` VALUES ('440882', '雷州市', '广东省,湛江市,雷州市', '440800', '1995');
INSERT INTO `sk_areas` VALUES ('440883', '吴川市', '广东省,湛江市,吴川市', '440800', '1996');
INSERT INTO `sk_areas` VALUES ('440901', '市辖区', '广东省,茂名市,市辖区', '440900', '1997');
INSERT INTO `sk_areas` VALUES ('440902', '茂南区', '广东省,茂名市,茂南区', '440900', '1998');
INSERT INTO `sk_areas` VALUES ('440903', '茂港区', '广东省,茂名市,茂港区', '440900', '1999');
INSERT INTO `sk_areas` VALUES ('440923', '电白县', '广东省,茂名市,电白县', '440900', '2000');
INSERT INTO `sk_areas` VALUES ('440981', '高州市', '广东省,茂名市,高州市', '440900', '2001');
INSERT INTO `sk_areas` VALUES ('440982', '化州市', '广东省,茂名市,化州市', '440900', '2002');
INSERT INTO `sk_areas` VALUES ('440983', '信宜市', '广东省,茂名市,信宜市', '440900', '2003');
INSERT INTO `sk_areas` VALUES ('441201', '市辖区', '广东省,肇庆市,市辖区', '441200', '2004');
INSERT INTO `sk_areas` VALUES ('441202', '端州区', '广东省,肇庆市,端州区', '441200', '2005');
INSERT INTO `sk_areas` VALUES ('441203', '鼎湖区', '广东省,肇庆市,鼎湖区', '441200', '2006');
INSERT INTO `sk_areas` VALUES ('441223', '广宁县', '广东省,肇庆市,广宁县', '441200', '2007');
INSERT INTO `sk_areas` VALUES ('441224', '怀集县', '广东省,肇庆市,怀集县', '441200', '2008');
INSERT INTO `sk_areas` VALUES ('441225', '封开县', '广东省,肇庆市,封开县', '441200', '2009');
INSERT INTO `sk_areas` VALUES ('441226', '德庆县', '广东省,肇庆市,德庆县', '441200', '2010');
INSERT INTO `sk_areas` VALUES ('441283', '高要市', '广东省,肇庆市,高要市', '441200', '2011');
INSERT INTO `sk_areas` VALUES ('441284', '四会市', '广东省,肇庆市,四会市', '441200', '2012');
INSERT INTO `sk_areas` VALUES ('441301', '市辖区', '广东省,惠州市,市辖区', '441300', '2013');
INSERT INTO `sk_areas` VALUES ('441302', '惠城区', '广东省,惠州市,惠城区', '441300', '2014');
INSERT INTO `sk_areas` VALUES ('441303', '惠阳区', '广东省,惠州市,惠阳区', '441300', '2015');
INSERT INTO `sk_areas` VALUES ('441322', '博罗县', '广东省,惠州市,博罗县', '441300', '2016');
INSERT INTO `sk_areas` VALUES ('441323', '惠东县', '广东省,惠州市,惠东县', '441300', '2017');
INSERT INTO `sk_areas` VALUES ('441324', '龙门县', '广东省,惠州市,龙门县', '441300', '2018');
INSERT INTO `sk_areas` VALUES ('441401', '市辖区', '广东省,梅州市,市辖区', '441400', '2019');
INSERT INTO `sk_areas` VALUES ('441402', '梅江区', '广东省,梅州市,梅江区', '441400', '2020');
INSERT INTO `sk_areas` VALUES ('441421', '梅　县', '广东省,梅州市,梅　县', '441400', '2021');
INSERT INTO `sk_areas` VALUES ('441422', '大埔县', '广东省,梅州市,大埔县', '441400', '2022');
INSERT INTO `sk_areas` VALUES ('441423', '丰顺县', '广东省,梅州市,丰顺县', '441400', '2023');
INSERT INTO `sk_areas` VALUES ('441424', '五华县', '广东省,梅州市,五华县', '441400', '2024');
INSERT INTO `sk_areas` VALUES ('441426', '平远县', '广东省,梅州市,平远县', '441400', '2025');
INSERT INTO `sk_areas` VALUES ('441427', '蕉岭县', '广东省,梅州市,蕉岭县', '441400', '2026');
INSERT INTO `sk_areas` VALUES ('441481', '兴宁市', '广东省,梅州市,兴宁市', '441400', '2027');
INSERT INTO `sk_areas` VALUES ('441501', '市辖区', '广东省,汕尾市,市辖区', '441500', '2028');
INSERT INTO `sk_areas` VALUES ('441502', '城　区', '广东省,汕尾市,城　区', '441500', '2029');
INSERT INTO `sk_areas` VALUES ('441521', '海丰县', '广东省,汕尾市,海丰县', '441500', '2030');
INSERT INTO `sk_areas` VALUES ('441523', '陆河县', '广东省,汕尾市,陆河县', '441500', '2031');
INSERT INTO `sk_areas` VALUES ('441581', '陆丰市', '广东省,汕尾市,陆丰市', '441500', '2032');
INSERT INTO `sk_areas` VALUES ('441601', '市辖区', '广东省,河源市,市辖区', '441600', '2033');
INSERT INTO `sk_areas` VALUES ('441602', '源城区', '广东省,河源市,源城区', '441600', '2034');
INSERT INTO `sk_areas` VALUES ('441621', '紫金县', '广东省,河源市,紫金县', '441600', '2035');
INSERT INTO `sk_areas` VALUES ('441622', '龙川县', '广东省,河源市,龙川县', '441600', '2036');
INSERT INTO `sk_areas` VALUES ('441623', '连平县', '广东省,河源市,连平县', '441600', '2037');
INSERT INTO `sk_areas` VALUES ('441624', '和平县', '广东省,河源市,和平县', '441600', '2038');
INSERT INTO `sk_areas` VALUES ('441625', '东源县', '广东省,河源市,东源县', '441600', '2039');
INSERT INTO `sk_areas` VALUES ('441701', '市辖区', '广东省,阳江市,市辖区', '441700', '2040');
INSERT INTO `sk_areas` VALUES ('441702', '江城区', '广东省,阳江市,江城区', '441700', '2041');
INSERT INTO `sk_areas` VALUES ('441721', '阳西县', '广东省,阳江市,阳西县', '441700', '2042');
INSERT INTO `sk_areas` VALUES ('441723', '阳东县', '广东省,阳江市,阳东县', '441700', '2043');
INSERT INTO `sk_areas` VALUES ('441781', '阳春市', '广东省,阳江市,阳春市', '441700', '2044');
INSERT INTO `sk_areas` VALUES ('441801', '市辖区', '广东省,清远市,市辖区', '441800', '2045');
INSERT INTO `sk_areas` VALUES ('441802', '清城区', '广东省,清远市,清城区', '441800', '2046');
INSERT INTO `sk_areas` VALUES ('441821', '佛冈县', '广东省,清远市,佛冈县', '441800', '2047');
INSERT INTO `sk_areas` VALUES ('441823', '阳山县', '广东省,清远市,阳山县', '441800', '2048');
INSERT INTO `sk_areas` VALUES ('441825', '连山壮族瑶族自治县', '广东省,清远市,连山壮族瑶族自治县', '441800', '2049');
INSERT INTO `sk_areas` VALUES ('441826', '连南瑶族自治县', '广东省,清远市,连南瑶族自治县', '441800', '2050');
INSERT INTO `sk_areas` VALUES ('441827', '清新县', '广东省,清远市,清新县', '441800', '2051');
INSERT INTO `sk_areas` VALUES ('441881', '英德市', '广东省,清远市,英德市', '441800', '2052');
INSERT INTO `sk_areas` VALUES ('441882', '连州市', '广东省,清远市,连州市', '441800', '2053');
INSERT INTO `sk_areas` VALUES ('445101', '市辖区', '广东省,潮州市,市辖区', '445100', '2054');
INSERT INTO `sk_areas` VALUES ('445102', '湘桥区', '广东省,潮州市,湘桥区', '445100', '2055');
INSERT INTO `sk_areas` VALUES ('445121', '潮安县', '广东省,潮州市,潮安县', '445100', '2056');
INSERT INTO `sk_areas` VALUES ('445122', '饶平县', '广东省,潮州市,饶平县', '445100', '2057');
INSERT INTO `sk_areas` VALUES ('445201', '市辖区', '广东省,揭阳市,市辖区', '445200', '2058');
INSERT INTO `sk_areas` VALUES ('445202', '榕城区', '广东省,揭阳市,榕城区', '445200', '2059');
INSERT INTO `sk_areas` VALUES ('445221', '揭东县', '广东省,揭阳市,揭东县', '445200', '2060');
INSERT INTO `sk_areas` VALUES ('445222', '揭西县', '广东省,揭阳市,揭西县', '445200', '2061');
INSERT INTO `sk_areas` VALUES ('445224', '惠来县', '广东省,揭阳市,惠来县', '445200', '2062');
INSERT INTO `sk_areas` VALUES ('445281', '普宁市', '广东省,揭阳市,普宁市', '445200', '2063');
INSERT INTO `sk_areas` VALUES ('445301', '市辖区', '广东省,云浮市,市辖区', '445300', '2064');
INSERT INTO `sk_areas` VALUES ('445302', '云城区', '广东省,云浮市,云城区', '445300', '2065');
INSERT INTO `sk_areas` VALUES ('445321', '新兴县', '广东省,云浮市,新兴县', '445300', '2066');
INSERT INTO `sk_areas` VALUES ('445322', '郁南县', '广东省,云浮市,郁南县', '445300', '2067');
INSERT INTO `sk_areas` VALUES ('445323', '云安县', '广东省,云浮市,云安县', '445300', '2068');
INSERT INTO `sk_areas` VALUES ('445381', '罗定市', '广东省,云浮市,罗定市', '445300', '2069');
INSERT INTO `sk_areas` VALUES ('450101', '市辖区', '广西壮族自治区,南宁市,市辖区', '450100', '2070');
INSERT INTO `sk_areas` VALUES ('450102', '兴宁区', '广西壮族自治区,南宁市,兴宁区', '450100', '2071');
INSERT INTO `sk_areas` VALUES ('450103', '青秀区', '广西壮族自治区,南宁市,青秀区', '450100', '2072');
INSERT INTO `sk_areas` VALUES ('450105', '江南区', '广西壮族自治区,南宁市,江南区', '450100', '2073');
INSERT INTO `sk_areas` VALUES ('450107', '西乡塘区', '广西壮族自治区,南宁市,西乡塘区', '450100', '2074');
INSERT INTO `sk_areas` VALUES ('450108', '良庆区', '广西壮族自治区,南宁市,良庆区', '450100', '2075');
INSERT INTO `sk_areas` VALUES ('450109', '邕宁区', '广西壮族自治区,南宁市,邕宁区', '450100', '2076');
INSERT INTO `sk_areas` VALUES ('450122', '武鸣县', '广西壮族自治区,南宁市,武鸣县', '450100', '2077');
INSERT INTO `sk_areas` VALUES ('450123', '隆安县', '广西壮族自治区,南宁市,隆安县', '450100', '2078');
INSERT INTO `sk_areas` VALUES ('450124', '马山县', '广西壮族自治区,南宁市,马山县', '450100', '2079');
INSERT INTO `sk_areas` VALUES ('450125', '上林县', '广西壮族自治区,南宁市,上林县', '450100', '2080');
INSERT INTO `sk_areas` VALUES ('450126', '宾阳县', '广西壮族自治区,南宁市,宾阳县', '450100', '2081');
INSERT INTO `sk_areas` VALUES ('450127', '横　县', '广西壮族自治区,南宁市,横　县', '450100', '2082');
INSERT INTO `sk_areas` VALUES ('450201', '市辖区', '广西壮族自治区,柳州市,市辖区', '450200', '2083');
INSERT INTO `sk_areas` VALUES ('450202', '城中区', '广西壮族自治区,柳州市,城中区', '450200', '2084');
INSERT INTO `sk_areas` VALUES ('450203', '鱼峰区', '广西壮族自治区,柳州市,鱼峰区', '450200', '2085');
INSERT INTO `sk_areas` VALUES ('450204', '柳南区', '广西壮族自治区,柳州市,柳南区', '450200', '2086');
INSERT INTO `sk_areas` VALUES ('450205', '柳北区', '广西壮族自治区,柳州市,柳北区', '450200', '2087');
INSERT INTO `sk_areas` VALUES ('450221', '柳江县', '广西壮族自治区,柳州市,柳江县', '450200', '2088');
INSERT INTO `sk_areas` VALUES ('450222', '柳城县', '广西壮族自治区,柳州市,柳城县', '450200', '2089');
INSERT INTO `sk_areas` VALUES ('450223', '鹿寨县', '广西壮族自治区,柳州市,鹿寨县', '450200', '2090');
INSERT INTO `sk_areas` VALUES ('450224', '融安县', '广西壮族自治区,柳州市,融安县', '450200', '2091');
INSERT INTO `sk_areas` VALUES ('450225', '融水苗族自治县', '广西壮族自治区,柳州市,融水苗族自治县', '450200', '2092');
INSERT INTO `sk_areas` VALUES ('450226', '三江侗族自治县', '广西壮族自治区,柳州市,三江侗族自治县', '450200', '2093');
INSERT INTO `sk_areas` VALUES ('450301', '市辖区', '广西壮族自治区,桂林市,市辖区', '450300', '2094');
INSERT INTO `sk_areas` VALUES ('450302', '秀峰区', '广西壮族自治区,桂林市,秀峰区', '450300', '2095');
INSERT INTO `sk_areas` VALUES ('450303', '叠彩区', '广西壮族自治区,桂林市,叠彩区', '450300', '2096');
INSERT INTO `sk_areas` VALUES ('450304', '象山区', '广西壮族自治区,桂林市,象山区', '450300', '2097');
INSERT INTO `sk_areas` VALUES ('450305', '七星区', '广西壮族自治区,桂林市,七星区', '450300', '2098');
INSERT INTO `sk_areas` VALUES ('450311', '雁山区', '广西壮族自治区,桂林市,雁山区', '450300', '2099');
INSERT INTO `sk_areas` VALUES ('450321', '阳朔县', '广西壮族自治区,桂林市,阳朔县', '450300', '2100');
INSERT INTO `sk_areas` VALUES ('450322', '临桂县', '广西壮族自治区,桂林市,临桂县', '450300', '2101');
INSERT INTO `sk_areas` VALUES ('450323', '灵川县', '广西壮族自治区,桂林市,灵川县', '450300', '2102');
INSERT INTO `sk_areas` VALUES ('450324', '全州县', '广西壮族自治区,桂林市,全州县', '450300', '2103');
INSERT INTO `sk_areas` VALUES ('450325', '兴安县', '广西壮族自治区,桂林市,兴安县', '450300', '2104');
INSERT INTO `sk_areas` VALUES ('450326', '永福县', '广西壮族自治区,桂林市,永福县', '450300', '2105');
INSERT INTO `sk_areas` VALUES ('450327', '灌阳县', '广西壮族自治区,桂林市,灌阳县', '450300', '2106');
INSERT INTO `sk_areas` VALUES ('450328', '龙胜各族自治县', '广西壮族自治区,桂林市,龙胜各族自治县', '450300', '2107');
INSERT INTO `sk_areas` VALUES ('450329', '资源县', '广西壮族自治区,桂林市,资源县', '450300', '2108');
INSERT INTO `sk_areas` VALUES ('450330', '平乐县', '广西壮族自治区,桂林市,平乐县', '450300', '2109');
INSERT INTO `sk_areas` VALUES ('450331', '荔蒲县', '广西壮族自治区,桂林市,荔蒲县', '450300', '2110');
INSERT INTO `sk_areas` VALUES ('450332', '恭城瑶族自治县', '广西壮族自治区,桂林市,恭城瑶族自治县', '450300', '2111');
INSERT INTO `sk_areas` VALUES ('450401', '市辖区', '广西壮族自治区,梧州市,市辖区', '450400', '2112');
INSERT INTO `sk_areas` VALUES ('450403', '万秀区', '广西壮族自治区,梧州市,万秀区', '450400', '2113');
INSERT INTO `sk_areas` VALUES ('450404', '蝶山区', '广西壮族自治区,梧州市,蝶山区', '450400', '2114');
INSERT INTO `sk_areas` VALUES ('450405', '长洲区', '广西壮族自治区,梧州市,长洲区', '450400', '2115');
INSERT INTO `sk_areas` VALUES ('450421', '苍梧县', '广西壮族自治区,梧州市,苍梧县', '450400', '2116');
INSERT INTO `sk_areas` VALUES ('450422', '藤　县', '广西壮族自治区,梧州市,藤　县', '450400', '2117');
INSERT INTO `sk_areas` VALUES ('450423', '蒙山县', '广西壮族自治区,梧州市,蒙山县', '450400', '2118');
INSERT INTO `sk_areas` VALUES ('450481', '岑溪市', '广西壮族自治区,梧州市,岑溪市', '450400', '2119');
INSERT INTO `sk_areas` VALUES ('450501', '市辖区', '广西壮族自治区,北海市,市辖区', '450500', '2120');
INSERT INTO `sk_areas` VALUES ('450502', '海城区', '广西壮族自治区,北海市,海城区', '450500', '2121');
INSERT INTO `sk_areas` VALUES ('450503', '银海区', '广西壮族自治区,北海市,银海区', '450500', '2122');
INSERT INTO `sk_areas` VALUES ('450512', '铁山港区', '广西壮族自治区,北海市,铁山港区', '450500', '2123');
INSERT INTO `sk_areas` VALUES ('450521', '合浦县', '广西壮族自治区,北海市,合浦县', '450500', '2124');
INSERT INTO `sk_areas` VALUES ('450601', '市辖区', '广西壮族自治区,防城港市,市辖区', '450600', '2125');
INSERT INTO `sk_areas` VALUES ('450602', '港口区', '广西壮族自治区,防城港市,港口区', '450600', '2126');
INSERT INTO `sk_areas` VALUES ('450603', '防城区', '广西壮族自治区,防城港市,防城区', '450600', '2127');
INSERT INTO `sk_areas` VALUES ('450621', '上思县', '广西壮族自治区,防城港市,上思县', '450600', '2128');
INSERT INTO `sk_areas` VALUES ('450681', '东兴市', '广西壮族自治区,防城港市,东兴市', '450600', '2129');
INSERT INTO `sk_areas` VALUES ('450701', '市辖区', '广西壮族自治区,钦州市,市辖区', '450700', '2130');
INSERT INTO `sk_areas` VALUES ('450702', '钦南区', '广西壮族自治区,钦州市,钦南区', '450700', '2131');
INSERT INTO `sk_areas` VALUES ('450703', '钦北区', '广西壮族自治区,钦州市,钦北区', '450700', '2132');
INSERT INTO `sk_areas` VALUES ('450721', '灵山县', '广西壮族自治区,钦州市,灵山县', '450700', '2133');
INSERT INTO `sk_areas` VALUES ('450722', '浦北县', '广西壮族自治区,钦州市,浦北县', '450700', '2134');
INSERT INTO `sk_areas` VALUES ('450801', '市辖区', '广西壮族自治区,贵港市,市辖区', '450800', '2135');
INSERT INTO `sk_areas` VALUES ('450802', '港北区', '广西壮族自治区,贵港市,港北区', '450800', '2136');
INSERT INTO `sk_areas` VALUES ('450803', '港南区', '广西壮族自治区,贵港市,港南区', '450800', '2137');
INSERT INTO `sk_areas` VALUES ('450804', '覃塘区', '广西壮族自治区,贵港市,覃塘区', '450800', '2138');
INSERT INTO `sk_areas` VALUES ('450821', '平南县', '广西壮族自治区,贵港市,平南县', '450800', '2139');
INSERT INTO `sk_areas` VALUES ('450881', '桂平市', '广西壮族自治区,贵港市,桂平市', '450800', '2140');
INSERT INTO `sk_areas` VALUES ('450901', '市辖区', '广西壮族自治区,玉林市,市辖区', '450900', '2141');
INSERT INTO `sk_areas` VALUES ('450902', '玉州区', '广西壮族自治区,玉林市,玉州区', '450900', '2142');
INSERT INTO `sk_areas` VALUES ('450921', '容　县', '广西壮族自治区,玉林市,容　县', '450900', '2143');
INSERT INTO `sk_areas` VALUES ('450922', '陆川县', '广西壮族自治区,玉林市,陆川县', '450900', '2144');
INSERT INTO `sk_areas` VALUES ('450923', '博白县', '广西壮族自治区,玉林市,博白县', '450900', '2145');
INSERT INTO `sk_areas` VALUES ('450924', '兴业县', '广西壮族自治区,玉林市,兴业县', '450900', '2146');
INSERT INTO `sk_areas` VALUES ('450981', '北流市', '广西壮族自治区,玉林市,北流市', '450900', '2147');
INSERT INTO `sk_areas` VALUES ('451001', '市辖区', '广西壮族自治区,百色市,市辖区', '451000', '2148');
INSERT INTO `sk_areas` VALUES ('451002', '右江区', '广西壮族自治区,百色市,右江区', '451000', '2149');
INSERT INTO `sk_areas` VALUES ('451021', '田阳县', '广西壮族自治区,百色市,田阳县', '451000', '2150');
INSERT INTO `sk_areas` VALUES ('451022', '田东县', '广西壮族自治区,百色市,田东县', '451000', '2151');
INSERT INTO `sk_areas` VALUES ('451023', '平果县', '广西壮族自治区,百色市,平果县', '451000', '2152');
INSERT INTO `sk_areas` VALUES ('451024', '德保县', '广西壮族自治区,百色市,德保县', '451000', '2153');
INSERT INTO `sk_areas` VALUES ('451025', '靖西县', '广西壮族自治区,百色市,靖西县', '451000', '2154');
INSERT INTO `sk_areas` VALUES ('451026', '那坡县', '广西壮族自治区,百色市,那坡县', '451000', '2155');
INSERT INTO `sk_areas` VALUES ('451027', '凌云县', '广西壮族自治区,百色市,凌云县', '451000', '2156');
INSERT INTO `sk_areas` VALUES ('451028', '乐业县', '广西壮族自治区,百色市,乐业县', '451000', '2157');
INSERT INTO `sk_areas` VALUES ('451029', '田林县', '广西壮族自治区,百色市,田林县', '451000', '2158');
INSERT INTO `sk_areas` VALUES ('451030', '西林县', '广西壮族自治区,百色市,西林县', '451000', '2159');
INSERT INTO `sk_areas` VALUES ('451031', '隆林各族自治县', '广西壮族自治区,百色市,隆林各族自治县', '451000', '2160');
INSERT INTO `sk_areas` VALUES ('451101', '市辖区', '广西壮族自治区,贺州市,市辖区', '451100', '2161');
INSERT INTO `sk_areas` VALUES ('451102', '八步区', '广西壮族自治区,贺州市,八步区', '451100', '2162');
INSERT INTO `sk_areas` VALUES ('451121', '昭平县', '广西壮族自治区,贺州市,昭平县', '451100', '2163');
INSERT INTO `sk_areas` VALUES ('451122', '钟山县', '广西壮族自治区,贺州市,钟山县', '451100', '2164');
INSERT INTO `sk_areas` VALUES ('451123', '富川瑶族自治县', '广西壮族自治区,贺州市,富川瑶族自治县', '451100', '2165');
INSERT INTO `sk_areas` VALUES ('451201', '市辖区', '广西壮族自治区,河池市,市辖区', '451200', '2166');
INSERT INTO `sk_areas` VALUES ('451202', '金城江区', '广西壮族自治区,河池市,金城江区', '451200', '2167');
INSERT INTO `sk_areas` VALUES ('451221', '南丹县', '广西壮族自治区,河池市,南丹县', '451200', '2168');
INSERT INTO `sk_areas` VALUES ('451222', '天峨县', '广西壮族自治区,河池市,天峨县', '451200', '2169');
INSERT INTO `sk_areas` VALUES ('451223', '凤山县', '广西壮族自治区,河池市,凤山县', '451200', '2170');
INSERT INTO `sk_areas` VALUES ('451224', '东兰县', '广西壮族自治区,河池市,东兰县', '451200', '2171');
INSERT INTO `sk_areas` VALUES ('451225', '罗城仫佬族自治县', '广西壮族自治区,河池市,罗城仫佬族自治县', '451200', '2172');
INSERT INTO `sk_areas` VALUES ('451226', '环江毛南族自治县', '广西壮族自治区,河池市,环江毛南族自治县', '451200', '2173');
INSERT INTO `sk_areas` VALUES ('451227', '巴马瑶族自治县', '广西壮族自治区,河池市,巴马瑶族自治县', '451200', '2174');
INSERT INTO `sk_areas` VALUES ('451228', '都安瑶族自治县', '广西壮族自治区,河池市,都安瑶族自治县', '451200', '2175');
INSERT INTO `sk_areas` VALUES ('451229', '大化瑶族自治县', '广西壮族自治区,河池市,大化瑶族自治县', '451200', '2176');
INSERT INTO `sk_areas` VALUES ('451281', '宜州市', '广西壮族自治区,河池市,宜州市', '451200', '2177');
INSERT INTO `sk_areas` VALUES ('451301', '市辖区', '广西壮族自治区,来宾市,市辖区', '451300', '2178');
INSERT INTO `sk_areas` VALUES ('451302', '兴宾区', '广西壮族自治区,来宾市,兴宾区', '451300', '2179');
INSERT INTO `sk_areas` VALUES ('451321', '忻城县', '广西壮族自治区,来宾市,忻城县', '451300', '2180');
INSERT INTO `sk_areas` VALUES ('451322', '象州县', '广西壮族自治区,来宾市,象州县', '451300', '2181');
INSERT INTO `sk_areas` VALUES ('451323', '武宣县', '广西壮族自治区,来宾市,武宣县', '451300', '2182');
INSERT INTO `sk_areas` VALUES ('451324', '金秀瑶族自治县', '广西壮族自治区,来宾市,金秀瑶族自治县', '451300', '2183');
INSERT INTO `sk_areas` VALUES ('451381', '合山市', '广西壮族自治区,来宾市,合山市', '451300', '2184');
INSERT INTO `sk_areas` VALUES ('451401', '市辖区', '广西壮族自治区,崇左市,市辖区', '451400', '2185');
INSERT INTO `sk_areas` VALUES ('451402', '江洲区', '广西壮族自治区,崇左市,江洲区', '451400', '2186');
INSERT INTO `sk_areas` VALUES ('451421', '扶绥县', '广西壮族自治区,崇左市,扶绥县', '451400', '2187');
INSERT INTO `sk_areas` VALUES ('451422', '宁明县', '广西壮族自治区,崇左市,宁明县', '451400', '2188');
INSERT INTO `sk_areas` VALUES ('451423', '龙州县', '广西壮族自治区,崇左市,龙州县', '451400', '2189');
INSERT INTO `sk_areas` VALUES ('451424', '大新县', '广西壮族自治区,崇左市,大新县', '451400', '2190');
INSERT INTO `sk_areas` VALUES ('451425', '天等县', '广西壮族自治区,崇左市,天等县', '451400', '2191');
INSERT INTO `sk_areas` VALUES ('451481', '凭祥市', '广西壮族自治区,崇左市,凭祥市', '451400', '2192');
INSERT INTO `sk_areas` VALUES ('460101', '市辖区', '海南省,海口市,市辖区', '460100', '2193');
INSERT INTO `sk_areas` VALUES ('460105', '秀英区', '海南省,海口市,秀英区', '460100', '2194');
INSERT INTO `sk_areas` VALUES ('460106', '龙华区', '海南省,海口市,龙华区', '460100', '2195');
INSERT INTO `sk_areas` VALUES ('460107', '琼山区', '海南省,海口市,琼山区', '460100', '2196');
INSERT INTO `sk_areas` VALUES ('460108', '美兰区', '海南省,海口市,美兰区', '460100', '2197');
INSERT INTO `sk_areas` VALUES ('460201', '市辖区', '海南省,三亚市,市辖区', '460200', '2198');
INSERT INTO `sk_areas` VALUES ('469001', '五指山市', '海南省,省直辖县级行政单位,五指山市', '469000', '2199');
INSERT INTO `sk_areas` VALUES ('469002', '琼海市', '海南省,省直辖县级行政单位,琼海市', '469000', '2200');
INSERT INTO `sk_areas` VALUES ('469003', '儋州市', '海南省,省直辖县级行政单位,儋州市', '469000', '2201');
INSERT INTO `sk_areas` VALUES ('469005', '文昌市', '海南省,省直辖县级行政单位,文昌市', '469000', '2202');
INSERT INTO `sk_areas` VALUES ('469006', '万宁市', '海南省,省直辖县级行政单位,万宁市', '469000', '2203');
INSERT INTO `sk_areas` VALUES ('469007', '东方市', '海南省,省直辖县级行政单位,东方市', '469000', '2204');
INSERT INTO `sk_areas` VALUES ('469025', '定安县', '海南省,省直辖县级行政单位,定安县', '469000', '2205');
INSERT INTO `sk_areas` VALUES ('469026', '屯昌县', '海南省,省直辖县级行政单位,屯昌县', '469000', '2206');
INSERT INTO `sk_areas` VALUES ('469027', '澄迈县', '海南省,省直辖县级行政单位,澄迈县', '469000', '2207');
INSERT INTO `sk_areas` VALUES ('469028', '临高县', '海南省,省直辖县级行政单位,临高县', '469000', '2208');
INSERT INTO `sk_areas` VALUES ('469030', '白沙黎族自治县', '海南省,省直辖县级行政单位,白沙黎族自治县', '469000', '2209');
INSERT INTO `sk_areas` VALUES ('469031', '昌江黎族自治县', '海南省,省直辖县级行政单位,昌江黎族自治县', '469000', '2210');
INSERT INTO `sk_areas` VALUES ('469033', '乐东黎族自治县', '海南省,省直辖县级行政单位,乐东黎族自治县', '469000', '2211');
INSERT INTO `sk_areas` VALUES ('469034', '陵水黎族自治县', '海南省,省直辖县级行政单位,陵水黎族自治县', '469000', '2212');
INSERT INTO `sk_areas` VALUES ('469035', '保亭黎族苗族自治县', '海南省,省直辖县级行政单位,保亭黎族苗族自治县', '469000', '2213');
INSERT INTO `sk_areas` VALUES ('469036', '琼中黎族苗族自治县', '海南省,省直辖县级行政单位,琼中黎族苗族自治县', '469000', '2214');
INSERT INTO `sk_areas` VALUES ('469037', '西沙群岛', '海南省,省直辖县级行政单位,西沙群岛', '469000', '2215');
INSERT INTO `sk_areas` VALUES ('469038', '南沙群岛', '海南省,省直辖县级行政单位,南沙群岛', '469000', '2216');
INSERT INTO `sk_areas` VALUES ('469039', '中沙群岛的岛礁及其海域', '海南省,省直辖县级行政单位,中沙群岛的岛礁及其海域', '469000', '2217');
INSERT INTO `sk_areas` VALUES ('500101', '万州区', '重庆市,市辖区,万州区', '500100', '2218');
INSERT INTO `sk_areas` VALUES ('500102', '涪陵区', '重庆市,市辖区,涪陵区', '500100', '2219');
INSERT INTO `sk_areas` VALUES ('500103', '渝中区', '重庆市,市辖区,渝中区', '500100', '2220');
INSERT INTO `sk_areas` VALUES ('500104', '大渡口区', '重庆市,市辖区,大渡口区', '500100', '2221');
INSERT INTO `sk_areas` VALUES ('500105', '江北区', '重庆市,市辖区,江北区', '500100', '2222');
INSERT INTO `sk_areas` VALUES ('500106', '沙坪坝区', '重庆市,市辖区,沙坪坝区', '500100', '2223');
INSERT INTO `sk_areas` VALUES ('500107', '九龙坡区', '重庆市,市辖区,九龙坡区', '500100', '2224');
INSERT INTO `sk_areas` VALUES ('500108', '南岸区', '重庆市,市辖区,南岸区', '500100', '2225');
INSERT INTO `sk_areas` VALUES ('500109', '北碚区', '重庆市,市辖区,北碚区', '500100', '2226');
INSERT INTO `sk_areas` VALUES ('500110', '万盛区', '重庆市,市辖区,万盛区', '500100', '2227');
INSERT INTO `sk_areas` VALUES ('500111', '双桥区', '重庆市,市辖区,双桥区', '500100', '2228');
INSERT INTO `sk_areas` VALUES ('500112', '渝北区', '重庆市,市辖区,渝北区', '500100', '2229');
INSERT INTO `sk_areas` VALUES ('500113', '巴南区', '重庆市,市辖区,巴南区', '500100', '2230');
INSERT INTO `sk_areas` VALUES ('500114', '黔江区', '重庆市,市辖区,黔江区', '500100', '2231');
INSERT INTO `sk_areas` VALUES ('500115', '长寿区', '重庆市,市辖区,长寿区', '500100', '2232');
INSERT INTO `sk_areas` VALUES ('500222', '綦江县', '重庆市,县,綦江县', '500200', '2233');
INSERT INTO `sk_areas` VALUES ('500223', '潼南县', '重庆市,县,潼南县', '500200', '2234');
INSERT INTO `sk_areas` VALUES ('500224', '铜梁县', '重庆市,县,铜梁县', '500200', '2235');
INSERT INTO `sk_areas` VALUES ('500225', '大足县', '重庆市,县,大足县', '500200', '2236');
INSERT INTO `sk_areas` VALUES ('500226', '荣昌县', '重庆市,县,荣昌县', '500200', '2237');
INSERT INTO `sk_areas` VALUES ('500227', '璧山县', '重庆市,县,璧山县', '500200', '2238');
INSERT INTO `sk_areas` VALUES ('500228', '梁平县', '重庆市,县,梁平县', '500200', '2239');
INSERT INTO `sk_areas` VALUES ('500229', '城口县', '重庆市,县,城口县', '500200', '2240');
INSERT INTO `sk_areas` VALUES ('500230', '丰都县', '重庆市,县,丰都县', '500200', '2241');
INSERT INTO `sk_areas` VALUES ('500231', '垫江县', '重庆市,县,垫江县', '500200', '2242');
INSERT INTO `sk_areas` VALUES ('500232', '武隆县', '重庆市,县,武隆县', '500200', '2243');
INSERT INTO `sk_areas` VALUES ('500233', '忠　县', '重庆市,县,忠　县', '500200', '2244');
INSERT INTO `sk_areas` VALUES ('500234', '开　县', '重庆市,县,开　县', '500200', '2245');
INSERT INTO `sk_areas` VALUES ('500235', '云阳县', '重庆市,县,云阳县', '500200', '2246');
INSERT INTO `sk_areas` VALUES ('500236', '奉节县', '重庆市,县,奉节县', '500200', '2247');
INSERT INTO `sk_areas` VALUES ('500237', '巫山县', '重庆市,县,巫山县', '500200', '2248');
INSERT INTO `sk_areas` VALUES ('500238', '巫溪县', '重庆市,县,巫溪县', '500200', '2249');
INSERT INTO `sk_areas` VALUES ('500240', '石柱土家族自治县', '重庆市,县,石柱土家族自治县', '500200', '2250');
INSERT INTO `sk_areas` VALUES ('500241', '秀山土家族苗族自治县', '重庆市,县,秀山土家族苗族自治县', '500200', '2251');
INSERT INTO `sk_areas` VALUES ('500242', '酉阳土家族苗族自治县', '重庆市,县,酉阳土家族苗族自治县', '500200', '2252');
INSERT INTO `sk_areas` VALUES ('500243', '彭水苗族土家族自治县', '重庆市,县,彭水苗族土家族自治县', '500200', '2253');
INSERT INTO `sk_areas` VALUES ('500381', '江津市', '重庆市,市,江津市', '500300', '2254');
INSERT INTO `sk_areas` VALUES ('500382', '合川市', '重庆市,市,合川市', '500300', '2255');
INSERT INTO `sk_areas` VALUES ('500383', '永川市', '重庆市,市,永川市', '500300', '2256');
INSERT INTO `sk_areas` VALUES ('500384', '南川市', '重庆市,市,南川市', '500300', '2257');
INSERT INTO `sk_areas` VALUES ('510101', '市辖区', '四川省,成都市,市辖区', '510100', '2258');
INSERT INTO `sk_areas` VALUES ('510104', '锦江区', '四川省,成都市,锦江区', '510100', '2259');
INSERT INTO `sk_areas` VALUES ('510105', '青羊区', '四川省,成都市,青羊区', '510100', '2260');
INSERT INTO `sk_areas` VALUES ('510106', '金牛区', '四川省,成都市,金牛区', '510100', '2261');
INSERT INTO `sk_areas` VALUES ('510107', '武侯区', '四川省,成都市,武侯区', '510100', '2262');
INSERT INTO `sk_areas` VALUES ('510108', '成华区', '四川省,成都市,成华区', '510100', '2263');
INSERT INTO `sk_areas` VALUES ('510112', '龙泉驿区', '四川省,成都市,龙泉驿区', '510100', '2264');
INSERT INTO `sk_areas` VALUES ('510113', '青白江区', '四川省,成都市,青白江区', '510100', '2265');
INSERT INTO `sk_areas` VALUES ('510114', '新都区', '四川省,成都市,新都区', '510100', '2266');
INSERT INTO `sk_areas` VALUES ('510115', '温江区', '四川省,成都市,温江区', '510100', '2267');
INSERT INTO `sk_areas` VALUES ('510121', '金堂县', '四川省,成都市,金堂县', '510100', '2268');
INSERT INTO `sk_areas` VALUES ('510122', '双流县', '四川省,成都市,双流县', '510100', '2269');
INSERT INTO `sk_areas` VALUES ('510124', '郫　县', '四川省,成都市,郫　县', '510100', '2270');
INSERT INTO `sk_areas` VALUES ('510129', '大邑县', '四川省,成都市,大邑县', '510100', '2271');
INSERT INTO `sk_areas` VALUES ('510131', '蒲江县', '四川省,成都市,蒲江县', '510100', '2272');
INSERT INTO `sk_areas` VALUES ('510132', '新津县', '四川省,成都市,新津县', '510100', '2273');
INSERT INTO `sk_areas` VALUES ('510181', '都江堰市', '四川省,成都市,都江堰市', '510100', '2274');
INSERT INTO `sk_areas` VALUES ('510182', '彭州市', '四川省,成都市,彭州市', '510100', '2275');
INSERT INTO `sk_areas` VALUES ('510183', '邛崃市', '四川省,成都市,邛崃市', '510100', '2276');
INSERT INTO `sk_areas` VALUES ('510184', '崇州市', '四川省,成都市,崇州市', '510100', '2277');
INSERT INTO `sk_areas` VALUES ('510301', '市辖区', '四川省,自贡市,市辖区', '510300', '2278');
INSERT INTO `sk_areas` VALUES ('510302', '自流井区', '四川省,自贡市,自流井区', '510300', '2279');
INSERT INTO `sk_areas` VALUES ('510303', '贡井区', '四川省,自贡市,贡井区', '510300', '2280');
INSERT INTO `sk_areas` VALUES ('510304', '大安区', '四川省,自贡市,大安区', '510300', '2281');
INSERT INTO `sk_areas` VALUES ('510311', '沿滩区', '四川省,自贡市,沿滩区', '510300', '2282');
INSERT INTO `sk_areas` VALUES ('510321', '荣　县', '四川省,自贡市,荣　县', '510300', '2283');
INSERT INTO `sk_areas` VALUES ('510322', '富顺县', '四川省,自贡市,富顺县', '510300', '2284');
INSERT INTO `sk_areas` VALUES ('510401', '市辖区', '四川省,攀枝花市,市辖区', '510400', '2285');
INSERT INTO `sk_areas` VALUES ('510402', '东　区', '四川省,攀枝花市,东　区', '510400', '2286');
INSERT INTO `sk_areas` VALUES ('510403', '西　区', '四川省,攀枝花市,西　区', '510400', '2287');
INSERT INTO `sk_areas` VALUES ('510411', '仁和区', '四川省,攀枝花市,仁和区', '510400', '2288');
INSERT INTO `sk_areas` VALUES ('510421', '米易县', '四川省,攀枝花市,米易县', '510400', '2289');
INSERT INTO `sk_areas` VALUES ('510422', '盐边县', '四川省,攀枝花市,盐边县', '510400', '2290');
INSERT INTO `sk_areas` VALUES ('510501', '市辖区', '四川省,泸州市,市辖区', '510500', '2291');
INSERT INTO `sk_areas` VALUES ('510502', '江阳区', '四川省,泸州市,江阳区', '510500', '2292');
INSERT INTO `sk_areas` VALUES ('510503', '纳溪区', '四川省,泸州市,纳溪区', '510500', '2293');
INSERT INTO `sk_areas` VALUES ('510504', '龙马潭区', '四川省,泸州市,龙马潭区', '510500', '2294');
INSERT INTO `sk_areas` VALUES ('510521', '泸　县', '四川省,泸州市,泸　县', '510500', '2295');
INSERT INTO `sk_areas` VALUES ('510522', '合江县', '四川省,泸州市,合江县', '510500', '2296');
INSERT INTO `sk_areas` VALUES ('510524', '叙永县', '四川省,泸州市,叙永县', '510500', '2297');
INSERT INTO `sk_areas` VALUES ('510525', '古蔺县', '四川省,泸州市,古蔺县', '510500', '2298');
INSERT INTO `sk_areas` VALUES ('510601', '市辖区', '四川省,德阳市,市辖区', '510600', '2299');
INSERT INTO `sk_areas` VALUES ('510603', '旌阳区', '四川省,德阳市,旌阳区', '510600', '2300');
INSERT INTO `sk_areas` VALUES ('510623', '中江县', '四川省,德阳市,中江县', '510600', '2301');
INSERT INTO `sk_areas` VALUES ('510626', '罗江县', '四川省,德阳市,罗江县', '510600', '2302');
INSERT INTO `sk_areas` VALUES ('510681', '广汉市', '四川省,德阳市,广汉市', '510600', '2303');
INSERT INTO `sk_areas` VALUES ('510682', '什邡市', '四川省,德阳市,什邡市', '510600', '2304');
INSERT INTO `sk_areas` VALUES ('510683', '绵竹市', '四川省,德阳市,绵竹市', '510600', '2305');
INSERT INTO `sk_areas` VALUES ('510701', '市辖区', '四川省,绵阳市,市辖区', '510700', '2306');
INSERT INTO `sk_areas` VALUES ('510703', '涪城区', '四川省,绵阳市,涪城区', '510700', '2307');
INSERT INTO `sk_areas` VALUES ('510704', '游仙区', '四川省,绵阳市,游仙区', '510700', '2308');
INSERT INTO `sk_areas` VALUES ('510722', '三台县', '四川省,绵阳市,三台县', '510700', '2309');
INSERT INTO `sk_areas` VALUES ('510723', '盐亭县', '四川省,绵阳市,盐亭县', '510700', '2310');
INSERT INTO `sk_areas` VALUES ('510724', '安　县', '四川省,绵阳市,安　县', '510700', '2311');
INSERT INTO `sk_areas` VALUES ('510725', '梓潼县', '四川省,绵阳市,梓潼县', '510700', '2312');
INSERT INTO `sk_areas` VALUES ('510726', '北川羌族自治县', '四川省,绵阳市,北川羌族自治县', '510700', '2313');
INSERT INTO `sk_areas` VALUES ('510727', '平武县', '四川省,绵阳市,平武县', '510700', '2314');
INSERT INTO `sk_areas` VALUES ('510781', '江油市', '四川省,绵阳市,江油市', '510700', '2315');
INSERT INTO `sk_areas` VALUES ('510801', '市辖区', '四川省,广元市,市辖区', '510800', '2316');
INSERT INTO `sk_areas` VALUES ('510802', '市中区', '四川省,广元市,市中区', '510800', '2317');
INSERT INTO `sk_areas` VALUES ('510811', '元坝区', '四川省,广元市,元坝区', '510800', '2318');
INSERT INTO `sk_areas` VALUES ('510812', '朝天区', '四川省,广元市,朝天区', '510800', '2319');
INSERT INTO `sk_areas` VALUES ('510821', '旺苍县', '四川省,广元市,旺苍县', '510800', '2320');
INSERT INTO `sk_areas` VALUES ('510822', '青川县', '四川省,广元市,青川县', '510800', '2321');
INSERT INTO `sk_areas` VALUES ('510823', '剑阁县', '四川省,广元市,剑阁县', '510800', '2322');
INSERT INTO `sk_areas` VALUES ('510824', '苍溪县', '四川省,广元市,苍溪县', '510800', '2323');
INSERT INTO `sk_areas` VALUES ('510901', '市辖区', '四川省,遂宁市,市辖区', '510900', '2324');
INSERT INTO `sk_areas` VALUES ('510903', '船山区', '四川省,遂宁市,船山区', '510900', '2325');
INSERT INTO `sk_areas` VALUES ('510904', '安居区', '四川省,遂宁市,安居区', '510900', '2326');
INSERT INTO `sk_areas` VALUES ('510921', '蓬溪县', '四川省,遂宁市,蓬溪县', '510900', '2327');
INSERT INTO `sk_areas` VALUES ('510922', '射洪县', '四川省,遂宁市,射洪县', '510900', '2328');
INSERT INTO `sk_areas` VALUES ('510923', '大英县', '四川省,遂宁市,大英县', '510900', '2329');
INSERT INTO `sk_areas` VALUES ('511001', '市辖区', '四川省,内江市,市辖区', '511000', '2330');
INSERT INTO `sk_areas` VALUES ('511002', '市中区', '四川省,内江市,市中区', '511000', '2331');
INSERT INTO `sk_areas` VALUES ('511011', '东兴区', '四川省,内江市,东兴区', '511000', '2332');
INSERT INTO `sk_areas` VALUES ('511024', '威远县', '四川省,内江市,威远县', '511000', '2333');
INSERT INTO `sk_areas` VALUES ('511025', '资中县', '四川省,内江市,资中县', '511000', '2334');
INSERT INTO `sk_areas` VALUES ('511028', '隆昌县', '四川省,内江市,隆昌县', '511000', '2335');
INSERT INTO `sk_areas` VALUES ('511101', '市辖区', '四川省,乐山市,市辖区', '511100', '2336');
INSERT INTO `sk_areas` VALUES ('511102', '市中区', '四川省,乐山市,市中区', '511100', '2337');
INSERT INTO `sk_areas` VALUES ('511111', '沙湾区', '四川省,乐山市,沙湾区', '511100', '2338');
INSERT INTO `sk_areas` VALUES ('511112', '五通桥区', '四川省,乐山市,五通桥区', '511100', '2339');
INSERT INTO `sk_areas` VALUES ('511113', '金口河区', '四川省,乐山市,金口河区', '511100', '2340');
INSERT INTO `sk_areas` VALUES ('511123', '犍为县', '四川省,乐山市,犍为县', '511100', '2341');
INSERT INTO `sk_areas` VALUES ('511124', '井研县', '四川省,乐山市,井研县', '511100', '2342');
INSERT INTO `sk_areas` VALUES ('511126', '夹江县', '四川省,乐山市,夹江县', '511100', '2343');
INSERT INTO `sk_areas` VALUES ('511129', '沐川县', '四川省,乐山市,沐川县', '511100', '2344');
INSERT INTO `sk_areas` VALUES ('511132', '峨边彝族自治县', '四川省,乐山市,峨边彝族自治县', '511100', '2345');
INSERT INTO `sk_areas` VALUES ('511133', '马边彝族自治县', '四川省,乐山市,马边彝族自治县', '511100', '2346');
INSERT INTO `sk_areas` VALUES ('511181', '峨眉山市', '四川省,乐山市,峨眉山市', '511100', '2347');
INSERT INTO `sk_areas` VALUES ('511301', '市辖区', '四川省,南充市,市辖区', '511300', '2348');
INSERT INTO `sk_areas` VALUES ('511302', '顺庆区', '四川省,南充市,顺庆区', '511300', '2349');
INSERT INTO `sk_areas` VALUES ('511303', '高坪区', '四川省,南充市,高坪区', '511300', '2350');
INSERT INTO `sk_areas` VALUES ('511304', '嘉陵区', '四川省,南充市,嘉陵区', '511300', '2351');
INSERT INTO `sk_areas` VALUES ('511321', '南部县', '四川省,南充市,南部县', '511300', '2352');
INSERT INTO `sk_areas` VALUES ('511322', '营山县', '四川省,南充市,营山县', '511300', '2353');
INSERT INTO `sk_areas` VALUES ('511323', '蓬安县', '四川省,南充市,蓬安县', '511300', '2354');
INSERT INTO `sk_areas` VALUES ('511324', '仪陇县', '四川省,南充市,仪陇县', '511300', '2355');
INSERT INTO `sk_areas` VALUES ('511325', '西充县', '四川省,南充市,西充县', '511300', '2356');
INSERT INTO `sk_areas` VALUES ('511381', '阆中市', '四川省,南充市,阆中市', '511300', '2357');
INSERT INTO `sk_areas` VALUES ('511401', '市辖区', '四川省,眉山市,市辖区', '511400', '2358');
INSERT INTO `sk_areas` VALUES ('511402', '东坡区', '四川省,眉山市,东坡区', '511400', '2359');
INSERT INTO `sk_areas` VALUES ('511421', '仁寿县', '四川省,眉山市,仁寿县', '511400', '2360');
INSERT INTO `sk_areas` VALUES ('511422', '彭山县', '四川省,眉山市,彭山县', '511400', '2361');
INSERT INTO `sk_areas` VALUES ('511423', '洪雅县', '四川省,眉山市,洪雅县', '511400', '2362');
INSERT INTO `sk_areas` VALUES ('511424', '丹棱县', '四川省,眉山市,丹棱县', '511400', '2363');
INSERT INTO `sk_areas` VALUES ('511425', '青神县', '四川省,眉山市,青神县', '511400', '2364');
INSERT INTO `sk_areas` VALUES ('511501', '市辖区', '四川省,宜宾市,市辖区', '511500', '2365');
INSERT INTO `sk_areas` VALUES ('511502', '翠屏区', '四川省,宜宾市,翠屏区', '511500', '2366');
INSERT INTO `sk_areas` VALUES ('511521', '宜宾县', '四川省,宜宾市,宜宾县', '511500', '2367');
INSERT INTO `sk_areas` VALUES ('511522', '南溪县', '四川省,宜宾市,南溪县', '511500', '2368');
INSERT INTO `sk_areas` VALUES ('511523', '江安县', '四川省,宜宾市,江安县', '511500', '2369');
INSERT INTO `sk_areas` VALUES ('511524', '长宁县', '四川省,宜宾市,长宁县', '511500', '2370');
INSERT INTO `sk_areas` VALUES ('511525', '高　县', '四川省,宜宾市,高　县', '511500', '2371');
INSERT INTO `sk_areas` VALUES ('511526', '珙　县', '四川省,宜宾市,珙　县', '511500', '2372');
INSERT INTO `sk_areas` VALUES ('511527', '筠连县', '四川省,宜宾市,筠连县', '511500', '2373');
INSERT INTO `sk_areas` VALUES ('511528', '兴文县', '四川省,宜宾市,兴文县', '511500', '2374');
INSERT INTO `sk_areas` VALUES ('511529', '屏山县', '四川省,宜宾市,屏山县', '511500', '2375');
INSERT INTO `sk_areas` VALUES ('511601', '市辖区', '四川省,广安市,市辖区', '511600', '2376');
INSERT INTO `sk_areas` VALUES ('511602', '广安区', '四川省,广安市,广安区', '511600', '2377');
INSERT INTO `sk_areas` VALUES ('511621', '岳池县', '四川省,广安市,岳池县', '511600', '2378');
INSERT INTO `sk_areas` VALUES ('511622', '武胜县', '四川省,广安市,武胜县', '511600', '2379');
INSERT INTO `sk_areas` VALUES ('511623', '邻水县', '四川省,广安市,邻水县', '511600', '2380');
INSERT INTO `sk_areas` VALUES ('511681', '华莹市', '四川省,广安市,华莹市', '511600', '2381');
INSERT INTO `sk_areas` VALUES ('511701', '市辖区', '四川省,达州市,市辖区', '511700', '2382');
INSERT INTO `sk_areas` VALUES ('511702', '通川区', '四川省,达州市,通川区', '511700', '2383');
INSERT INTO `sk_areas` VALUES ('511721', '达　县', '四川省,达州市,达　县', '511700', '2384');
INSERT INTO `sk_areas` VALUES ('511722', '宣汉县', '四川省,达州市,宣汉县', '511700', '2385');
INSERT INTO `sk_areas` VALUES ('511723', '开江县', '四川省,达州市,开江县', '511700', '2386');
INSERT INTO `sk_areas` VALUES ('511724', '大竹县', '四川省,达州市,大竹县', '511700', '2387');
INSERT INTO `sk_areas` VALUES ('511725', '渠　县', '四川省,达州市,渠　县', '511700', '2388');
INSERT INTO `sk_areas` VALUES ('511781', '万源市', '四川省,达州市,万源市', '511700', '2389');
INSERT INTO `sk_areas` VALUES ('511801', '市辖区', '四川省,雅安市,市辖区', '511800', '2390');
INSERT INTO `sk_areas` VALUES ('511802', '雨城区', '四川省,雅安市,雨城区', '511800', '2391');
INSERT INTO `sk_areas` VALUES ('511821', '名山县', '四川省,雅安市,名山县', '511800', '2392');
INSERT INTO `sk_areas` VALUES ('511822', '荥经县', '四川省,雅安市,荥经县', '511800', '2393');
INSERT INTO `sk_areas` VALUES ('511823', '汉源县', '四川省,雅安市,汉源县', '511800', '2394');
INSERT INTO `sk_areas` VALUES ('511824', '石棉县', '四川省,雅安市,石棉县', '511800', '2395');
INSERT INTO `sk_areas` VALUES ('511825', '天全县', '四川省,雅安市,天全县', '511800', '2396');
INSERT INTO `sk_areas` VALUES ('511826', '芦山县', '四川省,雅安市,芦山县', '511800', '2397');
INSERT INTO `sk_areas` VALUES ('511827', '宝兴县', '四川省,雅安市,宝兴县', '511800', '2398');
INSERT INTO `sk_areas` VALUES ('511901', '市辖区', '四川省,巴中市,市辖区', '511900', '2399');
INSERT INTO `sk_areas` VALUES ('511902', '巴州区', '四川省,巴中市,巴州区', '511900', '2400');
INSERT INTO `sk_areas` VALUES ('511921', '通江县', '四川省,巴中市,通江县', '511900', '2401');
INSERT INTO `sk_areas` VALUES ('511922', '南江县', '四川省,巴中市,南江县', '511900', '2402');
INSERT INTO `sk_areas` VALUES ('511923', '平昌县', '四川省,巴中市,平昌县', '511900', '2403');
INSERT INTO `sk_areas` VALUES ('512001', '市辖区', '四川省,资阳市,市辖区', '512000', '2404');
INSERT INTO `sk_areas` VALUES ('512002', '雁江区', '四川省,资阳市,雁江区', '512000', '2405');
INSERT INTO `sk_areas` VALUES ('512021', '安岳县', '四川省,资阳市,安岳县', '512000', '2406');
INSERT INTO `sk_areas` VALUES ('512022', '乐至县', '四川省,资阳市,乐至县', '512000', '2407');
INSERT INTO `sk_areas` VALUES ('512081', '简阳市', '四川省,资阳市,简阳市', '512000', '2408');
INSERT INTO `sk_areas` VALUES ('513221', '汶川县', '四川省,阿坝藏族羌族自治州,汶川县', '513200', '2409');
INSERT INTO `sk_areas` VALUES ('513222', '理　县', '四川省,阿坝藏族羌族自治州,理　县', '513200', '2410');
INSERT INTO `sk_areas` VALUES ('513223', '茂　县', '四川省,阿坝藏族羌族自治州,茂　县', '513200', '2411');
INSERT INTO `sk_areas` VALUES ('513224', '松潘县', '四川省,阿坝藏族羌族自治州,松潘县', '513200', '2412');
INSERT INTO `sk_areas` VALUES ('513225', '九寨沟县', '四川省,阿坝藏族羌族自治州,九寨沟县', '513200', '2413');
INSERT INTO `sk_areas` VALUES ('513226', '金川县', '四川省,阿坝藏族羌族自治州,金川县', '513200', '2414');
INSERT INTO `sk_areas` VALUES ('513227', '小金县', '四川省,阿坝藏族羌族自治州,小金县', '513200', '2415');
INSERT INTO `sk_areas` VALUES ('513228', '黑水县', '四川省,阿坝藏族羌族自治州,黑水县', '513200', '2416');
INSERT INTO `sk_areas` VALUES ('513229', '马尔康县', '四川省,阿坝藏族羌族自治州,马尔康县', '513200', '2417');
INSERT INTO `sk_areas` VALUES ('513230', '壤塘县', '四川省,阿坝藏族羌族自治州,壤塘县', '513200', '2418');
INSERT INTO `sk_areas` VALUES ('513231', '阿坝县', '四川省,阿坝藏族羌族自治州,阿坝县', '513200', '2419');
INSERT INTO `sk_areas` VALUES ('513232', '若尔盖县', '四川省,阿坝藏族羌族自治州,若尔盖县', '513200', '2420');
INSERT INTO `sk_areas` VALUES ('513233', '红原县', '四川省,阿坝藏族羌族自治州,红原县', '513200', '2421');
INSERT INTO `sk_areas` VALUES ('513321', '康定县', '四川省,甘孜藏族自治州,康定县', '513300', '2422');
INSERT INTO `sk_areas` VALUES ('513322', '泸定县', '四川省,甘孜藏族自治州,泸定县', '513300', '2423');
INSERT INTO `sk_areas` VALUES ('513323', '丹巴县', '四川省,甘孜藏族自治州,丹巴县', '513300', '2424');
INSERT INTO `sk_areas` VALUES ('513324', '九龙县', '四川省,甘孜藏族自治州,九龙县', '513300', '2425');
INSERT INTO `sk_areas` VALUES ('513325', '雅江县', '四川省,甘孜藏族自治州,雅江县', '513300', '2426');
INSERT INTO `sk_areas` VALUES ('513326', '道孚县', '四川省,甘孜藏族自治州,道孚县', '513300', '2427');
INSERT INTO `sk_areas` VALUES ('513327', '炉霍县', '四川省,甘孜藏族自治州,炉霍县', '513300', '2428');
INSERT INTO `sk_areas` VALUES ('513328', '甘孜县', '四川省,甘孜藏族自治州,甘孜县', '513300', '2429');
INSERT INTO `sk_areas` VALUES ('513329', '新龙县', '四川省,甘孜藏族自治州,新龙县', '513300', '2430');
INSERT INTO `sk_areas` VALUES ('513330', '德格县', '四川省,甘孜藏族自治州,德格县', '513300', '2431');
INSERT INTO `sk_areas` VALUES ('513331', '白玉县', '四川省,甘孜藏族自治州,白玉县', '513300', '2432');
INSERT INTO `sk_areas` VALUES ('513332', '石渠县', '四川省,甘孜藏族自治州,石渠县', '513300', '2433');
INSERT INTO `sk_areas` VALUES ('513333', '色达县', '四川省,甘孜藏族自治州,色达县', '513300', '2434');
INSERT INTO `sk_areas` VALUES ('513334', '理塘县', '四川省,甘孜藏族自治州,理塘县', '513300', '2435');
INSERT INTO `sk_areas` VALUES ('513335', '巴塘县', '四川省,甘孜藏族自治州,巴塘县', '513300', '2436');
INSERT INTO `sk_areas` VALUES ('513336', '乡城县', '四川省,甘孜藏族自治州,乡城县', '513300', '2437');
INSERT INTO `sk_areas` VALUES ('513337', '稻城县', '四川省,甘孜藏族自治州,稻城县', '513300', '2438');
INSERT INTO `sk_areas` VALUES ('513338', '得荣县', '四川省,甘孜藏族自治州,得荣县', '513300', '2439');
INSERT INTO `sk_areas` VALUES ('513401', '西昌市', '四川省,凉山彝族自治州,西昌市', '513400', '2440');
INSERT INTO `sk_areas` VALUES ('513422', '木里藏族自治县', '四川省,凉山彝族自治州,木里藏族自治县', '513400', '2441');
INSERT INTO `sk_areas` VALUES ('513423', '盐源县', '四川省,凉山彝族自治州,盐源县', '513400', '2442');
INSERT INTO `sk_areas` VALUES ('513424', '德昌县', '四川省,凉山彝族自治州,德昌县', '513400', '2443');
INSERT INTO `sk_areas` VALUES ('513425', '会理县', '四川省,凉山彝族自治州,会理县', '513400', '2444');
INSERT INTO `sk_areas` VALUES ('513426', '会东县', '四川省,凉山彝族自治州,会东县', '513400', '2445');
INSERT INTO `sk_areas` VALUES ('513427', '宁南县', '四川省,凉山彝族自治州,宁南县', '513400', '2446');
INSERT INTO `sk_areas` VALUES ('513428', '普格县', '四川省,凉山彝族自治州,普格县', '513400', '2447');
INSERT INTO `sk_areas` VALUES ('513429', '布拖县', '四川省,凉山彝族自治州,布拖县', '513400', '2448');
INSERT INTO `sk_areas` VALUES ('513430', '金阳县', '四川省,凉山彝族自治州,金阳县', '513400', '2449');
INSERT INTO `sk_areas` VALUES ('513431', '昭觉县', '四川省,凉山彝族自治州,昭觉县', '513400', '2450');
INSERT INTO `sk_areas` VALUES ('513432', '喜德县', '四川省,凉山彝族自治州,喜德县', '513400', '2451');
INSERT INTO `sk_areas` VALUES ('513433', '冕宁县', '四川省,凉山彝族自治州,冕宁县', '513400', '2452');
INSERT INTO `sk_areas` VALUES ('513434', '越西县', '四川省,凉山彝族自治州,越西县', '513400', '2453');
INSERT INTO `sk_areas` VALUES ('513435', '甘洛县', '四川省,凉山彝族自治州,甘洛县', '513400', '2454');
INSERT INTO `sk_areas` VALUES ('513436', '美姑县', '四川省,凉山彝族自治州,美姑县', '513400', '2455');
INSERT INTO `sk_areas` VALUES ('513437', '雷波县', '四川省,凉山彝族自治州,雷波县', '513400', '2456');
INSERT INTO `sk_areas` VALUES ('520101', '市辖区', '贵州省,贵阳市,市辖区', '520100', '2457');
INSERT INTO `sk_areas` VALUES ('520102', '南明区', '贵州省,贵阳市,南明区', '520100', '2458');
INSERT INTO `sk_areas` VALUES ('520103', '云岩区', '贵州省,贵阳市,云岩区', '520100', '2459');
INSERT INTO `sk_areas` VALUES ('520111', '花溪区', '贵州省,贵阳市,花溪区', '520100', '2460');
INSERT INTO `sk_areas` VALUES ('520112', '乌当区', '贵州省,贵阳市,乌当区', '520100', '2461');
INSERT INTO `sk_areas` VALUES ('520113', '白云区', '贵州省,贵阳市,白云区', '520100', '2462');
INSERT INTO `sk_areas` VALUES ('520114', '小河区', '贵州省,贵阳市,小河区', '520100', '2463');
INSERT INTO `sk_areas` VALUES ('520121', '开阳县', '贵州省,贵阳市,开阳县', '520100', '2464');
INSERT INTO `sk_areas` VALUES ('520122', '息烽县', '贵州省,贵阳市,息烽县', '520100', '2465');
INSERT INTO `sk_areas` VALUES ('520123', '修文县', '贵州省,贵阳市,修文县', '520100', '2466');
INSERT INTO `sk_areas` VALUES ('520181', '清镇市', '贵州省,贵阳市,清镇市', '520100', '2467');
INSERT INTO `sk_areas` VALUES ('520201', '钟山区', '贵州省,六盘水市,钟山区', '520200', '2468');
INSERT INTO `sk_areas` VALUES ('520203', '六枝特区', '贵州省,六盘水市,六枝特区', '520200', '2469');
INSERT INTO `sk_areas` VALUES ('520221', '水城县', '贵州省,六盘水市,水城县', '520200', '2470');
INSERT INTO `sk_areas` VALUES ('520222', '盘　县', '贵州省,六盘水市,盘　县', '520200', '2471');
INSERT INTO `sk_areas` VALUES ('520301', '市辖区', '贵州省,遵义市,市辖区', '520300', '2472');
INSERT INTO `sk_areas` VALUES ('520302', '红花岗区', '贵州省,遵义市,红花岗区', '520300', '2473');
INSERT INTO `sk_areas` VALUES ('520303', '汇川区', '贵州省,遵义市,汇川区', '520300', '2474');
INSERT INTO `sk_areas` VALUES ('520321', '遵义县', '贵州省,遵义市,遵义县', '520300', '2475');
INSERT INTO `sk_areas` VALUES ('520322', '桐梓县', '贵州省,遵义市,桐梓县', '520300', '2476');
INSERT INTO `sk_areas` VALUES ('520323', '绥阳县', '贵州省,遵义市,绥阳县', '520300', '2477');
INSERT INTO `sk_areas` VALUES ('520324', '正安县', '贵州省,遵义市,正安县', '520300', '2478');
INSERT INTO `sk_areas` VALUES ('520325', '道真仡佬族苗族自治县', '贵州省,遵义市,道真仡佬族苗族自治县', '520300', '2479');
INSERT INTO `sk_areas` VALUES ('520326', '务川仡佬族苗族自治县', '贵州省,遵义市,务川仡佬族苗族自治县', '520300', '2480');
INSERT INTO `sk_areas` VALUES ('520327', '凤冈县', '贵州省,遵义市,凤冈县', '520300', '2481');
INSERT INTO `sk_areas` VALUES ('520328', '湄潭县', '贵州省,遵义市,湄潭县', '520300', '2482');
INSERT INTO `sk_areas` VALUES ('520329', '余庆县', '贵州省,遵义市,余庆县', '520300', '2483');
INSERT INTO `sk_areas` VALUES ('520330', '习水县', '贵州省,遵义市,习水县', '520300', '2484');
INSERT INTO `sk_areas` VALUES ('520381', '赤水市', '贵州省,遵义市,赤水市', '520300', '2485');
INSERT INTO `sk_areas` VALUES ('520382', '仁怀市', '贵州省,遵义市,仁怀市', '520300', '2486');
INSERT INTO `sk_areas` VALUES ('520401', '市辖区', '贵州省,安顺市,市辖区', '520400', '2487');
INSERT INTO `sk_areas` VALUES ('520402', '西秀区', '贵州省,安顺市,西秀区', '520400', '2488');
INSERT INTO `sk_areas` VALUES ('520421', '平坝县', '贵州省,安顺市,平坝县', '520400', '2489');
INSERT INTO `sk_areas` VALUES ('520422', '普定县', '贵州省,安顺市,普定县', '520400', '2490');
INSERT INTO `sk_areas` VALUES ('520423', '镇宁布依族苗族自治县', '贵州省,安顺市,镇宁布依族苗族自治县', '520400', '2491');
INSERT INTO `sk_areas` VALUES ('520424', '关岭布依族苗族自治县', '贵州省,安顺市,关岭布依族苗族自治县', '520400', '2492');
INSERT INTO `sk_areas` VALUES ('520425', '紫云苗族布依族自治县', '贵州省,安顺市,紫云苗族布依族自治县', '520400', '2493');
INSERT INTO `sk_areas` VALUES ('522201', '铜仁市', '贵州省,铜仁地区,铜仁市', '522200', '2494');
INSERT INTO `sk_areas` VALUES ('522222', '江口县', '贵州省,铜仁地区,江口县', '522200', '2495');
INSERT INTO `sk_areas` VALUES ('522223', '玉屏侗族自治县', '贵州省,铜仁地区,玉屏侗族自治县', '522200', '2496');
INSERT INTO `sk_areas` VALUES ('522224', '石阡县', '贵州省,铜仁地区,石阡县', '522200', '2497');
INSERT INTO `sk_areas` VALUES ('522225', '思南县', '贵州省,铜仁地区,思南县', '522200', '2498');
INSERT INTO `sk_areas` VALUES ('522226', '印江土家族苗族自治县', '贵州省,铜仁地区,印江土家族苗族自治县', '522200', '2499');
INSERT INTO `sk_areas` VALUES ('522227', '德江县', '贵州省,铜仁地区,德江县', '522200', '2500');
INSERT INTO `sk_areas` VALUES ('522228', '沿河土家族自治县', '贵州省,铜仁地区,沿河土家族自治县', '522200', '2501');
INSERT INTO `sk_areas` VALUES ('522229', '松桃苗族自治县', '贵州省,铜仁地区,松桃苗族自治县', '522200', '2502');
INSERT INTO `sk_areas` VALUES ('522230', '万山特区', '贵州省,铜仁地区,万山特区', '522200', '2503');
INSERT INTO `sk_areas` VALUES ('522301', '兴义市', '贵州省,黔西南布依族苗族自治州,兴义市', '522300', '2504');
INSERT INTO `sk_areas` VALUES ('522322', '兴仁县', '贵州省,黔西南布依族苗族自治州,兴仁县', '522300', '2505');
INSERT INTO `sk_areas` VALUES ('522323', '普安县', '贵州省,黔西南布依族苗族自治州,普安县', '522300', '2506');
INSERT INTO `sk_areas` VALUES ('522324', '晴隆县', '贵州省,黔西南布依族苗族自治州,晴隆县', '522300', '2507');
INSERT INTO `sk_areas` VALUES ('522325', '贞丰县', '贵州省,黔西南布依族苗族自治州,贞丰县', '522300', '2508');
INSERT INTO `sk_areas` VALUES ('522326', '望谟县', '贵州省,黔西南布依族苗族自治州,望谟县', '522300', '2509');
INSERT INTO `sk_areas` VALUES ('522327', '册亨县', '贵州省,黔西南布依族苗族自治州,册亨县', '522300', '2510');
INSERT INTO `sk_areas` VALUES ('522328', '安龙县', '贵州省,黔西南布依族苗族自治州,安龙县', '522300', '2511');
INSERT INTO `sk_areas` VALUES ('522401', '毕节市', '贵州省,毕节地区,毕节市', '522400', '2512');
INSERT INTO `sk_areas` VALUES ('522422', '大方县', '贵州省,毕节地区,大方县', '522400', '2513');
INSERT INTO `sk_areas` VALUES ('522423', '黔西县', '贵州省,毕节地区,黔西县', '522400', '2514');
INSERT INTO `sk_areas` VALUES ('522424', '金沙县', '贵州省,毕节地区,金沙县', '522400', '2515');
INSERT INTO `sk_areas` VALUES ('522425', '织金县', '贵州省,毕节地区,织金县', '522400', '2516');
INSERT INTO `sk_areas` VALUES ('522426', '纳雍县', '贵州省,毕节地区,纳雍县', '522400', '2517');
INSERT INTO `sk_areas` VALUES ('522427', '威宁彝族回族苗族自治县', '贵州省,毕节地区,威宁彝族回族苗族自治县', '522400', '2518');
INSERT INTO `sk_areas` VALUES ('522428', '赫章县', '贵州省,毕节地区,赫章县', '522400', '2519');
INSERT INTO `sk_areas` VALUES ('522601', '凯里市', '贵州省,黔东南苗族侗族自治州,凯里市', '522600', '2520');
INSERT INTO `sk_areas` VALUES ('522622', '黄平县', '贵州省,黔东南苗族侗族自治州,黄平县', '522600', '2521');
INSERT INTO `sk_areas` VALUES ('522623', '施秉县', '贵州省,黔东南苗族侗族自治州,施秉县', '522600', '2522');
INSERT INTO `sk_areas` VALUES ('522624', '三穗县', '贵州省,黔东南苗族侗族自治州,三穗县', '522600', '2523');
INSERT INTO `sk_areas` VALUES ('522625', '镇远县', '贵州省,黔东南苗族侗族自治州,镇远县', '522600', '2524');
INSERT INTO `sk_areas` VALUES ('522626', '岑巩县', '贵州省,黔东南苗族侗族自治州,岑巩县', '522600', '2525');
INSERT INTO `sk_areas` VALUES ('522627', '天柱县', '贵州省,黔东南苗族侗族自治州,天柱县', '522600', '2526');
INSERT INTO `sk_areas` VALUES ('522628', '锦屏县', '贵州省,黔东南苗族侗族自治州,锦屏县', '522600', '2527');
INSERT INTO `sk_areas` VALUES ('522629', '剑河县', '贵州省,黔东南苗族侗族自治州,剑河县', '522600', '2528');
INSERT INTO `sk_areas` VALUES ('522630', '台江县', '贵州省,黔东南苗族侗族自治州,台江县', '522600', '2529');
INSERT INTO `sk_areas` VALUES ('522631', '黎平县', '贵州省,黔东南苗族侗族自治州,黎平县', '522600', '2530');
INSERT INTO `sk_areas` VALUES ('522632', '榕江县', '贵州省,黔东南苗族侗族自治州,榕江县', '522600', '2531');
INSERT INTO `sk_areas` VALUES ('522633', '从江县', '贵州省,黔东南苗族侗族自治州,从江县', '522600', '2532');
INSERT INTO `sk_areas` VALUES ('522634', '雷山县', '贵州省,黔东南苗族侗族自治州,雷山县', '522600', '2533');
INSERT INTO `sk_areas` VALUES ('522635', '麻江县', '贵州省,黔东南苗族侗族自治州,麻江县', '522600', '2534');
INSERT INTO `sk_areas` VALUES ('522636', '丹寨县', '贵州省,黔东南苗族侗族自治州,丹寨县', '522600', '2535');
INSERT INTO `sk_areas` VALUES ('522701', '都匀市', '贵州省,黔南布依族苗族自治州,都匀市', '522700', '2536');
INSERT INTO `sk_areas` VALUES ('522702', '福泉市', '贵州省,黔南布依族苗族自治州,福泉市', '522700', '2537');
INSERT INTO `sk_areas` VALUES ('522722', '荔波县', '贵州省,黔南布依族苗族自治州,荔波县', '522700', '2538');
INSERT INTO `sk_areas` VALUES ('522723', '贵定县', '贵州省,黔南布依族苗族自治州,贵定县', '522700', '2539');
INSERT INTO `sk_areas` VALUES ('522725', '瓮安县', '贵州省,黔南布依族苗族自治州,瓮安县', '522700', '2540');
INSERT INTO `sk_areas` VALUES ('522726', '独山县', '贵州省,黔南布依族苗族自治州,独山县', '522700', '2541');
INSERT INTO `sk_areas` VALUES ('522727', '平塘县', '贵州省,黔南布依族苗族自治州,平塘县', '522700', '2542');
INSERT INTO `sk_areas` VALUES ('522728', '罗甸县', '贵州省,黔南布依族苗族自治州,罗甸县', '522700', '2543');
INSERT INTO `sk_areas` VALUES ('522729', '长顺县', '贵州省,黔南布依族苗族自治州,长顺县', '522700', '2544');
INSERT INTO `sk_areas` VALUES ('522730', '龙里县', '贵州省,黔南布依族苗族自治州,龙里县', '522700', '2545');
INSERT INTO `sk_areas` VALUES ('522731', '惠水县', '贵州省,黔南布依族苗族自治州,惠水县', '522700', '2546');
INSERT INTO `sk_areas` VALUES ('522732', '三都水族自治县', '贵州省,黔南布依族苗族自治州,三都水族自治县', '522700', '2547');
INSERT INTO `sk_areas` VALUES ('530101', '市辖区', '云南省,昆明市,市辖区', '530100', '2548');
INSERT INTO `sk_areas` VALUES ('530102', '五华区', '云南省,昆明市,五华区', '530100', '2549');
INSERT INTO `sk_areas` VALUES ('530103', '盘龙区', '云南省,昆明市,盘龙区', '530100', '2550');
INSERT INTO `sk_areas` VALUES ('530111', '官渡区', '云南省,昆明市,官渡区', '530100', '2551');
INSERT INTO `sk_areas` VALUES ('530112', '西山区', '云南省,昆明市,西山区', '530100', '2552');
INSERT INTO `sk_areas` VALUES ('530113', '东川区', '云南省,昆明市,东川区', '530100', '2553');
INSERT INTO `sk_areas` VALUES ('530121', '呈贡县', '云南省,昆明市,呈贡县', '530100', '2554');
INSERT INTO `sk_areas` VALUES ('530122', '晋宁县', '云南省,昆明市,晋宁县', '530100', '2555');
INSERT INTO `sk_areas` VALUES ('530124', '富民县', '云南省,昆明市,富民县', '530100', '2556');
INSERT INTO `sk_areas` VALUES ('530125', '宜良县', '云南省,昆明市,宜良县', '530100', '2557');
INSERT INTO `sk_areas` VALUES ('530126', '石林彝族自治县', '云南省,昆明市,石林彝族自治县', '530100', '2558');
INSERT INTO `sk_areas` VALUES ('530127', '嵩明县', '云南省,昆明市,嵩明县', '530100', '2559');
INSERT INTO `sk_areas` VALUES ('530128', '禄劝彝族苗族自治县', '云南省,昆明市,禄劝彝族苗族自治县', '530100', '2560');
INSERT INTO `sk_areas` VALUES ('530129', '寻甸回族彝族自治县', '云南省,昆明市,寻甸回族彝族自治县', '530100', '2561');
INSERT INTO `sk_areas` VALUES ('530181', '安宁市', '云南省,昆明市,安宁市', '530100', '2562');
INSERT INTO `sk_areas` VALUES ('530301', '市辖区', '云南省,曲靖市,市辖区', '530300', '2563');
INSERT INTO `sk_areas` VALUES ('530302', '麒麟区', '云南省,曲靖市,麒麟区', '530300', '2564');
INSERT INTO `sk_areas` VALUES ('530321', '马龙县', '云南省,曲靖市,马龙县', '530300', '2565');
INSERT INTO `sk_areas` VALUES ('530322', '陆良县', '云南省,曲靖市,陆良县', '530300', '2566');
INSERT INTO `sk_areas` VALUES ('530323', '师宗县', '云南省,曲靖市,师宗县', '530300', '2567');
INSERT INTO `sk_areas` VALUES ('530324', '罗平县', '云南省,曲靖市,罗平县', '530300', '2568');
INSERT INTO `sk_areas` VALUES ('530325', '富源县', '云南省,曲靖市,富源县', '530300', '2569');
INSERT INTO `sk_areas` VALUES ('530326', '会泽县', '云南省,曲靖市,会泽县', '530300', '2570');
INSERT INTO `sk_areas` VALUES ('530328', '沾益县', '云南省,曲靖市,沾益县', '530300', '2571');
INSERT INTO `sk_areas` VALUES ('530381', '宣威市', '云南省,曲靖市,宣威市', '530300', '2572');
INSERT INTO `sk_areas` VALUES ('530401', '市辖区', '云南省,玉溪市,市辖区', '530400', '2573');
INSERT INTO `sk_areas` VALUES ('530402', '红塔区', '云南省,玉溪市,红塔区', '530400', '2574');
INSERT INTO `sk_areas` VALUES ('530421', '江川县', '云南省,玉溪市,江川县', '530400', '2575');
INSERT INTO `sk_areas` VALUES ('530422', '澄江县', '云南省,玉溪市,澄江县', '530400', '2576');
INSERT INTO `sk_areas` VALUES ('530423', '通海县', '云南省,玉溪市,通海县', '530400', '2577');
INSERT INTO `sk_areas` VALUES ('530424', '华宁县', '云南省,玉溪市,华宁县', '530400', '2578');
INSERT INTO `sk_areas` VALUES ('530425', '易门县', '云南省,玉溪市,易门县', '530400', '2579');
INSERT INTO `sk_areas` VALUES ('530426', '峨山彝族自治县', '云南省,玉溪市,峨山彝族自治县', '530400', '2580');
INSERT INTO `sk_areas` VALUES ('530427', '新平彝族傣族自治县', '云南省,玉溪市,新平彝族傣族自治县', '530400', '2581');
INSERT INTO `sk_areas` VALUES ('530428', '元江哈尼族彝族傣族自治县', '云南省,玉溪市,元江哈尼族彝族傣族自治县', '530400', '2582');
INSERT INTO `sk_areas` VALUES ('530501', '市辖区', '云南省,保山市,市辖区', '530500', '2583');
INSERT INTO `sk_areas` VALUES ('530502', '隆阳区', '云南省,保山市,隆阳区', '530500', '2584');
INSERT INTO `sk_areas` VALUES ('530521', '施甸县', '云南省,保山市,施甸县', '530500', '2585');
INSERT INTO `sk_areas` VALUES ('530522', '腾冲县', '云南省,保山市,腾冲县', '530500', '2586');
INSERT INTO `sk_areas` VALUES ('530523', '龙陵县', '云南省,保山市,龙陵县', '530500', '2587');
INSERT INTO `sk_areas` VALUES ('530524', '昌宁县', '云南省,保山市,昌宁县', '530500', '2588');
INSERT INTO `sk_areas` VALUES ('530601', '市辖区', '云南省,昭通市,市辖区', '530600', '2589');
INSERT INTO `sk_areas` VALUES ('530602', '昭阳区', '云南省,昭通市,昭阳区', '530600', '2590');
INSERT INTO `sk_areas` VALUES ('530621', '鲁甸县', '云南省,昭通市,鲁甸县', '530600', '2591');
INSERT INTO `sk_areas` VALUES ('530622', '巧家县', '云南省,昭通市,巧家县', '530600', '2592');
INSERT INTO `sk_areas` VALUES ('530623', '盐津县', '云南省,昭通市,盐津县', '530600', '2593');
INSERT INTO `sk_areas` VALUES ('530624', '大关县', '云南省,昭通市,大关县', '530600', '2594');
INSERT INTO `sk_areas` VALUES ('530625', '永善县', '云南省,昭通市,永善县', '530600', '2595');
INSERT INTO `sk_areas` VALUES ('530626', '绥江县', '云南省,昭通市,绥江县', '530600', '2596');
INSERT INTO `sk_areas` VALUES ('530627', '镇雄县', '云南省,昭通市,镇雄县', '530600', '2597');
INSERT INTO `sk_areas` VALUES ('530628', '彝良县', '云南省,昭通市,彝良县', '530600', '2598');
INSERT INTO `sk_areas` VALUES ('530629', '威信县', '云南省,昭通市,威信县', '530600', '2599');
INSERT INTO `sk_areas` VALUES ('530630', '水富县', '云南省,昭通市,水富县', '530600', '2600');
INSERT INTO `sk_areas` VALUES ('530701', '市辖区', '云南省,丽江市,市辖区', '530700', '2601');
INSERT INTO `sk_areas` VALUES ('530702', '古城区', '云南省,丽江市,古城区', '530700', '2602');
INSERT INTO `sk_areas` VALUES ('530721', '玉龙纳西族自治县', '云南省,丽江市,玉龙纳西族自治县', '530700', '2603');
INSERT INTO `sk_areas` VALUES ('530722', '永胜县', '云南省,丽江市,永胜县', '530700', '2604');
INSERT INTO `sk_areas` VALUES ('530723', '华坪县', '云南省,丽江市,华坪县', '530700', '2605');
INSERT INTO `sk_areas` VALUES ('530724', '宁蒗彝族自治县', '云南省,丽江市,宁蒗彝族自治县', '530700', '2606');
INSERT INTO `sk_areas` VALUES ('530801', '市辖区', '云南省,思茅市,市辖区', '530800', '2607');
INSERT INTO `sk_areas` VALUES ('530802', '翠云区', '云南省,思茅市,翠云区', '530800', '2608');
INSERT INTO `sk_areas` VALUES ('530821', '普洱哈尼族彝族自治县', '云南省,思茅市,普洱哈尼族彝族自治县', '530800', '2609');
INSERT INTO `sk_areas` VALUES ('530822', '墨江哈尼族自治县', '云南省,思茅市,墨江哈尼族自治县', '530800', '2610');
INSERT INTO `sk_areas` VALUES ('530823', '景东彝族自治县', '云南省,思茅市,景东彝族自治县', '530800', '2611');
INSERT INTO `sk_areas` VALUES ('530824', '景谷傣族彝族自治县', '云南省,思茅市,景谷傣族彝族自治县', '530800', '2612');
INSERT INTO `sk_areas` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '云南省,思茅市,镇沅彝族哈尼族拉祜族自治县', '530800', '2613');
INSERT INTO `sk_areas` VALUES ('530826', '江城哈尼族彝族自治县', '云南省,思茅市,江城哈尼族彝族自治县', '530800', '2614');
INSERT INTO `sk_areas` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '云南省,思茅市,孟连傣族拉祜族佤族自治县', '530800', '2615');
INSERT INTO `sk_areas` VALUES ('530828', '澜沧拉祜族自治县', '云南省,思茅市,澜沧拉祜族自治县', '530800', '2616');
INSERT INTO `sk_areas` VALUES ('530829', '西盟佤族自治县', '云南省,思茅市,西盟佤族自治县', '530800', '2617');
INSERT INTO `sk_areas` VALUES ('530901', '市辖区', '云南省,临沧市,市辖区', '530900', '2618');
INSERT INTO `sk_areas` VALUES ('530902', '临翔区', '云南省,临沧市,临翔区', '530900', '2619');
INSERT INTO `sk_areas` VALUES ('530921', '凤庆县', '云南省,临沧市,凤庆县', '530900', '2620');
INSERT INTO `sk_areas` VALUES ('530922', '云　县', '云南省,临沧市,云　县', '530900', '2621');
INSERT INTO `sk_areas` VALUES ('530923', '永德县', '云南省,临沧市,永德县', '530900', '2622');
INSERT INTO `sk_areas` VALUES ('530924', '镇康县', '云南省,临沧市,镇康县', '530900', '2623');
INSERT INTO `sk_areas` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '云南省,临沧市,双江拉祜族佤族布朗族傣族自治县', '530900', '2624');
INSERT INTO `sk_areas` VALUES ('530926', '耿马傣族佤族自治县', '云南省,临沧市,耿马傣族佤族自治县', '530900', '2625');
INSERT INTO `sk_areas` VALUES ('530927', '沧源佤族自治县', '云南省,临沧市,沧源佤族自治县', '530900', '2626');
INSERT INTO `sk_areas` VALUES ('532301', '楚雄市', '云南省,楚雄彝族自治州,楚雄市', '532300', '2627');
INSERT INTO `sk_areas` VALUES ('532322', '双柏县', '云南省,楚雄彝族自治州,双柏县', '532300', '2628');
INSERT INTO `sk_areas` VALUES ('532323', '牟定县', '云南省,楚雄彝族自治州,牟定县', '532300', '2629');
INSERT INTO `sk_areas` VALUES ('532324', '南华县', '云南省,楚雄彝族自治州,南华县', '532300', '2630');
INSERT INTO `sk_areas` VALUES ('532325', '姚安县', '云南省,楚雄彝族自治州,姚安县', '532300', '2631');
INSERT INTO `sk_areas` VALUES ('532326', '大姚县', '云南省,楚雄彝族自治州,大姚县', '532300', '2632');
INSERT INTO `sk_areas` VALUES ('532327', '永仁县', '云南省,楚雄彝族自治州,永仁县', '532300', '2633');
INSERT INTO `sk_areas` VALUES ('532328', '元谋县', '云南省,楚雄彝族自治州,元谋县', '532300', '2634');
INSERT INTO `sk_areas` VALUES ('532329', '武定县', '云南省,楚雄彝族自治州,武定县', '532300', '2635');
INSERT INTO `sk_areas` VALUES ('532331', '禄丰县', '云南省,楚雄彝族自治州,禄丰县', '532300', '2636');
INSERT INTO `sk_areas` VALUES ('532501', '个旧市', '云南省,红河哈尼族彝族自治州,个旧市', '532500', '2637');
INSERT INTO `sk_areas` VALUES ('532502', '开远市', '云南省,红河哈尼族彝族自治州,开远市', '532500', '2638');
INSERT INTO `sk_areas` VALUES ('532522', '蒙自县', '云南省,红河哈尼族彝族自治州,蒙自县', '532500', '2639');
INSERT INTO `sk_areas` VALUES ('532523', '屏边苗族自治县', '云南省,红河哈尼族彝族自治州,屏边苗族自治县', '532500', '2640');
INSERT INTO `sk_areas` VALUES ('532524', '建水县', '云南省,红河哈尼族彝族自治州,建水县', '532500', '2641');
INSERT INTO `sk_areas` VALUES ('532525', '石屏县', '云南省,红河哈尼族彝族自治州,石屏县', '532500', '2642');
INSERT INTO `sk_areas` VALUES ('532526', '弥勒县', '云南省,红河哈尼族彝族自治州,弥勒县', '532500', '2643');
INSERT INTO `sk_areas` VALUES ('532527', '泸西县', '云南省,红河哈尼族彝族自治州,泸西县', '532500', '2644');
INSERT INTO `sk_areas` VALUES ('532528', '元阳县', '云南省,红河哈尼族彝族自治州,元阳县', '532500', '2645');
INSERT INTO `sk_areas` VALUES ('532529', '红河县', '云南省,红河哈尼族彝族自治州,红河县', '532500', '2646');
INSERT INTO `sk_areas` VALUES ('532530', '金平苗族瑶族傣族自治县', '云南省,红河哈尼族彝族自治州,金平苗族瑶族傣族自治县', '532500', '2647');
INSERT INTO `sk_areas` VALUES ('532531', '绿春县', '云南省,红河哈尼族彝族自治州,绿春县', '532500', '2648');
INSERT INTO `sk_areas` VALUES ('532532', '河口瑶族自治县', '云南省,红河哈尼族彝族自治州,河口瑶族自治县', '532500', '2649');
INSERT INTO `sk_areas` VALUES ('532621', '文山县', '云南省,文山壮族苗族自治州,文山县', '532600', '2650');
INSERT INTO `sk_areas` VALUES ('532622', '砚山县', '云南省,文山壮族苗族自治州,砚山县', '532600', '2651');
INSERT INTO `sk_areas` VALUES ('532623', '西畴县', '云南省,文山壮族苗族自治州,西畴县', '532600', '2652');
INSERT INTO `sk_areas` VALUES ('532624', '麻栗坡县', '云南省,文山壮族苗族自治州,麻栗坡县', '532600', '2653');
INSERT INTO `sk_areas` VALUES ('532625', '马关县', '云南省,文山壮族苗族自治州,马关县', '532600', '2654');
INSERT INTO `sk_areas` VALUES ('532626', '丘北县', '云南省,文山壮族苗族自治州,丘北县', '532600', '2655');
INSERT INTO `sk_areas` VALUES ('532627', '广南县', '云南省,文山壮族苗族自治州,广南县', '532600', '2656');
INSERT INTO `sk_areas` VALUES ('532628', '富宁县', '云南省,文山壮族苗族自治州,富宁县', '532600', '2657');
INSERT INTO `sk_areas` VALUES ('532801', '景洪市', '云南省,西双版纳傣族自治州,景洪市', '532800', '2658');
INSERT INTO `sk_areas` VALUES ('532822', '勐海县', '云南省,西双版纳傣族自治州,勐海县', '532800', '2659');
INSERT INTO `sk_areas` VALUES ('532823', '勐腊县', '云南省,西双版纳傣族自治州,勐腊县', '532800', '2660');
INSERT INTO `sk_areas` VALUES ('532901', '大理市', '云南省,大理白族自治州,大理市', '532900', '2661');
INSERT INTO `sk_areas` VALUES ('532922', '漾濞彝族自治县', '云南省,大理白族自治州,漾濞彝族自治县', '532900', '2662');
INSERT INTO `sk_areas` VALUES ('532923', '祥云县', '云南省,大理白族自治州,祥云县', '532900', '2663');
INSERT INTO `sk_areas` VALUES ('532924', '宾川县', '云南省,大理白族自治州,宾川县', '532900', '2664');
INSERT INTO `sk_areas` VALUES ('532925', '弥渡县', '云南省,大理白族自治州,弥渡县', '532900', '2665');
INSERT INTO `sk_areas` VALUES ('532926', '南涧彝族自治县', '云南省,大理白族自治州,南涧彝族自治县', '532900', '2666');
INSERT INTO `sk_areas` VALUES ('532927', '巍山彝族回族自治县', '云南省,大理白族自治州,巍山彝族回族自治县', '532900', '2667');
INSERT INTO `sk_areas` VALUES ('532928', '永平县', '云南省,大理白族自治州,永平县', '532900', '2668');
INSERT INTO `sk_areas` VALUES ('532929', '云龙县', '云南省,大理白族自治州,云龙县', '532900', '2669');
INSERT INTO `sk_areas` VALUES ('532930', '洱源县', '云南省,大理白族自治州,洱源县', '532900', '2670');
INSERT INTO `sk_areas` VALUES ('532931', '剑川县', '云南省,大理白族自治州,剑川县', '532900', '2671');
INSERT INTO `sk_areas` VALUES ('532932', '鹤庆县', '云南省,大理白族自治州,鹤庆县', '532900', '2672');
INSERT INTO `sk_areas` VALUES ('533102', '瑞丽市', '云南省,德宏傣族景颇族自治州,瑞丽市', '533100', '2673');
INSERT INTO `sk_areas` VALUES ('533103', '潞西市', '云南省,德宏傣族景颇族自治州,潞西市', '533100', '2674');
INSERT INTO `sk_areas` VALUES ('533122', '梁河县', '云南省,德宏傣族景颇族自治州,梁河县', '533100', '2675');
INSERT INTO `sk_areas` VALUES ('533123', '盈江县', '云南省,德宏傣族景颇族自治州,盈江县', '533100', '2676');
INSERT INTO `sk_areas` VALUES ('533124', '陇川县', '云南省,德宏傣族景颇族自治州,陇川县', '533100', '2677');
INSERT INTO `sk_areas` VALUES ('533321', '泸水县', '云南省,怒江傈僳族自治州,泸水县', '533300', '2678');
INSERT INTO `sk_areas` VALUES ('533323', '福贡县', '云南省,怒江傈僳族自治州,福贡县', '533300', '2679');
INSERT INTO `sk_areas` VALUES ('533324', '贡山独龙族怒族自治县', '云南省,怒江傈僳族自治州,贡山独龙族怒族自治县', '533300', '2680');
INSERT INTO `sk_areas` VALUES ('533325', '兰坪白族普米族自治县', '云南省,怒江傈僳族自治州,兰坪白族普米族自治县', '533300', '2681');
INSERT INTO `sk_areas` VALUES ('533421', '香格里拉县', '云南省,迪庆藏族自治州,香格里拉县', '533400', '2682');
INSERT INTO `sk_areas` VALUES ('533422', '德钦县', '云南省,迪庆藏族自治州,德钦县', '533400', '2683');
INSERT INTO `sk_areas` VALUES ('533423', '维西傈僳族自治县', '云南省,迪庆藏族自治州,维西傈僳族自治县', '533400', '2684');
INSERT INTO `sk_areas` VALUES ('540101', '市辖区', '西藏自治区,拉萨市,市辖区', '540100', '2685');
INSERT INTO `sk_areas` VALUES ('540102', '城关区', '西藏自治区,拉萨市,城关区', '540100', '2686');
INSERT INTO `sk_areas` VALUES ('540121', '林周县', '西藏自治区,拉萨市,林周县', '540100', '2687');
INSERT INTO `sk_areas` VALUES ('540122', '当雄县', '西藏自治区,拉萨市,当雄县', '540100', '2688');
INSERT INTO `sk_areas` VALUES ('540123', '尼木县', '西藏自治区,拉萨市,尼木县', '540100', '2689');
INSERT INTO `sk_areas` VALUES ('540124', '曲水县', '西藏自治区,拉萨市,曲水县', '540100', '2690');
INSERT INTO `sk_areas` VALUES ('540125', '堆龙德庆县', '西藏自治区,拉萨市,堆龙德庆县', '540100', '2691');
INSERT INTO `sk_areas` VALUES ('540126', '达孜县', '西藏自治区,拉萨市,达孜县', '540100', '2692');
INSERT INTO `sk_areas` VALUES ('540127', '墨竹工卡县', '西藏自治区,拉萨市,墨竹工卡县', '540100', '2693');
INSERT INTO `sk_areas` VALUES ('542121', '昌都县', '西藏自治区,昌都地区,昌都县', '542100', '2694');
INSERT INTO `sk_areas` VALUES ('542122', '江达县', '西藏自治区,昌都地区,江达县', '542100', '2695');
INSERT INTO `sk_areas` VALUES ('542123', '贡觉县', '西藏自治区,昌都地区,贡觉县', '542100', '2696');
INSERT INTO `sk_areas` VALUES ('542124', '类乌齐县', '西藏自治区,昌都地区,类乌齐县', '542100', '2697');
INSERT INTO `sk_areas` VALUES ('542125', '丁青县', '西藏自治区,昌都地区,丁青县', '542100', '2698');
INSERT INTO `sk_areas` VALUES ('542126', '察雅县', '西藏自治区,昌都地区,察雅县', '542100', '2699');
INSERT INTO `sk_areas` VALUES ('542127', '八宿县', '西藏自治区,昌都地区,八宿县', '542100', '2700');
INSERT INTO `sk_areas` VALUES ('542128', '左贡县', '西藏自治区,昌都地区,左贡县', '542100', '2701');
INSERT INTO `sk_areas` VALUES ('542129', '芒康县', '西藏自治区,昌都地区,芒康县', '542100', '2702');
INSERT INTO `sk_areas` VALUES ('542132', '洛隆县', '西藏自治区,昌都地区,洛隆县', '542100', '2703');
INSERT INTO `sk_areas` VALUES ('542133', '边坝县', '西藏自治区,昌都地区,边坝县', '542100', '2704');
INSERT INTO `sk_areas` VALUES ('542221', '乃东县', '西藏自治区,山南地区,乃东县', '542200', '2705');
INSERT INTO `sk_areas` VALUES ('542222', '扎囊县', '西藏自治区,山南地区,扎囊县', '542200', '2706');
INSERT INTO `sk_areas` VALUES ('542223', '贡嘎县', '西藏自治区,山南地区,贡嘎县', '542200', '2707');
INSERT INTO `sk_areas` VALUES ('542224', '桑日县', '西藏自治区,山南地区,桑日县', '542200', '2708');
INSERT INTO `sk_areas` VALUES ('542225', '琼结县', '西藏自治区,山南地区,琼结县', '542200', '2709');
INSERT INTO `sk_areas` VALUES ('542226', '曲松县', '西藏自治区,山南地区,曲松县', '542200', '2710');
INSERT INTO `sk_areas` VALUES ('542227', '措美县', '西藏自治区,山南地区,措美县', '542200', '2711');
INSERT INTO `sk_areas` VALUES ('542228', '洛扎县', '西藏自治区,山南地区,洛扎县', '542200', '2712');
INSERT INTO `sk_areas` VALUES ('542229', '加查县', '西藏自治区,山南地区,加查县', '542200', '2713');
INSERT INTO `sk_areas` VALUES ('542231', '隆子县', '西藏自治区,山南地区,隆子县', '542200', '2714');
INSERT INTO `sk_areas` VALUES ('542232', '错那县', '西藏自治区,山南地区,错那县', '542200', '2715');
INSERT INTO `sk_areas` VALUES ('542233', '浪卡子县', '西藏自治区,山南地区,浪卡子县', '542200', '2716');
INSERT INTO `sk_areas` VALUES ('542301', '日喀则市', '西藏自治区,日喀则地区,日喀则市', '542300', '2717');
INSERT INTO `sk_areas` VALUES ('542322', '南木林县', '西藏自治区,日喀则地区,南木林县', '542300', '2718');
INSERT INTO `sk_areas` VALUES ('542323', '江孜县', '西藏自治区,日喀则地区,江孜县', '542300', '2719');
INSERT INTO `sk_areas` VALUES ('542324', '定日县', '西藏自治区,日喀则地区,定日县', '542300', '2720');
INSERT INTO `sk_areas` VALUES ('542325', '萨迦县', '西藏自治区,日喀则地区,萨迦县', '542300', '2721');
INSERT INTO `sk_areas` VALUES ('542326', '拉孜县', '西藏自治区,日喀则地区,拉孜县', '542300', '2722');
INSERT INTO `sk_areas` VALUES ('542327', '昂仁县', '西藏自治区,日喀则地区,昂仁县', '542300', '2723');
INSERT INTO `sk_areas` VALUES ('542328', '谢通门县', '西藏自治区,日喀则地区,谢通门县', '542300', '2724');
INSERT INTO `sk_areas` VALUES ('542329', '白朗县', '西藏自治区,日喀则地区,白朗县', '542300', '2725');
INSERT INTO `sk_areas` VALUES ('542330', '仁布县', '西藏自治区,日喀则地区,仁布县', '542300', '2726');
INSERT INTO `sk_areas` VALUES ('542331', '康马县', '西藏自治区,日喀则地区,康马县', '542300', '2727');
INSERT INTO `sk_areas` VALUES ('542332', '定结县', '西藏自治区,日喀则地区,定结县', '542300', '2728');
INSERT INTO `sk_areas` VALUES ('542333', '仲巴县', '西藏自治区,日喀则地区,仲巴县', '542300', '2729');
INSERT INTO `sk_areas` VALUES ('542334', '亚东县', '西藏自治区,日喀则地区,亚东县', '542300', '2730');
INSERT INTO `sk_areas` VALUES ('542335', '吉隆县', '西藏自治区,日喀则地区,吉隆县', '542300', '2731');
INSERT INTO `sk_areas` VALUES ('542336', '聂拉木县', '西藏自治区,日喀则地区,聂拉木县', '542300', '2732');
INSERT INTO `sk_areas` VALUES ('542337', '萨嘎县', '西藏自治区,日喀则地区,萨嘎县', '542300', '2733');
INSERT INTO `sk_areas` VALUES ('542338', '岗巴县', '西藏自治区,日喀则地区,岗巴县', '542300', '2734');
INSERT INTO `sk_areas` VALUES ('542421', '那曲县', '西藏自治区,那曲地区,那曲县', '542400', '2735');
INSERT INTO `sk_areas` VALUES ('542422', '嘉黎县', '西藏自治区,那曲地区,嘉黎县', '542400', '2736');
INSERT INTO `sk_areas` VALUES ('542423', '比如县', '西藏自治区,那曲地区,比如县', '542400', '2737');
INSERT INTO `sk_areas` VALUES ('542424', '聂荣县', '西藏自治区,那曲地区,聂荣县', '542400', '2738');
INSERT INTO `sk_areas` VALUES ('542425', '安多县', '西藏自治区,那曲地区,安多县', '542400', '2739');
INSERT INTO `sk_areas` VALUES ('542426', '申扎县', '西藏自治区,那曲地区,申扎县', '542400', '2740');
INSERT INTO `sk_areas` VALUES ('542427', '索　县', '西藏自治区,那曲地区,索　县', '542400', '2741');
INSERT INTO `sk_areas` VALUES ('542428', '班戈县', '西藏自治区,那曲地区,班戈县', '542400', '2742');
INSERT INTO `sk_areas` VALUES ('542429', '巴青县', '西藏自治区,那曲地区,巴青县', '542400', '2743');
INSERT INTO `sk_areas` VALUES ('542430', '尼玛县', '西藏自治区,那曲地区,尼玛县', '542400', '2744');
INSERT INTO `sk_areas` VALUES ('542521', '普兰县', '西藏自治区,阿里地区,普兰县', '542500', '2745');
INSERT INTO `sk_areas` VALUES ('542522', '札达县', '西藏自治区,阿里地区,札达县', '542500', '2746');
INSERT INTO `sk_areas` VALUES ('542523', '噶尔县', '西藏自治区,阿里地区,噶尔县', '542500', '2747');
INSERT INTO `sk_areas` VALUES ('542524', '日土县', '西藏自治区,阿里地区,日土县', '542500', '2748');
INSERT INTO `sk_areas` VALUES ('542525', '革吉县', '西藏自治区,阿里地区,革吉县', '542500', '2749');
INSERT INTO `sk_areas` VALUES ('542526', '改则县', '西藏自治区,阿里地区,改则县', '542500', '2750');
INSERT INTO `sk_areas` VALUES ('542527', '措勤县', '西藏自治区,阿里地区,措勤县', '542500', '2751');
INSERT INTO `sk_areas` VALUES ('542621', '林芝县', '西藏自治区,林芝地区,林芝县', '542600', '2752');
INSERT INTO `sk_areas` VALUES ('542622', '工布江达县', '西藏自治区,林芝地区,工布江达县', '542600', '2753');
INSERT INTO `sk_areas` VALUES ('542623', '米林县', '西藏自治区,林芝地区,米林县', '542600', '2754');
INSERT INTO `sk_areas` VALUES ('542624', '墨脱县', '西藏自治区,林芝地区,墨脱县', '542600', '2755');
INSERT INTO `sk_areas` VALUES ('542625', '波密县', '西藏自治区,林芝地区,波密县', '542600', '2756');
INSERT INTO `sk_areas` VALUES ('542626', '察隅县', '西藏自治区,林芝地区,察隅县', '542600', '2757');
INSERT INTO `sk_areas` VALUES ('542627', '朗　县', '西藏自治区,林芝地区,朗　县', '542600', '2758');
INSERT INTO `sk_areas` VALUES ('610101', '市辖区', '陕西省,西安市,市辖区', '610100', '2759');
INSERT INTO `sk_areas` VALUES ('610102', '新城区', '陕西省,西安市,新城区', '610100', '2760');
INSERT INTO `sk_areas` VALUES ('610103', '碑林区', '陕西省,西安市,碑林区', '610100', '2761');
INSERT INTO `sk_areas` VALUES ('610104', '莲湖区', '陕西省,西安市,莲湖区', '610100', '2762');
INSERT INTO `sk_areas` VALUES ('610111', '灞桥区', '陕西省,西安市,灞桥区', '610100', '2763');
INSERT INTO `sk_areas` VALUES ('610112', '未央区', '陕西省,西安市,未央区', '610100', '2764');
INSERT INTO `sk_areas` VALUES ('610113', '雁塔区', '陕西省,西安市,雁塔区', '610100', '2765');
INSERT INTO `sk_areas` VALUES ('610114', '阎良区', '陕西省,西安市,阎良区', '610100', '2766');
INSERT INTO `sk_areas` VALUES ('610115', '临潼区', '陕西省,西安市,临潼区', '610100', '2767');
INSERT INTO `sk_areas` VALUES ('610116', '长安区', '陕西省,西安市,长安区', '610100', '2768');
INSERT INTO `sk_areas` VALUES ('610122', '蓝田县', '陕西省,西安市,蓝田县', '610100', '2769');
INSERT INTO `sk_areas` VALUES ('610124', '周至县', '陕西省,西安市,周至县', '610100', '2770');
INSERT INTO `sk_areas` VALUES ('610125', '户　县', '陕西省,西安市,户　县', '610100', '2771');
INSERT INTO `sk_areas` VALUES ('610126', '高陵县', '陕西省,西安市,高陵县', '610100', '2772');
INSERT INTO `sk_areas` VALUES ('610201', '市辖区', '陕西省,铜川市,市辖区', '610200', '2773');
INSERT INTO `sk_areas` VALUES ('610202', '王益区', '陕西省,铜川市,王益区', '610200', '2774');
INSERT INTO `sk_areas` VALUES ('610203', '印台区', '陕西省,铜川市,印台区', '610200', '2775');
INSERT INTO `sk_areas` VALUES ('610204', '耀州区', '陕西省,铜川市,耀州区', '610200', '2776');
INSERT INTO `sk_areas` VALUES ('610222', '宜君县', '陕西省,铜川市,宜君县', '610200', '2777');
INSERT INTO `sk_areas` VALUES ('610301', '市辖区', '陕西省,宝鸡市,市辖区', '610300', '2778');
INSERT INTO `sk_areas` VALUES ('610302', '渭滨区', '陕西省,宝鸡市,渭滨区', '610300', '2779');
INSERT INTO `sk_areas` VALUES ('610303', '金台区', '陕西省,宝鸡市,金台区', '610300', '2780');
INSERT INTO `sk_areas` VALUES ('610304', '陈仓区', '陕西省,宝鸡市,陈仓区', '610300', '2781');
INSERT INTO `sk_areas` VALUES ('610322', '凤翔县', '陕西省,宝鸡市,凤翔县', '610300', '2782');
INSERT INTO `sk_areas` VALUES ('610323', '岐山县', '陕西省,宝鸡市,岐山县', '610300', '2783');
INSERT INTO `sk_areas` VALUES ('610324', '扶风县', '陕西省,宝鸡市,扶风县', '610300', '2784');
INSERT INTO `sk_areas` VALUES ('610326', '眉　县', '陕西省,宝鸡市,眉　县', '610300', '2785');
INSERT INTO `sk_areas` VALUES ('610327', '陇　县', '陕西省,宝鸡市,陇　县', '610300', '2786');
INSERT INTO `sk_areas` VALUES ('610328', '千阳县', '陕西省,宝鸡市,千阳县', '610300', '2787');
INSERT INTO `sk_areas` VALUES ('610329', '麟游县', '陕西省,宝鸡市,麟游县', '610300', '2788');
INSERT INTO `sk_areas` VALUES ('610330', '凤　县', '陕西省,宝鸡市,凤　县', '610300', '2789');
INSERT INTO `sk_areas` VALUES ('610331', '太白县', '陕西省,宝鸡市,太白县', '610300', '2790');
INSERT INTO `sk_areas` VALUES ('610401', '市辖区', '陕西省,咸阳市,市辖区', '610400', '2791');
INSERT INTO `sk_areas` VALUES ('610402', '秦都区', '陕西省,咸阳市,秦都区', '610400', '2792');
INSERT INTO `sk_areas` VALUES ('610403', '杨凌区', '陕西省,咸阳市,杨凌区', '610400', '2793');
INSERT INTO `sk_areas` VALUES ('610404', '渭城区', '陕西省,咸阳市,渭城区', '610400', '2794');
INSERT INTO `sk_areas` VALUES ('610422', '三原县', '陕西省,咸阳市,三原县', '610400', '2795');
INSERT INTO `sk_areas` VALUES ('610423', '泾阳县', '陕西省,咸阳市,泾阳县', '610400', '2796');
INSERT INTO `sk_areas` VALUES ('610424', '乾　县', '陕西省,咸阳市,乾　县', '610400', '2797');
INSERT INTO `sk_areas` VALUES ('610425', '礼泉县', '陕西省,咸阳市,礼泉县', '610400', '2798');
INSERT INTO `sk_areas` VALUES ('610426', '永寿县', '陕西省,咸阳市,永寿县', '610400', '2799');
INSERT INTO `sk_areas` VALUES ('610427', '彬　县', '陕西省,咸阳市,彬　县', '610400', '2800');
INSERT INTO `sk_areas` VALUES ('610428', '长武县', '陕西省,咸阳市,长武县', '610400', '2801');
INSERT INTO `sk_areas` VALUES ('610429', '旬邑县', '陕西省,咸阳市,旬邑县', '610400', '2802');
INSERT INTO `sk_areas` VALUES ('610430', '淳化县', '陕西省,咸阳市,淳化县', '610400', '2803');
INSERT INTO `sk_areas` VALUES ('610431', '武功县', '陕西省,咸阳市,武功县', '610400', '2804');
INSERT INTO `sk_areas` VALUES ('610481', '兴平市', '陕西省,咸阳市,兴平市', '610400', '2805');
INSERT INTO `sk_areas` VALUES ('610501', '市辖区', '陕西省,渭南市,市辖区', '610500', '2806');
INSERT INTO `sk_areas` VALUES ('610502', '临渭区', '陕西省,渭南市,临渭区', '610500', '2807');
INSERT INTO `sk_areas` VALUES ('610521', '华　县', '陕西省,渭南市,华　县', '610500', '2808');
INSERT INTO `sk_areas` VALUES ('610522', '潼关县', '陕西省,渭南市,潼关县', '610500', '2809');
INSERT INTO `sk_areas` VALUES ('610523', '大荔县', '陕西省,渭南市,大荔县', '610500', '2810');
INSERT INTO `sk_areas` VALUES ('610524', '合阳县', '陕西省,渭南市,合阳县', '610500', '2811');
INSERT INTO `sk_areas` VALUES ('610525', '澄城县', '陕西省,渭南市,澄城县', '610500', '2812');
INSERT INTO `sk_areas` VALUES ('610526', '蒲城县', '陕西省,渭南市,蒲城县', '610500', '2813');
INSERT INTO `sk_areas` VALUES ('610527', '白水县', '陕西省,渭南市,白水县', '610500', '2814');
INSERT INTO `sk_areas` VALUES ('610528', '富平县', '陕西省,渭南市,富平县', '610500', '2815');
INSERT INTO `sk_areas` VALUES ('610581', '韩城市', '陕西省,渭南市,韩城市', '610500', '2816');
INSERT INTO `sk_areas` VALUES ('610582', '华阴市', '陕西省,渭南市,华阴市', '610500', '2817');
INSERT INTO `sk_areas` VALUES ('610601', '市辖区', '陕西省,延安市,市辖区', '610600', '2818');
INSERT INTO `sk_areas` VALUES ('610602', '宝塔区', '陕西省,延安市,宝塔区', '610600', '2819');
INSERT INTO `sk_areas` VALUES ('610621', '延长县', '陕西省,延安市,延长县', '610600', '2820');
INSERT INTO `sk_areas` VALUES ('610622', '延川县', '陕西省,延安市,延川县', '610600', '2821');
INSERT INTO `sk_areas` VALUES ('610623', '子长县', '陕西省,延安市,子长县', '610600', '2822');
INSERT INTO `sk_areas` VALUES ('610624', '安塞县', '陕西省,延安市,安塞县', '610600', '2823');
INSERT INTO `sk_areas` VALUES ('610625', '志丹县', '陕西省,延安市,志丹县', '610600', '2824');
INSERT INTO `sk_areas` VALUES ('610626', '吴旗县', '陕西省,延安市,吴旗县', '610600', '2825');
INSERT INTO `sk_areas` VALUES ('610627', '甘泉县', '陕西省,延安市,甘泉县', '610600', '2826');
INSERT INTO `sk_areas` VALUES ('610628', '富　县', '陕西省,延安市,富　县', '610600', '2827');
INSERT INTO `sk_areas` VALUES ('610629', '洛川县', '陕西省,延安市,洛川县', '610600', '2828');
INSERT INTO `sk_areas` VALUES ('610630', '宜川县', '陕西省,延安市,宜川县', '610600', '2829');
INSERT INTO `sk_areas` VALUES ('610631', '黄龙县', '陕西省,延安市,黄龙县', '610600', '2830');
INSERT INTO `sk_areas` VALUES ('610632', '黄陵县', '陕西省,延安市,黄陵县', '610600', '2831');
INSERT INTO `sk_areas` VALUES ('610701', '市辖区', '陕西省,汉中市,市辖区', '610700', '2832');
INSERT INTO `sk_areas` VALUES ('610702', '汉台区', '陕西省,汉中市,汉台区', '610700', '2833');
INSERT INTO `sk_areas` VALUES ('610721', '南郑县', '陕西省,汉中市,南郑县', '610700', '2834');
INSERT INTO `sk_areas` VALUES ('610722', '城固县', '陕西省,汉中市,城固县', '610700', '2835');
INSERT INTO `sk_areas` VALUES ('610723', '洋　县', '陕西省,汉中市,洋　县', '610700', '2836');
INSERT INTO `sk_areas` VALUES ('610724', '西乡县', '陕西省,汉中市,西乡县', '610700', '2837');
INSERT INTO `sk_areas` VALUES ('610725', '勉　县', '陕西省,汉中市,勉　县', '610700', '2838');
INSERT INTO `sk_areas` VALUES ('610726', '宁强县', '陕西省,汉中市,宁强县', '610700', '2839');
INSERT INTO `sk_areas` VALUES ('610727', '略阳县', '陕西省,汉中市,略阳县', '610700', '2840');
INSERT INTO `sk_areas` VALUES ('610728', '镇巴县', '陕西省,汉中市,镇巴县', '610700', '2841');
INSERT INTO `sk_areas` VALUES ('610729', '留坝县', '陕西省,汉中市,留坝县', '610700', '2842');
INSERT INTO `sk_areas` VALUES ('610730', '佛坪县', '陕西省,汉中市,佛坪县', '610700', '2843');
INSERT INTO `sk_areas` VALUES ('610801', '市辖区', '陕西省,榆林市,市辖区', '610800', '2844');
INSERT INTO `sk_areas` VALUES ('610802', '榆阳区', '陕西省,榆林市,榆阳区', '610800', '2845');
INSERT INTO `sk_areas` VALUES ('610821', '神木县', '陕西省,榆林市,神木县', '610800', '2846');
INSERT INTO `sk_areas` VALUES ('610822', '府谷县', '陕西省,榆林市,府谷县', '610800', '2847');
INSERT INTO `sk_areas` VALUES ('610823', '横山县', '陕西省,榆林市,横山县', '610800', '2848');
INSERT INTO `sk_areas` VALUES ('610824', '靖边县', '陕西省,榆林市,靖边县', '610800', '2849');
INSERT INTO `sk_areas` VALUES ('610825', '定边县', '陕西省,榆林市,定边县', '610800', '2850');
INSERT INTO `sk_areas` VALUES ('610826', '绥德县', '陕西省,榆林市,绥德县', '610800', '2851');
INSERT INTO `sk_areas` VALUES ('610827', '米脂县', '陕西省,榆林市,米脂县', '610800', '2852');
INSERT INTO `sk_areas` VALUES ('610828', '佳　县', '陕西省,榆林市,佳　县', '610800', '2853');
INSERT INTO `sk_areas` VALUES ('610829', '吴堡县', '陕西省,榆林市,吴堡县', '610800', '2854');
INSERT INTO `sk_areas` VALUES ('610830', '清涧县', '陕西省,榆林市,清涧县', '610800', '2855');
INSERT INTO `sk_areas` VALUES ('610831', '子洲县', '陕西省,榆林市,子洲县', '610800', '2856');
INSERT INTO `sk_areas` VALUES ('610901', '市辖区', '陕西省,安康市,市辖区', '610900', '2857');
INSERT INTO `sk_areas` VALUES ('610902', '汉滨区', '陕西省,安康市,汉滨区', '610900', '2858');
INSERT INTO `sk_areas` VALUES ('610921', '汉阴县', '陕西省,安康市,汉阴县', '610900', '2859');
INSERT INTO `sk_areas` VALUES ('610922', '石泉县', '陕西省,安康市,石泉县', '610900', '2860');
INSERT INTO `sk_areas` VALUES ('610923', '宁陕县', '陕西省,安康市,宁陕县', '610900', '2861');
INSERT INTO `sk_areas` VALUES ('610924', '紫阳县', '陕西省,安康市,紫阳县', '610900', '2862');
INSERT INTO `sk_areas` VALUES ('610925', '岚皋县', '陕西省,安康市,岚皋县', '610900', '2863');
INSERT INTO `sk_areas` VALUES ('610926', '平利县', '陕西省,安康市,平利县', '610900', '2864');
INSERT INTO `sk_areas` VALUES ('610927', '镇坪县', '陕西省,安康市,镇坪县', '610900', '2865');
INSERT INTO `sk_areas` VALUES ('610928', '旬阳县', '陕西省,安康市,旬阳县', '610900', '2866');
INSERT INTO `sk_areas` VALUES ('610929', '白河县', '陕西省,安康市,白河县', '610900', '2867');
INSERT INTO `sk_areas` VALUES ('611001', '市辖区', '陕西省,商洛市,市辖区', '611000', '2868');
INSERT INTO `sk_areas` VALUES ('611002', '商州区', '陕西省,商洛市,商州区', '611000', '2869');
INSERT INTO `sk_areas` VALUES ('611021', '洛南县', '陕西省,商洛市,洛南县', '611000', '2870');
INSERT INTO `sk_areas` VALUES ('611022', '丹凤县', '陕西省,商洛市,丹凤县', '611000', '2871');
INSERT INTO `sk_areas` VALUES ('611023', '商南县', '陕西省,商洛市,商南县', '611000', '2872');
INSERT INTO `sk_areas` VALUES ('611024', '山阳县', '陕西省,商洛市,山阳县', '611000', '2873');
INSERT INTO `sk_areas` VALUES ('611025', '镇安县', '陕西省,商洛市,镇安县', '611000', '2874');
INSERT INTO `sk_areas` VALUES ('611026', '柞水县', '陕西省,商洛市,柞水县', '611000', '2875');
INSERT INTO `sk_areas` VALUES ('620101', '市辖区', '甘肃省,兰州市,市辖区', '620100', '2876');
INSERT INTO `sk_areas` VALUES ('620102', '城关区', '甘肃省,兰州市,城关区', '620100', '2877');
INSERT INTO `sk_areas` VALUES ('620103', '七里河区', '甘肃省,兰州市,七里河区', '620100', '2878');
INSERT INTO `sk_areas` VALUES ('620104', '西固区', '甘肃省,兰州市,西固区', '620100', '2879');
INSERT INTO `sk_areas` VALUES ('620105', '安宁区', '甘肃省,兰州市,安宁区', '620100', '2880');
INSERT INTO `sk_areas` VALUES ('620111', '红古区', '甘肃省,兰州市,红古区', '620100', '2881');
INSERT INTO `sk_areas` VALUES ('620121', '永登县', '甘肃省,兰州市,永登县', '620100', '2882');
INSERT INTO `sk_areas` VALUES ('620122', '皋兰县', '甘肃省,兰州市,皋兰县', '620100', '2883');
INSERT INTO `sk_areas` VALUES ('620123', '榆中县', '甘肃省,兰州市,榆中县', '620100', '2884');
INSERT INTO `sk_areas` VALUES ('620201', '市辖区', '甘肃省,嘉峪关市,市辖区', '620200', '2885');
INSERT INTO `sk_areas` VALUES ('620301', '市辖区', '甘肃省,金昌市,市辖区', '620300', '2886');
INSERT INTO `sk_areas` VALUES ('620302', '金川区', '甘肃省,金昌市,金川区', '620300', '2887');
INSERT INTO `sk_areas` VALUES ('620321', '永昌县', '甘肃省,金昌市,永昌县', '620300', '2888');
INSERT INTO `sk_areas` VALUES ('620401', '市辖区', '甘肃省,白银市,市辖区', '620400', '2889');
INSERT INTO `sk_areas` VALUES ('620402', '白银区', '甘肃省,白银市,白银区', '620400', '2890');
INSERT INTO `sk_areas` VALUES ('620403', '平川区', '甘肃省,白银市,平川区', '620400', '2891');
INSERT INTO `sk_areas` VALUES ('620421', '靖远县', '甘肃省,白银市,靖远县', '620400', '2892');
INSERT INTO `sk_areas` VALUES ('620422', '会宁县', '甘肃省,白银市,会宁县', '620400', '2893');
INSERT INTO `sk_areas` VALUES ('620423', '景泰县', '甘肃省,白银市,景泰县', '620400', '2894');
INSERT INTO `sk_areas` VALUES ('620501', '市辖区', '甘肃省,天水市,市辖区', '620500', '2895');
INSERT INTO `sk_areas` VALUES ('620502', '秦城区', '甘肃省,天水市,秦城区', '620500', '2896');
INSERT INTO `sk_areas` VALUES ('620503', '北道区', '甘肃省,天水市,北道区', '620500', '2897');
INSERT INTO `sk_areas` VALUES ('620521', '清水县', '甘肃省,天水市,清水县', '620500', '2898');
INSERT INTO `sk_areas` VALUES ('620522', '秦安县', '甘肃省,天水市,秦安县', '620500', '2899');
INSERT INTO `sk_areas` VALUES ('620523', '甘谷县', '甘肃省,天水市,甘谷县', '620500', '2900');
INSERT INTO `sk_areas` VALUES ('620524', '武山县', '甘肃省,天水市,武山县', '620500', '2901');
INSERT INTO `sk_areas` VALUES ('620525', '张家川回族自治县', '甘肃省,天水市,张家川回族自治县', '620500', '2902');
INSERT INTO `sk_areas` VALUES ('620601', '市辖区', '甘肃省,武威市,市辖区', '620600', '2903');
INSERT INTO `sk_areas` VALUES ('620602', '凉州区', '甘肃省,武威市,凉州区', '620600', '2904');
INSERT INTO `sk_areas` VALUES ('620621', '民勤县', '甘肃省,武威市,民勤县', '620600', '2905');
INSERT INTO `sk_areas` VALUES ('620622', '古浪县', '甘肃省,武威市,古浪县', '620600', '2906');
INSERT INTO `sk_areas` VALUES ('620623', '天祝藏族自治县', '甘肃省,武威市,天祝藏族自治县', '620600', '2907');
INSERT INTO `sk_areas` VALUES ('620701', '市辖区', '甘肃省,张掖市,市辖区', '620700', '2908');
INSERT INTO `sk_areas` VALUES ('620702', '甘州区', '甘肃省,张掖市,甘州区', '620700', '2909');
INSERT INTO `sk_areas` VALUES ('620721', '肃南裕固族自治县', '甘肃省,张掖市,肃南裕固族自治县', '620700', '2910');
INSERT INTO `sk_areas` VALUES ('620722', '民乐县', '甘肃省,张掖市,民乐县', '620700', '2911');
INSERT INTO `sk_areas` VALUES ('620723', '临泽县', '甘肃省,张掖市,临泽县', '620700', '2912');
INSERT INTO `sk_areas` VALUES ('620724', '高台县', '甘肃省,张掖市,高台县', '620700', '2913');
INSERT INTO `sk_areas` VALUES ('620725', '山丹县', '甘肃省,张掖市,山丹县', '620700', '2914');
INSERT INTO `sk_areas` VALUES ('620801', '市辖区', '甘肃省,平凉市,市辖区', '620800', '2915');
INSERT INTO `sk_areas` VALUES ('620802', '崆峒区', '甘肃省,平凉市,崆峒区', '620800', '2916');
INSERT INTO `sk_areas` VALUES ('620821', '泾川县', '甘肃省,平凉市,泾川县', '620800', '2917');
INSERT INTO `sk_areas` VALUES ('620822', '灵台县', '甘肃省,平凉市,灵台县', '620800', '2918');
INSERT INTO `sk_areas` VALUES ('620823', '崇信县', '甘肃省,平凉市,崇信县', '620800', '2919');
INSERT INTO `sk_areas` VALUES ('620824', '华亭县', '甘肃省,平凉市,华亭县', '620800', '2920');
INSERT INTO `sk_areas` VALUES ('620825', '庄浪县', '甘肃省,平凉市,庄浪县', '620800', '2921');
INSERT INTO `sk_areas` VALUES ('620826', '静宁县', '甘肃省,平凉市,静宁县', '620800', '2922');
INSERT INTO `sk_areas` VALUES ('620901', '市辖区', '甘肃省,酒泉市,市辖区', '620900', '2923');
INSERT INTO `sk_areas` VALUES ('620902', '肃州区', '甘肃省,酒泉市,肃州区', '620900', '2924');
INSERT INTO `sk_areas` VALUES ('620921', '金塔县', '甘肃省,酒泉市,金塔县', '620900', '2925');
INSERT INTO `sk_areas` VALUES ('620922', '安西县', '甘肃省,酒泉市,安西县', '620900', '2926');
INSERT INTO `sk_areas` VALUES ('620923', '肃北蒙古族自治县', '甘肃省,酒泉市,肃北蒙古族自治县', '620900', '2927');
INSERT INTO `sk_areas` VALUES ('620924', '阿克塞哈萨克族自治县', '甘肃省,酒泉市,阿克塞哈萨克族自治县', '620900', '2928');
INSERT INTO `sk_areas` VALUES ('620981', '玉门市', '甘肃省,酒泉市,玉门市', '620900', '2929');
INSERT INTO `sk_areas` VALUES ('620982', '敦煌市', '甘肃省,酒泉市,敦煌市', '620900', '2930');
INSERT INTO `sk_areas` VALUES ('621001', '市辖区', '甘肃省,庆阳市,市辖区', '621000', '2931');
INSERT INTO `sk_areas` VALUES ('621002', '西峰区', '甘肃省,庆阳市,西峰区', '621000', '2932');
INSERT INTO `sk_areas` VALUES ('621021', '庆城县', '甘肃省,庆阳市,庆城县', '621000', '2933');
INSERT INTO `sk_areas` VALUES ('621022', '环　县', '甘肃省,庆阳市,环　县', '621000', '2934');
INSERT INTO `sk_areas` VALUES ('621023', '华池县', '甘肃省,庆阳市,华池县', '621000', '2935');
INSERT INTO `sk_areas` VALUES ('621024', '合水县', '甘肃省,庆阳市,合水县', '621000', '2936');
INSERT INTO `sk_areas` VALUES ('621025', '正宁县', '甘肃省,庆阳市,正宁县', '621000', '2937');
INSERT INTO `sk_areas` VALUES ('621026', '宁　县', '甘肃省,庆阳市,宁　县', '621000', '2938');
INSERT INTO `sk_areas` VALUES ('621027', '镇原县', '甘肃省,庆阳市,镇原县', '621000', '2939');
INSERT INTO `sk_areas` VALUES ('621101', '市辖区', '甘肃省,定西市,市辖区', '621100', '2940');
INSERT INTO `sk_areas` VALUES ('621102', '安定区', '甘肃省,定西市,安定区', '621100', '2941');
INSERT INTO `sk_areas` VALUES ('621121', '通渭县', '甘肃省,定西市,通渭县', '621100', '2942');
INSERT INTO `sk_areas` VALUES ('621122', '陇西县', '甘肃省,定西市,陇西县', '621100', '2943');
INSERT INTO `sk_areas` VALUES ('621123', '渭源县', '甘肃省,定西市,渭源县', '621100', '2944');
INSERT INTO `sk_areas` VALUES ('621124', '临洮县', '甘肃省,定西市,临洮县', '621100', '2945');
INSERT INTO `sk_areas` VALUES ('621125', '漳　县', '甘肃省,定西市,漳　县', '621100', '2946');
INSERT INTO `sk_areas` VALUES ('621126', '岷　县', '甘肃省,定西市,岷　县', '621100', '2947');
INSERT INTO `sk_areas` VALUES ('621201', '市辖区', '甘肃省,陇南市,市辖区', '621200', '2948');
INSERT INTO `sk_areas` VALUES ('621202', '武都区', '甘肃省,陇南市,武都区', '621200', '2949');
INSERT INTO `sk_areas` VALUES ('621221', '成　县', '甘肃省,陇南市,成　县', '621200', '2950');
INSERT INTO `sk_areas` VALUES ('621222', '文　县', '甘肃省,陇南市,文　县', '621200', '2951');
INSERT INTO `sk_areas` VALUES ('621223', '宕昌县', '甘肃省,陇南市,宕昌县', '621200', '2952');
INSERT INTO `sk_areas` VALUES ('621224', '康　县', '甘肃省,陇南市,康　县', '621200', '2953');
INSERT INTO `sk_areas` VALUES ('621225', '西和县', '甘肃省,陇南市,西和县', '621200', '2954');
INSERT INTO `sk_areas` VALUES ('621226', '礼　县', '甘肃省,陇南市,礼　县', '621200', '2955');
INSERT INTO `sk_areas` VALUES ('621227', '徽　县', '甘肃省,陇南市,徽　县', '621200', '2956');
INSERT INTO `sk_areas` VALUES ('621228', '两当县', '甘肃省,陇南市,两当县', '621200', '2957');
INSERT INTO `sk_areas` VALUES ('622901', '临夏市', '甘肃省,临夏回族自治州,临夏市', '622900', '2958');
INSERT INTO `sk_areas` VALUES ('622921', '临夏县', '甘肃省,临夏回族自治州,临夏县', '622900', '2959');
INSERT INTO `sk_areas` VALUES ('622922', '康乐县', '甘肃省,临夏回族自治州,康乐县', '622900', '2960');
INSERT INTO `sk_areas` VALUES ('622923', '永靖县', '甘肃省,临夏回族自治州,永靖县', '622900', '2961');
INSERT INTO `sk_areas` VALUES ('622924', '广河县', '甘肃省,临夏回族自治州,广河县', '622900', '2962');
INSERT INTO `sk_areas` VALUES ('622925', '和政县', '甘肃省,临夏回族自治州,和政县', '622900', '2963');
INSERT INTO `sk_areas` VALUES ('622926', '东乡族自治县', '甘肃省,临夏回族自治州,东乡族自治县', '622900', '2964');
INSERT INTO `sk_areas` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '甘肃省,临夏回族自治州,积石山保安族东乡族撒拉族自治县', '622900', '2965');
INSERT INTO `sk_areas` VALUES ('623001', '合作市', '甘肃省,甘南藏族自治州,合作市', '623000', '2966');
INSERT INTO `sk_areas` VALUES ('623021', '临潭县', '甘肃省,甘南藏族自治州,临潭县', '623000', '2967');
INSERT INTO `sk_areas` VALUES ('623022', '卓尼县', '甘肃省,甘南藏族自治州,卓尼县', '623000', '2968');
INSERT INTO `sk_areas` VALUES ('623023', '舟曲县', '甘肃省,甘南藏族自治州,舟曲县', '623000', '2969');
INSERT INTO `sk_areas` VALUES ('623024', '迭部县', '甘肃省,甘南藏族自治州,迭部县', '623000', '2970');
INSERT INTO `sk_areas` VALUES ('623025', '玛曲县', '甘肃省,甘南藏族自治州,玛曲县', '623000', '2971');
INSERT INTO `sk_areas` VALUES ('623026', '碌曲县', '甘肃省,甘南藏族自治州,碌曲县', '623000', '2972');
INSERT INTO `sk_areas` VALUES ('623027', '夏河县', '甘肃省,甘南藏族自治州,夏河县', '623000', '2973');
INSERT INTO `sk_areas` VALUES ('630101', '市辖区', '青海省,西宁市,市辖区', '630100', '2974');
INSERT INTO `sk_areas` VALUES ('630102', '城东区', '青海省,西宁市,城东区', '630100', '2975');
INSERT INTO `sk_areas` VALUES ('630103', '城中区', '青海省,西宁市,城中区', '630100', '2976');
INSERT INTO `sk_areas` VALUES ('630104', '城西区', '青海省,西宁市,城西区', '630100', '2977');
INSERT INTO `sk_areas` VALUES ('630105', '城北区', '青海省,西宁市,城北区', '630100', '2978');
INSERT INTO `sk_areas` VALUES ('630121', '大通回族土族自治县', '青海省,西宁市,大通回族土族自治县', '630100', '2979');
INSERT INTO `sk_areas` VALUES ('630122', '湟中县', '青海省,西宁市,湟中县', '630100', '2980');
INSERT INTO `sk_areas` VALUES ('630123', '湟源县', '青海省,西宁市,湟源县', '630100', '2981');
INSERT INTO `sk_areas` VALUES ('632121', '平安县', '青海省,海东地区,平安县', '632100', '2982');
INSERT INTO `sk_areas` VALUES ('632122', '民和回族土族自治县', '青海省,海东地区,民和回族土族自治县', '632100', '2983');
INSERT INTO `sk_areas` VALUES ('632123', '乐都县', '青海省,海东地区,乐都县', '632100', '2984');
INSERT INTO `sk_areas` VALUES ('632126', '互助土族自治县', '青海省,海东地区,互助土族自治县', '632100', '2985');
INSERT INTO `sk_areas` VALUES ('632127', '化隆回族自治县', '青海省,海东地区,化隆回族自治县', '632100', '2986');
INSERT INTO `sk_areas` VALUES ('632128', '循化撒拉族自治县', '青海省,海东地区,循化撒拉族自治县', '632100', '2987');
INSERT INTO `sk_areas` VALUES ('632221', '门源回族自治县', '青海省,海北藏族自治州,门源回族自治县', '632200', '2988');
INSERT INTO `sk_areas` VALUES ('632222', '祁连县', '青海省,海北藏族自治州,祁连县', '632200', '2989');
INSERT INTO `sk_areas` VALUES ('632223', '海晏县', '青海省,海北藏族自治州,海晏县', '632200', '2990');
INSERT INTO `sk_areas` VALUES ('632224', '刚察县', '青海省,海北藏族自治州,刚察县', '632200', '2991');
INSERT INTO `sk_areas` VALUES ('632321', '同仁县', '青海省,黄南藏族自治州,同仁县', '632300', '2992');
INSERT INTO `sk_areas` VALUES ('632322', '尖扎县', '青海省,黄南藏族自治州,尖扎县', '632300', '2993');
INSERT INTO `sk_areas` VALUES ('632323', '泽库县', '青海省,黄南藏族自治州,泽库县', '632300', '2994');
INSERT INTO `sk_areas` VALUES ('632324', '河南蒙古族自治县', '青海省,黄南藏族自治州,河南蒙古族自治县', '632300', '2995');
INSERT INTO `sk_areas` VALUES ('632521', '共和县', '青海省,海南藏族自治州,共和县', '632500', '2996');
INSERT INTO `sk_areas` VALUES ('632522', '同德县', '青海省,海南藏族自治州,同德县', '632500', '2997');
INSERT INTO `sk_areas` VALUES ('632523', '贵德县', '青海省,海南藏族自治州,贵德县', '632500', '2998');
INSERT INTO `sk_areas` VALUES ('632524', '兴海县', '青海省,海南藏族自治州,兴海县', '632500', '2999');
INSERT INTO `sk_areas` VALUES ('632525', '贵南县', '青海省,海南藏族自治州,贵南县', '632500', '3000');
INSERT INTO `sk_areas` VALUES ('632621', '玛沁县', '青海省,果洛藏族自治州,玛沁县', '632600', '3001');
INSERT INTO `sk_areas` VALUES ('632622', '班玛县', '青海省,果洛藏族自治州,班玛县', '632600', '3002');
INSERT INTO `sk_areas` VALUES ('632623', '甘德县', '青海省,果洛藏族自治州,甘德县', '632600', '3003');
INSERT INTO `sk_areas` VALUES ('632624', '达日县', '青海省,果洛藏族自治州,达日县', '632600', '3004');
INSERT INTO `sk_areas` VALUES ('632625', '久治县', '青海省,果洛藏族自治州,久治县', '632600', '3005');
INSERT INTO `sk_areas` VALUES ('632626', '玛多县', '青海省,果洛藏族自治州,玛多县', '632600', '3006');
INSERT INTO `sk_areas` VALUES ('632721', '玉树县', '青海省,玉树藏族自治州,玉树县', '632700', '3007');
INSERT INTO `sk_areas` VALUES ('632722', '杂多县', '青海省,玉树藏族自治州,杂多县', '632700', '3008');
INSERT INTO `sk_areas` VALUES ('632723', '称多县', '青海省,玉树藏族自治州,称多县', '632700', '3009');
INSERT INTO `sk_areas` VALUES ('632724', '治多县', '青海省,玉树藏族自治州,治多县', '632700', '3010');
INSERT INTO `sk_areas` VALUES ('632725', '囊谦县', '青海省,玉树藏族自治州,囊谦县', '632700', '3011');
INSERT INTO `sk_areas` VALUES ('632726', '曲麻莱县', '青海省,玉树藏族自治州,曲麻莱县', '632700', '3012');
INSERT INTO `sk_areas` VALUES ('632801', '格尔木市', '青海省,海西蒙古族藏族自治州,格尔木市', '632800', '3013');
INSERT INTO `sk_areas` VALUES ('632802', '德令哈市', '青海省,海西蒙古族藏族自治州,德令哈市', '632800', '3014');
INSERT INTO `sk_areas` VALUES ('632821', '乌兰县', '青海省,海西蒙古族藏族自治州,乌兰县', '632800', '3015');
INSERT INTO `sk_areas` VALUES ('632822', '都兰县', '青海省,海西蒙古族藏族自治州,都兰县', '632800', '3016');
INSERT INTO `sk_areas` VALUES ('632823', '天峻县', '青海省,海西蒙古族藏族自治州,天峻县', '632800', '3017');
INSERT INTO `sk_areas` VALUES ('640101', '市辖区', '宁夏回族自治区,银川市,市辖区', '640100', '3018');
INSERT INTO `sk_areas` VALUES ('640104', '兴庆区', '宁夏回族自治区,银川市,兴庆区', '640100', '3019');
INSERT INTO `sk_areas` VALUES ('640105', '西夏区', '宁夏回族自治区,银川市,西夏区', '640100', '3020');
INSERT INTO `sk_areas` VALUES ('640106', '金凤区', '宁夏回族自治区,银川市,金凤区', '640100', '3021');
INSERT INTO `sk_areas` VALUES ('640121', '永宁县', '宁夏回族自治区,银川市,永宁县', '640100', '3022');
INSERT INTO `sk_areas` VALUES ('640122', '贺兰县', '宁夏回族自治区,银川市,贺兰县', '640100', '3023');
INSERT INTO `sk_areas` VALUES ('640181', '灵武市', '宁夏回族自治区,银川市,灵武市', '640100', '3024');
INSERT INTO `sk_areas` VALUES ('640201', '市辖区', '宁夏回族自治区,石嘴山市,市辖区', '640200', '3025');
INSERT INTO `sk_areas` VALUES ('640202', '大武口区', '宁夏回族自治区,石嘴山市,大武口区', '640200', '3026');
INSERT INTO `sk_areas` VALUES ('640205', '惠农区', '宁夏回族自治区,石嘴山市,惠农区', '640200', '3027');
INSERT INTO `sk_areas` VALUES ('640221', '平罗县', '宁夏回族自治区,石嘴山市,平罗县', '640200', '3028');
INSERT INTO `sk_areas` VALUES ('640301', '市辖区', '宁夏回族自治区,吴忠市,市辖区', '640300', '3029');
INSERT INTO `sk_areas` VALUES ('640302', '利通区', '宁夏回族自治区,吴忠市,利通区', '640300', '3030');
INSERT INTO `sk_areas` VALUES ('640323', '盐池县', '宁夏回族自治区,吴忠市,盐池县', '640300', '3031');
INSERT INTO `sk_areas` VALUES ('640324', '同心县', '宁夏回族自治区,吴忠市,同心县', '640300', '3032');
INSERT INTO `sk_areas` VALUES ('640381', '青铜峡市', '宁夏回族自治区,吴忠市,青铜峡市', '640300', '3033');
INSERT INTO `sk_areas` VALUES ('640401', '市辖区', '宁夏回族自治区,固原市,市辖区', '640400', '3034');
INSERT INTO `sk_areas` VALUES ('640402', '原州区', '宁夏回族自治区,固原市,原州区', '640400', '3035');
INSERT INTO `sk_areas` VALUES ('640422', '西吉县', '宁夏回族自治区,固原市,西吉县', '640400', '3036');
INSERT INTO `sk_areas` VALUES ('640423', '隆德县', '宁夏回族自治区,固原市,隆德县', '640400', '3037');
INSERT INTO `sk_areas` VALUES ('640424', '泾源县', '宁夏回族自治区,固原市,泾源县', '640400', '3038');
INSERT INTO `sk_areas` VALUES ('640425', '彭阳县', '宁夏回族自治区,固原市,彭阳县', '640400', '3039');
INSERT INTO `sk_areas` VALUES ('640501', '市辖区', '宁夏回族自治区,中卫市,市辖区', '640500', '3040');
INSERT INTO `sk_areas` VALUES ('640502', '沙坡头区', '宁夏回族自治区,中卫市,沙坡头区', '640500', '3041');
INSERT INTO `sk_areas` VALUES ('640521', '中宁县', '宁夏回族自治区,中卫市,中宁县', '640500', '3042');
INSERT INTO `sk_areas` VALUES ('640522', '海原县', '宁夏回族自治区,中卫市,海原县', '640500', '3043');
INSERT INTO `sk_areas` VALUES ('650101', '市辖区', '新疆维吾尔自治区,乌鲁木齐市,市辖区', '650100', '3044');
INSERT INTO `sk_areas` VALUES ('650102', '天山区', '新疆维吾尔自治区,乌鲁木齐市,天山区', '650100', '3045');
INSERT INTO `sk_areas` VALUES ('650103', '沙依巴克区', '新疆维吾尔自治区,乌鲁木齐市,沙依巴克区', '650100', '3046');
INSERT INTO `sk_areas` VALUES ('650104', '新市区', '新疆维吾尔自治区,乌鲁木齐市,新市区', '650100', '3047');
INSERT INTO `sk_areas` VALUES ('650105', '水磨沟区', '新疆维吾尔自治区,乌鲁木齐市,水磨沟区', '650100', '3048');
INSERT INTO `sk_areas` VALUES ('650106', '头屯河区', '新疆维吾尔自治区,乌鲁木齐市,头屯河区', '650100', '3049');
INSERT INTO `sk_areas` VALUES ('650107', '达坂城区', '新疆维吾尔自治区,乌鲁木齐市,达坂城区', '650100', '3050');
INSERT INTO `sk_areas` VALUES ('650108', '东山区', '新疆维吾尔自治区,乌鲁木齐市,东山区', '650100', '3051');
INSERT INTO `sk_areas` VALUES ('650121', '乌鲁木齐县', '新疆维吾尔自治区,乌鲁木齐市,乌鲁木齐县', '650100', '3052');
INSERT INTO `sk_areas` VALUES ('650201', '市辖区', '新疆维吾尔自治区,克拉玛依市,市辖区', '650200', '3053');
INSERT INTO `sk_areas` VALUES ('650202', '独山子区', '新疆维吾尔自治区,克拉玛依市,独山子区', '650200', '3054');
INSERT INTO `sk_areas` VALUES ('650203', '克拉玛依区', '新疆维吾尔自治区,克拉玛依市,克拉玛依区', '650200', '3055');
INSERT INTO `sk_areas` VALUES ('650204', '白碱滩区', '新疆维吾尔自治区,克拉玛依市,白碱滩区', '650200', '3056');
INSERT INTO `sk_areas` VALUES ('650205', '乌尔禾区', '新疆维吾尔自治区,克拉玛依市,乌尔禾区', '650200', '3057');
INSERT INTO `sk_areas` VALUES ('652101', '吐鲁番市', '新疆维吾尔自治区,吐鲁番地区,吐鲁番市', '652100', '3058');
INSERT INTO `sk_areas` VALUES ('652122', '鄯善县', '新疆维吾尔自治区,吐鲁番地区,鄯善县', '652100', '3059');
INSERT INTO `sk_areas` VALUES ('652123', '托克逊县', '新疆维吾尔自治区,吐鲁番地区,托克逊县', '652100', '3060');
INSERT INTO `sk_areas` VALUES ('652201', '哈密市', '新疆维吾尔自治区,哈密地区,哈密市', '652200', '3061');
INSERT INTO `sk_areas` VALUES ('652222', '巴里坤哈萨克自治县', '新疆维吾尔自治区,哈密地区,巴里坤哈萨克自治县', '652200', '3062');
INSERT INTO `sk_areas` VALUES ('652223', '伊吾县', '新疆维吾尔自治区,哈密地区,伊吾县', '652200', '3063');
INSERT INTO `sk_areas` VALUES ('652301', '昌吉市', '新疆维吾尔自治区,昌吉回族自治州,昌吉市', '652300', '3064');
INSERT INTO `sk_areas` VALUES ('652302', '阜康市', '新疆维吾尔自治区,昌吉回族自治州,阜康市', '652300', '3065');
INSERT INTO `sk_areas` VALUES ('652303', '米泉市', '新疆维吾尔自治区,昌吉回族自治州,米泉市', '652300', '3066');
INSERT INTO `sk_areas` VALUES ('652323', '呼图壁县', '新疆维吾尔自治区,昌吉回族自治州,呼图壁县', '652300', '3067');
INSERT INTO `sk_areas` VALUES ('652324', '玛纳斯县', '新疆维吾尔自治区,昌吉回族自治州,玛纳斯县', '652300', '3068');
INSERT INTO `sk_areas` VALUES ('652325', '奇台县', '新疆维吾尔自治区,昌吉回族自治州,奇台县', '652300', '3069');
INSERT INTO `sk_areas` VALUES ('652327', '吉木萨尔县', '新疆维吾尔自治区,昌吉回族自治州,吉木萨尔县', '652300', '3070');
INSERT INTO `sk_areas` VALUES ('652328', '木垒哈萨克自治县', '新疆维吾尔自治区,昌吉回族自治州,木垒哈萨克自治县', '652300', '3071');
INSERT INTO `sk_areas` VALUES ('652701', '博乐市', '新疆维吾尔自治区,博尔塔拉蒙古自治州,博乐市', '652700', '3072');
INSERT INTO `sk_areas` VALUES ('652722', '精河县', '新疆维吾尔自治区,博尔塔拉蒙古自治州,精河县', '652700', '3073');
INSERT INTO `sk_areas` VALUES ('652723', '温泉县', '新疆维吾尔自治区,博尔塔拉蒙古自治州,温泉县', '652700', '3074');
INSERT INTO `sk_areas` VALUES ('652801', '库尔勒市', '新疆维吾尔自治区,巴音郭楞蒙古自治州,库尔勒市', '652800', '3075');
INSERT INTO `sk_areas` VALUES ('652822', '轮台县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,轮台县', '652800', '3076');
INSERT INTO `sk_areas` VALUES ('652823', '尉犁县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,尉犁县', '652800', '3077');
INSERT INTO `sk_areas` VALUES ('652824', '若羌县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,若羌县', '652800', '3078');
INSERT INTO `sk_areas` VALUES ('652825', '且末县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,且末县', '652800', '3079');
INSERT INTO `sk_areas` VALUES ('652826', '焉耆回族自治县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,焉耆回族自治县', '652800', '3080');
INSERT INTO `sk_areas` VALUES ('652827', '和静县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,和静县', '652800', '3081');
INSERT INTO `sk_areas` VALUES ('652828', '和硕县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,和硕县', '652800', '3082');
INSERT INTO `sk_areas` VALUES ('652829', '博湖县', '新疆维吾尔自治区,巴音郭楞蒙古自治州,博湖县', '652800', '3083');
INSERT INTO `sk_areas` VALUES ('652901', '阿克苏市', '新疆维吾尔自治区,阿克苏地区,阿克苏市', '652900', '3084');
INSERT INTO `sk_areas` VALUES ('652922', '温宿县', '新疆维吾尔自治区,阿克苏地区,温宿县', '652900', '3085');
INSERT INTO `sk_areas` VALUES ('652923', '库车县', '新疆维吾尔自治区,阿克苏地区,库车县', '652900', '3086');
INSERT INTO `sk_areas` VALUES ('652924', '沙雅县', '新疆维吾尔自治区,阿克苏地区,沙雅县', '652900', '3087');
INSERT INTO `sk_areas` VALUES ('652925', '新和县', '新疆维吾尔自治区,阿克苏地区,新和县', '652900', '3088');
INSERT INTO `sk_areas` VALUES ('652926', '拜城县', '新疆维吾尔自治区,阿克苏地区,拜城县', '652900', '3089');
INSERT INTO `sk_areas` VALUES ('652927', '乌什县', '新疆维吾尔自治区,阿克苏地区,乌什县', '652900', '3090');
INSERT INTO `sk_areas` VALUES ('652928', '阿瓦提县', '新疆维吾尔自治区,阿克苏地区,阿瓦提县', '652900', '3091');
INSERT INTO `sk_areas` VALUES ('652929', '柯坪县', '新疆维吾尔自治区,阿克苏地区,柯坪县', '652900', '3092');
INSERT INTO `sk_areas` VALUES ('653001', '阿图什市', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿图什市', '653000', '3093');
INSERT INTO `sk_areas` VALUES ('653022', '阿克陶县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿克陶县', '653000', '3094');
INSERT INTO `sk_areas` VALUES ('653023', '阿合奇县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,阿合奇县', '653000', '3095');
INSERT INTO `sk_areas` VALUES ('653024', '乌恰县', '新疆维吾尔自治区,克孜勒苏柯尔克孜自治州,乌恰县', '653000', '3096');
INSERT INTO `sk_areas` VALUES ('653101', '喀什市', '新疆维吾尔自治区,喀什地区,喀什市', '653100', '3097');
INSERT INTO `sk_areas` VALUES ('653121', '疏附县', '新疆维吾尔自治区,喀什地区,疏附县', '653100', '3098');
INSERT INTO `sk_areas` VALUES ('653122', '疏勒县', '新疆维吾尔自治区,喀什地区,疏勒县', '653100', '3099');
INSERT INTO `sk_areas` VALUES ('653123', '英吉沙县', '新疆维吾尔自治区,喀什地区,英吉沙县', '653100', '3100');
INSERT INTO `sk_areas` VALUES ('653124', '泽普县', '新疆维吾尔自治区,喀什地区,泽普县', '653100', '3101');
INSERT INTO `sk_areas` VALUES ('653125', '莎车县', '新疆维吾尔自治区,喀什地区,莎车县', '653100', '3102');
INSERT INTO `sk_areas` VALUES ('653126', '叶城县', '新疆维吾尔自治区,喀什地区,叶城县', '653100', '3103');
INSERT INTO `sk_areas` VALUES ('653127', '麦盖提县', '新疆维吾尔自治区,喀什地区,麦盖提县', '653100', '3104');
INSERT INTO `sk_areas` VALUES ('653128', '岳普湖县', '新疆维吾尔自治区,喀什地区,岳普湖县', '653100', '3105');
INSERT INTO `sk_areas` VALUES ('653129', '伽师县', '新疆维吾尔自治区,喀什地区,伽师县', '653100', '3106');
INSERT INTO `sk_areas` VALUES ('653130', '巴楚县', '新疆维吾尔自治区,喀什地区,巴楚县', '653100', '3107');
INSERT INTO `sk_areas` VALUES ('653131', '塔什库尔干塔吉克自治县', '新疆维吾尔自治区,喀什地区,塔什库尔干塔吉克自治县', '653100', '3108');
INSERT INTO `sk_areas` VALUES ('653201', '和田市', '新疆维吾尔自治区,和田地区,和田市', '653200', '3109');
INSERT INTO `sk_areas` VALUES ('653221', '和田县', '新疆维吾尔自治区,和田地区,和田县', '653200', '3110');
INSERT INTO `sk_areas` VALUES ('653222', '墨玉县', '新疆维吾尔自治区,和田地区,墨玉县', '653200', '3111');
INSERT INTO `sk_areas` VALUES ('653223', '皮山县', '新疆维吾尔自治区,和田地区,皮山县', '653200', '3112');
INSERT INTO `sk_areas` VALUES ('653224', '洛浦县', '新疆维吾尔自治区,和田地区,洛浦县', '653200', '3113');
INSERT INTO `sk_areas` VALUES ('653225', '策勒县', '新疆维吾尔自治区,和田地区,策勒县', '653200', '3114');
INSERT INTO `sk_areas` VALUES ('653226', '于田县', '新疆维吾尔自治区,和田地区,于田县', '653200', '3115');
INSERT INTO `sk_areas` VALUES ('653227', '民丰县', '新疆维吾尔自治区,和田地区,民丰县', '653200', '3116');
INSERT INTO `sk_areas` VALUES ('654002', '伊宁市', '新疆维吾尔自治区,伊犁哈萨克自治州,伊宁市', '654000', '3117');
INSERT INTO `sk_areas` VALUES ('654003', '奎屯市', '新疆维吾尔自治区,伊犁哈萨克自治州,奎屯市', '654000', '3118');
INSERT INTO `sk_areas` VALUES ('654021', '伊宁县', '新疆维吾尔自治区,伊犁哈萨克自治州,伊宁县', '654000', '3119');
INSERT INTO `sk_areas` VALUES ('654022', '察布查尔锡伯自治县', '新疆维吾尔自治区,伊犁哈萨克自治州,察布查尔锡伯自治县', '654000', '3120');
INSERT INTO `sk_areas` VALUES ('654023', '霍城县', '新疆维吾尔自治区,伊犁哈萨克自治州,霍城县', '654000', '3121');
INSERT INTO `sk_areas` VALUES ('654024', '巩留县', '新疆维吾尔自治区,伊犁哈萨克自治州,巩留县', '654000', '3122');
INSERT INTO `sk_areas` VALUES ('654025', '新源县', '新疆维吾尔自治区,伊犁哈萨克自治州,新源县', '654000', '3123');
INSERT INTO `sk_areas` VALUES ('654026', '昭苏县', '新疆维吾尔自治区,伊犁哈萨克自治州,昭苏县', '654000', '3124');
INSERT INTO `sk_areas` VALUES ('654027', '特克斯县', '新疆维吾尔自治区,伊犁哈萨克自治州,特克斯县', '654000', '3125');
INSERT INTO `sk_areas` VALUES ('654028', '尼勒克县', '新疆维吾尔自治区,伊犁哈萨克自治州,尼勒克县', '654000', '3126');
INSERT INTO `sk_areas` VALUES ('654201', '塔城市', '新疆维吾尔自治区,塔城地区,塔城市', '654200', '3127');
INSERT INTO `sk_areas` VALUES ('654202', '乌苏市', '新疆维吾尔自治区,塔城地区,乌苏市', '654200', '3128');
INSERT INTO `sk_areas` VALUES ('654221', '额敏县', '新疆维吾尔自治区,塔城地区,额敏县', '654200', '3129');
INSERT INTO `sk_areas` VALUES ('654223', '沙湾县', '新疆维吾尔自治区,塔城地区,沙湾县', '654200', '3130');
INSERT INTO `sk_areas` VALUES ('654224', '托里县', '新疆维吾尔自治区,塔城地区,托里县', '654200', '3131');
INSERT INTO `sk_areas` VALUES ('654225', '裕民县', '新疆维吾尔自治区,塔城地区,裕民县', '654200', '3132');
INSERT INTO `sk_areas` VALUES ('654226', '和布克赛尔蒙古自治县', '新疆维吾尔自治区,塔城地区,和布克赛尔蒙古自治县', '654200', '3133');
INSERT INTO `sk_areas` VALUES ('654301', '阿勒泰市', '新疆维吾尔自治区,阿勒泰地区,阿勒泰市', '654300', '3134');
INSERT INTO `sk_areas` VALUES ('654321', '布尔津县', '新疆维吾尔自治区,阿勒泰地区,布尔津县', '654300', '3135');
INSERT INTO `sk_areas` VALUES ('654322', '富蕴县', '新疆维吾尔自治区,阿勒泰地区,富蕴县', '654300', '3136');
INSERT INTO `sk_areas` VALUES ('654323', '福海县', '新疆维吾尔自治区,阿勒泰地区,福海县', '654300', '3137');
INSERT INTO `sk_areas` VALUES ('654324', '哈巴河县', '新疆维吾尔自治区,阿勒泰地区,哈巴河县', '654300', '3138');
INSERT INTO `sk_areas` VALUES ('654325', '青河县', '新疆维吾尔自治区,阿勒泰地区,青河县', '654300', '3139');
INSERT INTO `sk_areas` VALUES ('654326', '吉木乃县', '新疆维吾尔自治区,阿勒泰地区,吉木乃县', '654300', '3140');
INSERT INTO `sk_areas` VALUES ('659001', '石河子市', '新疆维吾尔自治区,省直辖行政单位,石河子市', '659000', '3141');
INSERT INTO `sk_areas` VALUES ('659002', '阿拉尔市', '新疆维吾尔自治区,省直辖行政单位,阿拉尔市', '659000', '3142');
INSERT INTO `sk_areas` VALUES ('659003', '图木舒克市', '新疆维吾尔自治区,省直辖行政单位,图木舒克市', '659000', '3143');
INSERT INTO `sk_areas` VALUES ('659004', '五家渠市', '新疆维吾尔自治区,省直辖行政单位,五家渠市', '659000', '3144');
INSERT INTO `sk_areas` VALUES ('810001', '香港', '香港特别行政区,香港', '810000', '1');
INSERT INTO `sk_areas` VALUES ('810002', '中西区', '香港特别行政区,香港,中西区', '810001', '1');
INSERT INTO `sk_areas` VALUES ('810003', '九龙城区', '香港特别行政区,香港,九龙城区', '810001', '2');
INSERT INTO `sk_areas` VALUES ('810004', '南区', '香港特别行政区,香港,南区', '810001', '3');
INSERT INTO `sk_areas` VALUES ('810005', '黄大仙区', '香港特别行政区,香港,黄大仙区', '810001', '4');
INSERT INTO `sk_areas` VALUES ('810006', '油尖旺区', '香港特别行政区,香港,油尖旺区', '810001', '5');
INSERT INTO `sk_areas` VALUES ('810007', '葵青区', '香港特别行政区,香港,葵青区', '810001', '6');
INSERT INTO `sk_areas` VALUES ('810008', '西贡区', '香港特别行政区,香港,西贡区', '810001', '7');
INSERT INTO `sk_areas` VALUES ('810009', '屯门区', '香港特别行政区,香港,屯门区', '810001', '8');
INSERT INTO `sk_areas` VALUES ('810010', '荃湾区', '香港特别行政区,香港,荃湾区', '810001', '9');
INSERT INTO `sk_areas` VALUES ('810011', '东区', '香港特别行政区,香港,东区', '810001', '10');
INSERT INTO `sk_areas` VALUES ('810012', '观塘区', '香港特别行政区,香港,观塘区', '810001', '11');
INSERT INTO `sk_areas` VALUES ('810013', '深水步区', '香港特别行政区,香港,深水步区', '810001', '12');
INSERT INTO `sk_areas` VALUES ('810014', '湾仔区', '香港特别行政区,香港,湾仔区', '810001', '13');
INSERT INTO `sk_areas` VALUES ('810015', '离岛区', '香港特别行政区,香港,离岛区', '810001', '14');
INSERT INTO `sk_areas` VALUES ('810016', '北区', '香港特别行政区,香港,北区', '810001', '15');
INSERT INTO `sk_areas` VALUES ('810017', '沙田区', '香港特别行政区,香港,沙田区', '810001', '16');
INSERT INTO `sk_areas` VALUES ('810018', '大埔区', '香港特别行政区,香港,大埔区', '810001', '17');
INSERT INTO `sk_areas` VALUES ('810019', '元朗区', '香港特别行政区,香港,元朗区', '810001', '18');
INSERT INTO `sk_areas` VALUES ('820001', '澳门', '澳门特别行政区,澳门', '820000', '0');
INSERT INTO `sk_areas` VALUES ('820002', '澳门特别行政区', '澳门特别行政区,澳门,澳门', '820001', '0');
INSERT INTO `sk_areas` VALUES ('710001', '台北市', '台湾省,台北市', '710000', '1');
INSERT INTO `sk_areas` VALUES ('710002', '台北县', '台湾省,台北市,台北县', '710001', '1');
INSERT INTO `sk_areas` VALUES ('710003', '基隆市', '台湾省,基隆市', '710000', '1');
INSERT INTO `sk_areas` VALUES ('710004', '花莲县', '台湾省,基隆市,花莲县', '710003', '1');

-- ----------------------------
-- Table structure for sk_configs
-- ----------------------------
DROP TABLE IF EXISTS `sk_configs`;
CREATE TABLE `sk_configs` (
  `ckey` varchar(100) NOT NULL default '' COMMENT '配置项',
  `cvalue` text NOT NULL COMMENT '对应的值',
  PRIMARY KEY  (`ckey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_configs
-- ----------------------------
INSERT INTO `sk_configs` VALUES ('lk_adminipallow', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_adminmail', '');
INSERT INTO `sk_configs` VALUES ('lk_adminsafecode', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_allowthumb', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_allowupload', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_anonnews', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_aperpage', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_attachdir', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_attachnum', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_attoutlink', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_attoutput', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_avathight', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_avatsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_avatupload', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_avatwidth', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_banlinks', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_banwords', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_cachetime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_checkanswer', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_checkquestion', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_chtmldir', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ckdomain', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ckpath', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ckpre', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_commentlen', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_companyhottel', '021-60446662');
INSERT INTO `sk_configs` VALUES ('lk_contentlen', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_cperpage', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_cpovertime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_creditdb', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_cubbtype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_customcredit', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_dateformat', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_dformat', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_editor', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_entreprise', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_exectime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_extenable', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_fautoplay', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_fav', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_footer', '<p>asd爱上大声大声道</p>');
INSERT INTO `sk_configs` VALUES ('lk_mobile', '021-60446662');
INSERT INTO `sk_configs` VALUES ('lk_galerie', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gdcheck', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gdcodenum', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gdcodetype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gdheight', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gdwidth', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_getpw', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_gzip', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_hotkey', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_icp', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ifbury', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ifcomment', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ifdigg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ifopen', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ifpost', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_indexcontent', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_indextitle', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ipallow', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ipdeny', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_jstime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_jstransfer', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_jsurl', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_lang', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_loadavg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_mailtype', '1');
INSERT INTO `sk_configs` VALUES ('lk_mautoplay', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_maxresult', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_maxsearchctrl', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_mplayersize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_msg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_online', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_opentran', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_outputmaxsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_previewsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_refreshtime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_regqa', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_reposttime', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_rewrite', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_rewriteext', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_robots', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_selfad', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_selfavat', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_seodescription', '测试版张创元祐');
INSERT INTO `sk_configs` VALUES ('lk_search', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_seokeywords', '测试版张创元祐');
INSERT INTO `sk_configs` VALUES ('lk_seomore', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_seotitle', '测试版张创元祐');
INSERT INTO `sk_configs` VALUES ('lk_showsign', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_shtmldir', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_signubbtype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_sitedir', '');
INSERT INTO `sk_configs` VALUES ('lk_sitehash', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_sitename', '测试版张创元祐');
INSERT INTO `sk_configs` VALUES ('lk_siteurl', 'http://test.cismarty.dev/');
INSERT INTO `sk_configs` VALUES ('lk_smtpauth', '1');
INSERT INTO `sk_configs` VALUES ('lk_smtphost', 'smtp.163.com');
INSERT INTO `sk_configs` VALUES ('lk_smtpport', '25');
INSERT INTO `sk_configs` VALUES ('lk_smtppw', 'piRAteLEI0504!@#');
INSERT INTO `sk_configs` VALUES ('lk_smtpuser', 'helei_0504@163.com');
INSERT INTO `sk_configs` VALUES ('lk_statistic', '<!-- -->');
INSERT INTO `sk_configs` VALUES ('lk_style', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tagcolor', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tcheck', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tday', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tftopicimg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_thumbsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_timeformat', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_timezone', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_titlelen', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_titlelink', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_titleubb', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_topicimgsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_torder', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tperpage', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tranarticle', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_trancomment', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_trancontribute', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tranmember', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tranpic', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_trantags', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tubbtype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_ucenable', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_uploadfiletype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_uploadmaxsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_uploadtopicimg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_urlsaveimg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_videotheque', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_visitcache', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterfont', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterfontcolor', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterfontsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterimg', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterminsize', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterposition', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_waterquality', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_watertext', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_watertransition', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_watertype', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_whyclosed', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_agreement', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_allowsameip', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_bannames', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_closereason', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_credit', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_emailactive', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_emailcontent', 'asd');
INSERT INTO `sk_configs` VALUES ('user_agreement', 'asd');
INSERT INTO `sk_configs` VALUES ('privacy_agreement', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_user_agreement', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_qq', '896360979');
INSERT INTO `sk_configs` VALUES ('reg_privacy_agreemen', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_invite', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_maxname', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_minname', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_sendemail', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_status', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_fax', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_address', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_companyname', '');
INSERT INTO `sk_configs` VALUES ('lk_tel', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_code', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_contact', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_seoenable', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_rewriteenable', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_wxewm', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_tmall', '');
INSERT INTO `sk_configs` VALUES ('lk_weibo', '');
INSERT INTO `sk_configs` VALUES ('lk_video_link', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_broadcast_link', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_hottel_time', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_online_service', 'asd');
INSERT INTO `sk_configs` VALUES ('reg_privacy_agreement', 'asd');
INSERT INTO `sk_configs` VALUES ('lk_reg_agreement', '<p>测试版张创元祐</p>');
INSERT INTO `sk_configs` VALUES ('lk_qrcode', '/static/attachments/ewm.jpg');
INSERT INTO `sk_configs` VALUES ('lk_reg_privacy', '<p>测试版张创元祐</p>');

-- ----------------------------
-- Table structure for sk_danzi
-- ----------------------------
DROP TABLE IF EXISTS `sk_danzi`;
CREATE TABLE `sk_danzi` (
  `id` int(11) NOT NULL auto_increment,
  `member_code` varchar(100) collate utf8_unicode_ci default NULL COMMENT '分类id',
  `jigou_code` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '系列号ID',
  `title` varchar(100) collate utf8_unicode_ci NOT NULL,
  `yu_date` int(11) default NULL COMMENT '姓名',
  `yu_price` varchar(200) collate utf8_unicode_ci NOT NULL,
  `re_date` int(11) NOT NULL,
  `li_date` int(11) default NULL COMMENT '类型ID',
  `price` varchar(200) collate utf8_unicode_ci NOT NULL,
  `fee` varchar(200) collate utf8_unicode_ci default NULL COMMENT '留言',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `isopen` int(64) default NULL COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `chanpin_id` int(8) default '0' COMMENT '产品id',
  `isshow` int(11) NOT NULL COMMENT '预约状态0表示刚下的预约，1表示完成的单子',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='在线预约';

-- ----------------------------
-- Records of sk_danzi
-- ----------------------------
INSERT INTO `sk_danzi` VALUES ('1', 'asdasdasdasd', 'asdasdasd', 'asdasdasd', '1398513480', '123123', '1398513480', '1398513480', '123123', '12313', 'asadasdasdasdadasd', '1', '1398513480', '0', '0');
INSERT INTO `sk_danzi` VALUES ('2', 'HGUv68xM646Tk994636', 'HGUv68xM646Tk994', '产品测试-成交的订单', '1398738000', '300000', '1398738000', '1398738060', '500000', '15000000000', '产品测试-成交的订单', '1', '1398737640', '0', '1');

-- ----------------------------
-- Table structure for sk_gaikuang
-- ----------------------------
DROP TABLE IF EXISTS `sk_gaikuang`;
CREATE TABLE `sk_gaikuang` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_gaikuang
-- ----------------------------

-- ----------------------------
-- Table structure for sk_gaikuangcate
-- ----------------------------
DROP TABLE IF EXISTS `sk_gaikuangcate`;
CREATE TABLE `sk_gaikuangcate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_gaikuangcate
-- ----------------------------
INSERT INTO `sk_gaikuangcate` VALUES ('8', '0', '信托知识', '', '', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_gaikuangcate` VALUES ('9', '0', '信托法规', '', '', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_gaikuangcate` VALUES ('10', '0', '常见问题', '', '', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_groups
-- ----------------------------
DROP TABLE IF EXISTS `sk_groups`;
CREATE TABLE `sk_groups` (
  `groupid` smallint(6) unsigned NOT NULL auto_increment,
  `adminid` smallint(6) unsigned NOT NULL default '0',
  `gtype` enum('system','special','member') collate utf8_unicode_ci NOT NULL default 'member',
  `adminright` varchar(255) collate utf8_unicode_ci default NULL,
  `grouptitle` varchar(30) collate utf8_unicode_ci NOT NULL default '',
  `confing` text collate utf8_unicode_ci NOT NULL,
  `ifdefault` tinyint(1) default '0',
  PRIMARY KEY  (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员组';

-- ----------------------------
-- Records of sk_groups
-- ----------------------------
INSERT INTO `sk_groups` VALUES ('1', '1', 'system', null, '后台管理员', '', '1');
INSERT INTO `sk_groups` VALUES ('2', '1', 'system', null, '前台管理员', '', '0');

-- ----------------------------
-- Table structure for sk_helpinfo
-- ----------------------------
DROP TABLE IF EXISTS `sk_helpinfo`;
CREATE TABLE `sk_helpinfo` (
  `id` int(12) NOT NULL auto_increment,
  `cid` int(12) default NULL COMMENT '分类id',
  `title` varchar(255) collate utf8_unicode_ci default NULL COMMENT '标题',
  `content` text collate utf8_unicode_ci COMMENT '内容',
  `sort` int(12) default NULL COMMENT '排序',
  `tags` varchar(255) collate utf8_unicode_ci default NULL COMMENT '关健字',
  `isopen` tinyint(1) default '0' COMMENT '是否启用',
  `createtime` int(10) default NULL COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='帮助信息表';

-- ----------------------------
-- Records of sk_helpinfo
-- ----------------------------

-- ----------------------------
-- Table structure for sk_help_cate
-- ----------------------------
DROP TABLE IF EXISTS `sk_help_cate`;
CREATE TABLE `sk_help_cate` (
  `id` int(12) NOT NULL auto_increment,
  `sub` int(11) default NULL COMMENT '父类id',
  `name` varchar(100) collate utf8_unicode_ci default NULL COMMENT '名称',
  `descr` text collate utf8_unicode_ci COMMENT '描述\\r\\n',
  `sort` int(12) default '0' COMMENT '排序\r\n            ',
  `isopen` tinyint(1) default '0' COMMENT '是否开启',
  `issys` tinyint(1) default '0' COMMENT '系统默认(用户不能删除)',
  `url` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='帮助中心分类';

-- ----------------------------
-- Records of sk_help_cate
-- ----------------------------
INSERT INTO `sk_help_cate` VALUES ('1', '0', '首页', '', '1', '1', '0', 'http://woying.365use.com/');
INSERT INTO `sk_help_cate` VALUES ('3', '0', '产品精选', '', '2', '1', '0', 'http://woying.365use.com/chanpin.html');
INSERT INTO `sk_help_cate` VALUES ('4', '0', '资产配置', '', '3', '1', '0', 'http://woying.365use.com/zichan.html');
INSERT INTO `sk_help_cate` VALUES ('5', '0', '理财资讯', '', '4', '1', '0', 'http://woying.365use.com/xintuo.html');
INSERT INTO `sk_help_cate` VALUES ('6', '0', '风险控制', '', '5', '1', '0', 'http://woying.365use.com/fengxian.html');
INSERT INTO `sk_help_cate` VALUES ('7', '0', '优惠活动', '', '6', '1', '0', 'http://woying.365use.com/youhui.html');
INSERT INTO `sk_help_cate` VALUES ('8', '0', '关于我们', '', '7', '1', '0', 'http://woying.365use.com/about.html');

-- ----------------------------
-- Table structure for sk_honor
-- ----------------------------
DROP TABLE IF EXISTS `sk_honor`;
CREATE TABLE `sk_honor` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '荣誉名称',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '图片',
  `createtime` int(10) default NULL COMMENT '发布日期',
  `sort` mediumint(8) default NULL,
  `isrec` tinyint(1) default '0' COMMENT '推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业荣誉表';

-- ----------------------------
-- Records of sk_honor
-- ----------------------------
INSERT INTO `sk_honor` VALUES ('269', '荣誉一', '/attachments/honor/20140123172929_826.png', '1390469369', '1', '0', '1');
INSERT INTO `sk_honor` VALUES ('270', '荣誉二', '/attachments/honor/20140123172945_206.png', '1390469385', '2', '0', '1');

-- ----------------------------
-- Table structure for sk_huodong_baoming
-- ----------------------------
DROP TABLE IF EXISTS `sk_huodong_baoming`;
CREATE TABLE `sk_huodong_baoming` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) collate utf8_unicode_ci NOT NULL,
  `username` varchar(100) collate utf8_unicode_ci NOT NULL,
  `minzu` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '民族',
  `zhuanye` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '专业',
  `techang` tinytext collate utf8_unicode_ci NOT NULL COMMENT '特长',
  `shijian` tinyint(4) NOT NULL COMMENT '实践经历',
  `rongyu` tinyint(4) NOT NULL COMMENT '荣誉',
  `sex` int(11) NOT NULL COMMENT '1表示男2表示女',
  `icon` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xuehao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xueyuan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `banji` varchar(100) collate utf8_unicode_ci NOT NULL,
  `zhengzhi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `waiyu` varchar(100) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fuzhuang` varchar(100) collate utf8_unicode_ci NOT NULL,
  `height` varchar(100) collate utf8_unicode_ci NOT NULL,
  `shenfenhao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `weight` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` varchar(200) collate utf8_unicode_ci NOT NULL,
  `jingli` text collate utf8_unicode_ci NOT NULL,
  `remark` text collate utf8_unicode_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务报名';

-- ----------------------------
-- Records of sk_huodong_baoming
-- ----------------------------
INSERT INTO `sk_huodong_baoming` VALUES ('1', 'dasdasdsd', 'sdasd', 'dasdasdsdasd', 'asd', 'asdasdasd', '0', '0', '0', '', 'asdasdas', 'asdas', 'asd', 'das', '', 'asda@126.com', 'asdasd', '', '', '', '', 'asdasd', '', 'asdasdasdasd', '0');
INSERT INTO `sk_huodong_baoming` VALUES ('2', '阿斯顿撒旦', '阿斯顿撒旦', '阿斯顿撒旦', '啊实打实大师', '打算', '0', '0', '0', '', '1231232323123', '啊实打实大', '阿斯顿撒旦', '啊实打实', '', 'qeweqwe@126.com', '150088123', '', '', '', '', '啊实打实大', '', '啊实打实大', '0');

-- ----------------------------
-- Table structure for sk_huodong_news
-- ----------------------------
DROP TABLE IF EXISTS `sk_huodong_news`;
CREATE TABLE `sk_huodong_news` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `xueyuan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社会实践新闻';

-- ----------------------------
-- Records of sk_huodong_news
-- ----------------------------
INSERT INTO `sk_huodong_news` VALUES ('1', '0', '第一个活动', '/attachments/huodong_news/20140414114312_269.jpg', '第一个活动', '<div>\r\n	今天配了CGI服务器，打开CGI报错：\r\n</div>\r\n<div>\r\n	[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi<br />\r\n[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi<br />\r\n[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	在服务器上用perl支持文件是正确的，权限也有了，后面在网上查到是文件头有问题。CGI文件第一句一定要先定义内型，然后跟着是一个新空行，在下来就是主程序了，由于我在定义内型后没有输出文件头及换行，直接就是主程序，所以一才导致上面出现的错误。\r\n</div>\r\nCGI不执行，APACHE错误日志：Premature end of script headers，或 malformed \r\nheader from script. Bad headerXXX，这种情况，还是检查一下CGI输出的第一句话是啥。应该是形如：<br />\r\nContent-type:text/html\\n\\n<br />\r\n<span style=\"color:#FF0102;font-size:x-small;\"><span style=\"font-weight:bold;\"> 注意：声明好Content-type后要输出两个空行。</span></span>', '管理员', 'http://', '1397446920', '1397457180', '1398926040', '上海大学软件学院', '20', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_huodong_news` VALUES ('2', '0', '第二个活动信息', '/attachments/huodong_news/20140414140847_388.jpg', '在服务器上用perl支持文件是正确的，权限也有了，后面在网上查到是文件头有问题。CGI文件第一句一定要先定义内型，然后跟着是一个新空', '<div>\r\n	今天配了CGI服务器，打开CGI报错：\r\n</div>\r\n<div>\r\n	[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi<br />\r\n[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi<br />\r\n[Wed Jun 02 13:57:21 2010] [error] [client 192.168.0.1] malformed header from script. Bad header=Hello,World!: index.cgi\r\n</div>\r\n<div>\r\n</div>\r\n<div>\r\n	在服务器上用perl支持文件是正确的，权限也有了，后面在网上查到是文件头有问题。CGI文件第一句一定要先定义内型，然后跟着是一个新空行，在下来就是主程序了，由于我在定义内型后没有输出文件头及换行，直接就是主程序，所以一才导致上面出现的错误。\r\n</div>\r\nCGI不执行，APACHE错误日志：Premature end of script headers，或 malformed \r\nheader from script. Bad headerXXX，这种情况，还是检查一下CGI输出的第一句话是啥。应该是形如：<br />\r\nContent-type:text/html\\n\\n<br />\r\n<span style=\"color:#FF0102;font-size:x-small;\"><span style=\"font-weight:bold;\"> 注意：声明好Content-type后要输出两个空行。</span></span>', '管理员', 'http://', '1397455680', '1397457180', '1399617180', '上海大学经济学院', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_huodong_news` VALUES ('3', '0', '上海大学大学财经学院的学员们，你们哈', '/attachments/huodong_news/20140414143308_740.jpg', '上海大学大学财经学院的学员们，你们哈', '上海大学大学财经学院的学员们，你们哈', '管理员', 'http://', '1397457120', '1397457120', '1397629920', '上海大学财经学院', '94', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_image
-- ----------------------------
DROP TABLE IF EXISTS `sk_image`;
CREATE TABLE `sk_image` (
  `id` mediumint(8) NOT NULL auto_increment COMMENT '图片表',
  `sub` mediumint(8) default NULL COMMENT '父的id ',
  `type` varchar(30) character set utf8 collate utf8_unicode_ci default NULL COMMENT '所属栏目下',
  `filepic` varchar(60) character set utf8 collate utf8_unicode_ci default '' COMMENT '图片地址',
  `fileurl` varchar(50) character set utf8 collate utf8_unicode_ci default '' COMMENT '图片链接',
  `filesort` int(3) default NULL COMMENT '图片排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sk_image
-- ----------------------------

-- ----------------------------
-- Table structure for sk_jigoucate
-- ----------------------------
DROP TABLE IF EXISTS `sk_jigoucate`;
CREATE TABLE `sk_jigoucate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_jigoucate
-- ----------------------------
INSERT INTO `sk_jigoucate` VALUES ('1', '0', '2012101001212', '2012101001212', '2012101001212', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_jigoucate` VALUES ('2', '0', 'aaa33344443', 'aaa33344443', 'aaa33344443', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_mailtpl
-- ----------------------------
DROP TABLE IF EXISTS `sk_mailtpl`;
CREATE TABLE `sk_mailtpl` (
  `id` int(11) NOT NULL auto_increment,
  `reason` varchar(255) collate utf8_unicode_ci default NULL COMMENT '发件理由',
  `identify` varchar(255) collate utf8_unicode_ci default NULL COMMENT '调用标示',
  `subject` varchar(255) collate utf8_unicode_ci default NULL COMMENT '邮件标题',
  `body` text collate utf8_unicode_ci COMMENT '邮件内容',
  `isopen` tinyint(1) default '0' COMMENT '是否开启',
  `sort` int(11) default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='邮件模板数据表';

-- ----------------------------
-- Records of sk_mailtpl
-- ----------------------------
INSERT INTO `sk_mailtpl` VALUES ('1', '用户注册', 'register', '欢迎加入男士生活馆！', '<div style=\"font-size:12px;\">\r\n	<p>\r\n		亲爱的{username}：\r\n	</p>\r\n	<p>\r\n		欢迎您加入男士生活馆！进入{siteurl}，享受生活，快乐消费，大家一起来分享吃喝玩乐吧！<br />\r\n您注册的用户名：{username}<br />\r\n注册密码：{userpass}<br />\r\n<br />\r\n【这是一封自动产生的email，请勿回复。】<br />\r\n--------------------------------------------------------------------------------------------------------------------------------<br />\r\n<strong><br />\r\n男士生活馆的服务内容是什么？<br />\r\n</strong>1、集中了全国范围内的提供优质团购商品的商家或店铺！<br />\r\n2、男士生活馆为顾客提供最好的服务，为商户创造最大的价值！<br />\r\n3、男士生活馆不仅为您提供方便，还会向您传达一种实用性最强的购物理念，并竭力使其健康化！<br />\r\n4、男士生活馆坚信，网购能为您提供宽广的选择范围，保证高质量服务！\r\n	</p>\r\n</div>', '1', '1');
INSERT INTO `sk_mailtpl` VALUES ('2', '找回密码', 'lostpass', '找回您的账号密码！', '<div style=\"FONT-SIZE: 12px\"><p>亲爱的{username}：</p><p></p><p>　　您使用了网站的找回密码功能，我们已将您的密码重置，请尽快按照下面的登录信息登录并修改您的密码：<br /><br />　　登录账户：{username}<br />　　登录密码：{userpass}<br /></p><p></p>【这是一封自动产生的email，请勿回复。】<br /></div>', '1', '3');

-- ----------------------------
-- Table structure for sk_member
-- ----------------------------
DROP TABLE IF EXISTS `sk_member`;
CREATE TABLE `sk_member` (
  `id` int(11) NOT NULL auto_increment,
  `member_id` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '会员号',
  `parentid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL default '0' COMMENT '所属用户组',
  `username` varchar(255) collate utf8_unicode_ci default NULL COMMENT '用户名',
  `password` varchar(50) collate utf8_unicode_ci default NULL COMMENT '登陆密码',
  `code` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '原始密码',
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `phone` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '手机号',
  `status` tinyint(1) NOT NULL default '0' COMMENT '是否审核;0：待审核、1：审核通过、-1：审核失败、-2：禁用',
  `brandcomment` int(11) NOT NULL default '0' COMMENT '品牌点评数',
  `logintime` int(11) default NULL COMMENT '本次登陆时间',
  `prevtime` int(11) NOT NULL COMMENT '上次登录的时间',
  `regtime` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_groupid` USING BTREE (`groupid`),
  KEY `idx_status` USING BTREE (`status`),
  KEY `idx_bc` USING BTREE (`brandcomment`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员表';

-- ----------------------------
-- Records of sk_member
-- ----------------------------
INSERT INTO `sk_member` VALUES ('36', '80102', '27', '5', 'test1-1-1-2', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', null, '0', null);
INSERT INTO `sk_member` VALUES ('37', '801010102', '29', '3', 'customer1', '4297f44b13955235245b2497399d7a93', '123123', '', '15000711265', '1', '0', '1401239188', '0', '1400477729');
INSERT INTO `sk_member` VALUES ('39', '801010103', '29', '3', 'customer2', '4297f44b13955235245b2497399d7a93', '123123', null, '15000711265', '1', '0', null, '0', '1400478184');
INSERT INTO `sk_member` VALUES ('40', '80103', '27', '5', 'test1-1-1-3', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', null, '0', null);
INSERT INTO `sk_member` VALUES ('30', '801010101', '29', '3', 'test1-1-1-1-1-1', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', '1400752314', '0', null);
INSERT INTO `sk_member` VALUES ('29', '8010101', '28', '4', 'test1-1-1-1-1', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', '1401241719', '0', null);
INSERT INTO `sk_member` VALUES ('28', '80101', '27', '5', 'test1-1-1-1', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', null, '0', null);
INSERT INTO `sk_member` VALUES ('26', '8', '0', '7', 'test1-1', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', null, '0', null);
INSERT INTO `sk_member` VALUES ('27', '801', '26', '6', 'test1-1-1', '4297f44b13955235245b2497399d7a93', '123123', '', '', '1', '0', null, '0', null);

-- ----------------------------
-- Table structure for sk_member_auth
-- ----------------------------
DROP TABLE IF EXISTS `sk_member_auth`;
CREATE TABLE `sk_member_auth` (
  `uid` int(11) NOT NULL,
  `ismail` tinyint(1) NOT NULL default '0' COMMENT '是否邮箱认证；0:否；1:是',
  `ismobile` tinyint(1) NOT NULL default '0' COMMENT '是否手机认证 0:否; 1:是',
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `idx_uid` USING BTREE (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员认证表';

-- ----------------------------
-- Records of sk_member_auth
-- ----------------------------
INSERT INTO `sk_member_auth` VALUES ('40', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('37', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('36', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('30', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('29', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('28', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('27', '0', '0');
INSERT INTO `sk_member_auth` VALUES ('26', '0', '0');

-- ----------------------------
-- Table structure for sk_member_ext
-- ----------------------------
DROP TABLE IF EXISTS `sk_member_ext`;
CREATE TABLE `sk_member_ext` (
  `uid` int(11) NOT NULL default '0' COMMENT '用户id',
  `icon` varchar(255) collate utf8_unicode_ci default NULL COMMENT '头像',
  `nickname` varchar(255) collate utf8_unicode_ci default NULL COMMENT '昵称',
  `realname` varchar(255) collate utf8_unicode_ci default NULL COMMENT '真实姓名',
  `gender` tinyint(1) NOT NULL default '1' COMMENT '性别:1男、2女',
  `tel` varchar(255) collate utf8_unicode_ci default NULL COMMENT '联系电话',
  `mobile` varchar(255) collate utf8_unicode_ci default NULL COMMENT '手机号码',
  `province` int(11) NOT NULL default '0' COMMENT '所属省份',
  `city` int(11) NOT NULL default '0' COMMENT '所属城市',
  `county` int(11) NOT NULL default '0' COMMENT '所属区县',
  `address` varchar(255) collate utf8_unicode_ci default NULL COMMENT '联系地址',
  `birthday` int(11) NOT NULL default '0' COMMENT '生日',
  `Idcode` varchar(50) collate utf8_unicode_ci default NULL COMMENT '身份证号',
  `zipcode` varchar(10) collate utf8_unicode_ci default NULL COMMENT '邮政编码',
  `website` varchar(255) collate utf8_unicode_ci default NULL COMMENT '网址',
  `qq` varchar(255) collate utf8_unicode_ci default NULL COMMENT 'qq号码',
  `regtime` int(11) NOT NULL default '0' COMMENT '注册时间',
  `lastlogintime` int(11) NOT NULL default '0' COMMENT '上次登录时间',
  `logintime` int(11) NOT NULL default '0' COMMENT '登录时间',
  `regip` varchar(50) collate utf8_unicode_ci default NULL COMMENT '注册IP',
  `loginip` varchar(50) collate utf8_unicode_ci default NULL COMMENT '登录',
  `lastloginip` varchar(50) collate utf8_unicode_ci default NULL COMMENT '上次登陆IP',
  `modifytime` int(11) NOT NULL default '0' COMMENT '修改时间',
  `reason` tinytext collate utf8_unicode_ci COMMENT '审核原因',
  `starttime` int(11) default '0' COMMENT '公司注册时间',
  `personnelnum` varchar(50) collate utf8_unicode_ci default NULL COMMENT '家政人员数量',
  `advantage` text collate utf8_unicode_ci COMMENT '简介',
  `age` varchar(10) collate utf8_unicode_ci default NULL,
  `weixin` varchar(100) collate utf8_unicode_ci default NULL,
  `integration` int(11) default NULL,
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `idx_uid` USING BTREE (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员扩展表';

-- ----------------------------
-- Records of sk_member_ext
-- ----------------------------
INSERT INTO `sk_member_ext` VALUES ('40', null, null, ' test1-1-1-3', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400666803', '0', '0', '127.0.0.1', null, null, '1400666841', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('39', null, null, null, '1', null, '15000711265', '0', '0', '0', null, '0', null, null, null, null, '0', '0', '0', null, null, null, '0', null, '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('37', null, null, 'customer1', '1', null, '15000711266', '0', '0', '0', null, '0', null, null, null, null, '0', '0', '0', null, null, null, '1400478675', '', '0', null, null, null, null, '1600');
INSERT INTO `sk_member_ext` VALUES ('36', null, null, 'test1-1-1-2', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400477556', '0', '0', '127.0.0.1', null, null, '1400477556', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('30', null, null, 'test1-1-1-1-1-1', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400476797', '0', '0', '127.0.0.1', null, null, '1400476797', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('29', null, null, 'test1-1-1-1-1', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400476780', '0', '0', '127.0.0.1', null, null, '1400476780', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('28', null, null, 'test1-1-1-1', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400476755', '0', '0', '127.0.0.1', null, null, '1400476755', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('27', null, null, 'test1-1-1', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400476727', '0', '0', '127.0.0.1', null, null, '1400476727', '', '0', null, null, null, null, null);
INSERT INTO `sk_member_ext` VALUES ('26', null, null, 'test1-1', '1', null, '', '0', '0', '0', null, '0', null, null, null, null, '1400476346', '0', '0', '127.0.0.1', null, null, '1400476346', '', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for sk_member_friends
-- ----------------------------
DROP TABLE IF EXISTS `sk_member_friends`;
CREATE TABLE `sk_member_friends` (
  `id` int(11) NOT NULL auto_increment,
  `myid` int(11) NOT NULL default '0' COMMENT '我的ID',
  `friendid` int(11) NOT NULL default '0' COMMENT '好友的ID',
  `createtime` int(11) NOT NULL default '0' COMMENT '创建时间',
  PRIMARY KEY  (`id`),
  KEY `idx_myid` USING BTREE (`myid`),
  KEY `idx_friendid` USING BTREE (`friendid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='好友信息表';

-- ----------------------------
-- Records of sk_member_friends
-- ----------------------------

-- ----------------------------
-- Table structure for sk_member_integral_logs
-- ----------------------------
DROP TABLE IF EXISTS `sk_member_integral_logs`;
CREATE TABLE `sk_member_integral_logs` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `uid` mediumint(8) unsigned NOT NULL default '0',
  `action` text NOT NULL COMMENT '操作类型',
  `description` varchar(255) NOT NULL default '' COMMENT '描述',
  `logdate` int(10) unsigned NOT NULL default '0',
  `logip` char(15) NOT NULL default '' COMMENT '登录ip',
  `integral` bigint(20) default NULL,
  `chanpin_id` int(11) default NULL,
  `yuyue_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `logdate` USING BTREE (`logdate`),
  KEY `uid` USING BTREE (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户积分';

-- ----------------------------
-- Records of sk_member_integral_logs
-- ----------------------------
INSERT INTO `sk_member_integral_logs` VALUES ('5', '37', '成交单子', '用户ID为【37】进行了操作成交单子 获得【400】积分', '1400663213', '127.0.0.1', '400', '5', '10');

-- ----------------------------
-- Table structure for sk_member_letter
-- ----------------------------
DROP TABLE IF EXISTS `sk_member_letter`;
CREATE TABLE `sk_member_letter` (
  `id` int(11) NOT NULL auto_increment,
  `fromid` int(11) NOT NULL default '0' COMMENT '发信人',
  `fromname` varchar(255) collate utf8_unicode_ci default NULL COMMENT '发件人',
  `formdel` tinyint(3) default '0' COMMENT '1已删除',
  `toid` int(11) NOT NULL default '0' COMMENT '收件人',
  `username` varchar(255) character set utf8 default NULL,
  `todel` tinyint(3) default '0' COMMENT '1已删除',
  `title` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` text collate utf8_unicode_ci NOT NULL COMMENT '内容',
  `tag` tinyint(3) default '0' COMMENT '0陌生1认识',
  `createtime` int(11) NOT NULL default '0' COMMENT '创建时间',
  `isopen` tinyint(3) default '0' COMMENT '1：已查看',
  PRIMARY KEY  (`id`),
  KEY `idx_from` USING BTREE (`fromid`,`formdel`),
  KEY `idx_to` USING BTREE (`toid`,`todel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='站内信信息表';

-- ----------------------------
-- Records of sk_member_letter
-- ----------------------------

-- ----------------------------
-- Table structure for sk_menu
-- ----------------------------
DROP TABLE IF EXISTS `sk_menu`;
CREATE TABLE `sk_menu` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) collate utf8_unicode_ci NOT NULL default '' COMMENT '菜单名称',
  `topkey` varchar(200) collate utf8_unicode_ci default '' COMMENT '自定义mkey 默认父类 ',
  `mkey` varchar(100) collate utf8_unicode_ci NOT NULL default '' COMMENT '菜单标识',
  `sub` int(11) NOT NULL default '0' COMMENT '子类=>所属父类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `sort` int(11) default '0' COMMENT '排序编号',
  `icon` varchar(50) collate utf8_unicode_ci default NULL,
  `issys` tinyint(1) default '0' COMMENT '是否系统默认  没有删除,修改权限',
  `ctime` int(10) default '0' COMMENT '创建日期',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统菜单';

-- ----------------------------
-- Records of sk_menu
-- ----------------------------
INSERT INTO `sk_menu` VALUES ('1', '系统设置', '', 'setting', '0', '1', '1', 'icon-1', '1', '1395294243');
INSERT INTO `sk_menu` VALUES ('2', '基本设置', '', 'basic', '235', '1', '1', null, '1', '1404813442');
INSERT INTO `sk_menu` VALUES ('245', '项目管理', '', 'project', '241', '1', '0', '', '0', '1407382523');
INSERT INTO `sk_menu` VALUES ('5', '菜单管理', '', 'list', '4', '1', '2', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('6', '添加菜单', '', 'add', '4', '1', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('7', '新闻中心', '', 'news', '240', '0', '5', '', '0', '1396323284');
INSERT INTO `sk_menu` VALUES ('8', '新闻分类', 'newscate', 'list', '7', '1', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('10', '编辑菜单', '', 'edit', '4', '0', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('12', '会员设置', '', 'member', '235', '1', '5', '', '0', '1404813328');
INSERT INTO `sk_menu` VALUES ('13', '附件设置', '', 'attachment', '235', '0', '4', '', '0', '1404813286');
INSERT INTO `sk_menu` VALUES ('14', '安全设置', '', 'safe', '235', '0', '1', '', '0', '1404813294');
INSERT INTO `sk_menu` VALUES ('15', 'SEO优化', '', 'seo', '235', '1', '3', '', '0', '1404813448');
INSERT INTO `sk_menu` VALUES ('16', '邮件设置', '', 'email', '235', '1', '2', '', '0', '1404816556');
INSERT INTO `sk_menu` VALUES ('18', '分类管理', 'askcate', 'list', '17', '1', '0', null, '0', '1308106886');
INSERT INTO `sk_menu` VALUES ('19', '问题管理', '', 'list', '17', '1', '1', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('23', '新闻管理', '', 'list', '7', '1', '5', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('26', '添加分类', 'askcate', 'add', '17', '0', '0', null, '0', '1308106886');
INSERT INTO `sk_menu` VALUES ('27', '编辑分类', 'askcate', 'edit', '17', '0', '0', null, '0', '1308106886');
INSERT INTO `sk_menu` VALUES ('28', '功能设置', '', 'core', '235', '0', '1', '', '0', '1404816548');
INSERT INTO `sk_menu` VALUES ('30', '日志信息管理', '', 'diary', '29', '1', '2', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('31', '照片信息管理', 'photo', 'list', '29', '1', '4', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('32', '日志分类管理', '', 'diarycate', '29', '1', '1', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('33', '相册信息管理', 'photo', 'cate', '29', '1', '3', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('36', '网站运营', '', 'markoperation', '239', '1', '2', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('37', '广告管理', 'advert', 'list', '36', '1', '8', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('38', '广告添加', 'advert', 'add', '36', '0', '9', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('39', '广告编辑', 'advert', 'edit', '36', '0', '10', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('41', '外链管理', 'share', 'list', '36', '0', '2', null, '0', '1396323502');
INSERT INTO `sk_menu` VALUES ('42', '广告位管理', 'advert', 'cate', '36', '1', '6', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('43', '广告位添加', 'advert', 'addcate', '36', '0', '5', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('44', '广告位编辑', 'advert', 'editcate', '36', '0', '7', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('45', '评论管理', '', 'comment', '29', '1', '5', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('51', '链接分类', 'share', 'cate', '36', '0', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('52', '添加外链', 'share', 'add', '36', '0', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('53', '编辑外链', 'share', 'edit', '36', '0', '4', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('56', '商品管理', 'goods', 'list', '55', '1', '2', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('220', '员工风采', 'staffmien', 'list', '216', '1', '4', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('59', '帮助列表', 'helpcate', 'list', '58', '1', '1', null, '0', '1310725028');
INSERT INTO `sk_menu` VALUES ('60', '添加分类', 'helpcate', 'add', '58', '0', '2', null, '0', '1308117945');
INSERT INTO `sk_menu` VALUES ('61', '编辑分类', 'helpcate', 'edit', '58', '0', '3', null, '0', '1308118121');
INSERT INTO `sk_menu` VALUES ('62', '信息管理', '', 'list', '58', '1', '4', null, '0', '1310725028');
INSERT INTO `sk_menu` VALUES ('63', '添加帮助', '', 'add', '58', '0', '5', null, '0', '1310725028');
INSERT INTO `sk_menu` VALUES ('64', '编辑信息', '', 'edit', '58', '0', '6', null, '0', '1310725028');
INSERT INTO `sk_menu` VALUES ('65', '添加规格', 'specification', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('66', '编辑规格', 'specification', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('67', '规格管理', 'specification', 'list', '55', '1', '5', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('68', '商品类型管理', 'goodstype', 'list', '55', '1', '4', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('69', '添加商品类型', 'goodstype', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('70', '编辑商品类型', 'goodstype', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('71', '商品类别', 'goodscate', 'list', '55', '1', '3', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('72', '添加商品分类', 'goodscate', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('73', '编辑商品分类', 'goodscate', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('74', '添加商品', 'goods', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('75', '编辑商品', 'goods', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('76', '订单管理', 'order', 'list', '55', '1', '1', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('77', '区域管理', 'area', 'list', '55', '1', '6', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('78', '配送方式', 'delivery', 'list', '55', '1', '7', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('80', '类别管理', 'bookcate', 'list', '79', '1', '1', null, '0', '1310010409');
INSERT INTO `sk_menu` VALUES ('81', '物流公司', 'dlycorp', 'list', '55', '1', '8', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('82', '添加物流公司', 'dlycorp', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('83', '编辑物流公司', 'dlycorp', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('84', '添加配送方式', 'delivery', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('85', '编辑配送方式', 'delivery', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('86', '支付管理', 'payment', 'list', '55', '1', '9', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('87', '支付方式安装', 'payment', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('88', '支付方式配置', 'payment', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('89', '订单添加', 'order', 'add', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('90', '订单编辑', 'order', 'edit', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('91', '订单详情', 'order', 'detail', '55', '0', '0', null, '0', '1310609131');
INSERT INTO `sk_menu` VALUES ('234', '订单管理', 'auction', 'order', '178', '1', '8', '', '0', '1396410427');
INSERT INTO `sk_menu` VALUES ('93', '新闻发布', 'news', 'add', '7', '1', '4', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('223', '荣誉管理', 'honor', 'list', '222', '1', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('97', '版块设置', 'bbscate', 'list', '96', '1', '1', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('98', '添加版块', 'bbscate', 'add', '96', '0', '2', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('99', '编辑版块', 'bbscate', 'edit', '96', '0', '3', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('100', '帖子管理', '', 'list', '96', '1', '4', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('101', '发布新帖', '', 'add', '96', '0', '5', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('102', '回复管理', 'bbsreply', 'list', '96', '1', '6', null, '0', '1312335577');
INSERT INTO `sk_menu` VALUES ('103', '模板列表', 'mail', 'list', '291', '1', '1', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('104', '添加模板', '', 'add', '291', '1', '2', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('105', '编辑模板', '', 'edit', '291', '0', '3', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('107', '招聘分类', 'jobclass', 'list', '195', '1', '1', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('108', '职位管理', 'careers', 'list', '195', '1', '2', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('243', '拍卖管理', '', 'auction', '0', '1', '7', 'icon-7', '0', '1407382245');
INSERT INTO `sk_menu` VALUES ('110', '品牌故事', '', 'list_1', '109', '1', '1', null, '0', '1396320779');
INSERT INTO `sk_menu` VALUES ('117', '项目列表', '', 'list', '116', '1', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('118', '发布项目', '', 'add', '116', '1', '2', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('119', '编辑项目', '', 'edit', '116', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('121', '下载列表', '', 'list', '120', '1', '1', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('122', '发布下载', '', 'add', '120', '1', '2', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('123', '编辑下载', '', 'edit', '120', '0', '3', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('217', '招聘分类', 'recruitcate', 'list', '216', '0', '1', null, '0', '1390446721');
INSERT INTO `sk_menu` VALUES ('130', '参数设置', 'hspara', 'list', '129', '1', '1', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('131', '出售管理', 'sale', 'list', '129', '1', '2', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('132', '出租管理', 'rent', 'list', '129', '1', '3', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('133', '发布出售', 'sale', 'add', '129', '0', '4', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('134', '编辑出售', 'sale', 'edit', '129', '0', '5', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('135', '发布出租', 'rent', 'add', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('136', '编辑出租', 'rent', 'edit', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('137', '出售图片', 'salepic', 'list', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('138', '添加出售房源图片', 'salepic', 'add', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('139', '修改出售房源图片', 'salepic', 'edit', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('140', '出租图片', 'rentpic', 'list', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('141', '添加出租房源图片', 'rentpic', 'add', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('142', '修改出租房源图片', 'rentpic', 'edit', '129', '0', '0', null, '0', '1338372969');
INSERT INTO `sk_menu` VALUES ('143', '加盟登记', 'join', 'list', '144', '1', '10', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('145', '出售登记', 'c_sale', 'list', '144', '1', '1', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('146', '出租登记', 'c_rent', 'list', '144', '1', '2', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('147', '求购登记', 'c_buy', 'list', '144', '1', '3', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('148', '求租登记', 'c_nrent', 'list', '144', '1', '4', null, '0', '1338373009');
INSERT INTO `sk_menu` VALUES ('207', '添加会员', '', 'add', '106', '1', '2', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('206', '会员列表', '', 'list', '106', '1', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('152', '合作加盟', '', 'list_2', '109', '1', '2', null, '0', '1396320794');
INSERT INTO `sk_menu` VALUES ('153', '走进诗克恰', '', 'list_3', '109', '1', '3', null, '0', '1396320813');
INSERT INTO `sk_menu` VALUES ('219', '最新招聘', 'recruit', 'list', '216', '1', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('161', '图片分类', 'casecate', 'list', '160', '1', '1', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('162', '图片列表', 'caseinfo', 'list', '160', '1', '2', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('209', '删除会员', '', 'del', '106', '0', '4', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('166', '产品分类', 'customizecate', 'list', '165', '1', '1', null, '0', '1374252977');
INSERT INTO `sk_menu` VALUES ('167', '产品列表', 'customizeinfo', 'list', '165', '1', '2', null, '0', '1374252977');
INSERT INTO `sk_menu` VALUES ('169', '客户列表', 'supportinginfo', 'list', '168', '1', '0', null, '0', '1374252977');
INSERT INTO `sk_menu` VALUES ('171', '拍摄花絮', 'shooting', 'list', '170', '0', '0', null, '0', '1374025348');
INSERT INTO `sk_menu` VALUES ('173', '导演分类', 'directorcate', 'list', '172', '1', '1', null, '0', '1374252977');
INSERT INTO `sk_menu` VALUES ('174', '导演列表', 'directorinfo', 'list', '172', '1', '2', null, '0', '1374252977');
INSERT INTO `sk_menu` VALUES ('197', '视频发布', 'video', 'add', '188', '1', '1', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('176', '视频列表', 'video', 'list', '175', '1', '0', null, '0', '1374731833');
INSERT INTO `sk_menu` VALUES ('178', '竞拍产品', '', 'auction', '243', '1', '1', '', '0', '1396323271');
INSERT INTO `sk_menu` VALUES ('179', '产品分类', 'auctioncate', 'list', '178', '1', '1', '', '0', '1374300976');
INSERT INTO `sk_menu` VALUES ('180', '产品管理', '', 'list', '178', '1', '1', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('183', '案例分类', 'solutioncate', 'list', '182', '1', '1', null, '0', '1384768081');
INSERT INTO `sk_menu` VALUES ('184', '案例管理', 'solution', 'list', '182', '1', '3', null, '0', '1382519169');
INSERT INTO `sk_menu` VALUES ('186', '资料分类', 'datacate', 'list', '185', '1', '1', null, '0', '1375075188');
INSERT INTO `sk_menu` VALUES ('187', '资料列表', 'datainfo', 'list', '185', '1', '2', null, '0', '1375075202');
INSERT INTO `sk_menu` VALUES ('190', '视频信息', 'video', 'list', '188', '1', '2', null, '0', '1390442323');
INSERT INTO `sk_menu` VALUES ('192', '文档分类', 'filecate', 'list', '191', '1', '1', null, '0', '1384768081');
INSERT INTO `sk_menu` VALUES ('193', '文档管理', 'fileinfo', 'list', '191', '1', '3', null, '0', '1384768081');
INSERT INTO `sk_menu` VALUES ('194', '其他单页', '', 'list_4', '109', '1', '4', null, '0', '1396320880');
INSERT INTO `sk_menu` VALUES ('208', '编辑会员', '', 'edit', '106', '0', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('218', '招聘发布', 'recruit', 'add', '216', '0', '2', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('199', '区域列表', '', 'list', '198', '1', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('200', '管理员管理', '', 'account', '244', '1', '6', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('201', '用户列表', '', 'list', '200', '1', '1', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('202', '添加用户', '', 'add', '200', '1', '2', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('203', '编辑用户', '', 'edit', '200', '0', '3', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('204', '用户组', 'group', 'list', '200', '1', '4', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('205', '编辑权限', 'group', 'editadmin', '200', '0', '5', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('210', '产品发布', '', 'add', '178', '1', '2', '', '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('211', '案例发布', 'solution', 'add', '182', '1', '2', null, '0', '1384768081');
INSERT INTO `sk_menu` VALUES ('212', '文档发布', 'fileinfo', 'add', '191', '1', '2', null, '0', '1384768081');
INSERT INTO `sk_menu` VALUES ('213', '产品图片添加', 'productspic', 'add', '178', '0', '5', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('214', '产品图片编辑', 'productspic', 'edit', '178', '0', '6', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('215', '产品图片管理', 'productspic', 'list', '178', '0', '7', null, '0', '1395294243');
INSERT INTO `sk_menu` VALUES ('226', '信息管理', 'sysinfo', 'list_1', '225', '1', '1', null, '0', '1396322483');
INSERT INTO `sk_menu` VALUES ('227', '添加信息', 'sysinfo', 'add&&cateid=1', '225', '1', '2', null, '0', '1396322493');
INSERT INTO `sk_menu` VALUES ('244', '后台管理', '', 'account', '0', '1', '9', 'icon-9', '0', '1407382381');
INSERT INTO `sk_menu` VALUES ('229', '信息管理', 'sysinfo', 'list_2', '228', '1', '1', null, '0', '1396322510');
INSERT INTO `sk_menu` VALUES ('230', '添加信息', 'sysinfo', 'add&&cateid=2', '228', '1', '2', null, '0', '1396322594');
INSERT INTO `sk_menu` VALUES ('246', '添加信息', '', 'add', '245', '1', '3', '', '0', '1407382540');
INSERT INTO `sk_menu` VALUES ('232', '信息管理', 'sysinfo', 'list_3', '231', '1', '1', null, '0', '1396322894');
INSERT INTO `sk_menu` VALUES ('233', '添加信息', 'sysinfo', 'add&&cateid=3', '231', '1', '2', null, '0', '1396322914');
INSERT INTO `sk_menu` VALUES ('235', '系统设置', '', 'setting', '1', '1', '1', null, '0', '1404813246');
INSERT INTO `sk_menu` VALUES ('239', '网站运营', '', 'markoperation', '0', '1', '2', 'icon-2', '0', '1407374602');
INSERT INTO `sk_menu` VALUES ('287', '财务管理', '', 'financial', '0', '1', '11', 'icon-11', '0', '1408183215');
INSERT INTO `sk_menu` VALUES ('241', '项目管理', '', 'project', '0', '1', '4', 'icon-4', '0', '1407381802');
INSERT INTO `sk_menu` VALUES ('242', '信息管理', '', 'information', '0', '1', '3', 'icon-3', '0', '1407381865');
INSERT INTO `sk_menu` VALUES ('247', '信息列表', '', 'list', '245', '1', '1', '', '0', '1407382553');
INSERT INTO `sk_menu` VALUES ('248', '信息分类', 'projectcate', 'list', '245', '1', '2', '', '0', '1407382598');
INSERT INTO `sk_menu` VALUES ('249', '信息管理', '', 'information', '242', '1', '3', 'icon-3', '0', '1407382637');
INSERT INTO `sk_menu` VALUES ('250', '信息列表', '', 'list', '249', '1', '1', '', '0', '1407382656');
INSERT INTO `sk_menu` VALUES ('251', '添加信息', '', 'add', '249', '1', '2', '', '0', '1407382669');
INSERT INTO `sk_menu` VALUES ('252', '信息分类', 'informationcate', 'list', '249', '1', '3', '', '0', '1407382693');
INSERT INTO `sk_menu` VALUES ('253', '产品品牌', 'productsbrand', 'list', '178', '0', '4', '', '0', '1407462782');
INSERT INTO `sk_menu` VALUES ('256', '在线客服', '', 'customer', '254', '0', '0', '', '0', '1407492813');
INSERT INTO `sk_menu` VALUES ('257', '在线留言', '', 'message', '255', '1', '0', '', '0', '1407492832');
INSERT INTO `sk_menu` VALUES ('258', '客服列表', '', 'list', '256', '1', '0', '', '0', '1407492854');
INSERT INTO `sk_menu` VALUES ('259', '留言列表', '', 'list', '257', '1', '0', '', '0', '1407492871');
INSERT INTO `sk_menu` VALUES ('260', '会员公告', '', 'notice', '242', '1', '1', '', '0', '1408151873');
INSERT INTO `sk_menu` VALUES ('261', '帮助中心', '', 'help', '242', '1', '2', '', '0', '1408151896');
INSERT INTO `sk_menu` VALUES ('262', '底部信息', '', 'bottom', '242', '1', '3', '', '0', '1408151914');
INSERT INTO `sk_menu` VALUES ('263', '公告列表', '', 'list', '260', '1', '0', '', '0', '1408152045');
INSERT INTO `sk_menu` VALUES ('264', '添加公告', '', 'add', '260', '1', '1', '', '0', '1408152062');
INSERT INTO `sk_menu` VALUES ('265', '信息列表', '', 'list', '261', '1', '0', '', '0', '1408152085');
INSERT INTO `sk_menu` VALUES ('266', '添加信息', '', 'add', '261', '1', '1', '', '0', '1408152098');
INSERT INTO `sk_menu` VALUES ('267', '信息列表', '', 'list', '262', '1', '0', '', '0', '1408152196');
INSERT INTO `sk_menu` VALUES ('268', '添加信息', '', 'add', '262', '1', '1', '', '0', '1408152234');
INSERT INTO `sk_menu` VALUES ('269', '会员管理', '', 'member', '0', '1', '10', 'icon-10', '0', '1408156764');
INSERT INTO `sk_menu` VALUES ('270', '会员级别', '', 'memberlevel', '269', '1', '1', '', '0', '1408157864');
INSERT INTO `sk_menu` VALUES ('271', '级别列表', '', 'list', '270', '1', '0', '', '0', '1408157929');
INSERT INTO `sk_menu` VALUES ('272', '添加级别', '', 'add', '270', '1', '2', '', '0', '1408158089');
INSERT INTO `sk_menu` VALUES ('273', '会员管理', '', 'member', '269', '1', '0', '', '0', '1408158163');
INSERT INTO `sk_menu` VALUES ('274', '会员列表', '', 'list', '273', '1', '1', '', '0', '1408158179');
INSERT INTO `sk_menu` VALUES ('275', '添加会员', '', 'add', '273', '1', '2', '', '0', '1408158195');
INSERT INTO `sk_menu` VALUES ('276', '会员分组', '', 'membergroup', '269', '1', '3', '', '0', '1408159643');
INSERT INTO `sk_menu` VALUES ('277', '分组列表', '', 'list', '276', '1', '0', '', '0', '1408159660');
INSERT INTO `sk_menu` VALUES ('279', '区域管理', '', 'area', '269', '1', '4', '', '0', '1408177024');
INSERT INTO `sk_menu` VALUES ('280', '区域列表', '', 'list', '279', '1', '0', '', '0', '1408177042');
INSERT INTO `sk_menu` VALUES ('281', '需求管理', '', 'demand', '0', '1', '5', 'icon-5', '0', '1408182926');
INSERT INTO `sk_menu` VALUES ('282', '管理中心', '', 'demand', '281', '1', '1', '', '0', '1408182950');
INSERT INTO `sk_menu` VALUES ('283', '认证管理', '', 'certify', '282', '0', '3', '', '0', '1408182993');
INSERT INTO `sk_menu` VALUES ('284', '结款需求管理', '', 'loan', '282', '0', '2', '', '0', '1408183031');
INSERT INTO `sk_menu` VALUES ('285', '拍卖需求管理', '', 'auction', '282', '1', '1', '', '0', '1408183063');
INSERT INTO `sk_menu` VALUES ('288', '管理中心', '', 'financial', '287', '1', '1', '', '0', '1408183231');
INSERT INTO `sk_menu` VALUES ('289', '提现申请', '', 'withdraw', '288', '1', '1', '', '0', '1408183276');
INSERT INTO `sk_menu` VALUES ('290', '财务结算', '', 'settlement', '288', '0', '2', '', '0', '1408183307');
INSERT INTO `sk_menu` VALUES ('291', '邮件模板', '', 'mail', '239', '1', '3', '', '0', '1408329627');
INSERT INTO `sk_menu` VALUES ('292', '一口价产品', '', 'auctionprice', '243', '1', '2', '', '0', '1408533922');
INSERT INTO `sk_menu` VALUES ('293', '产品管理', '', 'list', '292', '1', '0', '', '0', '1408533979');
INSERT INTO `sk_menu` VALUES ('294', '添加产品', '', 'add', '292', '1', '2', '', '0', '1408533998');
INSERT INTO `sk_menu` VALUES ('295', '产品分类', 'auctionpricecate', 'list', '292', '1', '3', '', '0', '1408534025');
INSERT INTO `sk_menu` VALUES ('296', '订单管理', '', 'order', '292', '1', '4', '', '0', '1408762431');
INSERT INTO `sk_menu` VALUES ('297', '充值记录', '', 'record', '288', '1', '0', '', '0', '1409017218');

-- ----------------------------
-- Table structure for sk_message
-- ----------------------------
DROP TABLE IF EXISTS `sk_message`;
CREATE TABLE `sk_message` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(32) default '' COMMENT '姓名',
  `tel` varchar(32) default '' COMMENT '联系电话',
  `qq` varchar(32) default '' COMMENT 'QQ号码',
  `email` varchar(64) default '' COMMENT '邮箱',
  `mobile` varchar(32) character set utf8 collate utf8_unicode_ci default '' COMMENT '手机号码',
  `company` varchar(64) character set utf8 collate utf8_unicode_ci default '' COMMENT '单位名称',
  `address` varchar(128) default '' COMMENT '地址',
  `msgtype` tinyint(1) default NULL COMMENT '留言类型',
  `content` text COMMENT '留言内容',
  `createtime` varchar(20) default '' COMMENT '留言时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='在线留言表';

-- ----------------------------
-- Records of sk_message
-- ----------------------------
INSERT INTO `sk_message` VALUES ('58', '张三疯', '13989899899', '15498378498', 'zhangsanfeng@163.com', '13988888888', '上海赛购实业有限公司', '上海市徐汇区漕宝路400号明申商务广场1305-1306', null, '留言详情', '1369639867');
INSERT INTO `sk_message` VALUES ('61', '吴晓飞', '51253636', '163636563', 'dsa@das.com', '18611223344', '', '上海市徐汇区漕宝路400号', '1', '我要买1吨小苏眉！！', '1390471827');
INSERT INTO `sk_message` VALUES ('62', '卢文荣', '51253636', '163636563', 'dsa@das.com', '18611223344', '上海市水产中心', '上海市徐汇区漕宝路400号', '3', '我要买2吨大苏眉！！！', '1390471931');

-- ----------------------------
-- Table structure for sk_newpro
-- ----------------------------
DROP TABLE IF EXISTS `sk_newpro`;
CREATE TABLE `sk_newpro` (
  `id` int(11) NOT NULL auto_increment,
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `sum` int(11) NOT NULL,
  `rate` float(11,1) NOT NULL,
  `message` tinytext NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新增产品';

-- ----------------------------
-- Records of sk_newpro
-- ----------------------------

-- ----------------------------
-- Table structure for sk_newscate
-- ----------------------------
DROP TABLE IF EXISTS `sk_newscate`;
CREATE TABLE `sk_newscate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_newscate
-- ----------------------------
INSERT INTO `sk_newscate` VALUES ('38', '0', '企业新闻', 'News', '', null, '1', '0', '1', 'a:3:{s:5:\"title\";s:12:\"企业新闻\";s:3:\"key\";s:12:\"企业新闻\";s:8:\"describe\";s:12:\"企业新闻\";}');
INSERT INTO `sk_newscate` VALUES ('40', '0', '行业报道', 'News', '', null, '2', '0', '1', 'a:3:{s:5:\"title\";s:12:\"行业报道\";s:3:\"key\";s:12:\"行业报道\";s:8:\"describe\";s:12:\"行业报道\";}');
INSERT INTO `sk_newscate` VALUES ('41', '0', '海鲜知识', 'News', '', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:12:\"海鲜知识\";s:3:\"key\";s:12:\"海鲜知识\";s:8:\"describe\";s:12:\"海鲜知识\";}');

-- ----------------------------
-- Table structure for sk_newsinfo
-- ----------------------------
DROP TABLE IF EXISTS `sk_newsinfo`;
CREATE TABLE `sk_newsinfo` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_newsinfo
-- ----------------------------
INSERT INTO `sk_newsinfo` VALUES ('256', '38', '长安汽车与江铃南非合作进军南非市场', '/attachments/news/20140123102527_487.png', '新华网约翰内斯堡8月21日电(记者郭兴华)长安汽车和江铃南非公司21日在约翰内斯堡举行合作仪式，并在南非市场发布一款低排量小型卡车，作为营销和推广重点。', '新华网约翰内斯堡8月21日电(记者郭兴华)长安汽车和江铃南非公司21日在约翰内斯堡举行合作仪式，并在南非市场发布一款低排量小型卡车，作为营销和推广重点。 <br />\r\n<br />\r\n在仪式上，江铃进出口公司副总经理梁波说，江铃已在南非市场耕耘3年有余，目前有11名中国员工和20名南非本地员工。江铃南非已扎根南非，并将长期在这里发展，同时，江铃南非每销售一辆车，都会将一部分钱投入拯救南非犀牛的事业中。 <br />\r\n<br />\r\n中国驻南非大使馆经商参赞荣延松说，中国企业在南非的投资总额达90亿美元，提供了1万个就业岗位，这些数字表明中国企业对南非经济有信心，并愿意承担社会责任与南非经济共同发展。江铃汽车参与拯救犀牛的行为，显示了企业公民的良好责任感。 <br />\r\n<br />\r\n长安汽车国际销售服务有限公司副总经理肖锋在接受采访时表示，长安汽车用了几年时间在南非市场寻找合作伙伴，江铃南非拥有成功的本地化经验，搭建了销售和服务网络，加上长安机车的研发和品牌优势，将给南非消费者带来不一样的体验。', '郭兴华', '1389061500', '2', 'a:3:{s:5:\"title\";s:51:\"长安汽车与江铃南非合作进军南非市场\";s:3:\"key\";s:51:\"长安汽车与江铃南非合作进军南非市场\";s:8:\"describe\";s:51:\"长安汽车与江铃南非合作进军南非市场\";}', '1', '1');
INSERT INTO `sk_newsinfo` VALUES ('255', '38', '谷歌副总裁跳槽小米', '/attachments/news/20140123102541_868.png', '昨天上午，谷歌全球副总裁雨果·巴拉(HugoBarra)宣布从谷歌离职。随后小米就对外确认其加盟小米，今年10月将正式来中国出任小米全球副总裁，负责小米国际业务拓展事务，以及与谷歌Android的战略合作。', '昨天上午，谷歌全球副总裁雨果·巴拉(HugoBarra)宣布从谷歌离职。随后小米就对外确认其加盟小米，今年10月将正式来中国出任小米全球副总裁，负责小米国际业务拓展事务，以及与谷歌Android的战略合作。 <br />\r\n<br />\r\n安卓大佬助小米国际化 <br />\r\n<br />\r\n据\r\n悉，巴拉在移动互联网产品和Android生态建设领域有着丰富经验和卓越创见，2008年他加入谷歌，出任谷歌英国移动产品部门经理，又于2010年出\r\n任Android团队产品总监，后升任全球副总裁，先后牵头负责过谷歌移动搜索、谷歌地图移动版、谷歌语音搜索、Android4.0等项目。 <br />\r\n<br />\r\n业界人士认为，邀得巴拉加盟，小米的移动互联网生态建设将获强力助推，有望借此与谷歌就Android生态合作达成更为紧密的合作关系。同时，巴拉丰富的产品经验也将对小米移动互联网服务产品序列的持续进化有所帮助。 <br />\r\n<br />\r\n此外，巴拉的加盟或预示着小米国际化脚步将加快。近期，小米官方刚刚确认了最新一轮融资，公司估值已达100亿美元，成为国内第四大互联网公司。此次又获得谷歌全球副总裁巴拉加盟，让小米的力量骤然增强。9月5日，小米将对外发布互联网电视、米3等新产品。 <br />\r\n<br />\r\n前女友正与谷歌创始人交往 <br />\r\n<br />\r\n不过，有趣的是，就在巴拉迅速辞职并加盟小米的消息传出后，国外媒体报道称，谷歌的创始人布林已经与自己的妻子安妮·武吉西奇发生婚变。而布林目前的女友就是巴拉的前女友。不过报道称，巴拉递交辞职信在前，布林婚变信息在后，两者可能没有直接关系。 <br />\r\n<br />\r\n对于巴拉的离职，谷歌发言人已作出确认，并表示：“我们给予巴拉最好的祝愿。谷歌会想念他，我们很高兴他能留在Android生态系统。”另一方面，巴拉也在谷歌社交网站Google+上宣布了告别。', '李斌', '1390443900', '108', 'a:3:{s:5:\"title\";s:27:\"谷歌副总裁跳槽小米\";s:3:\"key\";s:27:\"谷歌副总裁跳槽小米\";s:8:\"describe\";s:27:\"谷歌副总裁跳槽小米\";}', '1', '1');
INSERT INTO `sk_newsinfo` VALUES ('257', '40', '高盛软件错误惊扰期权市场', '/attachments/news/20140123102515_521.png', '美国高盛集团20日上午因技术故障向股票期权市场发送大批错误订单，潜在损失可能达上亿美元。\r\n\r\n惊扰市场', '美国高盛集团20日上午因技术故障向股票期权市场发送大批错误订单，潜在损失可能达上亿美元。 <br />\r\n<br />\r\n惊扰市场 <br />\r\n<br />\r\n高盛发出的错误订单，涉及代码开头字母从I至K的股票期权和ETF(交易所交易基金)，大幅压低某些股票期权和ETF的价格。 <br />\r\n<br />\r\n美国《华尔街日报》20日援引消息人士的话报道，高盛已就此事知会监管机构。 <br />\r\n<br />\r\n美国证券交易委员会发言人约翰·内斯特说：“正如我们所做的，我们一直在监控事态进展，与交易所等其他市场参与者适当交流情况。” <br />\r\n<br />\r\n高盛发言人在声明中说：“交易所正在努力解决问题。无论风险或潜在损失，都不会对集团财务状况产生实质影响。” <br />\r\n<br />\r\n《华尔街日报》报道，高盛总体损失可能少则数百万美元，多则数以亿计美元，取决于各家交易所决定取消哪些交易。 <br />\r\n<br />\r\n程序错误 <br />\r\n<br />\r\n高盛把下单错误归咎于19日内部软件的一次变更。这一软件帮助决定高盛以何价格与客户买卖期权。 <br />\r\n<br />\r\n了解内情的消息人士说，交易系统根据上述软件的数据下单，但默认价格远低于市场水平。其中一些订单达成交易，另一些则没有。高盛纠正了这一问题，正在研究具体是哪里出错。 <br />\r\n<br />\r\n错误订单20日上午把一些股票期权价格压低至1美元，致使纳斯达克期权市场、芝加哥期权交易所等警示交易者发生问题，提醒他们美国东部时间上午9时30分至9时47分之间的部分交易可能被取消。 <br />\r\n<br />\r\n交易所如果认定期权订单因错误而发出，有权改变价格或宣布交易无效。纽交所官员预期，高盛当天大部分错误交易可能遭取消。 <br />\r\n<br />\r\n屡见不鲜 <br />\r\n<br />\r\n随着金融交易对技术的依赖与日俱增，技术问题扰乱市场的事件屡见不鲜。 <br />\r\n<br />\r\n芝加哥期权交易所4月25日发生系统故障，迫使交易所延迟开市3个多小时。 <br />\r\n<br />\r\n纳斯达克证券交易所的系统设计缺陷和高管决策失误，导致社交网站脸谱2012年5月上市首日出现交易故障，致使投资者损失大约5亿美元。 <br />\r\n<br />\r\n骑士资本公司曾因交易软件缺陷在不到一小时内亏损4.6亿美元。 <br />\r\n<br />\r\n19日的事件并非高盛期权交易系统第一次发生问题。 <br />\r\n<br />\r\n高盛去年同意向8家期权交易所支付总额675万美元罚金，以就其连续6年错误标记订单达成和解。这种做法可能使某些交易不恰当地抢在另一些交易之前达成，同时能够规避某些收费。交易所官员认为这与高盛期权交易订单输入系统的缺陷有关。(卜晓明)', '卜晓明', '1388975100', '223', 'a:3:{s:5:\"title\";s:36:\"高盛软件错误惊扰期权市场\";s:3:\"key\";s:36:\"高盛软件错误惊扰期权市场\";s:8:\"describe\";s:36:\"高盛软件错误惊扰期权市场\";}', '0', '1');
INSERT INTO `sk_newsinfo` VALUES ('258', '40', '微软以董事会席位安抚大股东 避免代理权大战', '/attachments/news/20140123102504_557.png', '据《华尔街日报》报道，微软同意为对冲基金ValueAct Capital Management（以下简称“ValueAct）总裁梅森·默菲特(Mason Morfit)提供一个董事会席位，这是微软首次将董事会席位授予维权投资者，也是鲍尔默宣布离开后的一个标志性举动。', '<p style=\"text-indent:2em;\" align=\"center\">\r\n	<img src=\"/demo/attachments/image/20130831/20130831155528_35290.jpg\" alt=\"\" /> \r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据《华尔街日报》报道，<span><a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/MSFT.OQ.htm\" target=\"_blank\">微软</a></span>同意为对冲基金ValueAct Capital Management（以下简称“ValueAct）总裁梅森·默菲特(Mason Morfit)提供一个董事会席位，这是微软首次将董事会席位授予维权投资者，也是鲍尔默宣布离开后的一个标志性举动。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	微软称，任命决定将在明年做出，这也是公司首次在非自主的情况下任命董事会成员。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	鲍尔默和其他微软高管称，ValueAct的压力并未对他的退休造成影响。ValueAct的高管也不止一次在私人谈话中表达过同样的观点。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	不管怎样，从股权不足1%的投资公司挑选董事会成员足以说明微软面临的压力。微软因错失移动装置、网络搜索等消费技术潮流而遭到广泛批评。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	微\r\n软一些长期的观察者依然对鲍尔默宣布辞职感到困惑。在上周的会议中，微软投资者质疑鲍尔默的退休是否出于自愿；有的人要求董事会说明ValueAct \r\n在当中扮演的角色；也有的股东希望ValueAct的施压会让微软与过去彻底决裂，包括挑选新的CEO，提出振兴股价的措施。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	“ValueAct对鲍尔默的辞职起了间接推动作用。”证券分析师里克·谢兰德(Rick Sherlund)说，“ValueAct突显了股东的利益，其中一个就是管理层的继承权问题。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	分析师们猜测，ValueAct在对抗微软的过程中寻求了其他投资者的支持。作为周五声明的一部分，ValueAct 表示不会这么做，而且会将股权保持在5%以下，承诺不贬低公司或者高管。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	很少有微软这么大规模的公司会欢迎维权投资者进入董事会，以免引起不必要的冲突和瓦解。在近几十年中，业界也没有听说简单抱怨几句的非执行董事会被放入董事会。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这样小规模的投资者很难形成直接的影响力，毕竟积累较高的股权代价太大。比如微软5%的股权市值就达到140亿美元，这比ValueAct管理的全部资本还要多20亿美元。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	但\r\n是无论公司大小，维权股东成为改变公司观念的有效方式。美国苏利文克伦威尔律师事务所(Sullivan &amp; Cromwell \r\nLLP)在最近写给客户的信中称：“圈子里发生根本性的变化，这些变化意味着股东获得更大的影响力。用老观念看到如今的维权行为只会适得其反。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	ValueAct首席执行官杰弗里·乌本(Jeffrey Ubben)曾公开批评微软董事会未能为股东带来收益。他并非刻意地批评微软，他甚至称赞微软推出更多网络版本的软件。在今年4月份的投资商会议上，他称：“微软是一家具有主导地位的软件公司，最终会获得胜利。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	与此同时，乌本也充分利用了股东的不满情绪。最近几个月，他多次和微软执行副总裁<a class=\"a-tips-Article-QQ\" href=\"http://datalib.tech.qq.com/people/177/index.shtml\" target=\"_blank\">约翰·汤普森</a>(JohnThompson)表达公司的观点以及希望微软做出改变的渴望。乌本先生曾是Fidelity的基金管理人，他从杜克大学毕业后于2000年创办自己的公司。熟悉他的人表示，乌本非常有魅力，善于向其他人学习。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	微软周五的声明是股东提名下一届董事会成员的截止日期。鲍尔默在声明中称：“我们的董事会及管理团队致力于为股东带来价值和增长，我们期望ValueAct的加入。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这项协议为总裁梅森·默菲特和一些微软董事会成员及管理层提供了讨论重大商业问题的机会。微软说：“我们很高兴在过去几个月认识了梅森，我们期待与他合作。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	与其他维权投资者不同的是，ValueAct标榜自己是一个对管理层友好的维权者。ValueAct曾经获得多个小公司的董事会职位。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	微软一些长期的观察者认为，ValueAct的批评可能在CEO继承问题上给予董事会更多勇气，也会使微软更仔细倾听股东对资金使用方式及糟糕业务的抱怨。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	11月份年度股东大会后，梅森可能会在公司首个财政季度的董事会议中担任其中一员。目前，梅森拒绝对媒体表态。微软在一份声明中援引梅森的话说：“在公司发展的关键时刻，我期望与董事会和管理层共同协作，继续为所有的股东创造价值。”\r\n</p>\r\n梅森自2001年起入职ValueAct，他同时也在ValueAct投资的公司之一Valeant担任董事会成员。', '冰尘', '1388888700', '122', 'a:3:{s:5:\"title\";s:61:\"微软以董事会席位安抚大股东 避免代理权大战\";s:3:\"key\";s:61:\"微软以董事会席位安抚大股东 避免代理权大战\";s:8:\"describe\";s:61:\"微软以董事会席位安抚大股东 避免代理权大战\";}', '0', '1');
INSERT INTO `sk_newsinfo` VALUES ('259', '41', 'HTC首席设计师被指窃取公司机密技术', '/attachments/news/20140123102452_676.png', '据台湾《中国时报》周六报道，HTC首席工业设计师和另外两名员工被指控窃取公司机密技术并出售给中国公司，目前三人正在接受调查（副总兼首席设计师简志霖、处长吴建宏、设计师黄弘毅3人）。', '<p style=\"text-indent:2em;\">\r\n	据台湾《中国时报》周六报道，HTC首席工业设计师和另外两名员工被指控窃取公司机密技术并出售给中国公司，目前三人正在接受调查（副总兼首席设计师简志霖、处长吴建宏、设计师黄弘毅3人）。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这三名员工被HTC控告窃取公司的关键接口技术，调查人员昨天搜查了HTC研发中心的办公室和三名犯罪嫌疑人的住处。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	HTC表示，公司怀疑这三名员工与某中国企业密谋窃取这项接口技术。这项技术被用在HTC全新的Sense 6.0智能手机上，该机将在今年晚些时候亮相。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这三名犯罪嫌疑人被确定为HTC的首席工业设计师、一名部门主管和一名设计师。三人目前尚未被逮捕，而且均否认这些指控。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	HTC公司指控他们窃取公司机密，不但辜负了公司的信任，而且被查实罪行后最高可判10年刑期。HTC还被指控他们用伪造的凭证非法获取超过1000万台币（折合人民币100万）设计费。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	另据台湾中央通讯社报道，这三名犯罪嫌疑人被认为已经在台湾和中国建立了自己的智能手机设计公司。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	“有关当局正在调查此事。因此，我们避免进一步的评论。“HTC在一份声明中说。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	作为全球最大的Windows Mobile智能手机生产商，除了销售自己的智能手机，HTC还为美国一些领先的公司代工生产手机，包括<span><a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/GOOG.OQ.htm\" target=\"_blank\">谷歌</a></span>(<a href=\"http://t.qq.com/googlechina#pref=qqcom.keyword\" rel=\"googlechina\" target=\"_blank\">微博</a>)的Nexus One 手机。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	近年来，HTC一直在与国际竞争对手的激烈竞争中挣扎求生，今年第二季度净利润与去年同期相比下跌83％ 。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据市场研究公司IDC的数据，2012年，HTC在全球智能手机市场中占有4.6 ％的份额，相比2011年同期的8.8 ％大幅下滑。目前，三星公司持有HTC公司0.3 ％的股份，而<span><a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/AAPL.OQ.htm\" target=\"_blank\">苹果</a></span>持有该公司19.1 ％的股份。\r\n</p>', '谭思', '1388802240', '323', 'a:3:{s:5:\"title\";s:48:\"HTC首席设计师被指窃取公司机密技术\";s:3:\"key\";s:48:\"HTC首席设计师被指窃取公司机密技术\";s:8:\"describe\";s:48:\"HTC首席设计师被指窃取公司机密技术\";}', '0', '1');
INSERT INTO `sk_newsinfo` VALUES ('260', '41', '全球首款多功能3D传真机或将问世', '/attachments/news/20140123102439_363.png', '日前，一家名为“AIO Robotics”的初创公司就计划推出一款型号为“Zeus”的全功能3D打印机，这一设备将同时支持扫描、打印、复印以及传真功能。据悉，该公司计划于9月4日在知名众筹平台Kickstarter上进行公开募资。而且，AIO Robotics已经上传了Zeus的两张数字效果图到知名3D打印爱好者论坛RepRap 上。', '<p style=\"text-indent:2em;\">\r\n	在最近一段时间内，我们已经听到了太多有关3D打印的消息，但有人听说过3D传真吗？\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	日前，一家名为“AIO Robotics”的初创公司就计划推出一款型号为“Zeus”的全功能3D打印机，这一设备将同时支持扫描、打印、复印以及传真功能。据悉，该公司计划于<span style=\"border-bottom:#ccc 1px dashed;\">9月4日</span>在知名众筹平台Kickstarter上进行公开募资。而且，AIO Robotics已经上传了Zeus的两张数字效果图到知名3D打印爱好者论坛RepRap 上。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	AIO\r\nRobotic在RepRap论坛中透露，Zeus设备将包含一块7英寸彩色触摸屏、内置基于ARM芯片的计算系统，这也就意味着Zeus可以在无需连接\r\n电脑的情况展开独立的打印工作。除此之外，AIO \r\nRobotic机载计算机还可以将经由高清照相机获取的3D扫描数据上传到云端，并允许设备在随后进行打印。AIO \r\nRobotic方面表示，Zeus需要在连接互联网的情况下才能够正常工作。\r\n</p>\r\n尽管AIO Robotic目前尚未透露Zeus的零售价格，但该公司已经明确表示这一设备的售价将会比Makerbot旗下桌面级3D打印机Replicator和桌面级3D扫描仪Digitizer便宜许多，而这两款不包含传真功能的设备售价大约在3000美元左右。', 'viasionguo', '1388715840', '0', 'a:3:{s:5:\"title\";s:44:\"全球首款多功能3D传真机或将问世\";s:3:\"key\";s:44:\"全球首款多功能3D传真机或将问世\";s:8:\"describe\";s:44:\"全球首款多功能3D传真机或将问世\";}', '1', '1');
INSERT INTO `sk_newsinfo` VALUES ('261', '38', 'Skype宣布成功研发3D视频通话 创造网友数字替身', '/attachments/news/20140123102332_901.png', '在3D视频和影像上，ESPN等电视台的试验以失败而告终。但是该技术，可能会在网络通话这一领域大放异彩。日前，Skype一位高层透露，已经成功研发出了3D视频通话技术。对于远隔一方的一对母子来说，母亲将可以在通话时看到孩子“全方位的身体状况”。', '<p style=\"text-indent:2em;\">\r\n	在3D视频和影像上，ESPN等电视台的试验以失败而告终。但是该技术，可能会在网络通话这一领域大放异彩。日前，Skype一位高层透露，已经成功研发出了3D视频通话技术。对于远隔一方的一对母子来说，母亲将可以在通话时看到孩子“全方位的身体状况”。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	近日恰逢Skype公司成立十周年，<span><a class=\"a-tips-Article-QQ\" href=\"http://stockhtm.finance.qq.com/astock/ggcx/MSFT.OQ.htm\" target=\"_blank\">微软</a></span>负责Skype业务的副总裁吉利特（Mark-Gillett）在接受英国广播公司采访时，披露了这一消息。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	实际上，业内对此有所猜想。今年四月初，Skype发布一则广告，号称要给无法远游会面的网民，创造一个“数字替身”去远行。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这位微软高层表示，虽然技术已经研发成功，但是真正的3D视频通话投入使用，还需要多年时间。吉利特表示，许多人已经在购买拥有3D影像功能的电视机、显示器，微软和Skype看到了3D视频的技术能力和发展潜力。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	吉利特表示，目前市面上的3D视频摄录设备还是个短板。如果要使用3D视频通话，用户必须在电脑上安装多个摄像头，以正确的角度对准自己。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	据报道，吉利特于2010年加盟Skype公司，当时尚未被微软收购。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	BBC指出，Skype是全球最大的网络电话服务商，如果其宣布支持和推出3D视频通话，将会对全球的3D产业形成巨大推动。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	最近多个迹象显示，3D影像产业发展并不顺利。迪斯尼公司旗下的体育频道ESPN宣布，将停止播出3D频道，另外BBC也作出决定，今年底停止为期两年的3D频道试验性播出。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	虽然在许多高端显示器上，3D显示已经成为标配，但是零售商John-Lewis最近表示，消费者对于3D影像技术的兴趣正在下降。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	不过，业内还是有人力挺3D影像，代表人物莫过于好莱坞大导演卡梅隆（《阿凡达》导演），卡梅隆最近在接受BBC采访时表示，一旦不再需要专门的眼镜，不可避免的是，未来所有的娱乐内容，都将是3D的，“因为这是我们看这个世界的方式。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	在BBC这次采访中，吉利特还透露，Skype也正在研究，在微软游戏机之外的更多终端设备上，支持1080P的Skype全高清视频通话功能。另外，未来也将会在和微软竞争的索尼游戏机上推出Skype客户端。\r\n</p>', '晨曦', '1388629440', '112', 'a:3:{s:5:\"title\";s:62:\"Skype宣布成功研发3D视频通话 创造网友数字替身\";s:3:\"key\";s:62:\"Skype宣布成功研发3D视频通话 创造网友数字替身\";s:8:\"describe\";s:62:\"Skype宣布成功研发3D视频通话 创造网友数字替身\";}', '0', '1');
INSERT INTO `sk_newsinfo` VALUES ('262', '38', '3D打印服务进入主流零售业务', '/attachments/news/20140123102300_793.png', '据《大西洋月刊》报道，3D打印服务正在成为主流零售业务。\r\n\r\n报道称，1个月前，圣地亚哥东部的一家联合包裹服务公司(UPS)商店开始提供一项新的服务：3D打印。6周前店主伯克·琼斯（Burke Jones）说：“我对3D打印一无所知。”', '<p style=\"text-indent:2em;\">\r\n	据《大西洋月刊》报道，3D打印服务正在成为主流零售业务。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	报道称，1个月前，圣地亚哥东部的一家联合包裹服务公司(UPS)商店开始提供一项新的服务：3D打印。6周前店主伯克·琼斯（Burke Jones）说：“我对3D打印一无所知。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	“我很想把这个创意归功于自己，因为业务真的非常成功。但其实是联合包裹公司想出来这个主意。他们想要测试一下市场。”他补充说。上周，该公司又在哥伦比亚特区西北部的一个店面安装了3D打印机，接下来几个月来推出至少4台，地点还尚未确定。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	伯\r\n克说，自从3D打印机来了以后，他就开始了一段异常艰辛的学习过程。他需要与客户一起试验这项技术。客户的需求五花八门，既有检验一些创意的地下室工匠，\r\n也有一些大企业的工程师，因为公司的设备被占用，他们紧急需要打印一些原型。琼斯说，这些工作还算简单。“他们打电话给我，说有一份STL文件需要打印三\r\n份。”完全没问题。\r\n</p>\r\n<div class=\"mbArticleSharePic\">\r\n	<img alt=\"3D打印服务进入主流零售业务 \" src=\"http://img1.gtimg.com/tech/pics/hv1/24/180/1401/91145949.jpg\" /> \r\n</div>\r\n<p style=\"font-family:宋体;font-size:10.5pt;\" align=\"center\">\r\n	店里的3D打印机\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	琼\r\n斯并不想泄露别人的创意，但是他表示，客户想打印的东西“从宠物喂食用具到智能手机的高科技小配件。”有的客户打印汽车部件，比如通过拉开动作解锁手动门\r\n的塑料小装置。他说：“一个客户旧车坏掉了一些部件，他想将坏部件打印出来。”价格其实不便宜——类似滚珠轴承这么简单的东西收费15美元，其他的东西价\r\n格更高。但对于迫切需要得到原型的公司，收费肯定会在项目的预算内。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	琼斯称，3D打印与传统2D打印过程并不一样。例如有人想打印商业名片。她来打印的时候就对设计有了一个大概的思路。工作人员会询问：“想要什么颜色？什么类型的纸？字体如何？接着第一份样品就会打印出来。如果效果不尽人意，工作人员会做进一步改进。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	但对于打印3D实体的客户，他们要和琼斯以及琼斯雇用的工程师纽曼·雷曼（Tei Newman-Lehman）共同合作。先把创意写在纸上，接着将其转化为软件，最终打印出来。\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	“我在印刷业已整整干了15年。刚开始时过程很相似，但摁下打印按钮后，事情就完全不一样了。”琼斯说，“这是我很享受的一个过程，看着客户经历创意变成现实的过程。看看他们的表情，那种惊讶之情就好像说他们不是工程师。这真是一个神奇的时刻。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	这样一个从想法变成实物的过程让琼斯感到兴奋。“如果我愿意在今天投入一些时间，我会得到自己的或者别人的一个创意，到了一天结束的时候，他们手里就有了一个硬塑料3D原型。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	对于琼斯来说，3D打印的技术性能激励他以不同的方式思考。“它可以改变我们的日常认知，改变我们的生活。我们不知道自己还能想出什么东西。就是在这种想法诞生的过程让我的大脑比6周前更有创意。”\r\n</p>\r\n<p style=\"text-indent:2em;\">\r\n	琼斯最喜欢的顾客是两名学生，他们是发小，共同制作机器手。“他们很有趣；这有点像《生活大爆炸》里的人物，他们所讲的笑话别人都无法理解。”\r\n</p>\r\n琼斯接着说：“他们真得不错，也很聪明。我很喜欢他们。他们的伟大梦想和我的不一样。”但是琼斯带着他的机器一起来帮助这些年轻人到达梦想彼岸。', '冰尘', '1388543040', '1', 'a:3:{s:5:\"title\";s:38:\"3D打印服务进入主流零售业务\";s:3:\"key\";s:38:\"3D打印服务进入主流零售业务\";s:8:\"describe\";s:38:\"3D打印服务进入主流零售业务\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_products
-- ----------------------------
DROP TABLE IF EXISTS `sk_products`;
CREATE TABLE `sk_products` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) default NULL COMMENT '分类id',
  `pname` varchar(128) collate utf8_unicode_ci default '' COMMENT '产品名称',
  `packing` varchar(64) collate utf8_unicode_ci default '' COMMENT '品向',
  `style` varchar(64) collate utf8_unicode_ci default '' COMMENT '风格',
  `specdimen` varchar(64) collate utf8_unicode_ci default '' COMMENT '规格尺寸',
  `spec` varchar(64) collate utf8_unicode_ci default '' COMMENT '规格',
  `price` varchar(16) collate utf8_unicode_ci default '' COMMENT '原价',
  `saleprice` varchar(16) collate utf8_unicode_ci default '' COMMENT '促销价',
  `productiondate` varchar(64) collate utf8_unicode_ci default '' COMMENT '生产日期',
  `shelflife` varchar(64) collate utf8_unicode_ci default '' COMMENT '保质期',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '产品图片',
  `content` text collate utf8_unicode_ci COMMENT '产品详情',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  `sort` int(1) default NULL,
  `createtime` int(11) default NULL COMMENT '发布时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品表';

-- ----------------------------
-- Records of sk_products
-- ----------------------------
INSERT INTO `sk_products` VALUES ('14', '12', '小苏眉', '罐头', '水产品系列', '480*450*730mm', '1套', '126元', '115元', '2013年12月20日', '12个月', '/attachments/products/20140123155613_604.png', '<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑；专业从事基于全网营销的系统开发，包含Web网站、IOS/Android 客户端（APP）、触屏系统的策划与开发；提供从策划、开发到后期维护及技术支持等全方位的解决方案。\r\n</p>\r\n<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	五五来客的核心技术团队具备8年以上技术开发及项目管理经验，精通UI设计、底层架构、开发工具、功能模块、项目管理、网络安全，充分保证了每一个产品出色的品质及完善的售后服务。\r\n</p>\r\n<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	我们秉承帮助客户成功，以质量求生存，以服务求发展，以信誉占市场的服务理念。服务于企业、服务于行业、服务于社会，全面推动中国互联网及移动互联网应用的进步，提升中国企业国际竞争力。\r\n</p>', 'a:3:{s:5:\"title\";s:9:\"小苏眉\";s:3:\"key\";s:9:\"小苏眉\";s:8:\"describe\";s:9:\"小苏眉\";}', '1', '1', '1', '1390463773');
INSERT INTO `sk_products` VALUES ('15', '12', '大苏眉', '罐头', '水产品系列', '480*450*730mm', '1套', '126元', '115元', '2013年12月20日', '12个月', '/attachments/products/20140123155733_848.png', '<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑；专业从事基于全网营销的系统开发，包含Web网站、IOS/Android 客户端（APP）、触屏系统的策划与开发；提供从策划、开发到后期维护及技术支持等全方位的解决方案。\r\n</p>\r\n<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	五五来客的核心技术团队具备8年以上技术开发及项目管理经验，精通UI设计、底层架构、开发工具、功能模块、项目管理、网络安全，充分保证了每一个产品出色的品质及完善的售后服务。\r\n</p>\r\n<p style=\"padding-top:0px;padding-right:0px;padding-bottom:0px;padding-left:0px;list-style-type:none;list-style-position:initial;list-style-image:initial;margin-top:0px;margin-right:0px;margin-bottom:0px;margin-left:0px;text-indent:24px;color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:24px;orphans:2;text-align:-webkit-auto;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">\r\n	我们秉承帮助客户成功，以质量求生存，以服务求发展，以信誉占市场的服务理念。服务于企业、服务于行业、服务于社会，全面推动中国互联网及移动互联网应用的进步，提升中国企业国际竞争力。\r\n</p>', 'a:3:{s:5:\"title\";s:9:\"大苏眉\";s:3:\"key\";s:9:\"大苏眉\";s:8:\"describe\";s:9:\"大苏眉\";}', '0', '1', '2', '1390463853');

-- ----------------------------
-- Table structure for sk_productscate
-- ----------------------------
DROP TABLE IF EXISTS `sk_productscate`;
CREATE TABLE `sk_productscate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图片',
  `sort` int(11) default NULL COMMENT '排序',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  `issys` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品分类表';

-- ----------------------------
-- Records of sk_productscate
-- ----------------------------
INSERT INTO `sk_productscate` VALUES ('12', '0', '鱼类', 'Fish', 'fsafasf', null, '1', '1', 'a:3:{s:5:\"title\";s:6:\"鱼类\";s:3:\"key\";s:6:\"鱼类\";s:8:\"describe\";s:6:\"鱼类\";}', '0');
INSERT INTO `sk_productscate` VALUES ('13', '0', '虾类', '', '', '', '2', '1', 'a:3:{s:5:\"title\";s:6:\"虾类\";s:3:\"key\";s:6:\"虾类\";s:8:\"describe\";s:6:\"虾类\";}', '0');
INSERT INTO `sk_productscate` VALUES ('14', '0', '贝类', '', '', '', '3', '1', 'a:3:{s:5:\"title\";s:6:\"贝类\";s:3:\"key\";s:6:\"贝类\";s:8:\"describe\";s:6:\"贝类\";}', '0');
INSERT INTO `sk_productscate` VALUES ('15', '0', '干货类', '', '', '', '4', '1', 'a:3:{s:5:\"title\";s:9:\"干货类\";s:3:\"key\";s:9:\"干货类\";s:8:\"describe\";s:9:\"干货类\";}', '0');
INSERT INTO `sk_productscate` VALUES ('16', '0', '海菜类', '', '', '', '5', '1', 'a:3:{s:5:\"title\";s:9:\"海菜类\";s:3:\"key\";s:9:\"海菜类\";s:8:\"describe\";s:9:\"海菜类\";}', '0');

-- ----------------------------
-- Table structure for sk_productspic
-- ----------------------------
DROP TABLE IF EXISTS `sk_productspic`;
CREATE TABLE `sk_productspic` (
  `id` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL COMMENT '产品id',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '图片路径',
  `sort` int(11) default NULL COMMENT '排序',
  `isopen` tinyint(1) default '1' COMMENT '是否启用',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `createtime` varchar(64) collate utf8_unicode_ci default '' COMMENT '创建时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='产品图片表';

-- ----------------------------
-- Records of sk_productspic
-- ----------------------------
INSERT INTO `sk_productspic` VALUES ('1', '13', '/attachments/products/20131118174838_650.jpg', '1', '1', '0', '1384768118');
INSERT INTO `sk_productspic` VALUES ('2', '13', '/attachments/products/20131118174850_516.jpg', '2', '1', '0', '1384768130');
INSERT INTO `sk_productspic` VALUES ('3', '15', '/attachments/products/20140123155817_325.png', '1', '1', '0', '1390463897');
INSERT INTO `sk_productspic` VALUES ('4', '15', '/attachments/products/20140123155830_770.png', '2', '1', '0', '1390463910');
INSERT INTO `sk_productspic` VALUES ('5', '15', '/attachments/products/20140123155838_445.png', '3', '1', '0', '1390463918');
INSERT INTO `sk_productspic` VALUES ('6', '15', '/attachments/products/20140123155843_421.png', '4', '1', '0', '1390463923');
INSERT INTO `sk_productspic` VALUES ('7', '15', '/attachments/products/20140123155848_547.png', '5', '1', '0', '1390463928');
INSERT INTO `sk_productspic` VALUES ('8', '14', '/attachments/products/20140123155857_483.png', '1', '1', '0', '1390463937');
INSERT INTO `sk_productspic` VALUES ('9', '14', '/attachments/products/20140123155901_839.png', '2', '1', '0', '1390463941');
INSERT INTO `sk_productspic` VALUES ('10', '14', '/attachments/products/20140123155907_605.png', '3', '1', '0', '1390463947');
INSERT INTO `sk_productspic` VALUES ('11', '14', '/attachments/products/20140123155911_523.png', '4', '1', '0', '1390463951');
INSERT INTO `sk_productspic` VALUES ('12', '14', '/attachments/products/20140123155916_337.png', '5', '1', '0', '1390463956');

-- ----------------------------
-- Table structure for sk_recruitcate
-- ----------------------------
DROP TABLE IF EXISTS `sk_recruitcate`;
CREATE TABLE `sk_recruitcate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(255) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(255) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='招聘分类表';

-- ----------------------------
-- Records of sk_recruitcate
-- ----------------------------
INSERT INTO `sk_recruitcate` VALUES ('42', '0', '最新招聘', '', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:12:\"最新招聘\";s:3:\"key\";s:12:\"最新招聘\";s:8:\"describe\";s:12:\"最新招聘\";}');

-- ----------------------------
-- Table structure for sk_recruitinfo
-- ----------------------------
DROP TABLE IF EXISTS `sk_recruitinfo`;
CREATE TABLE `sk_recruitinfo` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `jobname` varchar(128) collate utf8_unicode_ci default '' COMMENT '职位名称',
  `education` varchar(128) collate utf8_unicode_ci default '' COMMENT '学历要求',
  `experience` varchar(128) collate utf8_unicode_ci default '' COMMENT '工作经验',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `createtime` int(10) default NULL COMMENT '发布日期',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='招聘职位表';

-- ----------------------------
-- Records of sk_recruitinfo
-- ----------------------------
INSERT INTO `sk_recruitinfo` VALUES ('266', null, '.NET开发工程师', '大专', '二年以上', '<div>\r\n	岗位职责：1、负责公司网站前后台程序设计、研发、维护；2、按照产品要求设计和开发web系统；<br />\r\n3、现有产品的优化、新产品开发；4、改进现有框架、基础构架、提高产品质量。任职资格：精通php,熟悉MySQL、JaveScript、JQuery等程序语言。\r\n</div>', '1390447620', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_recruitinfo` VALUES ('267', null, '研发中心-C#开发人员', '大专', '三年以上', '<div>\r\n	岗位职责：1、负责公司网站前后台程序设计、研发、维护；2、按照产品要求设计和开发web系统；<br />\r\n3、现有产品的优化、新产品开发；4、改进现有框架、基础构架、提高产品质量。任职资格：精通php,熟悉MySQL、JaveScript、JQuery等程序语言。\r\n</div>', '1389756540', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_sharelinks
-- ----------------------------
DROP TABLE IF EXISTS `sk_sharelinks`;
CREATE TABLE `sk_sharelinks` (
  `sid` smallint(6) unsigned NOT NULL auto_increment,
  `sort` tinyint(3) NOT NULL default '0' COMMENT '排序编号',
  `name` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '' COMMENT '名称',
  `url` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '' COMMENT '地址',
  `descrip` varchar(200) character set utf8 collate utf8_unicode_ci NOT NULL default '' COMMENT '描述',
  `logo` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL default '',
  `ifshow` tinyint(1) NOT NULL default '0' COMMENT '是否开启',
  `username` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL default '' COMMENT '操作用户',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of sk_sharelinks
-- ----------------------------
INSERT INTO `sk_sharelinks` VALUES ('19', '3', '北方信托', '', '', '', '1', '');
INSERT INTO `sk_sharelinks` VALUES ('18', '2', '百瑞信托', '', '', '', '1', '');
INSERT INTO `sk_sharelinks` VALUES ('17', '1', '安信信托', '', '', '', '1', '');

-- ----------------------------
-- Table structure for sk_sharelinksrelation
-- ----------------------------
DROP TABLE IF EXISTS `sk_sharelinksrelation`;
CREATE TABLE `sk_sharelinksrelation` (
  `sid` mediumint(8) unsigned NOT NULL default '0',
  `stid` mediumint(8) unsigned NOT NULL default '0',
  UNIQUE KEY `idx_stid_sid` USING BTREE (`stid`,`sid`),
  KEY `idx_sid` USING BTREE (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接关系表';

-- ----------------------------
-- Records of sk_sharelinksrelation
-- ----------------------------

-- ----------------------------
-- Table structure for sk_sharelinkstype
-- ----------------------------
DROP TABLE IF EXISTS `sk_sharelinkstype`;
CREATE TABLE `sk_sharelinkstype` (
  `stid` smallint(6) unsigned NOT NULL auto_increment,
  `name` varchar(30) character set utf8 collate utf8_unicode_ci NOT NULL default '' COMMENT '类别名称',
  `sort` smallint(6) unsigned NOT NULL default '0' COMMENT '排序',
  `ifshow` tinyint(3) unsigned NOT NULL default '0' COMMENT '是否可用',
  PRIMARY KEY  (`stid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='链接类别';

-- ----------------------------
-- Records of sk_sharelinkstype
-- ----------------------------
INSERT INTO `sk_sharelinkstype` VALUES ('1', '友情链接', '1', '1');

-- ----------------------------
-- Table structure for sk_shehui_activity
-- ----------------------------
DROP TABLE IF EXISTS `sk_shehui_activity`;
CREATE TABLE `sk_shehui_activity` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿活动列表';

-- ----------------------------
-- Records of sk_shehui_activity
-- ----------------------------

-- ----------------------------
-- Table structure for sk_shehui_baoming
-- ----------------------------
DROP TABLE IF EXISTS `sk_shehui_baoming`;
CREATE TABLE `sk_shehui_baoming` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) collate utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL COMMENT '1表示男2表示女',
  `icon` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xuehao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xueyuan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `banji` varchar(100) collate utf8_unicode_ci NOT NULL,
  `zhengzhi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `waiyu` varchar(100) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fuzhuang` varchar(100) collate utf8_unicode_ci NOT NULL,
  `height` varchar(100) collate utf8_unicode_ci NOT NULL,
  `shenfenhao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `weight` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` varchar(200) collate utf8_unicode_ci NOT NULL,
  `jingli` text collate utf8_unicode_ci NOT NULL,
  `remark` text collate utf8_unicode_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务报名';

-- ----------------------------
-- Records of sk_shehui_baoming
-- ----------------------------

-- ----------------------------
-- Table structure for sk_shehui_file
-- ----------------------------
DROP TABLE IF EXISTS `sk_shehui_file`;
CREATE TABLE `sk_shehui_file` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社团文件';

-- ----------------------------
-- Records of sk_shehui_file
-- ----------------------------
INSERT INTO `sk_shehui_file` VALUES ('1', '0', '常用表格下载', '/attachments/shehui_file/20140414130521_277.rar', '常用表格下载', '', '管理员', 'http://', '1397451840', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_shehui_news
-- ----------------------------
DROP TABLE IF EXISTS `sk_shehui_news`;
CREATE TABLE `sk_shehui_news` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社会实践新闻';

-- ----------------------------
-- Records of sk_shehui_news
-- ----------------------------
INSERT INTO `sk_shehui_news` VALUES ('1', '0', '风采展示1', '/attachments/shehui_news/20140414135254_603.jpg', '风采展示 风采展示风采展示风采展示风采展示1', '风采展示 风采展示风采展示风采展示风采展示1 风采展示 风采展示风采展示风采展示风采展示2<br />', '管理员', 'http://', '1397446380', '4', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_shetuan
-- ----------------------------
DROP TABLE IF EXISTS `sk_shetuan`;
CREATE TABLE `sk_shetuan` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_shetuan
-- ----------------------------

-- ----------------------------
-- Table structure for sk_shetuan_activity
-- ----------------------------
DROP TABLE IF EXISTS `sk_shetuan_activity`;
CREATE TABLE `sk_shetuan_activity` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿活动列表';

-- ----------------------------
-- Records of sk_shetuan_activity
-- ----------------------------
INSERT INTO `sk_shetuan_activity` VALUES ('1', '0', '啊实打实大', '/attachments/shetuan_activity/20140414103815_185.jpg', '阿斯达实打实大撒旦撒的', '阿斯达实打实大撒旦撒的', 'http://', '管理员', '1397443020', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_shetuan_baoming
-- ----------------------------
DROP TABLE IF EXISTS `sk_shetuan_baoming`;
CREATE TABLE `sk_shetuan_baoming` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) collate utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL COMMENT '1表示男2表示女',
  `icon` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xuehao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xueyuan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `banji` varchar(100) collate utf8_unicode_ci NOT NULL,
  `zhengzhi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `waiyu` varchar(100) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fuzhuang` varchar(100) collate utf8_unicode_ci NOT NULL,
  `height` varchar(100) collate utf8_unicode_ci NOT NULL,
  `shenfenhao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `weight` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` varchar(200) collate utf8_unicode_ci NOT NULL,
  `jingli` text collate utf8_unicode_ci NOT NULL,
  `remark` text collate utf8_unicode_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务报名';

-- ----------------------------
-- Records of sk_shetuan_baoming
-- ----------------------------

-- ----------------------------
-- Table structure for sk_shetuan_file
-- ----------------------------
DROP TABLE IF EXISTS `sk_shetuan_file`;
CREATE TABLE `sk_shetuan_file` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='社团文件';

-- ----------------------------
-- Records of sk_shetuan_file
-- ----------------------------
INSERT INTO `sk_shetuan_file` VALUES ('1', '0', 'asdasdasdasd', '/attachments/shetuan_file/20140414110055_788.rar', 'asdasdasdasdasdasd', '', '管理员', 'http://', '1397444400', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_shetuan_notice
-- ----------------------------
DROP TABLE IF EXISTS `sk_shetuan_notice`;
CREATE TABLE `sk_shetuan_notice` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务公告栏';

-- ----------------------------
-- Records of sk_shetuan_notice
-- ----------------------------
INSERT INTO `sk_shetuan_notice` VALUES ('1', '0', '社团公告信息', '/attachments/shetuan_notice/20140414104731_615.jpg', '社团公告信息-第一条', '社团公告信息-第一条', '管理员', 'http://', '1397443620', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_staffmien
-- ----------------------------
DROP TABLE IF EXISTS `sk_staffmien`;
CREATE TABLE `sk_staffmien` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=269 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工风采表';

-- ----------------------------
-- Records of sk_staffmien
-- ----------------------------
INSERT INTO `sk_staffmien` VALUES ('266', 'CEO', '/attachments/staffmien/20140123163657_162.png', '五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...', '<span style=\"color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:18px;orphans:2;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;display:inline !important;float:none;\">五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...</span>', '1390466160', 'a:3:{s:5:\"title\";s:3:\"CEO\";s:3:\"key\";s:3:\"CEO\";s:8:\"describe\";s:3:\"CEO\";}', '0', '1');
INSERT INTO `sk_staffmien` VALUES ('267', '销售经理', '/attachments/staffmien/20140123163725_932.png', '五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...', '<span style=\"color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:18px;orphans:2;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;display:inline !important;float:none;\">五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...</span>', '1390466220', 'a:3:{s:5:\"title\";s:12:\"销售经理\";s:3:\"key\";s:12:\"销售经理\";s:8:\"describe\";s:12:\"销售经理\";}', '0', '1');
INSERT INTO `sk_staffmien` VALUES ('268', '创意团队', '/attachments/staffmien/20140123163747_120.png', '五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...', '<span style=\"color:#727272;font-family:Arial, simsun;font-size:12px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:18px;orphans:2;text-align:-webkit-auto;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;display:inline !important;float:none;\">五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑理念为支撑...</span>', '1390466220', 'a:3:{s:5:\"title\";s:12:\"创意团队\";s:3:\"key\";s:12:\"创意团队\";s:8:\"describe\";s:12:\"创意团队\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_sysinfo
-- ----------------------------
DROP TABLE IF EXISTS `sk_sysinfo`;
CREATE TABLE `sk_sysinfo` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '所属父类id',
  `cid` varchar(255) collate utf8_unicode_ci default NULL COMMENT '所属栏目',
  `title` varchar(255) collate utf8_unicode_ci default '' COMMENT '文章标题',
  `etitle` varchar(200) collate utf8_unicode_ci default '' COMMENT '英文标题',
  `content` text collate utf8_unicode_ci COMMENT '文章内容',
  `isopen` tinyint(1) default '0' COMMENT '是否开启系统文章',
  `isrec` tinyint(1) default '0' COMMENT '推荐',
  `tags` varchar(255) collate utf8_unicode_ci default '' COMMENT '关键字设置',
  `sort` int(11) default '0' COMMENT '前台排序',
  `createtime` int(11) default NULL,
  `icon` varchar(255) collate utf8_unicode_ci default '' COMMENT '文章图标',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='系统文章信息';

-- ----------------------------
-- Records of sk_sysinfo
-- ----------------------------
INSERT INTO `sk_sysinfo` VALUES ('110', '0', '4', '卖场通路', '卖场通路', '卖场通路<br />', '1', '0', '', '1', '1390449703', null, 'a:3:{s:5:\"title\";s:12:\"卖场通路\";s:3:\"key\";s:12:\"卖场通路\";s:8:\"describe\";s:12:\"卖场通路\";}');
INSERT INTO `sk_sysinfo` VALUES ('122', '0', '4', '经销加盟', '经销加盟', '经销加盟', '1', '0', '', '2', '1390449717', '', 'a:3:{s:5:\"title\";s:12:\"经销加盟\";s:3:\"key\";s:12:\"经销加盟\";s:8:\"describe\";s:12:\"经销加盟\";}');
INSERT INTO `sk_sysinfo` VALUES ('123', '0', '4', '酒店餐饮', '酒店餐饮', '酒店餐饮', '1', '0', '', '3', '1390449730', '', 'a:3:{s:5:\"title\";s:12:\"酒店餐饮\";s:3:\"key\";s:12:\"酒店餐饮\";s:8:\"describe\";s:12:\"酒店餐饮\";}');
INSERT INTO `sk_sysinfo` VALUES ('124', '0', '4', '电子商务', '电子商务', '电子商务', '1', '0', '', '4', '1390449745', '', 'a:3:{s:5:\"title\";s:12:\"电子商务\";s:3:\"key\";s:12:\"电子商务\";s:8:\"describe\";s:12:\"电子商务\";}');
INSERT INTO `sk_sysinfo` VALUES ('125', '0', '4', '供应合作', '供应合作', '供应合作', '1', '0', '', '5', '1390449758', '', 'a:3:{s:5:\"title\";s:12:\"供应合作\";s:3:\"key\";s:12:\"供应合作\";s:8:\"describe\";s:12:\"供应合作\";}');
INSERT INTO `sk_sysinfo` VALUES ('126', '0', '4', '海外市场', '海外市场', '海外市场', '1', '0', '', '6', '1390449770', '', 'a:3:{s:5:\"title\";s:12:\"海外市场\";s:3:\"key\";s:12:\"海外市场\";s:8:\"describe\";s:12:\"海外市场\";}');
INSERT INTO `sk_sysinfo` VALUES ('127', '0', '5', '联系方式', 'Contact Us', '<div class=\"l_img\">\r\n	<img src=\"/attachments/image/20140123/20140123040605_42750.png\" alt=\"\" /><br />\r\n</div>\r\n<div class=\"w430\">\r\n	<div class=\"lwenzi\">\r\n		上海海天下冷冻食品有限公司\r\n	</div>\r\n	<div class=\"lh18\">\r\n		<p>\r\n			地址：上海市闵行区向阳路1318号\r\n		</p>\r\n		<p>\r\n			邮编：201108\r\n		</p>\r\n		<p>\r\n			电话：+86-021-54581120&nbsp;                        +86-021-54581120\r\n		</p>\r\n		<p>\r\n			传真：+86-021-54581120\r\n		</p>\r\n		<p>\r\n			Q  Q：1047184675\r\n		</p>\r\n		<p>\r\n			网址：<a href=\"#\">www.wenyong.com</a>\r\n		</p>\r\n		<p>\r\n			联系人：焦先生\r\n		</p>\r\n		<p>\r\n			邮箱：senyong@qq.com\r\n		</p>\r\n	</div>\r\n</div>\r\n<div class=\"cboth\">\r\n	感谢您对海天下的关注，如果您有什么疑问，可以通过电话、传真、E-mail等方式与我们直接联系。\r\n</div>', '1', '0', '', '1', '1390449972', '', 'a:3:{s:5:\"title\";s:12:\"联系方式\";s:3:\"key\";s:12:\"联系方式\";s:8:\"describe\";s:12:\"联系方式\";}');
INSERT INTO `sk_sysinfo` VALUES ('109', '0', '1', '企业简介', 'Introduction', '<div class=\"l_img\">\r\n	<img src=\"/attachments/image/20140123/20140123035715_49830.png\" alt=\"\" /><br />\r\n</div>\r\n<div class=\"lwenzi\">\r\n	上海海天下冷冻食品有限公司\r\n</div>\r\n五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑；专业从事基于全网营销的系统开发，包含Web网站、IOS/Android 客户端（APP）、触屏系统的策划与开发；提供从策划、开发到后期维护及技术支持等全方位的解决方案。<br />\r\n五五来客的核心技术团队具备8年以上技术开发及项目管理经验，精通UI设计、底层架构、开发工具、功能模块、项目管理、网络安全，充分保证了每一个产品出色的品质及完善的售后服务。<br />\r\n我们秉承帮助客户成功，以质量求生存，以服务求发展，以信誉占市场的服务理念。服务于企业、服务于行业、服务于社会，全面推动中国互联网及移动互联网应用的进步，提升中国企业国际竞争力。<br />\r\n五五来客是一家致力于互联网及移动互联网服务的专业品牌，是国内“全网营销”的领跑者。五五来客以策划为最大竞争力、先进互联网技术为核心、全方位服务理念为支撑；专业从事基于全网营销的系统开发，包含Web网站、IOS/Android 客户端（APP）、触屏系统的策划与开发；提供从策划、开发到后期维护及技术支持等全方位的解决方案。', '1', '0', '', '1', '1390449437', null, 'a:3:{s:5:\"title\";s:12:\"企业简介\";s:3:\"key\";s:12:\"企业简介\";s:8:\"describe\";s:12:\"企业简介\";}');
INSERT INTO `sk_sysinfo` VALUES ('111', '0', '1', '企业文化', '企业文化', '<a href=\"#\" style=\"color:#727272;text-decoration:none;font-family:Arial, simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:32px;orphans:2;text-align:center;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">企业文化</a>', '1', '0', '', '2', '1390449475', '', 'a:3:{s:5:\"title\";s:12:\"企业文化\";s:3:\"key\";s:12:\"企业文化\";s:8:\"describe\";s:12:\"企业文化\";}');
INSERT INTO `sk_sysinfo` VALUES ('112', '0', '1', '组织架构', '组织架构', '<a href=\"#\" style=\"color:#727272;text-decoration:none;font-family:Arial, simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:32px;orphans:2;text-align:center;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">组织架构</a>', '1', '0', '', '3', '1390449491', '', 'a:3:{s:5:\"title\";s:12:\"组织架构\";s:3:\"key\";s:12:\"组织架构\";s:8:\"describe\";s:12:\"组织架构\";}');
INSERT INTO `sk_sysinfo` VALUES ('113', '0', '1', '旗下机构', '旗下机构', '<a href=\"#\" style=\"color:#727272;text-decoration:none;font-family:Arial, simsun;font-size:14px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:32px;orphans:2;text-align:center;text-indent:0px;text-transform:none;white-space:normal;widows:2;word-spacing:0px;-webkit-text-size-adjust:auto;-webkit-text-stroke-width:0px;\">旗下机构</a>', '1', '0', '', '5', '1390449504', '', 'a:3:{s:5:\"title\";s:12:\"旗下机构\";s:3:\"key\";s:12:\"旗下机构\";s:8:\"describe\";s:12:\"旗下机构\";}');
INSERT INTO `sk_sysinfo` VALUES ('114', '0', '2', '成长历程', '成长历程', '成长历程', '1', '0', '', '1', '1390449552', '', 'a:3:{s:5:\"title\";s:12:\"成长历程\";s:3:\"key\";s:12:\"成长历程\";s:8:\"describe\";s:12:\"成长历程\";}');
INSERT INTO `sk_sysinfo` VALUES ('115', '0', '2', '品牌理念', '品牌理念', '品牌理念', '1', '0', '', '2', '1390449568', '', 'a:3:{s:5:\"title\";s:12:\"品牌理念\";s:3:\"key\";s:12:\"品牌理念\";s:8:\"describe\";s:12:\"品牌理念\";}');
INSERT INTO `sk_sysinfo` VALUES ('116', '0', '2', '发展规划', '发展规划', '发展规划', '1', '0', '', '3', '1390449582', '', 'a:3:{s:5:\"title\";s:12:\"发展规划\";s:3:\"key\";s:12:\"发展规划\";s:8:\"describe\";s:12:\"发展规划\";}');
INSERT INTO `sk_sysinfo` VALUES ('117', '0', '2', '生产研发', '生产研发', '生产研发', '1', '1', '', '4', '1390472529', '', 'a:3:{s:5:\"title\";s:12:\"生产研发\";s:3:\"key\";s:12:\"生产研发\";s:8:\"describe\";s:12:\"生产研发\";}');
INSERT INTO `sk_sysinfo` VALUES ('118', '0', '2', '海洋渔业', '海洋渔业', '海洋渔业', '1', '1', '', '5', '1390472545', '', 'a:3:{s:5:\"title\";s:12:\"海洋渔业\";s:3:\"key\";s:12:\"海洋渔业\";s:8:\"describe\";s:12:\"海洋渔业\";}');
INSERT INTO `sk_sysinfo` VALUES ('119', '0', '2', '冷链物流', '冷链物流', '冷链物流', '1', '1', '', '6', '1390472555', '', 'a:3:{s:5:\"title\";s:12:\"冷链物流\";s:3:\"key\";s:12:\"冷链物流\";s:8:\"describe\";s:12:\"冷链物流\";}');
INSERT INTO `sk_sysinfo` VALUES ('120', '0', '2', '现代农业', '现代农业', '现代农业', '1', '1', '', '7', '1390472519', '', 'a:3:{s:5:\"title\";s:12:\"现代农业\";s:3:\"key\";s:12:\"现代农业\";s:8:\"describe\";s:12:\"现代农业\";}');
INSERT INTO `sk_sysinfo` VALUES ('121', '0', '3', '人才理念', '人才理念', '人才理念', '1', '0', '', '1', '1390449667', '', 'a:3:{s:5:\"title\";s:12:\"人才理念\";s:3:\"key\";s:12:\"人才理念\";s:8:\"describe\";s:12:\"人才理念\";}');
INSERT INTO `sk_sysinfo` VALUES ('128', '0', '1', 'asdasdsad', 'asdasd', 'asdasdasdasd', '1', '0', '', '0', '1397010903', '', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_sysinfo` VALUES ('129', '0', '2', 'asdasdas', '', 'asdasdasd', '1', '0', '', '0', '1397010936', '', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_top_nav
-- ----------------------------
DROP TABLE IF EXISTS `sk_top_nav`;
CREATE TABLE `sk_top_nav` (
  `id` int(12) NOT NULL auto_increment,
  `sub` int(11) default NULL COMMENT '父类id',
  `name` varchar(100) collate utf8_unicode_ci default NULL COMMENT '名称',
  `descr` text collate utf8_unicode_ci COMMENT '描述\\r\\n',
  `sort` int(12) default '0' COMMENT '排序\r\n            ',
  `isopen` tinyint(1) default '0' COMMENT '是否开启',
  `issys` tinyint(1) default '0' COMMENT '系统默认(用户不能删除)',
  `url` varchar(100) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='顶部导航';

-- ----------------------------
-- Records of sk_top_nav
-- ----------------------------
INSERT INTO `sk_top_nav` VALUES ('1', '0', '志愿服务', '', '1', '1', '0', 'http://');

-- ----------------------------
-- Table structure for sk_tuanwu
-- ----------------------------
DROP TABLE IF EXISTS `sk_tuanwu`;
CREATE TABLE `sk_tuanwu` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_tuanwu
-- ----------------------------
INSERT INTO `sk_tuanwu` VALUES ('2', '2', '第一条团务公开测试信息', '', '', '/attachments/tuanwu/20140409154706_458.jpg', '第一条团务公开测试信息', '第一条团务公开测试信息', '管理员', '1397029560', '3', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_tuanwu` VALUES ('3', '2', '团委通知', '', '', '/attachments/tuanwu/20140409174236_162.jpg', '团委通知', '团委通知', '管理员', '1397036520', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1');

-- ----------------------------
-- Table structure for sk_tuanwucate
-- ----------------------------
DROP TABLE IF EXISTS `sk_tuanwucate`;
CREATE TABLE `sk_tuanwucate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  `percent_info` tinytext collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_tuanwucate
-- ----------------------------
INSERT INTO `sk_tuanwucate` VALUES ('1', '5', '稳健型', '稳健型', '稳健型', '/attachments/tuanwucate/20140409154735_470.jpg', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', 'a:4:{i:1;s:2:\"20\";i:2;s:2:\"50\";i:3;s:2:\"20\";i:4;s:2:\"10\";}');
INSERT INTO `sk_tuanwucate` VALUES ('2', '5', '保守型', '保守型', '保守型2222', '/attachments/tuanwucate/20140409154722_938.jpg', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', 'a:4:{i:1;s:2:\"20\";i:2;s:2:\"40\";i:3;s:2:\"40\";i:4;s:1:\"0\";}');
INSERT INTO `sk_tuanwucate` VALUES ('3', '5', '积极型', '进取型', '进取型', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', 'a:4:{i:1;s:2:\"10\";i:2;s:2:\"40\";i:3;s:2:\"20\";i:4;s:2:\"30\";}');
INSERT INTO `sk_tuanwucate` VALUES ('4', '5', '进取型', '激进型', '激进型', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', 'a:4:{i:1;s:2:\"10\";i:2;s:2:\"30\";i:3;s:2:\"10\";i:4;s:2:\"50\";}');
INSERT INTO `sk_tuanwucate` VALUES ('5', '0', '资产配置方案', '资产配置方案', '理财不仅仅是购买一两款产品，更重要的是要根据家庭的财务状况和理财目标，确定一个合理的资产配置比例，然后再挑选匹配的投资产品。每个家庭的情况不相同，风险承受能力不同，从而导致理财需求的层次和循序也不相同，因此，个性化的资产配置方案也各不相同。', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', 'a:4:{i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";}');
INSERT INTO `sk_tuanwucate` VALUES ('6', '0', '资产配置比例', '上海沃赢资产管理有限公司 - powered by 55Like.com.htm', '上海沃赢资产管理有限公司 - powered by 55Like.com.htm', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '');

-- ----------------------------
-- Table structure for sk_usergroups
-- ----------------------------
DROP TABLE IF EXISTS `sk_usergroups`;
CREATE TABLE `sk_usergroups` (
  `groupid` smallint(6) unsigned NOT NULL auto_increment,
  `adminid` smallint(6) unsigned NOT NULL default '0',
  `gtype` enum('system','special','member') collate utf8_unicode_ci NOT NULL default 'member',
  `grouptitle` varchar(30) collate utf8_unicode_ci NOT NULL default '',
  `confing` text collate utf8_unicode_ci NOT NULL,
  `ifdefault` tinyint(1) default '0',
  PRIMARY KEY  (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员组';

-- ----------------------------
-- Records of sk_usergroups
-- ----------------------------
INSERT INTO `sk_usergroups` VALUES ('1', '1', 'system', '后台管理员', '', '1');
INSERT INTO `sk_usergroups` VALUES ('2', '1', 'system', '文章管理员', '', '0');
INSERT INTO `sk_usergroups` VALUES ('3', '0', 'member', '普通用户（终端客户）', '', '0');
INSERT INTO `sk_usergroups` VALUES ('4', '0', 'member', '机构业务顾问', '', '0');
INSERT INTO `sk_usergroups` VALUES ('5', '0', 'member', '管理层-总监', '', '0');
INSERT INTO `sk_usergroups` VALUES ('6', '0', 'member', '管理层-经理', '', '0');
INSERT INTO `sk_usergroups` VALUES ('7', '0', 'member', '管理层-总裁', '', '0');

-- ----------------------------
-- Table structure for sk_xinwen
-- ----------------------------
DROP TABLE IF EXISTS `sk_xinwen`;
CREATE TABLE `sk_xinwen` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_xinwen
-- ----------------------------
INSERT INTO `sk_xinwen` VALUES ('1', '2', '第一条团委新闻', '', '', '/attachments/xinwen/20140409095810_759.png', '第一条团委新闻', '第一条团委新闻', '管理员', '1397008620', '13', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_xinwencate
-- ----------------------------
DROP TABLE IF EXISTS `sk_xinwencate`;
CREATE TABLE `sk_xinwencate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_xinwencate
-- ----------------------------
INSERT INTO `sk_xinwencate` VALUES ('2', '0', '风险体系', '风险体系', '&lt;img src=&quot;/images/fx_img1.jpg&quot; width=&quot;826&quot; height=&quot;654&quot; alt=&quot;&quot; style=&quot;display:block;margin:0 auto;&quot; /&gt;', '/attachments/xinwen/20140409095748_734.png', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_xinwencate` VALUES ('3', '0', '贴心服务', '贴心服务', '&lt;h2&gt;\n内部控制、风险管理和合规服务\n&lt;/h2&gt;\n&lt;p&gt;\n不确定性既带来风险也带来机遇，并有损害或提高企业价值的可能。然而，过度地承担风险会对组织产生负面影响，在极端的情况下，甚至可能导致其破产。由于对于良好公司治理、有效风险管理及内部控制重要性的认知在全球范围内持续增长，使得对高质量的企业治理、风险控制和合规服务的需求也相应增长。\n&lt;/p&gt;\n我们的专业服务包括：&lt;br /&gt;\n• 企业风险管理(ERM) &lt;br /&gt;\n• 内部审计(IA)/内部控制复核&lt;br /&gt;\n• 萨班斯奥克斯利法案S404咨询/实施&lt;br /&gt;\n• 标准操作流程(SOP)的编制和实施&lt;br /&gt;\n• 合规性复核', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_xinwencate` VALUES ('4', '0', '专家团队', '专家团队', '专家团队', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_xinwencate` VALUES ('5', '0', '独家资源', '', '', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_yanjiu
-- ----------------------------
DROP TABLE IF EXISTS `sk_yanjiu`;
CREATE TABLE `sk_yanjiu` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_yanjiu
-- ----------------------------
INSERT INTO `sk_yanjiu` VALUES ('1', '1', '温州融资立法是对民间借贷进行适当干预和监管', '', '', '', '温州融资立法是对民间借贷进行适当干预和监管', '<a href=\"http://www.xinfushi.dev/%E4%BF%A1%E6%89%98%E8%B5%84%E8%AE%AF--%E8%AF%A6%E6%83%85.html\" title=\"\">温州融资立法是对民间借贷进行适当干预和监管</a>', '管理员', '1397009520', '5', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_yanjiu` VALUES ('2', '4', '11月信托月报：金融房地产领域金融房地产领域', '', '', '/attachments/yanjiu/20140417175748_409.jpg', '金融房地产领域金融房地产领域，金融房地产领域金融房地产领域，金融房地产领域金融房地。产领域金融房地产领域金融房地产领域，金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域', '金融房地产领域金融房地产领域，金融房地产领域金融房地产领域，金融房地产领域金融房地。产领域金融房地产领域金融房地产领域，金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域金融房地产领域', '管理员', '1397728560', '8', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_yanjiu` VALUES ('3', '2', '1111111111', '', '', '/attachments/yanjiu/20140429173137_641.jpg', '1111111111', '1111111111111111111', '管理员', '1398763860', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_yanjiucate
-- ----------------------------
DROP TABLE IF EXISTS `sk_yanjiucate`;
CREATE TABLE `sk_yanjiucate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `isfront` int(11) NOT NULL,
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_yanjiucate
-- ----------------------------
INSERT INTO `sk_yanjiucate` VALUES ('1', '0', '信托视点', '课题研究', '课题研究', '', '2', '0', '1', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yanjiucate` VALUES ('2', '0', '信托头条', '成果展示', '成果展示', '', '1', '0', '1', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yanjiucate` VALUES ('4', '0', '行业资讯', '行业资讯', '行业资讯', '', '3', '0', '1', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_youhui
-- ----------------------------
DROP TABLE IF EXISTS `sk_youhui`;
CREATE TABLE `sk_youhui` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `title_1` varchar(200) collate utf8_unicode_ci NOT NULL,
  `title_2` varchar(200) collate utf8_unicode_ci NOT NULL,
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `videopath` varchar(200) collate utf8_unicode_ci NOT NULL,
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `integration` int(11) NOT NULL COMMENT '积分',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_youhui
-- ----------------------------
INSERT INTO `sk_youhui` VALUES ('2', '2', '青春第一季', '', '', '/attachments/zhuanti/20140409162325_290.jpg', '', '青春第一季', '青春第一季 请继续<br />', '管理员', '1397031660', '0', '4536', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_youhui` VALUES ('4', '2', 'iPhone', '', '', '/attachments/youhui/20140417120143_639.jpg', '', '列，它搭载苹果公司研发的iOS手机操作系统。第一代iPhone于2007年1月9日由当时苹果公司CEO的史蒂夫·乔布斯发布，并在同年6月29日正式发售', '列，它搭载苹果公司研发的iOS手机操作系统。第一代iPhone于2007年1月9日由当时苹果公司CEO的史蒂夫·乔布斯发布，并在同年6月29日正式发售', '', '1397707200', '0', '45678', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_youhui` VALUES ('5', '2', '1', '', '', '/attachments/youhui/20140504134108_140.jpg', '', '', '', '', '1399182000', '0', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_youhui` VALUES ('6', '2', '2', '', '', '/attachments/youhui/20140504134321_960.jpg', '', '', '', '', '1399182180', '0', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_youhui` VALUES ('7', '2', '3', '', '', '/attachments/youhui/20140504134409_128.jpg', '', '', 'f', '', '1399182180', '0', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_youhui` VALUES ('8', '2', '4', '', '', '/attachments/youhui/20140504134605_790.jpg', '', '', '', '', '1399182300', '0', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_youhuicate
-- ----------------------------
DROP TABLE IF EXISTS `sk_youhuicate`;
CREATE TABLE `sk_youhuicate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_youhuicate
-- ----------------------------
INSERT INTO `sk_youhuicate` VALUES ('2', '0', '积分换礼', '', 'asdasd', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_youhuicate` VALUES ('3', '0', '网约特惠', '', '网约特惠简介5555555', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_yuyue
-- ----------------------------
DROP TABLE IF EXISTS `sk_yuyue`;
CREATE TABLE `sk_yuyue` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `no_id` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '系列号ID',
  `uid` int(11) NOT NULL,
  `name` varchar(256) collate utf8_unicode_ci default NULL COMMENT '姓名',
  `phone` varchar(200) collate utf8_unicode_ci NOT NULL,
  `email` varchar(200) collate utf8_unicode_ci NOT NULL,
  `cids` varchar(128) collate utf8_unicode_ci default NULL COMMENT '类型ID',
  `price` int(11) NOT NULL,
  `message` mediumtext collate utf8_unicode_ci COMMENT '留言',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` bigint(10) default NULL COMMENT '创建日期',
  `chanpin_id` int(8) default '0' COMMENT '产品id',
  `status` int(11) NOT NULL COMMENT '预约状态\r\n0表示刚下的预约待审核，\r\n1表示审核通过,\r\n2表示审核未通过,\r\n3表示预约中,\r\n4表示认购成功,\r\n5表示认购未成功',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  `confirm_time` varchar(11) collate utf8_unicode_ci NOT NULL COMMENT '认购日期',
  `confirm_price` int(11) NOT NULL COMMENT '认购金额',
  `interest_time` int(11) NOT NULL COMMENT '起息时间',
  `duration` int(11) NOT NULL COMMENT '项目期限',
  `interest_pay_time` int(11) NOT NULL COMMENT '本息兑付时间',
  `found_time` int(11) NOT NULL COMMENT '成立日期',
  `isread` varchar(255) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='在线预约';

-- ----------------------------
-- Records of sk_yuyue
-- ----------------------------
INSERT INTO `sk_yuyue` VALUES ('10', null, 'Yr05211611632958', '37', 'customer1', '15000711266', '', ',12,13,', '300', 'wafff customer 登陆的状态下', null, '', '1400659860', '5', '4', null, '0', '0', '1400833140', '400', '0', '0', '0', '0', null);
INSERT INTO `sk_yuyue` VALUES ('9', null, 'D305191705402090', '37', 'customer1', '15000711266', '', ',9,10,', '200', 'asdasdasdasd', null, '', '1400490300', '5', '0', null, '0', '0', '1400567700', '2000', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for sk_yuyuecate
-- ----------------------------
DROP TABLE IF EXISTS `sk_yuyuecate`;
CREATE TABLE `sk_yuyuecate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='预约分类表';

-- ----------------------------
-- Records of sk_yuyuecate
-- ----------------------------
INSERT INTO `sk_yuyuecate` VALUES ('13', '0', '其他（TOT、一对多等）', '', '其他（TOT、一对多等）', '', '5', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yuyuecate` VALUES ('11', '0', '固定收益类', '', '固定收益类', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yuyuecate` VALUES ('12', '0', '私募股权类', '', '私募股权类', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yuyuecate` VALUES ('10', '0', '私募基金类（私募基金产品、私募走访报告、私募活动）', '', '1111', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_yuyuecate` VALUES ('9', '0', '公募基金类（公募基金产品、公募走访报告、公募活动）', '', '啊实打实大', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_zhiyuan_activity
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhiyuan_activity`;
CREATE TABLE `sk_zhiyuan_activity` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿活动列表';

-- ----------------------------
-- Records of sk_zhiyuan_activity
-- ----------------------------
INSERT INTO `sk_zhiyuan_activity` VALUES ('2', '0', 'asdasdsadasddasda', '/attachments/zhiyuan_activity/20140414121209_597.jpg', 'asdasd', 'asdasdasdasdasdasdasdasdsa', 'http://', '管理员', '1397440980', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_zhiyuan_activity` VALUES ('3', '0', 'asdadqweqweqwe', '/attachments/zhiyuan_activity/20140414121146_166.jpg', 'qweqweqweasdasdasd', 'asdasdqweqweqwdasdasdqweqwe', 'http://', '管理员', '1397440980', '3', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_zhiyuan_baoming
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhiyuan_baoming`;
CREATE TABLE `sk_zhiyuan_baoming` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) collate utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL COMMENT '1表示男2表示女',
  `icon` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT '头像',
  `xuehao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `xueyuan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `banji` varchar(100) collate utf8_unicode_ci NOT NULL,
  `zhengzhi` varchar(100) collate utf8_unicode_ci NOT NULL,
  `waiyu` varchar(100) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(100) collate utf8_unicode_ci NOT NULL,
  `fuzhuang` varchar(100) collate utf8_unicode_ci NOT NULL,
  `height` varchar(100) collate utf8_unicode_ci NOT NULL,
  `shenfenhao` varchar(100) collate utf8_unicode_ci NOT NULL,
  `weight` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` varchar(200) collate utf8_unicode_ci NOT NULL,
  `jingli` text collate utf8_unicode_ci NOT NULL,
  `remark` text collate utf8_unicode_ci NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务报名';

-- ----------------------------
-- Records of sk_zhiyuan_baoming
-- ----------------------------
INSERT INTO `sk_zhiyuan_baoming` VALUES ('1', '阿斯顿撒大声地', '1', '', '阿斯顿撒旦', '啊实打实大', '阿斯顿撒旦', '安达市', '啊实打实', 'asdasd@125.com', '150071126', 'adasd', 'asdasd', 'asdasd', 'asdasd', 'asdasdasd 111a', 'asdasd', 'asdasd', '0');

-- ----------------------------
-- Table structure for sk_zhiyuan_notice
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhiyuan_notice`;
CREATE TABLE `sk_zhiyuan_notice` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `title` varchar(256) collate utf8_unicode_ci default '' COMMENT '新闻标题',
  `path` varchar(128) collate utf8_unicode_ci default '' COMMENT '标题图路径',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `videopath` varchar(100) collate utf8_unicode_ci NOT NULL,
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='志愿服务公告栏';

-- ----------------------------
-- Records of sk_zhiyuan_notice
-- ----------------------------
INSERT INTO `sk_zhiyuan_notice` VALUES ('1', '0', '啊实打实大', '', '啊实打实大', '实打实大撒旦撒', '管理员', 'http://', '1397441940', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');
INSERT INTO `sk_zhiyuan_notice` VALUES ('2', '0', '啊实打实大师大的萨达', '', '啊实打实大师大的萨达', '啊实打实大师大的萨达', '管理员', 'http://', '1397442000', '6', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '0', '1');

-- ----------------------------
-- Table structure for sk_zhuanti
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhuanti`;
CREATE TABLE `sk_zhuanti` (
  `id` int(11) NOT NULL auto_increment,
  `cid` tinyint(3) default NULL COMMENT '分类id',
  `revenue` int(11) NOT NULL,
  `payment` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `title` varchar(256) collate utf8_unicode_ci default NULL COMMENT '新闻标题',
  `jigou` varchar(200) collate utf8_unicode_ci NOT NULL,
  `hotline` varchar(200) collate utf8_unicode_ci NOT NULL,
  `qixian` varchar(128) collate utf8_unicode_ci default NULL COMMENT '标题图路径',
  `guimo` varchar(200) collate utf8_unicode_ci NOT NULL,
  `menkan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `tuoguan` varchar(100) collate utf8_unicode_ci NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `raisetime` int(11) NOT NULL COMMENT '募集时间',
  `found_time` int(11) NOT NULL COMMENT '成立日期',
  `raise` text collate utf8_unicode_ci NOT NULL COMMENT '募集进度',
  `rate` float(11,1) NOT NULL,
  `tese` varchar(100) collate utf8_unicode_ci NOT NULL,
  `descr` mediumtext collate utf8_unicode_ci COMMENT '新闻简介',
  `content` text collate utf8_unicode_ci COMMENT '新闻介绍',
  `yongtu` text collate utf8_unicode_ci NOT NULL,
  `baozhang` text collate utf8_unicode_ci NOT NULL,
  `laiyuan` text collate utf8_unicode_ci NOT NULL,
  `profile` text collate utf8_unicode_ci NOT NULL,
  `dianping` text collate utf8_unicode_ci NOT NULL,
  `jigou_profile` text collate utf8_unicode_ci NOT NULL,
  `author` varchar(64) collate utf8_unicode_ci default '' COMMENT '作者',
  `createtime` int(10) default NULL COMMENT '创建日期',
  `hits` mediumint(8) default '0' COMMENT '点击次数',
  `seo` varchar(600) collate utf8_unicode_ci default NULL COMMENT 'seo',
  `isrec` tinyint(1) default '0' COMMENT '是否推荐',
  `isopen` tinyint(1) default '0',
  `state` enum('1','2','3') collate utf8_unicode_ci NOT NULL COMMENT '产品状态',
  `service_rate` text collate utf8_unicode_ci COMMENT '服务费率',
  `star_val` float(11,1) default NULL,
  `high_service_rate` float(11,1) default NULL,
  `pro_code` varchar(255) collate utf8_unicode_ci default NULL,
  `fangan` text collate utf8_unicode_ci,
  `filepath` varchar(255) collate utf8_unicode_ci default NULL COMMENT '附件',
  `liangdian` text collate utf8_unicode_ci,
  `shouyi` text collate utf8_unicode_ci,
  `istop` int(11) default NULL COMMENT '置顶',
  `o_title` varchar(100) collate utf8_unicode_ci default NULL,
  `o_jigou` varchar(100) collate utf8_unicode_ci default NULL,
  `o_jigou_profile` text collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻表';

-- ----------------------------
-- Records of sk_zhuanti
-- ----------------------------
INSERT INTO `sk_zhuanti` VALUES ('4', '2', '5', '5', '3', '中江国际-银象130号南通', '新时代信托', '预约热线', '24', '9100', '2100', '托管银行', '1397733096', '1398424298', '1397783248', '1398733850', '', '5.9', '特色', null, null, '资金用途', '保障措施', '还款来源', '项目介绍', '点评', '发行机构介绍', '', '1397732220', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1', '2', '', '4.0', '0.0', 'wewewe', null, null, null, null, null, null, null, null);
INSERT INTO `sk_zhuanti` VALUES ('5', '1', '5', '5', '1', '中江国际-银象130号南通1', '新时代信托', '44444444', '36', '9600', '2100', '新时代信托', '1397783381', '1398906582', '1397783380', '1398927877', '<p>目前进账1700万\r\n后续继续进款</p><p>asdasdasdasdasd</p><p>asdasdasdasdasdasdasd</p>', '10.3', '中江国际-银象130号南通1 特色', null, null, '<p>中江国际-银象130号南通1 用途</p>', '<p>中江国际-银象130号南通1 保障</p>', '<p>中江国际-银象130号南通1 还款</p>', '<p>中江国际-银象130号南通1 项目介绍</p>', '<p>中江国际-银象130号南通1 产品点评</p>', '<p>中江国际-银象130号南通1 发行机构介绍</p>', '', '1397783340', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1', '1', '<table width=\"100%\"><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">认购金额（万元）<br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">预期收益(%)<br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">服务费率(%)<br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">100≤300</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">300≤800</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">800以上</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr></tbody></table>', '3.0', '0.0', '', '<table width=\"100%\"><tbody><tr><td width=\"20%\" bgcolor=\"#ffeecb\"><strong>产品名称</strong></td><td><p>中江国际-银象130号南通</p></td></tr><tr><td width=\"20%\" bgcolor=\"#ffeecb\"><strong>发行费用</strong></td><td><p>大额2.1%　小额配好2.5%　（500万含一个小额）</p></td></tr><tr><td width=\"20%\" bgcolor=\"#ffeecb\"><strong>募集帐号</strong></td><td></td></tr><tr><td width=\"20%\" bgcolor=\"#ffeecb\"><strong>收益明细</strong></td><td><p>100万-300万　　9%<br/>300万-2000万　　9.5%<br/>2000万以上　　10%<br/></p></td></tr></tbody></table>', null, '', '<table width=\"100%\"><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">认购金额(万元)</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">预期年化收益率</td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">100≤300</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">300≤800</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">800以上</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr></tbody></table>', null, null, null, null);
INSERT INTO `sk_zhuanti` VALUES ('6', '5', '6', '6', '2', 'test001 产品测试', '安信银行', '1444400000', '12', '223', '224', '安心银行', '1398497853', '1398757054', '1398497843', '1398584249', 'test001 产品测试 募集进度', '38.0', '品质好，质量好，收益高', null, null, 'test001 产品测试 资金用途', 'test001 产品测试 保障措施', 'test001 产品测试 还款来源', 'test001 产品测试 项目介绍', 'test001 产品测试 产品点评', 'test001 产品测试 发行机构介绍', '', '1398497760', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1', '1', '<table style=\"width:100%;\" border=\"1\" bordercolor=\"#000000\" cellpadding=\"2\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				资金名称<br />\r\n			</td>\r\n			<td>\r\n				资金金额<br />\r\n			</td>\r\n			<td>\r\n				服务费率<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				名称1<br />\r\n			</td>\r\n			<td>\r\n				2000万<br />\r\n			</td>\r\n			<td>\r\n				1.8%<br />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				名称2<br />\r\n			</td>\r\n			<td>\r\n				3000万<br />\r\n			</td>\r\n			<td>\r\n				1.9%<br />\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />', '3.0', '12.0', null, null, null, null, null, null, null, null, null);
INSERT INTO `sk_zhuanti` VALUES ('7', '5', '5', '5', '1', 'test002', '发行机构', '40000', '12', '1211', '111122', '安心银行', '1398822188', '1398822189', '1398822183', '1398822187', '<p>募集进度</p>', '12.6', '特色', null, null, '<p>资金用途</p>', '<p>保障措施</p>', '<p>还款来源</p>', '<p>项目介绍</p>', '<p>产品点评</p>', '<p>发行机构介绍</p>', '', '1398822120', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1', '1', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;服务费率\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '3.5', '23.8', 'wewewew', '<table width=\"100%\"><tbody><tr><td bgcolor=\"#ffeecb\" width=\"20%\"><strong>产品名称</strong> \r\n			</td><td><p>\r\n					中江国际-银象130号南通				</p></td></tr><tr><td bgcolor=\"#ffeecb\" width=\"20%\"><strong>发行费用</strong> \r\n			</td><td><p>\r\n					大额2.1%　小额配好2.5%　（500万含一个小额）				</p></td></tr><tr><td bgcolor=\"#ffeecb\" width=\"20%\"><strong>募集帐号</strong> \r\n			</td><td><br/></td></tr><tr><td bgcolor=\"#ffeecb\" width=\"20%\"><strong>收益明细</strong> \r\n			</td><td><p>\r\n					100万-300万　　9%<br/>300万-2000万　　9.5%<br/>2000万以上　　10%<br/></p></td></tr></tbody></table>', '/attachments/filepath/20140515110033_983.rar', '', '<table width=\"100%\"><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">认购金额(万元)</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">预期年化收益率</td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">100≤300</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">300≤800</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">800以上</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr></tbody></table>', '1', null, null, null);
INSERT INTO `sk_zhuanti` VALUES ('8', '5', '5', '5', '3', '方正东亚-方兴40号镇江交投项目', '方正东亚信托有限责任公司', '021-24261880', '15', '50000', '100', '', '1399181606', '1399181606', '1399181606', '1399181606', '', '0.0', '大型国有独资公司，注册资本51006万元，当地财政实力雄厚，风控措施完善', null, null, '<p>资金用于官塘桥路建设，目前已完成主体工程施工，前期工程款由施工方垫付，现需支付相应施工款。</p>', '<p>一、连带责任保证担保：镇江新区经济开发总公司提供连带责任保证担保；\r\n二、国有土地使用权抵押：镇江交投将已第一顺位抵押我司方兴22号项目下448860.7平方米国有土地使用权第二顺位抵押我司为本项目抵押担保。根据武汉国佳房地资产评估有限公司口评报告，以上抵押物口评价值133536.05万元，本项目连同方兴22号项目综合抵押率为74.41%；方兴22号项目到期兑付后，本项目抵押担保率降为37.44%；\r\n三、资金归集：信托计划存续满 13、14、15个月前 10个工作日，分别归集保证金1000万、1000万、3000万。</p>', '<p>第一还款来源：镇江交投的经营收入。\r\n第二还款来源：当地财政以财政专项资金承担资金偿还缺口的补足义务。</p>', '', '', '<p>方正东亚信托有限责任公司前身为武汉国际信托投资公司。2010年1月23日，经中国银监会批准，北大方正集团有限公司、东亚银行有限公司、武汉经济发展投资（集团）有限公司重组武汉国际信托投资公司（银监复[2010]54号）。2010年9月2日，武汉国际信托投资公司变更为方正东亚信托有限责任公司，公司注册资本金为人民币3亿元。2010年11月26日，公司正式开业运营。2011年12月30日，经湖北银监局批准，公司注册资本金增加至人民币6亿元。</p>', '', '1399181040', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}', '1', '1', '1', '<table width=\"100%\"><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">认购金额（万元）<br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">预期收益(%)<br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\">服务费率(%)<br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">100≤300</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">300≤800</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr><tr><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"80\">800以上</td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td><td style=\"word-break: break-all;\" align=\"center\" valign=\"middle\" width=\"81\"><br/></td></tr></tbody></table>', '5.0', '1.8', 'LX0006', '<table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#000000\"><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\">认购金额</td><td><span style=\"color:#666666;font-family:SimSun, Arial;line-height:22px;\">预期年化收益率</span><br/></td><td><span style=\"color:#666666;font-family:SimSun, Arial;line-height:22px;\">服务费率</span><br/></td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				100万</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				1.0%</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				1.2%</td></tr><tr><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				200万</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				4.5%</td><td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n				5.6%</td></tr><tr><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">300万</td><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">5.1%</td><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">7.7%</td></tr></tbody></table><p><br/></p>', '/attachments/filepath/20140504133243_424.pdf', '', '<table style=\"width: 100%;\" cellpadding=\"2\" cellspacing=\"0\" border=\"1\" bordercolor=\"#000000\"><tbody><tr class=\"firstRow\"><td>\r\n				认购金额			</td><td><span style=\"color:#666666;font-family:SimSun, Arial;line-height:22px;\">预期年化收益率</span><br/></td><td><span style=\"color:#666666;font-family:SimSun, Arial;line-height:22px;\">服务费率</span><br/></td></tr><tr><td>\r\n				100万			</td><td>\r\n				1.0%			</td><td>\r\n				1.2%			</td></tr><tr><td>\r\n				200万			</td><td>\r\n				4.5%			</td><td>\r\n				5.6%			</td></tr><tr><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">300万</td><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">5.6%</td><td colspan=\"1\" rowspan=\"1\" style=\"word-break: break-all;\">1.2%</td></tr></tbody></table>', '1', '方正东亚-方兴40号镇江交投项目1', '方正东亚信托有限责任公司2', '');

-- ----------------------------
-- Table structure for sk_zhuantiarea
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhuantiarea`;
CREATE TABLE `sk_zhuantiarea` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='投资领域';

-- ----------------------------
-- Records of sk_zhuantiarea
-- ----------------------------
INSERT INTO `sk_zhuantiarea` VALUES ('1', '0', '工商企业类', '工商企业类', '工商企业类', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantiarea` VALUES ('2', '0', '金融市场类', '金融市场类', '金融市场类', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantiarea` VALUES ('3', '0', '基础设施类', '基础设施类', '基础设施类', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantiarea` VALUES ('4', '0', '房地产类', '房地产类', '房地产类', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantiarea` VALUES ('5', '0', '其他类', '其他类', '其他类', '', '5', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_zhuanticate
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhuanticate`;
CREATE TABLE `sk_zhuanticate` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='新闻分类表';

-- ----------------------------
-- Records of sk_zhuanticate
-- ----------------------------
INSERT INTO `sk_zhuanticate` VALUES ('1', '0', '现金管理类', '年度专题', '年度专题', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('2', '0', '类固定收益', '青春一瞬', '青春一瞬', '/attachments/zhuanticate/20140409160259_858.jpg', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('3', '0', '银行理财产品', '流光溢彩', '流光溢彩', '/attachments/zhuanticate/20140409160321_529.jpg', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('4', '0', '权益类', '权益类', '&lt;span&gt;权益类&lt;/span&gt;', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('5', '2', '信托', '', '信托产品', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('6', '2', '资管', '资管产品', '&lt;a href=&quot;http://www.xinfushi.dev/chanpin/detail.html#&quot;&gt;资管产品&lt;/a&gt;', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanticate` VALUES ('9', '2', '私募', '', '', '', '3', '0', '0', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_zhuantipayment
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhuantipayment`;
CREATE TABLE `sk_zhuantipayment` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='收益类型';

-- ----------------------------
-- Records of sk_zhuantipayment
-- ----------------------------
INSERT INTO `sk_zhuantipayment` VALUES ('5', '0', '按季付息', '按季付息', '按季付息', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantipayment` VALUES ('6', '0', '半年付息', '半年付息', '半年付息', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantipayment` VALUES ('7', '0', '按年付息', '按年付息', '按年付息', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuantipayment` VALUES ('8', '0', '到期付息', '到期付息', '到期付息', '', '4', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');

-- ----------------------------
-- Table structure for sk_zhuanti_revenue_type
-- ----------------------------
DROP TABLE IF EXISTS `sk_zhuanti_revenue_type`;
CREATE TABLE `sk_zhuanti_revenue_type` (
  `id` int(11) NOT NULL auto_increment,
  `sub` int(11) default '0' COMMENT '父类id',
  `name` varchar(64) collate utf8_unicode_ci default '' COMMENT '分类名称',
  `ename` varchar(64) collate utf8_unicode_ci default '' COMMENT '英文名',
  `descr` mediumtext collate utf8_unicode_ci COMMENT '分类介绍',
  `icon` varchar(128) collate utf8_unicode_ci default '' COMMENT '分类图标',
  `sort` int(11) default NULL COMMENT '排序',
  `issys` tinyint(1) default '0' COMMENT '是否为系统默认分类',
  `isopen` tinyint(1) default '1' COMMENT '是否开启',
  `seo` varchar(600) collate utf8_unicode_ci default '' COMMENT 'seo',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='付息方式';

-- ----------------------------
-- Records of sk_zhuanti_revenue_type
-- ----------------------------
INSERT INTO `sk_zhuanti_revenue_type` VALUES ('5', '0', '固定收益类', '固定收益类', '固定收益类', '', '1', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanti_revenue_type` VALUES ('6', '0', '浮动收益类', '浮动收益类', '浮动收益类', '', '2', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
INSERT INTO `sk_zhuanti_revenue_type` VALUES ('7', '0', '固定+浮动收益类', '固定+浮动收益类', '固定+浮动收益类', '', '3', '0', '1', 'a:3:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:8:\"describe\";s:0:\"\";}');
