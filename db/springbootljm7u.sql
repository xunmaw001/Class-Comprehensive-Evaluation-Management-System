-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootljm7u
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootljm7u`
--

/*!40000 DROP DATABASE IF EXISTS `springbootljm7u`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootljm7u` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootljm7u`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `banzhurengonghao` varchar(200) NOT NULL COMMENT '班主任工号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (31,'2022-03-21 04:12:01','班级1','1'),(32,'2022-03-21 04:12:01','班级2','班主任工号2'),(33,'2022-03-21 04:12:01','班级3','班主任工号3'),(34,'2022-03-21 04:12:01','班级4','班主任工号4'),(35,'2022-03-21 04:12:01','班级5','班主任工号5'),(36,'2022-03-21 04:12:01','班级6','班主任工号6');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banzhuren`
--

DROP TABLE IF EXISTS `banzhuren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banzhuren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banzhurengonghao` varchar(200) NOT NULL COMMENT '班主任工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `banzhurenxingming` varchar(200) NOT NULL COMMENT '班主任姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `banzhurendianhua` varchar(200) DEFAULT NULL COMMENT '班主任电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banzhurengonghao` (`banzhurengonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='班主任';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banzhuren`
--

LOCK TABLES `banzhuren` WRITE;
/*!40000 ALTER TABLE `banzhuren` DISABLE KEYS */;
INSERT INTO `banzhuren` VALUES (21,'2022-03-21 04:12:01','1','1','班主任姓名1','男','upload/banzhuren_zhaopian1.jpg','13823888881'),(22,'2022-03-21 04:12:01','班主任工号2','123456','班主任姓名2','男','upload/banzhuren_zhaopian2.jpg','13823888882'),(23,'2022-03-21 04:12:01','班主任工号3','123456','班主任姓名3','男','upload/banzhuren_zhaopian3.jpg','13823888883'),(24,'2022-03-21 04:12:01','班主任工号4','123456','班主任姓名4','男','upload/banzhuren_zhaopian4.jpg','13823888884'),(25,'2022-03-21 04:12:01','班主任工号5','123456','班主任姓名5','男','upload/banzhuren_zhaopian5.jpg','13823888885'),(26,'2022-03-21 04:12:01','班主任工号6','123456','班主任姓名6','男','upload/banzhuren_zhaopian6.jpg','13823888886');
/*!40000 ALTER TABLE `banzhuren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deyuchengji`
--

DROP TABLE IF EXISTS `deyuchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deyuchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiyuchengji` float DEFAULT NULL COMMENT '体育成绩',
  `jichuchengji` float DEFAULT NULL COMMENT '基础成绩',
  `jiafen` float DEFAULT NULL COMMENT '加分',
  `koufen` float DEFAULT NULL COMMENT '扣分',
  `bili` float DEFAULT NULL COMMENT '比例',
  `deyuchengji` float DEFAULT NULL COMMENT '德育成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647836379641 DEFAULT CHARSET=utf8 COMMENT='德育成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deyuchengji`
--

LOCK TABLES `deyuchengji` WRITE;
/*!40000 ALTER TABLE `deyuchengji` DISABLE KEYS */;
INSERT INTO `deyuchengji` VALUES (61,'2022-03-21 04:12:01','学号1','学生姓名1','班主任工号1','班主任姓名1','学年1','班级1',1,1,1,1,1,1),(62,'2022-03-21 04:12:01','学号2','学生姓名2','班主任工号2','班主任姓名2','学年2','班级2',2,2,2,2,2,2),(63,'2022-03-21 04:12:01','学号3','学生姓名3','班主任工号3','班主任姓名3','学年3','班级3',3,3,3,3,3,3),(64,'2022-03-21 04:12:01','学号4','学生姓名4','班主任工号4','班主任姓名4','学年4','班级4',4,4,4,4,4,4),(65,'2022-03-21 04:12:01','学号5','学生姓名5','班主任工号5','班主任姓名5','学年5','班级5',5,5,5,5,5,5),(66,'2022-03-21 04:12:01','学号6','学生姓名6','班主任工号6','班主任姓名6','学年6','班级6',6,6,6,6,6,6),(1647836379640,'2022-03-21 04:19:38','1','学生姓名1','1','班主任姓名1','学年四','班级1',8.8,60,60,20,0.1,14);
/*!40000 ALTER TABLE `deyuchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2022-03-21 04:12:01','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"学生基本信息\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\",\"parentMenuName\":\"学生管理\"}],\"menu\":\"学生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"班主任\",\"menuJump\":\"列表\",\"tableName\":\"banzhuren\",\"parentMenuName\":\"班主任管理\"}],\"menu\":\"班主任管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"班级\",\"menuJump\":\"列表\",\"tableName\":\"banji\",\"parentMenuName\":\"班级管理\"}],\"menu\":\"班级管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"报表\"],\"menu\":\"综合测评\",\"menuJump\":\"列表\",\"tableName\":\"zongheceping\",\"parentMenuName\":\"综合测评管理\"}],\"menu\":\"综合测评管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"体育成绩\",\"menuJump\":\"列表\",\"tableName\":\"tiyuchengji\",\"parentMenuName\":\"体育成绩管理\"}],\"menu\":\"体育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"德育成绩\",\"menuJump\":\"列表\",\"tableName\":\"deyuchengji\",\"parentMenuName\":\"德育成绩管理\"}],\"menu\":\"德育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"智育成绩\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuchengji\",\"parentMenuName\":\"智育成绩管理\"}],\"menu\":\"智育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-keyboard\",\"buttons\":[\"查看\",\"编辑名称\",\"删除\"],\"menu\":\"菜单列表\",\"tableName\":\"menu\",\"parentMenuName\":\"系统管理\"}],\"menu\":\"系统管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\"],\"menu\":\"综合测评\",\"menuJump\":\"列表\",\"tableName\":\"zongheceping\"}],\"menu\":\"综合测评管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\"],\"menu\":\"体育成绩\",\"menuJump\":\"列表\",\"tableName\":\"tiyuchengji\"}],\"menu\":\"体育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\"],\"menu\":\"德育成绩\",\"menuJump\":\"列表\",\"tableName\":\"deyuchengji\"}],\"menu\":\"德育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\"],\"menu\":\"智育成绩\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuchengji\"}],\"menu\":\"智育成绩管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"学生\",\"tableName\":\"xuesheng\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"综合测评\",\"体育成绩\"],\"menu\":\"学生\",\"menuJump\":\"列表\",\"tableName\":\"xuesheng\"}],\"menu\":\"学生管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"报表\"],\"menu\":\"综合测评\",\"menuJump\":\"列表\",\"tableName\":\"zongheceping\"}],\"menu\":\"综合测评管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-present\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"德育成绩\"],\"menu\":\"体育成绩\",\"menuJump\":\"列表\",\"tableName\":\"tiyuchengji\"}],\"menu\":\"体育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"智育成绩\"],\"menu\":\"德育成绩\",\"menuJump\":\"列表\",\"tableName\":\"deyuchengji\"}],\"menu\":\"德育成绩管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"综合测评\"],\"menu\":\"智育成绩\",\"menuJump\":\"列表\",\"tableName\":\"zhiyuchengji\"}],\"menu\":\"智育成绩管理\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"班主任\",\"tableName\":\"banzhuren\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiyuchengji`
--

DROP TABLE IF EXISTS `tiyuchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiyuchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xuenian` varchar(200) NOT NULL COMMENT '学年',
  `tiyufen` float NOT NULL COMMENT '体育分',
  `bili` float DEFAULT NULL COMMENT '比例',
  `tiyuchengji` float DEFAULT NULL COMMENT '体育成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647836353303 DEFAULT CHARSET=utf8 COMMENT='体育成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiyuchengji`
--

LOCK TABLES `tiyuchengji` WRITE;
/*!40000 ALTER TABLE `tiyuchengji` DISABLE KEYS */;
INSERT INTO `tiyuchengji` VALUES (51,'2022-03-21 04:12:01','学号1','学生姓名1','班主任工号1','班主任姓名1','班级1','学年一',1,1,1),(52,'2022-03-21 04:12:01','学号2','学生姓名2','班主任工号2','班主任姓名2','班级2','学年一',2,2,2),(53,'2022-03-21 04:12:01','学号3','学生姓名3','班主任工号3','班主任姓名3','班级3','学年一',3,3,3),(54,'2022-03-21 04:12:01','学号4','学生姓名4','班主任工号4','班主任姓名4','班级4','学年一',4,4,4),(55,'2022-03-21 04:12:01','学号5','学生姓名5','班主任工号5','班主任姓名5','班级5','学年一',5,5,5),(56,'2022-03-21 04:12:01','学号6','学生姓名6','班主任工号6','班主任姓名6','班级6','学年一',6,6,6),(1647836353302,'2022-03-21 04:19:12','1','学生姓名1','1','班主任姓名1','班级1','学年四',88,0.1,8.8);
/*!40000 ALTER TABLE `tiyuchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','e1ybhjkt8z4s31xu852jvihlfc1m2jts','2022-03-21 04:15:55','2022-03-21 05:16:26'),(2,21,'1','banzhuren','班主任','tyxgzfjd45rhvidhwbfl05x25vvr5hjc','2022-03-21 04:18:40','2022-03-21 05:18:41');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-21 04:12:01');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengshouji` varchar(200) DEFAULT NULL COMMENT '学生手机',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  `banzhurengonghao` varchar(200) NOT NULL COMMENT '班主任工号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-21 04:12:01','1','1','学生姓名1','男','upload/xuesheng_touxiang1.jpg','13823888881','班级1','1'),(12,'2022-03-21 04:12:01','学号2','123456','学生姓名2','男','upload/xuesheng_touxiang2.jpg','13823888882','班级2','班主任工号2'),(13,'2022-03-21 04:12:01','学号3','123456','学生姓名3','男','upload/xuesheng_touxiang3.jpg','13823888883','班级3','班主任工号3'),(14,'2022-03-21 04:12:01','学号4','123456','学生姓名4','男','upload/xuesheng_touxiang4.jpg','13823888884','班级4','班主任工号4'),(15,'2022-03-21 04:12:01','学号5','123456','学生姓名5','男','upload/xuesheng_touxiang5.jpg','13823888885','班级5','班主任工号5'),(16,'2022-03-21 04:12:01','学号6','123456','学生姓名6','男','upload/xuesheng_touxiang6.jpg','13823888886','班级6','班主任工号6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhiyuchengji`
--

DROP TABLE IF EXISTS `zhiyuchengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhiyuchengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiyuchengji` float DEFAULT NULL COMMENT '体育成绩',
  `deyuchengji` float DEFAULT NULL COMMENT '德育成绩',
  `shujujiegouyusuanfa` float DEFAULT NULL COMMENT '数据结构与算法',
  `cyuyan` float DEFAULT NULL COMMENT 'c语言',
  `gaoshu1` float DEFAULT NULL COMMENT '高数1',
  `shujukuxitong` float DEFAULT NULL COMMENT '数据库系统',
  `yingyu1` float DEFAULT NULL COMMENT '英语1',
  `python` float DEFAULT NULL COMMENT 'python',
  `gaoshu2` float DEFAULT NULL COMMENT '高数2',
  `yingyu2` float DEFAULT NULL COMMENT '英语2',
  `jisuanjiwangluo` float DEFAULT NULL COMMENT '计算机网络',
  `caozuoxitong` float DEFAULT NULL COMMENT '操作系统',
  `ruanjiangongcheng` float DEFAULT NULL COMMENT '软件工程',
  `bianyiyuanli` float DEFAULT NULL COMMENT '编译原理',
  `xinxianquan` float DEFAULT NULL COMMENT '信息安全',
  `pingjunzhi` float DEFAULT NULL COMMENT '平均值',
  `bili` float DEFAULT NULL COMMENT '比例',
  `zhiyuchengji` float DEFAULT NULL COMMENT '智育成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647836411523 DEFAULT CHARSET=utf8 COMMENT='智育成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhiyuchengji`
--

LOCK TABLES `zhiyuchengji` WRITE;
/*!40000 ALTER TABLE `zhiyuchengji` DISABLE KEYS */;
INSERT INTO `zhiyuchengji` VALUES (71,'2022-03-21 04:12:01','学号1','学生姓名1','班主任工号1','班主任姓名1','学年1','班级1',1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),(72,'2022-03-21 04:12:01','学号2','学生姓名2','班主任工号2','班主任姓名2','学年2','班级2',2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2),(73,'2022-03-21 04:12:01','学号3','学生姓名3','班主任工号3','班主任姓名3','学年3','班级3',3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3),(74,'2022-03-21 04:12:01','学号4','学生姓名4','班主任工号4','班主任姓名4','学年4','班级4',4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4),(75,'2022-03-21 04:12:01','学号5','学生姓名5','班主任工号5','班主任姓名5','学年5','班级5',5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5),(76,'2022-03-21 04:12:01','学号6','学生姓名6','班主任工号6','班主任姓名6','学年6','班级6',6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6),(1647836411522,'2022-03-21 04:20:11','1','学生姓名1','1','班主任姓名1','学年四','班级1',8.8,14,60,60,60,60,60,60,60,60,60,60,60,60,60,0.07,0.1,5.46);
/*!40000 ALTER TABLE `zhiyuchengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zongheceping`
--

DROP TABLE IF EXISTS `zongheceping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zongheceping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banzhurengonghao` varchar(200) DEFAULT NULL COMMENT '班主任工号',
  `banzhurenxingming` varchar(200) DEFAULT NULL COMMENT '班主任姓名',
  `xuenian` varchar(200) DEFAULT NULL COMMENT '学年',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `tiyuchengji` float NOT NULL COMMENT '体育成绩',
  `deyuchengji` float NOT NULL COMMENT '德育成绩',
  `zhiyuchengji` float NOT NULL COMMENT '智育成绩',
  `zonghechengji` float DEFAULT NULL COMMENT '综合成绩',
  `lurushijian` date DEFAULT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1647836461422 DEFAULT CHARSET=utf8 COMMENT='综合测评';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zongheceping`
--

LOCK TABLES `zongheceping` WRITE;
/*!40000 ALTER TABLE `zongheceping` DISABLE KEYS */;
INSERT INTO `zongheceping` VALUES (41,'2022-03-21 04:12:01','学号1','学生姓名1','班主任工号1','班主任姓名1','学年1','班级1',1,1,1,1,'2022-03-21'),(42,'2022-03-21 04:12:01','学号2','学生姓名2','班主任工号2','班主任姓名2','学年2','班级2',2,2,2,2,'2022-03-21'),(43,'2022-03-21 04:12:01','学号3','学生姓名3','班主任工号3','班主任姓名3','学年3','班级3',3,3,3,3,'2022-03-21'),(44,'2022-03-21 04:12:01','学号4','学生姓名4','班主任工号4','班主任姓名4','学年4','班级4',4,4,4,4,'2022-03-21'),(45,'2022-03-21 04:12:01','学号5','学生姓名5','班主任工号5','班主任姓名5','学年5','班级5',5,5,5,5,'2022-03-21'),(46,'2022-03-21 04:12:01','学号6','学生姓名6','班主任工号6','班主任姓名6','学年6','班级6',6,6,6,6,'2022-03-21'),(1647836461421,'2022-03-21 04:21:01','1','学生姓名1','1','班主任姓名1','学年四','班级1',8.8,14,5.46,28.26,'2022-03-21');
/*!40000 ALTER TABLE `zongheceping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 17:49:06
