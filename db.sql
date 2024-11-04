/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiyongwulixue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiyongwulixue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiyongwulixue`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-14 16:14:45'),(2,'sex_types','性别',2,'女',NULL,'2021-04-14 16:14:45'),(3,'shiyanpaike_types','课程类型名称',1,'课程类型1',NULL,'2021-04-14 16:14:45'),(4,'shiyanpaike_types','课程类型名称',2,'课程类型2',NULL,'2021-04-14 16:14:45'),(5,'banji_types','班级名称',1,'班级1',NULL,'2021-04-14 16:14:45'),(6,'banji_types','班级名称',2,'班级2',NULL,'2021-04-14 16:14:45'),(7,'banji_types','班级名称',3,'班级3',NULL,'2021-04-14 16:14:45');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教师姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `jiaoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiaoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiaoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`username`,`password`,`jiaoshi_name`,`sex_types`,`jiaoshi_id_number`,`jiaoshi_phone`,`jiaoshi_photo`,`create_time`) values (1,'333','123456','教师1',2,'410882200011301141','17796688971','http://localhost:8080/yiyongwulixue/file/download?fileName=1618390420635.jpg','2021-04-14 16:36:50'),(2,'444','123456','教师2',1,'410882200011261542','17796688972','http://localhost:8080/yiyongwulixue/file/download?fileName=1618390407665.jpg','2021-04-14 16:40:33');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'留言信息1','留言人1','2021-04-14 16:14:45','回复内容1','回复人1','2021-04-14 16:14:45'),(13,'123','admin','2021-04-14 19:28:30','123','admin','2021-04-14 19:28:30'),(14,'123','333','2021-04-14 19:38:07','3333','333','2021-04-14 19:38:07');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '名称  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `news_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在线帮助';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'名称1','http://localhost:8080/yiyongwulixue/file/download?fileName=1618399752481.jpg','2021-04-14 19:29:15','详情1\r\n','2021-04-14 19:29:15'),(2,'名称2','http://localhost:8080/yiyongwulixue/file/download?fileName=1618399762465.jpg','2021-04-14 19:29:26','详情2\r\n','2021-04-14 19:29:26');

/*Table structure for table `shiyanchengji` */

DROP TABLE IF EXISTS `shiyanchengji`;

CREATE TABLE `shiyanchengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanpaike_id` int(200) DEFAULT NULL COMMENT '课程名称',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '实验学生',
  `chengji_pingfen` int(200) DEFAULT NULL COMMENT '评分',
  `chengji_content` text COMMENT '实验数据',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='实验成绩';

/*Data for the table `shiyanchengji` */

insert  into `shiyanchengji`(`id`,`shiyanpaike_id`,`yonghu_id`,`chengji_pingfen`,`chengji_content`,`create_time`) values (22,23,2,10,'实验数据实验数据实验数据\r\n','2021-04-14 19:06:11'),(23,22,1,20,'实验数据\r\n','2021-04-14 19:06:29'),(24,24,2,30,'实验数据3\r\n','2021-04-14 19:36:21');

/*Table structure for table `shiyanpaike` */

DROP TABLE IF EXISTS `shiyanpaike`;

CREATE TABLE `shiyanpaike` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanpaike_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111',
  `shiyanpaike_types` int(200) DEFAULT NULL COMMENT '课程类型 Search111',
  `shiyanpaike_time` timestamp NULL DEFAULT NULL COMMENT '上课时间',
  `jiaoshi_id` int(200) DEFAULT NULL COMMENT '上课教师',
  `banji_types` int(200) DEFAULT NULL COMMENT '上课班级 Search111',
  `shiyanpaike_fenzu` varchar(200) DEFAULT NULL COMMENT '分组',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='实验排课';

/*Data for the table `shiyanpaike` */

insert  into `shiyanpaike`(`id`,`shiyanpaike_name`,`shiyanpaike_types`,`shiyanpaike_time`,`jiaoshi_id`,`banji_types`,`shiyanpaike_fenzu`,`create_time`) values (22,'课程名称1',1,'2021-04-15 09:00:00',2,2,'分组1','2021-04-14 17:04:26'),(23,'课程名称2',1,'2021-04-15 00:00:00',1,1,'分组2','2021-04-14 19:00:37'),(24,'课程名称3',2,'2021-04-17 12:00:00',2,3,'分组3','2021-04-14 19:35:44');

/*Table structure for table `shiyanshuju` */

DROP TABLE IF EXISTS `shiyanshuju`;

CREATE TABLE `shiyanshuju` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanpaike_id` int(200) DEFAULT NULL COMMENT '课程名称',
  `shiyanshuju_yuanli` varchar(200) DEFAULT NULL COMMENT '原理与方法',
  `shiyanshuju_yiqi` varchar(200) DEFAULT NULL COMMENT '使用仪器',
  `shiyanshuju_buzou` varchar(200) DEFAULT NULL COMMENT '实验步骤',
  `shiyanshuju_content` text COMMENT '实验数据处理',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='实验数据';

/*Data for the table `shiyanshuju` */

insert  into `shiyanshuju`(`id`,`shiyanpaike_id`,`shiyanshuju_yuanli`,`shiyanshuju_yiqi`,`shiyanshuju_buzou`,`shiyanshuju_content`,`create_time`) values (22,23,'原理与方法1','使用仪器1','实验步骤1','实验数据处理1\r\n','2021-04-14 19:06:50'),(23,22,'原理与方法2','使用仪器2','实验步骤2','实验数据处理2\r\n','2021-04-14 19:07:07'),(24,24,'原理与方法3','使用仪器3','实验步骤3','实验数据处理3\r\n','2021-04-14 19:36:41');

/*Table structure for table `shiyanyuxi` */

DROP TABLE IF EXISTS `shiyanyuxi`;

CREATE TABLE `shiyanyuxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shiyanpaike_id` int(200) DEFAULT NULL COMMENT '预习课程',
  `shiyanyuxi_mudi` varchar(200) DEFAULT NULL COMMENT '实验目的',
  `shiyanyuxi_yiqiu` varchar(200) DEFAULT NULL COMMENT '实验要求',
  `shiyanyuxi_shuxi` varchar(200) DEFAULT NULL COMMENT '熟悉仪器',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='实验预习';

/*Data for the table `shiyanyuxi` */

insert  into `shiyanyuxi`(`id`,`shiyanpaike_id`,`shiyanyuxi_mudi`,`shiyanyuxi_yiqiu`,`shiyanyuxi_shuxi`,`create_time`) values (23,22,'实验目的1','实验要求1','熟悉仪器1','2021-04-14 17:36:15'),(24,23,'实验目的2','实验要求2','熟悉仪器2','2021-04-14 19:07:58'),(25,24,'实验目的3','实验要求3','熟悉仪器3','2021-04-14 19:36:55');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','zlug8iwfnjj5y79e9jzh83atezg5qg22','2021-04-14 16:19:16','2021-04-14 20:39:27'),(2,1,'111','yonghu','学生','s5v2whwaijydebdlejhsjhxsjz1xhpfe','2021-04-14 19:29:33','2021-04-14 20:38:14'),(3,1,'333','jiaoshi','教师','f2bilw2ffnohh487icyvzv4xi65xgdcl','2021-04-14 19:30:25','2021-04-14 20:37:08');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`banji_types`,`create_time`) values (1,'111','123456','学生1',1,'410882199910211241','17796688971','http://localhost:8080/yiyongwulixue/file/download?fileName=1618390448059.jpg',3,'2021-04-14 16:41:02'),(2,'222','123456','学生2',1,'410882199910211242','17796688972','http://localhost:8080/yiyongwulixue/file/download?fileName=1618390432892.jpg',2,'2021-04-14 16:41:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
