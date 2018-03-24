/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.5.28 : Database - hotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hotel`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `chkID` varchar(50) NOT NULL COMMENT '结算单号',
  `inno` varchar(50) NOT NULL COMMENT '入住单号',
  `chktime` date DEFAULT NULL COMMENT '结算时间',
  `updateTime` date DEFAULT NULL COMMENT '修改时间',
  `userID` varchar(15) DEFAULT NULL COMMENT '操作人账号',
  `delmark` varchar(50) DEFAULT NULL COMMENT '标记',
  `breakdownAccount` float DEFAULT NULL COMMENT '物品损坏金额',
  `money` float DEFAULT NULL COMMENT '退掉的押金',
  `moneycount` float DEFAULT NULL COMMENT '总额',
  PRIMARY KEY (`chkID`),
  KEY `userID` (`userID`),
  KEY `inno` (`inno`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `operator` (`userID`),
  CONSTRAINT `account_ibfk_3` FOREIGN KEY (`inno`) REFERENCES `livein` (`inno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`chkID`,`inno`,`chktime`,`updateTime`,`userID`,`delmark`,`breakdownAccount`,`money`,`moneycount`) values 
('18032415370003 ','18032415190001','2018-03-24',NULL,'admin','床套',300,200,2300);

/*Table structure for table `breakdown` */

DROP TABLE IF EXISTS `breakdown`;

CREATE TABLE `breakdown` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '物价赔偿主键',
  `breakdownId` varchar(100) DEFAULT NULL COMMENT '物品编号',
  `breakdownPrice` float DEFAULT NULL COMMENT '物品价格',
  `breakdownName` varchar(40) DEFAULT NULL COMMENT '物品名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `breakdown` */

insert  into `breakdown`(`id`,`breakdownId`,`breakdownPrice`,`breakdownName`) values 
(1,'1',30,'门卡'),
(2,'2',150,'床单'),
(3,'3',300,'床套'),
(4,'4',50,'枕套'),
(5,'5',80,'护床垫'),
(6,'6',100,'吹风机'),
(7,'7',50,'遥控器'),
(8,'8',20,'毛巾'),
(9,'9',80,'浴巾'),
(10,'10',150,'靠椅'),
(11,'11',3300,'电视'),
(12,'12',4200,'电脑'),
(13,'13',30,'茶杯'),
(14,NULL,NULL,NULL);

/*Table structure for table `companyintroduce` */

DROP TABLE IF EXISTS `companyintroduce`;

CREATE TABLE `companyintroduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店信息主键',
  `brief` varchar(2000) DEFAULT NULL COMMENT '酒店信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `companyintroduce` */

insert  into `companyintroduce`(`id`,`brief`) values 
(1,'上海市浦东新区富城路33号');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cID` varchar(20) DEFAULT NULL COMMENT '客户账号',
  `pwd` varchar(15) DEFAULT NULL COMMENT '客户密码',
  `cname` varchar(15) DEFAULT NULL COMMENT '客户姓名',
  `csex` char(2) DEFAULT NULL COMMENT '客户性别',
  `zjtype` varchar(15) DEFAULT NULL COMMENT '证件类型',
  `zjno` varchar(20) NOT NULL COMMENT '证件编号',
  `caddr` varchar(40) DEFAULT NULL COMMENT '地址',
  `ctel` varchar(20) NOT NULL COMMENT '客户电话',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `delmark` int(11) DEFAULT NULL COMMENT '标记',
  `ctypeid` char(1) DEFAULT NULL COMMENT '客户类型编号',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cID` (`cID`),
  KEY `ctypeid` (`ctypeid`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ctypeid`) REFERENCES `customertype` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`id`,`cID`,`pwd`,`cname`,`csex`,`zjtype`,`zjno`,`caddr`,`ctel`,`remark`,`delmark`,`ctypeid`,`jifen`) values 
(1,'15939466509','1234567','张三','男','身份证','412723199712110817',NULL,'15939466508','张总',NULL,'4',10000),
(2,'15939466409','1234567','李四','男','身份证','412723199712110817',NULL,'15939466509','李哥',NULL,'2',1562),
(3,'wjq','123','刘欢','女','身份证','412723199712110817',NULL,'17772860939','刘姐',NULL,'5',100000),
(4,'5464184168','123','李永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(5,'5989926591','123','张永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(6,'1569596262','12','章永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(7,'1655621521','123456','王永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(10,'9626151659','111111','位永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(11,'5465656261','123','高永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(12,'5956565615','111','高永凯','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(14,'6565656565','123','高','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(15,'5656565656','123456','高','女','身份证','412723199712110817',NULL,'15939466509','刘姐',NULL,'1',0),
(16,'5965184185','123','高','女','身份证','412723199712110817',NULL,'15939466509','张总',NULL,'1',0),
(17,'15939466587','123','高','男',NULL,'412723199712110817',NULL,'15939466587','张总',NULL,'1',100),
(18,'15939466586','123','张三','女','身份证','412723199712110817',NULL,'15939466586','张总',NULL,'2',1300),
(20,'1593946657','123','张三','男','身份证','412723199712110817',NULL,'15939466574','张总',NULL,'1',1300),
(21,'15939466582','123','张三','男','身份证','412723199712110817',NULL,'15939466582','张总',NULL,'2',10000),
(22,'15939466581','123','张三','男','身份证','412723199712110817',NULL,'15939466581','张总',NULL,'1',100),
(23,'15939466580','123','张三','男','身份证','412723199712110817',NULL,'15939466580','张总',NULL,'1',100),
(24,'15939466585','123','张三','男','身份证','412723199712110817',NULL,'15939466585','张总',NULL,'1',1300),
(25,'15939466544','123','张三','男','身份证','412723199712110817',NULL,'15939466544','张总',NULL,'2',1300),
(26,'15939466545','123','张三','男','身份证','412723199712110817',NULL,'15939466545','44',NULL,'1',1300),
(28,'15939466547','123','张三','男','身份证','412723199712110817',NULL,'15939466547','张总',NULL,'1',1300),
(29,'15939466549','123','张三','男','身份证','412723199712110817',NULL,'15939466549','张总',NULL,'1',1300),
(30,'15939466552','123','张三','男','身份证','412723199712110817',NULL,'15939466552','张总',NULL,'1',1300);

/*Table structure for table `customertype` */

DROP TABLE IF EXISTS `customertype`;

CREATE TABLE `customertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `customerID` char(1) NOT NULL COMMENT '客户类型编号',
  `ctypename` varchar(15) NOT NULL COMMENT '客户类型名字',
  `disattr` varchar(15) DEFAULT NULL COMMENT '折扣属性',
  `discount` varchar(50) DEFAULT NULL COMMENT '折扣比例',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `delmark` int(11) DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`id`,`ctypename`),
  KEY `customerID` (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `customertype` */

insert  into `customertype`(`id`,`customerID`,`ctypename`,`disattr`,`discount`,`remark`,`delmark`) values 
(1,'1','普通会员','不折扣','1','不折扣',NULL),
(2,'2','白银会员','住房','0.95','住房95折',NULL),
(3,'3','黄金会员','住房','0.9','住房9折',NULL),
(4,'4','砖石会员','住房','0.85','住房0.85折',NULL),
(5,'5','终身会员','全部','0.8','总消费8折',NULL);

/*Table structure for table `engage` */

DROP TABLE IF EXISTS `engage`;

CREATE TABLE `engage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cID` varchar(50) DEFAULT NULL COMMENT '客户账号',
  `cname` varchar(20) DEFAULT NULL COMMENT '客户姓名',
  `ctels` varchar(20) NOT NULL COMMENT '客户电话',
  `roomID` varchar(20) NOT NULL COMMENT '房间号',
  `verify` varchar(40) DEFAULT NULL COMMENT '验证方式',
  `engagetime` varchar(20) DEFAULT NULL COMMENT '预定天数',
  `intime` date DEFAULT NULL COMMENT '预定入住时间',
  `leavetime` date DEFAULT NULL COMMENT '预定离开时间',
  `engagemark` varchar(11) DEFAULT NULL COMMENT '预定状态标志',
  `foregift` float DEFAULT NULL COMMENT '预定押金',
  `demand` varchar(200) DEFAULT NULL COMMENT '需求',
  PRIMARY KEY (`id`),
  KEY `roomID` (`roomID`),
  KEY `cID` (`cID`),
  CONSTRAINT `engage_ibfk_1` FOREIGN KEY (`roomID`) REFERENCES `roominfo` (`roomID`),
  CONSTRAINT `engage_ibfk_2` FOREIGN KEY (`cID`) REFERENCES `customer` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `engage` */

insert  into `engage`(`id`,`cID`,`cname`,`ctels`,`roomID`,`verify`,`engagetime`,`intime`,`leavetime`,`engagemark`,`foregift`,`demand`) values 
(8,'wjq','刘欢','17772860939','4001',NULL,NULL,'2018-03-24','2018-03-25','1',298,''),
(9,'15939466509','张三','15939466509','8008',NULL,NULL,'2018-03-24','2018-03-25','1',1998,NULL),
(10,'1655621521','李四','15939466509','7008',NULL,NULL,'2018-03-24','2018-03-25','1',1998,NULL),
(11,'5464184168','李永凯','5464184168','6008',NULL,NULL,'2018-03-24','2018-03-25','1',498,NULL),
(12,'9626151659','位永凯','5464184168','5008',NULL,NULL,'2018-03-24','2018-03-26','2',1776,NULL),
(13,'15939466409','丽思','5464184168','3008',NULL,NULL,'2018-03-24','2018-03-25','1',298,NULL);

/*Table structure for table `evaluate` */

DROP TABLE IF EXISTS `evaluate`;

CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(40) DEFAULT NULL COMMENT '用户姓名',
  `ctel` varchar(40) DEFAULT NULL COMMENT '电话',
  `evaluateName` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `alias` varchar(50) DEFAULT NULL COMMENT '主题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `evaluate` */

insert  into `evaluate`(`id`,`cname`,`ctel`,`evaluateName`,`alias`) values 
(1,'wjq','17772860939','前台服务很好','');

/*Table structure for table `leveintype` */

DROP TABLE IF EXISTS `leveintype`;

CREATE TABLE `leveintype` (
  `id` int(30) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `leveinType` varchar(30) DEFAULT NULL COMMENT '入住状态id',
  `leveinTypeName` varchar(30) DEFAULT NULL COMMENT '入住状态名称',
  PRIMARY KEY (`id`),
  KEY `leveinType` (`leveinType`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `leveintype` */

insert  into `leveintype`(`id`,`leveinType`,`leveinTypeName`) values 
(1,'1','正在入住'),
(2,'2','离开');

/*Table structure for table `livein` */

DROP TABLE IF EXISTS `livein`;

CREATE TABLE `livein` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `inno` varchar(50) NOT NULL COMMENT '入住单号',
  `roomID` varchar(20) NOT NULL COMMENT '房间号',
  `cID` varchar(30) DEFAULT NULL COMMENT '客户类型编号',
  `cname` varchar(15) NOT NULL COMMENT '客户名称',
  `csex` char(2) DEFAULT NULL COMMENT '客户性别',
  `zjtype` varchar(15) DEFAULT NULL COMMENT '证件类型',
  `zjno` varchar(25) DEFAULT NULL COMMENT '证件编号',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `intime` date DEFAULT NULL COMMENT '入住时间',
  `leavetime` date DEFAULT NULL COMMENT '离开时间',
  `delmark` varchar(40) DEFAULT NULL COMMENT '标记',
  `ctel` varchar(20) DEFAULT NULL COMMENT '客户电话',
  `foregift` float DEFAULT NULL COMMENT '客户押金',
  `days` int(11) DEFAULT NULL COMMENT '入住天数',
  `account` float DEFAULT NULL COMMENT '消费总额',
  `addr` varchar(50) DEFAULT NULL COMMENT '备注',
  `leveinTypeID` varchar(30) DEFAULT NULL COMMENT '入住状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inno` (`inno`),
  KEY `roomID` (`roomID`),
  KEY `cID` (`cID`),
  KEY `leveinTypeID` (`leveinTypeID`),
  CONSTRAINT `livein_ibfk_2` FOREIGN KEY (`leveinTypeID`) REFERENCES `leveintype` (`leveinType`),
  CONSTRAINT `livein_ibfk_1` FOREIGN KEY (`roomID`) REFERENCES `roominfo` (`roomID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

/*Data for the table `livein` */

insert  into `livein`(`id`,`inno`,`roomID`,`cID`,`cname`,`csex`,`zjtype`,`zjno`,`renshu`,`intime`,`leavetime`,`delmark`,`ctel`,`foregift`,`days`,`account`,`addr`,`leveinTypeID`) values 
(86,'18032415190001','9012','zss','张三','男','身份证','412723199712110817',2,'2018-03-24','2018-03-26','现金','15939466509',500,2,2000,'压身份证','2'),
(87,'18032415460001','7009','15939466587','张三','男','身份证','412723199712110817',2,'2018-03-24','2018-03-25','现金','15939466509',500,1,498,'压身份证','1'),
(88,'18032415520001','8008','15939466587','张三','男','身份证','412723199712110817',2,'2018-03-24','2018-03-25','现金','15939466509',500,1,1998,'早上不要打扰','1');

/*Table structure for table `logsetting` */

DROP TABLE IF EXISTS `logsetting`;

CREATE TABLE `logsetting` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `createUser` varchar(40) NOT NULL,
  `createcontent` varchar(40) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `logsetting` */

insert  into `logsetting`(`logId`,`createUser`,`createcontent`,`createTime`) values 
(1,'admin','修改客房信息','2018-03-02');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL COMMENT '酒店新闻主键',
  `type` varchar(40) NOT NULL COMMENT '类型',
  `title` varchar(40) NOT NULL COMMENT '新闻标题',
  `newstime` date DEFAULT NULL COMMENT '新闻日期',
  `brief` varchar(500) DEFAULT NULL COMMENT '内容摘要',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `news` */

/*Table structure for table `operator` */

DROP TABLE IF EXISTS `operator`;

CREATE TABLE `operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userID` varchar(10) NOT NULL COMMENT '账号',
  `pwd` varchar(10) NOT NULL COMMENT '密码',
  `puis` int(11) DEFAULT NULL COMMENT '用户权限',
  `intime` date DEFAULT NULL COMMENT '登录时间',
  `loginnum` varchar(11) DEFAULT NULL COMMENT '登陆姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `operator` */

insert  into `operator`(`id`,`userID`,`pwd`,`puis`,`intime`,`loginnum`) values 
(1,'admin','12345',1,NULL,'大堂经理'),
(2,'admin1','123',2,NULL,'财务'),
(3,'admin2','123',3,NULL,'收银员'),
(7,'admin4','123',4,NULL,'采购经理');

/*Table structure for table `record` */

DROP TABLE IF EXISTS `record`;

CREATE TABLE `record` (
  `id` int(11) NOT NULL COMMENT '日志表',
  `userID` varchar(15) NOT NULL COMMENT '操作员',
  `brief` varchar(20) DEFAULT NULL COMMENT '内容摘要',
  `delmark` int(11) DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `operator` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `record` */

/*Table structure for table `roominfo` */

DROP TABLE IF EXISTS `roominfo`;

CREATE TABLE `roominfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roomID` varchar(20) NOT NULL COMMENT '房间号',
  `roomTypeID` varchar(20) NOT NULL COMMENT '房间类型编号',
  `roomState` varchar(20) DEFAULT NULL COMMENT '房间状态',
  `roomTel` varchar(10) NOT NULL COMMENT '房间电话',
  `roomLoc` varchar(10) DEFAULT NULL COMMENT '房间所处位置',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `delmark` int(11) DEFAULT NULL COMMENT '标记',
  `roomStateNo` int(11) DEFAULT NULL,
  `roomTime` varchar(20) DEFAULT NULL COMMENT '预定次数',
  `roomImg` varchar(500) DEFAULT NULL COMMENT '项目位置图片',
  `roomImgBoth` varchar(500) DEFAULT NULL COMMENT '发布后的位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roomID` (`roomID`),
  KEY `roomTypeID` (`roomTypeID`),
  CONSTRAINT `roominfo_ibfk_1` FOREIGN KEY (`roomTypeID`) REFERENCES `roomtype` (`roomTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

/*Data for the table `roominfo` */

insert  into `roominfo`(`id`,`roomID`,`roomTypeID`,`roomState`,`roomTel`,`roomLoc`,`remark`,`delmark`,`roomStateNo`,`roomTime`,`roomImg`,`roomImgBoth`) values 
(1,'2001','1','干净的空房','6662001','2楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(2,'2002','1','干净的空房','6662002','2楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(3,'2003','1','干净的空房','6662003','2楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(4,'2005','1','干净的空房','6662005','2楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(5,'2006','1','干净的空房','6662006','2楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(6,'2007','1','干净的空房','6662007','2楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(7,'2008','1','干净的空房','6662008','2楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(8,'2009','1','干净的空房','6662009','2楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(9,'2010','1','干净的空房','6662010','2楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(10,'3001','2','干净的空房','6663001','3楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(11,'3002','2','干净的空房','6663002','3楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(12,'3003','2','干净的空房','6663003','3楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(13,'3005','2','干净的空房','6663005','3楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(14,'3006','2','干净的空房','6663006','3楼左','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(15,'3007','2','干净的空房','6663007','3楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(16,'3008','2','干净的空房','6663008','3楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(17,'3009','2','干净的空房','6663009','3楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(18,'3010','2','干净的空房','6663010','3楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(19,'3012','2','干净的空房','6663012','3楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg2.jpg',NULL),
(20,'4001','3','干净的空房','6664001','4楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(21,'4002','3','干净的空房','6664002','4楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(22,'4003','3','干净的空房','6664003','4楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(23,'4005','3','干净的空房','6664005','4楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(24,'4006','3','干净的空房','6664006','4楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(25,'4007','3','干净的空房','6664007','4楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(26,'4008','3','干净的空房','6664008','4楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(27,'4009','3','干净的空房','6664009','4楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(28,'4010','3','干净的空房','6664010','4楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(29,'4012','3','干净的空房','6664012','4楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg3.jpg',NULL),
(30,'5001','4','干净的空房','6665001','5楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(31,'5002','4','干净的空房','6665002','5楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(32,'5003','4','干净的空房','6665003','5楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(33,'5005','4','干净的空房','6665005','5楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(34,'5006','4','干净的空房','6665006','5楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(35,'5007','4','干净的空房','6665007','5楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(36,'5008','4','干净的空房','6665008','5楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(37,'5009','4','干净的空房','6665009','5楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(38,'5010','4','干净的空房','6665010','5楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(39,'5012','4','干净的空房','6665012','5楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg4.jpg',NULL),
(40,'6001','5','干净的空房','6666001','6楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(41,'6002','5','干净的空房','6666002','6楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(42,'6003','5','干净的空房','6666003','6楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(43,'6005','5','干净的空房','6666005','6楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(44,'6006','5','干净的空房','6666006','6楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(45,'6007','5','干净的空房','6666007','6楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(46,'6008','5','干净的空房','6666008','6楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(47,'6009','5','干净的空房','6666009','6楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(48,'6010','5','干净的空房','6666010','6楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(49,'6012','5','干净的空房','6666012','6楼右','',NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg5.jpg',NULL),
(50,'7001','6','干净的空房','6667001','7楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(51,'7002','6','干净的空房','6667002','7楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(52,'7003','6','干净的空房','6667003','7楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(53,'7005','6','干净的空房','6667005','7楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(54,'7007','6','干净的空房','6667007','7楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(55,'7008','6','干净的空房','6667008','7楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(56,'7009','6','正在入住','6667009','7楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(57,'7010','6','干净的空房','6667010','7楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(58,'7012','6','干净的空房','6667012','7楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(59,'8001','7','干净的空房','6668001','8楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(60,'8002','7','干净的空房','6668002','8楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(61,'8003','7','干净的空房','6668003','8楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(62,'8005','7','干净的空房','6668005','8楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(63,'8006','7','干净的空房','6668006','8楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(64,'8007','7','干净的空房','6668007','8楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(65,'8009','7','干净的空房','6668009','8楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(66,'8010','7','干净的空房','6668010','8楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(67,'8012','7','干净的空房','6668012','8楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL),
(68,'9001','8','干净的空房','6669001','9楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(69,'9002','8','干净的空房','6669002','9楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(70,'9003','8','干净的空房','6669003','9楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(71,'9005','8','干净的空房','6669005','9楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(72,'9006','8','干净的空房','6669006','9楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(73,'9007','8','干净的空房','6669007','9楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(74,'9008','8','干净的空房','6669008','9楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(75,'9009','8','干净的空房','6669009','9楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(76,'9010','8','干净的空房','6669010','9楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(77,'9012','8','离开','6669012','9楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg8.jpg',NULL),
(78,'2012','1','干净的空房','6662012','2楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg1.jpg',NULL),
(90,'7006','6','干净的空房','6667006','7楼左',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg6.jpg',NULL),
(91,'8008','7','正在入住','6668008','8楼右',NULL,NULL,NULL,NULL,'/HotelManagerSystem/assets/images/best-rooms/roomImg7.jpg',NULL);

/*Table structure for table `roomtype` */

DROP TABLE IF EXISTS `roomtype`;

CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roomTypeID` varchar(20) NOT NULL COMMENT '房间类型名字',
  `roomTypeName` varchar(15) NOT NULL COMMENT '房间类型',
  `roomPrice` float NOT NULL COMMENT '房间价格',
  `roomBedNum` int(11) DEFAULT NULL COMMENT '床位数',
  `foregift` float DEFAULT NULL COMMENT '押金',
  `clroom` varchar(11) DEFAULT NULL COMMENT '是否钟点房',
  `clprice` float DEFAULT NULL COMMENT '钟点房单价',
  `remark` varchar(40) DEFAULT NULL COMMENT '备注',
  `delmark` int(11) DEFAULT NULL COMMENT '标记',
  PRIMARY KEY (`id`),
  KEY `roomTypeID` (`roomTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `roomtype` */

insert  into `roomtype`(`id`,`roomTypeID`,`roomTypeName`,`roomPrice`,`roomBedNum`,`foregift`,`clroom`,`clprice`,`remark`,`delmark`) values 
(1,'1','单人间',198,1,100,'是',100,'4小时',NULL),
(2,'2','双人间',298,2,200,'否',NULL,NULL,NULL),
(3,'3','大床房',298,1,200,'是',100,'4小时',NULL),
(4,'4','三人间',298,3,200,'否',NULL,NULL,NULL),
(5,'5','套间',888,1,200,'否',NULL,'带客厅',NULL),
(6,'6','商务间',498,1,200,'是',200,'4小时',NULL),
(7,'7','行政间',1998,1,1000,'是',1000,'4小时（一整层）',NULL),
(8,'8','总统套房',1998,1,1000,'是',1000,'4小时',NULL);

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createDate` datetime DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_kjp9c6hki8a1p70x44bwqex2v` (`roleId`),
  UNIQUE KEY `UK_akj61lp0wul5h73yq0xrq89cq` (`userId`),
  KEY `FK_kjp9c6hki8a1p70x44bwqex2v` (`roleId`),
  KEY `FK_akj61lp0wul5h73yq0xrq89cq` (`userId`),
  CONSTRAINT `FK_akj61lp0wul5h73yq0xrq89cq` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_kjp9c6hki8a1p70x44bwqex2v` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

/*Table structure for table `tehui` */

DROP TABLE IF EXISTS `tehui`;

CREATE TABLE `tehui` (
  `id` int(11) NOT NULL COMMENT '特惠信息主键',
  `thtitle` varchar(50) NOT NULL COMMENT '特惠信息标题',
  `brif` varchar(500) DEFAULT NULL COMMENT '内容',
  `thtime` date DEFAULT NULL COMMENT '特惠日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tehui` */

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `id` int(11) NOT NULL COMMENT '酒店天气主键',
  `day` date DEFAULT NULL COMMENT '日期',
  `tempa` int(11) DEFAULT NULL COMMENT '温度',
  `tianqi` varchar(30) DEFAULT NULL COMMENT '天气类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `temp` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
