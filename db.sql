/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootjtw43
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootjtw43` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootjtw43`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootjtw43/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/springbootjtw43/upload/1621127657815.png');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/springbootjtw43/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussjingxiaoshang` */

DROP TABLE IF EXISTS `discussjingxiaoshang`;

CREATE TABLE `discussjingxiaoshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='经销商评论表';

/*Data for the table `discussjingxiaoshang` */

insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (91,'2021-05-16 08:46:11',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (92,'2021-05-16 08:46:11',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (93,'2021-05-16 08:46:11',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (94,'2021-05-16 08:46:11',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (95,'2021-05-16 08:46:11',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjingxiaoshang`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (96,'2021-05-16 08:46:11',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussqichexinxi` */

DROP TABLE IF EXISTS `discussqichexinxi`;

CREATE TABLE `discussqichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621127441928 DEFAULT CHARSET=utf8 COMMENT='汽车信息评论表';

/*Data for the table `discussqichexinxi` */

insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-16 08:46:11',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-16 08:46:11',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-16 08:46:11',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-16 08:46:11',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-16 08:46:11',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-16 08:46:11',6,6,'用户名6','评论内容6','回复内容6');
insert  into `discussqichexinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1621127441927,'2021-05-16 09:10:41',51,1621127329259,'001','登录后可评论 收藏 留言','这里回复用户评论');

/*Table structure for table `jiagefenlei` */

DROP TABLE IF EXISTS `jiagefenlei`;

CREATE TABLE `jiagefenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiagefenlei` varchar(200) NOT NULL COMMENT '价格分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiagefenlei` (`jiagefenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='价格分类';

/*Data for the table `jiagefenlei` */

insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (31,'2021-05-16 08:46:11','5-8万');
insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (32,'2021-05-16 08:46:11','8-10万');
insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (33,'2021-05-16 08:46:11','10-15万');
insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (34,'2021-05-16 08:46:11','15-18万');
insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (35,'2021-05-16 08:46:11','18-22万');
insert  into `jiagefenlei`(`id`,`addtime`,`jiagefenlei`) values (36,'2021-05-16 08:46:11','22万以上');

/*Table structure for table `jingxiaoshang` */

DROP TABLE IF EXISTS `jingxiaoshang`;

CREATE TABLE `jingxiaoshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `mendiantupian` varchar(200) DEFAULT NULL COMMENT '门店图片',
  `mendianweizhi` varchar(200) DEFAULT NULL COMMENT '门店位置',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `mendianjieshao` longtext COMMENT '门店介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='经销商';

/*Data for the table `jingxiaoshang` */

insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (41,'2021-05-16 08:46:11','奥迪门店','奥迪','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian1.jpg','门店位置1','020-89819991','经营范围1','<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127120822.jpg\"><img src=\"http://localhost:8080/springbootjtw43/upload/1621127123043.jpg\"></p>');
insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (42,'2021-05-16 08:46:11','领克门店','领克','http://localhost:8080/springbootjtw43/upload/1621126893330.jpg','门店位置2','020-89819992','经营范围2','<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127021172.jpg\"><img src=\"http://localhost:8080/springbootjtw43/upload/1621127027126.jpg\"><img src=\"http://localhost:8080/springbootjtw43/upload/1621127038844.jpg\"></p>');
insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (43,'2021-05-16 08:46:11','门店名称3','汽车品牌3','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian3.jpg','门店位置3','020-89819993','经营范围3','门店介绍3');
insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (44,'2021-05-16 08:46:11','吉利门店','吉利','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian4.jpg','门店位置4','020-89819994','经营范围4','<p>门店介绍4</p>');
insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (45,'2021-05-16 08:46:11','门店名称5','汽车品牌5','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian5.jpg','门店位置5','020-89819995','经营范围5','门店介绍5');
insert  into `jingxiaoshang`(`id`,`addtime`,`mendianmingcheng`,`qichepinpai`,`mendiantupian`,`mendianweizhi`,`lianxidianhua`,`jingyingfanwei`,`mendianjieshao`) values (46,'2021-05-16 08:46:11','门店名称6','汽车品牌6','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian6.jpg','门店位置6','020-89819996','经营范围6','门店介绍6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621127479166 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (81,'2021-05-16 08:46:11',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (82,'2021-05-16 08:46:11',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (83,'2021-05-16 08:46:11',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (84,'2021-05-16 08:46:11',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (85,'2021-05-16 08:46:11',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (86,'2021-05-16 08:46:11',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1621127479165,'2021-05-16 09:11:18',1621127329259,'001','这里可留言 管理员在后台回复','这里回复用户留言');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621127640331 DEFAULT CHARSET=utf8 COMMENT='资讯公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (71,'2021-05-16 08:46:11','标题1','简介1','http://localhost:8080/springbootjtw43/upload/news_picture1.jpg','<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127279595.jpg\">内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (72,'2021-05-16 08:46:11','标题2','简介2','http://localhost:8080/springbootjtw43/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (73,'2021-05-16 08:46:11','标题3','简介3','http://localhost:8080/springbootjtw43/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (74,'2021-05-16 08:46:11','标题4','简介4','http://localhost:8080/springbootjtw43/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (75,'2021-05-16 08:46:11','标题5','简介5','http://localhost:8080/springbootjtw43/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (76,'2021-05-16 08:46:11','标题6','简介6','http://localhost:8080/springbootjtw43/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1621127640330,'2021-05-16 09:13:59','这里可添加资讯公告','111111111111','http://localhost:8080/springbootjtw43/upload/1621127635435.jpg','<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127638641.jpg\"></p>');

/*Table structure for table `qichepinpai` */

DROP TABLE IF EXISTS `qichepinpai`;

CREATE TABLE `qichepinpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qichepinpai` (`qichepinpai`)
) ENGINE=InnoDB AUTO_INCREMENT=1621126793237 DEFAULT CHARSET=utf8 COMMENT='汽车品牌';

/*Data for the table `qichepinpai` */

insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (21,'2021-05-16 08:46:11','奔驰');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (22,'2021-05-16 08:46:11','宝马');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (23,'2021-05-16 08:46:11','奥迪');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (24,'2021-05-16 08:46:11','本田');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (25,'2021-05-16 08:46:11','丰田');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (26,'2021-05-16 08:46:11','日产');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (1621126786140,'2021-05-16 08:59:45','吉利');
insert  into `qichepinpai`(`id`,`addtime`,`qichepinpai`) values (1621126793236,'2021-05-16 08:59:52','领克');

/*Table structure for table `qichexinxi` */

DROP TABLE IF EXISTS `qichexinxi`;

CREATE TABLE `qichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) NOT NULL COMMENT '车辆名称',
  `cheliangxinghao` varchar(200) DEFAULT NULL COMMENT '车辆型号',
  `qichepinpai` varchar(200) NOT NULL COMMENT '汽车品牌',
  `jiagefenlei` varchar(200) NOT NULL COMMENT '价格分类',
  `cheliangtupian` varchar(200) DEFAULT NULL COMMENT '车辆图片',
  `cheliangfenlei` varchar(200) NOT NULL COMMENT '车辆分类',
  `mendianmingcheng` varchar(200) NOT NULL COMMENT '门店名称',
  `mendiandizhi` varchar(200) DEFAULT NULL COMMENT '门店地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `cheliangshoujia` int(11) NOT NULL COMMENT '车辆售价',
  `cheliangkucun` int(11) NOT NULL COMMENT '车辆库存',
  `cheliangjieshao` longtext COMMENT '车辆介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='汽车信息';

/*Data for the table `qichexinxi` */

insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (51,'2021-05-16 08:46:11','吉利缤瑞','车辆型号1','吉利','5-8万','http://localhost:8080/springbootjtw43/upload/1621127141761.jpg,http://localhost:8080/springbootjtw43/upload/1621127158895.jpg','轿车','吉利门店','门店地址1','020-89819994',79800,10,'<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127188677.jpg\"></p>','2021-05-16 09:14:44');
insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (52,'2021-05-16 08:46:11','吉利星瑞','车辆型号2','吉利','10-15万','http://localhost:8080/springbootjtw43/upload/1621127223757.jpg','轿车','吉利门店','门店地址2','020-89819994',138000,20,'<p><img src=\"http://localhost:8080/springbootjtw43/upload/1621127243231.jpg\"></p>','2021-05-16 09:11:33');
insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (53,'2021-05-16 08:46:11','车辆名称3','车辆型号3','汽车品牌3','价格分类3','http://localhost:8080/springbootjtw43/upload/qichexinxi_cheliangtupian3.jpg','轿车','门店名称3','门店地址3','020-89819993',3,3,'车辆介绍3','2021-05-16 08:46:11');
insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (54,'2021-05-16 08:46:11','车辆名称4','车辆型号4','汽车品牌4','价格分类4','http://localhost:8080/springbootjtw43/upload/qichexinxi_cheliangtupian4.jpg','轿车','门店名称4','门店地址4','020-89819994',4,4,'车辆介绍4','2021-05-16 08:46:11');
insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (55,'2021-05-16 08:46:11','车辆名称5','车辆型号5','汽车品牌5','价格分类5','http://localhost:8080/springbootjtw43/upload/qichexinxi_cheliangtupian5.jpg','轿车','门店名称5','门店地址5','020-89819995',5,5,'车辆介绍5','2021-05-16 08:46:11');
insert  into `qichexinxi`(`id`,`addtime`,`cheliangmingcheng`,`cheliangxinghao`,`qichepinpai`,`jiagefenlei`,`cheliangtupian`,`cheliangfenlei`,`mendianmingcheng`,`mendiandizhi`,`lianxidianhua`,`cheliangshoujia`,`cheliangkucun`,`cheliangjieshao`,`clicktime`) values (56,'2021-05-16 08:46:11','车辆名称6','车辆型号6','汽车品牌6','价格分类6','http://localhost:8080/springbootjtw43/upload/qichexinxi_cheliangtupian6.jpg','轿车','门店名称6','门店地址6','020-89819996',6,6,'车辆介绍6','2021-05-16 08:46:11');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1621127457596 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621127449743,'2021-05-16 09:10:48',1621127329259,52,'qichexinxi','吉利星瑞','http://localhost:8080/springbootjtw43/upload/1621127223757.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1621127457595,'2021-05-16 09:10:56',1621127329259,41,'jingxiaoshang','奥迪门店','http://localhost:8080/springbootjtw43/upload/jingxiaoshang_mendiantupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','6d5a0cjbnbyg9nqrh78pea7c4huy2252','2021-05-16 08:56:56','2021-05-16 10:11:53');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1621127329259,'001','yonghu','用户','p7c0k7xkrh4cbj57t38a2zi6w7znkkes','2021-05-16 09:09:11','2021-05-16 10:14:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-16 08:46:11');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1621127329260 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (11,'2021-05-16 08:46:11','用户1','e10adc3949ba59abbe56e057f20f883e','姓名1','男','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (12,'2021-05-16 08:46:11','用户2','e10adc3949ba59abbe56e057f20f883e','姓名2','女','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (13,'2021-05-16 08:46:11','用户3','e10adc3949ba59abbe56e057f20f883e','姓名3','男','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (14,'2021-05-16 08:46:11','用户4','e10adc3949ba59abbe56e057f20f883e','姓名4','男','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (15,'2021-05-16 08:46:11','用户5','e10adc3949ba59abbe56e057f20f883e','姓名5','男','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (16,'2021-05-16 08:46:11','用户6','e10adc3949ba59abbe56e057f20f883e','姓名6','男','http://localhost:8080/springbootjtw43/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com','是','');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`shouji`,`youxiang`,`sfsh`,`shhf`) values (1621127329259,'2021-05-16 09:08:49','001','dc5c7986daef50c1e02ab09b442ee34f','小吴 ','男','http://localhost:8080/springbootjtw43/upload/1621127360335.jpg','16459878981','165@12.com','是',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
