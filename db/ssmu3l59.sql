-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmu3l59
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838450838 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-28 12:13:59',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-28 12:13:59',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-28 12:13:59',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-28 12:13:59',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-28 12:13:59',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-28 12:13:59',6,'宇宙银河系月球1号','月某','13823888886','是'),(1611838450837,'2021-01-28 12:54:10',1611838283781,'广东省揭阳市榕城区西马街道北环城路','发多少个','13455667788','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'kaoyankecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838302094 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmu3l59/upload/1611838209510.jpg'),(2,'picture2','http://localhost:8080/ssmu3l59/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmu3l59/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskaoyankecheng`
--

DROP TABLE IF EXISTS `discusskaoyankecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskaoyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838312222 DEFAULT CHARSET=utf8 COMMENT='考研课程评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskaoyankecheng`
--

LOCK TABLES `discusskaoyankecheng` WRITE;
/*!40000 ALTER TABLE `discusskaoyankecheng` DISABLE KEYS */;
INSERT INTO `discusskaoyankecheng` VALUES (111,'2021-01-28 12:13:59',1,1,'评论内容1','回复内容1'),(112,'2021-01-28 12:13:59',2,2,'评论内容2','回复内容2'),(113,'2021-01-28 12:13:59',3,3,'评论内容3','回复内容3'),(114,'2021-01-28 12:13:59',4,4,'评论内容4','回复内容4'),(115,'2021-01-28 12:13:59',5,5,'评论内容5','回复内容5'),(116,'2021-01-28 12:13:59',6,6,'评论内容6','回复内容6'),(1611838312221,'2021-01-28 12:51:51',1611838171975,1611838283781,'jkgkj ghj空格键看后感快回家',NULL);
/*!40000 ALTER TABLE `discusskaoyankecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838356022 DEFAULT CHARSET=utf8 COMMENT='考研论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (41,'2021-01-28 12:13:59','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-01-28 12:13:59','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-01-28 12:13:59','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-01-28 12:13:59','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-01-28 12:13:59','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-01-28 12:13:59','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1611838336778,'2021-01-28 12:52:16',NULL,'即可观看借记卡和健康',41,1611838283781,'123',NULL),(1611838356021,'2021-01-28 12:52:35','几乎疾控好看好看','<p>请输入内容疾控根据更健康观看看框架比较快</p>',0,1611838283781,'123','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoyanfenlei`
--

DROP TABLE IF EXISTS `kaoyanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoyanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoyanleixing` varchar(200) DEFAULT NULL COMMENT '考研类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838074901 DEFAULT CHARSET=utf8 COMMENT='考研分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoyanfenlei`
--

LOCK TABLES `kaoyanfenlei` WRITE;
/*!40000 ALTER TABLE `kaoyanfenlei` DISABLE KEYS */;
INSERT INTO `kaoyanfenlei` VALUES (11,'2021-01-28 12:13:59','考研类型1'),(12,'2021-01-28 12:13:59','考研类型2'),(13,'2021-01-28 12:13:59','考研类型3'),(14,'2021-01-28 12:13:59','考研类型4'),(15,'2021-01-28 12:13:59','考研类型5'),(16,'2021-01-28 12:13:59','考研类型6'),(1611838074900,'2021-01-28 12:47:54','考研类型8');
/*!40000 ALTER TABLE `kaoyanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoyankecheng`
--

DROP TABLE IF EXISTS `kaoyankecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoyankecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbianhao` varchar(200) DEFAULT NULL COMMENT '课程编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kaoyanleixing` varchar(200) DEFAULT NULL COMMENT '考研类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengliangdian` longtext COMMENT '课程亮点',
  `shiyongrenqun` longtext COMMENT '适用人群',
  `kechengjieshao` longtext COMMENT '课程介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kechengbianhao` (`kechengbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838171976 DEFAULT CHARSET=utf8 COMMENT='考研课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoyankecheng`
--

LOCK TABLES `kaoyankecheng` WRITE;
/*!40000 ALTER TABLE `kaoyankecheng` DISABLE KEYS */;
INSERT INTO `kaoyankecheng` VALUES (21,'2021-01-28 12:13:59','课程编号1','课程名称1','考研类型1','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian1.jpg','课程内容1','课程亮点1','适用人群1','课程介绍1',1,1,99.9),(22,'2021-01-28 12:13:59','课程编号2','课程名称2','考研类型2','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian2.jpg','课程内容2','课程亮点2','适用人群2','课程介绍2',2,2,99.9),(23,'2021-01-28 12:13:59','课程编号3','课程名称3','考研类型3','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian3.jpg','课程内容3','课程亮点3','适用人群3','课程介绍3',3,3,99.9),(24,'2021-01-28 12:13:59','课程编号4','课程名称4','考研类型4','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian4.jpg','课程内容4','课程亮点4','适用人群4','课程介绍4',4,4,99.9),(25,'2021-01-28 12:13:59','课程编号5','课程名称5','考研类型5','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian5.jpg','课程内容5','课程亮点5','适用人群5','课程介绍5',5,5,99.9),(26,'2021-01-28 12:13:59','课程编号6','课程名称6','考研类型6','http://localhost:8080/ssmu3l59/upload/kaoyankecheng_tupian6.jpg','课程内容6','课程亮点6','适用人群6','课程介绍6',6,6,99.9),(1611838171975,'2021-01-28 12:49:31','1611838075746','疾控就','考研类型3','http://localhost:8080/ssmu3l59/upload/1611838091971.png','和规范化规范个更好发挥法国红酒复活甲f','更好发挥过和规范化发货复活甲回复','规范环境复活甲环境画法几何','<p>环境复活甲分几乎房间号放假客服环境环境</p><p>    <img src=\"http://localhost:8080/ssmu3l59/upload/1611838131232.png\">                                                 </p>',1,1,99);
/*!40000 ALTER TABLE `kaoyankecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838371021 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (101,'2021-01-28 12:13:59',1,'用户名1','留言内容1','回复内容1'),(102,'2021-01-28 12:13:59',2,'用户名2','留言内容2','回复内容2'),(103,'2021-01-28 12:13:59',3,'用户名3','留言内容3','回复内容3'),(104,'2021-01-28 12:13:59',4,'用户名4','留言内容4','回复内容4'),(105,'2021-01-28 12:13:59',5,'用户名5','留言内容5','回复内容5'),(106,'2021-01-28 12:13:59',6,'用户名6','留言内容6','回复内容6'),(1611838371020,'2021-01-28 12:52:50',1611838283781,'123','黄金矿工看脚后跟价格疾控',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838237275 DEFAULT CHARSET=utf8 COMMENT='备考先行';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (91,'2021-01-28 12:13:59','标题1','简介1','http://localhost:8080/ssmu3l59/upload/news_picture1.jpg','内容1'),(92,'2021-01-28 12:13:59','标题2','简介2','http://localhost:8080/ssmu3l59/upload/news_picture2.jpg','内容2'),(93,'2021-01-28 12:13:59','标题3','简介3','http://localhost:8080/ssmu3l59/upload/news_picture3.jpg','内容3'),(94,'2021-01-28 12:13:59','标题4','简介4','http://localhost:8080/ssmu3l59/upload/news_picture4.jpg','内容4'),(95,'2021-01-28 12:13:59','标题5','简介5','http://localhost:8080/ssmu3l59/upload/news_picture5.jpg','内容5'),(96,'2021-01-28 12:13:59','标题6','简介6','http://localhost:8080/ssmu3l59/upload/news_picture6.jpg','内容6'),(1611838237274,'2021-01-28 12:50:36','就看过几个回复根据房间号','回复几乎复活甲方回复交付环境f','http://localhost:8080/ssmu3l59/upload/1611838235516.png','<p>环境房交会费回复环境电话房间号 </p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'kaoyankecheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838465387 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1611838465386,'2021-01-28 12:54:24','202112820542153297188','kaoyankecheng',1611838283781,1611838171975,'疾控就','http://localhost:8080/ssmu3l59/upload/1611838091971.png',1,99,99,99,99,1,'已完成','广东省揭阳市榕城区西马街道北环城路');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838298821 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611838298820,'2021-01-28 12:51:38',1611838283781,1611838171975,'kaoyankecheng','疾控就','http://localhost:8080/ssmu3l59/upload/1611838091971.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','sedb64u7nc2uxv14trj8nnfimpf3pv48','2021-01-28 12:31:34','2021-01-28 13:54:58'),(2,1611838283781,'123','yonghu','用户','19i51ea9a9yfbkbyyesogqvfhtourxvo','2021-01-28 12:51:35','2021-01-28 13:55:15');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-28 12:13:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611838283782 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-01-28 12:13:59','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com',100),(32,'2021-01-28 12:13:59','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com',100),(33,'2021-01-28 12:13:59','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com',100),(34,'2021-01-28 12:13:59','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com',100),(35,'2021-01-28 12:13:59','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com',100),(36,'2021-01-28 12:13:59','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com',100),(1611838283781,'2021-01-28 12:51:23','123','123','句就','21','男','13566558899','2313213@qq.com',901);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 10:11:32
