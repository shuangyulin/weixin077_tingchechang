/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6lf25
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6lf25` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6lf25`;

/*Table structure for table `chezhu` */

DROP TABLE IF EXISTS `chezhu`;

CREATE TABLE `chezhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833444656 DEFAULT CHARSET=utf8 COMMENT='车主';

/*Data for the table `chezhu` */

insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (11,'2021-05-01 09:39:29','车主1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm6lf25/upload/chezhu_zhaopian1.jpg','车牌号1');
insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (13,'2021-05-01 09:39:29','车主3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm6lf25/upload/chezhu_zhaopian3.jpg','车牌号3');
insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (14,'2021-05-01 09:39:29','车主4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm6lf25/upload/chezhu_zhaopian4.jpg','车牌号4');
insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (15,'2021-05-01 09:39:29','车主5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm6lf25/upload/chezhu_zhaopian5.jpg','车牌号5');
insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (16,'2021-05-01 09:39:29','车主6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm6lf25/upload/chezhu_zhaopian6.jpg','车牌号6');
insert  into `chezhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`chepaihao`) values (1619833444655,'2021-05-01 09:44:04','11','11','幸福感','11','男','11111122211','http://localhost:8080/ssm6lf25/upload/1619833589747.jpg','规范11111');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6lf25/upload/1619833403286.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm6lf25/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm6lf25/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `jinchangtingche` */

DROP TABLE IF EXISTS `jinchangtingche`;

CREATE TABLE `jinchangtingche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jinchangtingche` varchar(200) DEFAULT NULL COMMENT '进场停车',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `jinchangshijian` datetime DEFAULT NULL COMMENT '进场时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833578454 DEFAULT CHARSET=utf8 COMMENT='进场停车';

/*Data for the table `jinchangtingche` */

insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (61,'2021-05-01 09:39:29','订单编号1','停车场名称1','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian1.jpg','是',1,'2021-05-01 09:39:29','账号1','姓名1','车牌号1','商家账号1','商家姓名1',1);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (62,'2021-05-01 09:39:29','订单编号2','停车场名称2','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian2.jpg','是',2,'2021-05-01 09:39:29','账号2','姓名2','车牌号2','商家账号2','商家姓名2',2);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (63,'2021-05-01 09:39:29','订单编号3','停车场名称3','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian3.jpg','是',3,'2021-05-01 09:39:29','账号3','姓名3','车牌号3','商家账号3','商家姓名3',3);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (64,'2021-05-01 09:39:29','订单编号4','停车场名称4','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian4.jpg','是',4,'2021-05-01 09:39:29','账号4','姓名4','车牌号4','商家账号4','商家姓名4',4);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (65,'2021-05-01 09:39:29','订单编号5','停车场名称5','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian5.jpg','是',5,'2021-05-01 09:39:29','账号5','姓名5','车牌号5','商家账号5','商家姓名5',5);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (66,'2021-05-01 09:39:29','订单编号6','停车场名称6','http://localhost:8080/ssm6lf25/upload/jinchangtingche_tupian6.jpg','是',6,'2021-05-01 09:39:29','账号6','姓名6','车牌号6','商家账号6','商家姓名6',6);
insert  into `jinchangtingche`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`jinchangtingche`,`xiaoshidanjia`,`jinchangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`userid`) values (1619833578453,'2021-05-01 09:46:18','1619833497320','地方水电费是','http://localhost:8080/ssm6lf25/upload/1619833478724.jpg','是',33,'2021-05-01 09:44:57','11','幸福感','规范11111','22','第三方',1619833444655);

/*Table structure for table `lichangshoufei` */

DROP TABLE IF EXISTS `lichangshoufei`;

CREATE TABLE `lichangshoufei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifoulichang` varchar(200) DEFAULT NULL COMMENT '是否离场',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `tingcheshizhang` int(11) DEFAULT NULL COMMENT '停车时长',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `lichangshijian` datetime DEFAULT NULL COMMENT '离场时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833630123 DEFAULT CHARSET=utf8 COMMENT='离场收费';

/*Data for the table `lichangshoufei` */

insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (71,'2021-05-01 09:39:29','订单编号1','停车场名称1','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian1.jpg','是',1,1,'总价1','2021-05-01 09:39:29','账号1','姓名1','车牌号1','商家账号1','商家姓名1','未支付',1);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (72,'2021-05-01 09:39:29','订单编号2','停车场名称2','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian2.jpg','是',2,2,'总价2','2021-05-01 09:39:29','账号2','姓名2','车牌号2','商家账号2','商家姓名2','未支付',2);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (73,'2021-05-01 09:39:29','订单编号3','停车场名称3','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian3.jpg','是',3,3,'总价3','2021-05-01 09:39:29','账号3','姓名3','车牌号3','商家账号3','商家姓名3','未支付',3);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (74,'2021-05-01 09:39:29','订单编号4','停车场名称4','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian4.jpg','是',4,4,'总价4','2021-05-01 09:39:29','账号4','姓名4','车牌号4','商家账号4','商家姓名4','未支付',4);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (75,'2021-05-01 09:39:29','订单编号5','停车场名称5','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian5.jpg','是',5,5,'总价5','2021-05-01 09:39:29','账号5','姓名5','车牌号5','商家账号5','商家姓名5','未支付',5);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (76,'2021-05-01 09:39:29','订单编号6','停车场名称6','http://localhost:8080/ssm6lf25/upload/lichangshoufei_tupian6.jpg','是',6,6,'总价6','2021-05-01 09:39:29','账号6','姓名6','车牌号6','商家账号6','商家姓名6','未支付',6);
insert  into `lichangshoufei`(`id`,`addtime`,`dingdanbianhao`,`tingchechangmingcheng`,`tupian`,`shifoulichang`,`xiaoshidanjia`,`tingcheshizhang`,`zongjia`,`lichangshijian`,`zhanghao`,`xingming`,`chepaihao`,`shangjiazhanghao`,`shangjiaxingming`,`ispay`,`userid`) values (1619833630122,'2021-05-01 09:47:09','1619833497320','地方水电费是','http://localhost:8080/ssm6lf25/upload/1619833478724.jpg','是',33,22,'726','2021-05-01 09:45:47','11','幸福感','规范11111','22','第三方','已支付',1619833456182);

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
) ENGINE=InnoDB AUTO_INCREMENT=1619833681947 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (101,'2021-05-01 09:39:29',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (102,'2021-05-01 09:39:29',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (103,'2021-05-01 09:39:29',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (104,'2021-05-01 09:39:29',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (105,'2021-05-01 09:39:29',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (106,'2021-05-01 09:39:29',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619833681946,'2021-05-01 09:48:01',1619833444655,'11','跟地方给对方冻干粉','水电费发送到33333333333333');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619833395348 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-05-01 09:39:29','标题1','简介1','http://localhost:8080/ssm6lf25/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (92,'2021-05-01 09:39:29','标题2','简介2','http://localhost:8080/ssm6lf25/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (93,'2021-05-01 09:39:29','标题3','简介3','http://localhost:8080/ssm6lf25/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (94,'2021-05-01 09:39:29','标题4','简介4','http://localhost:8080/ssm6lf25/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (95,'2021-05-01 09:39:29','标题5','简介5','http://localhost:8080/ssm6lf25/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (96,'2021-05-01 09:39:29','标题6','简介6','http://localhost:8080/ssm6lf25/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619833395347,'2021-05-01 09:43:14','的电饭锅地方地方','发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方','http://localhost:8080/ssm6lf25/upload/1619833385846.jpg','<p>发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方发给大概的风格地方地方</p><p><img src=\"http://localhost:8080/ssm6lf25/upload/1619833393411.jpg\"></p>');

/*Table structure for table `quxiaoyuyue` */

DROP TABLE IF EXISTS `quxiaoyuyue`;

CREATE TABLE `quxiaoyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouquxiao` varchar(200) DEFAULT NULL COMMENT '是否取消',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `yuyueshizhang` int(11) DEFAULT NULL COMMENT '预约时长',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `quxiaoyuanyin` longtext COMMENT '取消原因',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833662559 DEFAULT CHARSET=utf8 COMMENT='取消预约';

/*Data for the table `quxiaoyuyue` */

insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (51,'2021-05-01 09:39:29','预约编号1','停车场名称1','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian1.jpg','是',1,1,'总价1','取消原因1','2021-05-01 09:39:29','商家账号1','商家姓名1','账号1','姓名1','车牌号1','是','','未支付',1);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (52,'2021-05-01 09:39:29','预约编号2','停车场名称2','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian2.jpg','是',2,2,'总价2','取消原因2','2021-05-01 09:39:29','商家账号2','商家姓名2','账号2','姓名2','车牌号2','是','','未支付',2);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (53,'2021-05-01 09:39:29','预约编号3','停车场名称3','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian3.jpg','是',3,3,'总价3','取消原因3','2021-05-01 09:39:29','商家账号3','商家姓名3','账号3','姓名3','车牌号3','是','','未支付',3);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (54,'2021-05-01 09:39:29','预约编号4','停车场名称4','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian4.jpg','是',4,4,'总价4','取消原因4','2021-05-01 09:39:29','商家账号4','商家姓名4','账号4','姓名4','车牌号4','是','','未支付',4);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (55,'2021-05-01 09:39:29','预约编号5','停车场名称5','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian5.jpg','是',5,5,'总价5','取消原因5','2021-05-01 09:39:29','商家账号5','商家姓名5','账号5','姓名5','车牌号5','是','','未支付',5);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (56,'2021-05-01 09:39:29','预约编号6','停车场名称6','http://localhost:8080/ssm6lf25/upload/quxiaoyuyue_tupian6.jpg','是',6,6,'总价6','取消原因6','2021-05-01 09:39:29','商家账号6','商家姓名6','账号6','姓名6','车牌号6','是','','未支付',6);
insert  into `quxiaoyuyue`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouquxiao`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`quxiaoyuanyin`,`quxiaoshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (1619833662558,'2021-05-01 09:47:41','1619833474020','地方水电费是','http://localhost:8080/ssm6lf25/upload/1619833478724.jpg','是',33,3,'99','的发的鬼地方给对方给对方给对方','2021-05-01 09:46:21','22','第三方','11','幸福感','规范11111','是','可以','已支付',1619833444655);

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833456183 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (21,'2021-05-01 09:39:29','商家1','123456','商家姓名1','联系方式1','停车场名称1','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian1.jpg','位置1');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (22,'2021-05-01 09:39:29','商家2','123456','商家姓名2','联系方式2','停车场名称2','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian2.jpg','位置2');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (23,'2021-05-01 09:39:29','商家3','123456','商家姓名3','联系方式3','停车场名称3','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian3.jpg','位置3');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (24,'2021-05-01 09:39:29','商家4','123456','商家姓名4','联系方式4','停车场名称4','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian4.jpg','位置4');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (25,'2021-05-01 09:39:29','商家5','123456','商家姓名5','联系方式5','停车场名称5','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian5.jpg','位置5');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (26,'2021-05-01 09:39:29','商家6','123456','商家姓名6','联系方式6','停车场名称6','http://localhost:8080/ssm6lf25/upload/shangjia_shangjiatupian6.jpg','位置6');
insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`shangjiaxingming`,`lianxifangshi`,`tingchechangmingcheng`,`shangjiatupian`,`weizhi`) values (1619833456182,'2021-05-01 09:44:16','22','22','第三方','11222222222','地方水电费是','http://localhost:8080/ssm6lf25/upload/1619833496589.jpg',' 发送到防守打法删掉删掉f');

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
) ENGINE=InnoDB AUTO_INCREMENT=1619833536654 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `tingchechangxinxi` */

DROP TABLE IF EXISTS `tingchechangxinxi`;

CREATE TABLE `tingchechangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tingchechangmingcheng` varchar(200) NOT NULL COMMENT '停车场名称',
  `guimo` varchar(200) NOT NULL COMMENT '规模',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `rongnachewei` int(11) DEFAULT NULL COMMENT '容纳车位',
  `shishichewei` int(11) DEFAULT NULL COMMENT '实时车位',
  `keyueshijian` varchar(200) DEFAULT NULL COMMENT '可约时间',
  `xiaoshidanjia` varchar(200) DEFAULT NULL COMMENT '小时单价',
  `weizhi` varchar(200) DEFAULT NULL COMMENT '位置',
  `jieshao` longtext COMMENT '介绍',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833488989 DEFAULT CHARSET=utf8 COMMENT='停车场信息';

/*Data for the table `tingchechangxinxi` */

insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (31,'2021-05-01 09:39:29','停车场名称1','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian1.jpg','已满',1,1,'可约时间1','小时单价1','位置1','介绍1','商家账号1','商家姓名1','2021-05-01 09:44:24',2,1);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (32,'2021-05-01 09:39:29','停车场名称2','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian2.jpg','已满',2,2,'可约时间2','小时单价2','位置2','介绍2','商家账号2','商家姓名2','2021-05-01 09:45:18',3,2);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (33,'2021-05-01 09:39:29','停车场名称3','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian3.jpg','已满',3,3,'可约时间3','小时单价3','位置3','介绍3','商家账号3','商家姓名3','2021-05-01 09:39:29',3,3);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (34,'2021-05-01 09:39:29','停车场名称4','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian4.jpg','已满',4,4,'可约时间4','小时单价4','位置4','介绍4','商家账号4','商家姓名4','2021-05-01 09:39:29',4,4);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (35,'2021-05-01 09:39:29','停车场名称5','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian5.jpg','已满',5,5,'可约时间5','小时单价5','位置5','介绍5','商家账号5','商家姓名5','2021-05-01 09:39:29',5,5);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (36,'2021-05-01 09:39:29','停车场名称6','大型','http://localhost:8080/ssm6lf25/upload/tingchechangxinxi_tupian6.jpg','已满',6,6,'可约时间6','小时单价6','位置6','介绍6','商家账号6','商家姓名6','2021-05-01 09:39:29',6,6);
insert  into `tingchechangxinxi`(`id`,`addtime`,`tingchechangmingcheng`,`guimo`,`tupian`,`zhuangtai`,`rongnachewei`,`shishichewei`,`keyueshijian`,`xiaoshidanjia`,`weizhi`,`jieshao`,`shangjiazhanghao`,`shangjiaxingming`,`clicktime`,`clicknum`,`userid`) values (1619833488988,'2021-05-01 09:44:48','地方水电费是','大型','http://localhost:8080/ssm6lf25/upload/1619833478724.jpg','',44,33,'第三方删掉发多少删掉删掉','33',' 发送到防守打法删掉删掉f','发送到水电费删掉发送到发送到发送到发送到发送到分数水电费','22','第三方','2021-05-01 09:46:20',9,1619833456182);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','uh2ib726bxart8tt3gnh298zq3ieix8g','2021-05-01 09:42:10','2021-05-01 10:49:52');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619833456182,'22','shangjia','商家','1pg7pgl1alrnezjql88m8mirwiuedng9','2021-05-01 09:44:22','2021-05-01 10:48:18');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1619833444655,'11','chezhu','车主','1rwascfmfqe4svoxhc0dtmcsj5szgqvy','2021-05-01 09:45:17','2021-05-01 10:50:06');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-01 09:39:29');

/*Table structure for table `yuyuetingche` */

DROP TABLE IF EXISTS `yuyuetingche`;

CREATE TABLE `yuyuetingche` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuyuebianhao` varchar(200) DEFAULT NULL COMMENT '预约编号',
  `tingchechangmingcheng` varchar(200) DEFAULT NULL COMMENT '停车场名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouyuyue` varchar(200) DEFAULT NULL COMMENT '是否预约',
  `xiaoshidanjia` int(11) DEFAULT NULL COMMENT '小时单价',
  `yuyueshizhang` int(11) DEFAULT NULL COMMENT '预约时长',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `shangjiaxingming` varchar(200) DEFAULT NULL COMMENT '商家姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuyuebianhao` (`yuyuebianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619833557203 DEFAULT CHARSET=utf8 COMMENT='预约停车';

/*Data for the table `yuyuetingche` */

insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (41,'2021-05-01 09:39:29','预约编号1','停车场名称1','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian1.jpg','是',1,1,'总价1','2021-05-01 09:39:29','商家账号1','商家姓名1','账号1','姓名1','车牌号1','是','','未支付',1);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (42,'2021-05-01 09:39:29','预约编号2','停车场名称2','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian2.jpg','是',2,2,'总价2','2021-05-01 09:39:29','商家账号2','商家姓名2','账号2','姓名2','车牌号2','是','','未支付',2);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (43,'2021-05-01 09:39:29','预约编号3','停车场名称3','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian3.jpg','是',3,3,'总价3','2021-05-01 09:39:29','商家账号3','商家姓名3','账号3','姓名3','车牌号3','是','','未支付',3);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (44,'2021-05-01 09:39:29','预约编号4','停车场名称4','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian4.jpg','是',4,4,'总价4','2021-05-01 09:39:29','商家账号4','商家姓名4','账号4','姓名4','车牌号4','是','','未支付',4);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (45,'2021-05-01 09:39:29','预约编号5','停车场名称5','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian5.jpg','是',5,5,'总价5','2021-05-01 09:39:29','商家账号5','商家姓名5','账号5','姓名5','车牌号5','是','','未支付',5);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (46,'2021-05-01 09:39:29','预约编号6','停车场名称6','http://localhost:8080/ssm6lf25/upload/yuyuetingche_tupian6.jpg','是',6,6,'总价6','2021-05-01 09:39:29','商家账号6','商家姓名6','账号6','姓名6','车牌号6','是','','未支付',6);
insert  into `yuyuetingche`(`id`,`addtime`,`yuyuebianhao`,`tingchechangmingcheng`,`tupian`,`shifouyuyue`,`xiaoshidanjia`,`yuyueshizhang`,`zongjia`,`yuyueshijian`,`shangjiazhanghao`,`shangjiaxingming`,`zhanghao`,`xingming`,`chepaihao`,`sfsh`,`shhf`,`ispay`,`userid`) values (1619833557202,'2021-05-01 09:45:56','1619833474020','地方水电费是','http://localhost:8080/ssm6lf25/upload/1619833478724.jpg','',33,3,'99','2021-05-01 09:44:34','22','第三方','11','幸福感','规范11111','是','可以','已支付',1619833444655);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
