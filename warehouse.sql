-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: warehouse
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bus_customer`
--

DROP TABLE IF EXISTS `bus_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `connectionpersion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_customer`
--

LOCK TABLES `bus_customer` WRITE;
/*!40000 ALTER TABLE `bus_customer` DISABLE KEYS */;
INSERT INTO `bus_customer` VALUES (1,'小张超市','111','武汉','027-9123131','张大明','15279230588','中国银行','654431331343413','213123@sina.com','430000',1),(2,'小明超市','222','深圳','0755-9123131','张小明','13064154936','中国银行','654431331343413','213123@sina.com','430000',1),(3,'快七超市','430000','武汉','027-11011011','雷生','13617020687','招商银行','6543123341334133','6666@66.com','545341',1),(4,'丽云超市','332005','十里大道1039号','0792-13658745','射可可','13648524759','建设银行','36245684125509','13648524759@163.com','152632',1),(12,'零食有点忙','300251','湖南长沙','136524584576','李达超','136524584576','湖南建设银行','6523587496541258','lingshi@sina.com','6512134',1);
/*!40000 ALTER TABLE `bus_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_goods`
--

DROP TABLE IF EXISTS `bus_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `providerid` int DEFAULT NULL,
  `produceplace` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `goodspackage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `productcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `promitcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number` int DEFAULT NULL,
  `dangernum` int DEFAULT NULL,
  `goodsimg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_sq0btr2v2lq8gt8b4gb8tlk0i` (`providerid`) USING BTREE,
  CONSTRAINT `bus_goods_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_goods`
--

LOCK TABLES `bus_goods` WRITE;
/*!40000 ALTER TABLE `bus_goods` DISABLE KEYS */;
INSERT INTO `bus_goods` VALUES (1,'娃哈哈益生菌饮料',3,'武汉','120ML','瓶','PH12345','PZ1234','通肠、开胃',2,671,400,'2020-02-24/99F329D96E06449E9A5D613B1D3FA7DD.jpg',1),(2,'旺旺雪饼[小包]',1,'仙桃','包','袋','PH12312312','PZ12312','好吃不上火',4,1190,10,'2020-01-21/625C047E6A934D9FA5C611BB7D93CD8F.jpg',1),(5,'娃哈哈矿泉水',3,'武汉','300ML','瓶','ZZ44234','PD123211','饮料',3,1000,100,'2024-05-19/41BD46650408437B98EACDE89914173D.jpg',1),(6,'纯牛奶',4,'内蒙古','24瓶一箱','瓶','SD13156146','SA651613','牛奶',55,100,20,'2020-01-21/F0BC1EBC2BFA4497BDF8B9254BA59511.jpg',1),(18,'八宝粥',2,'广州','500g','罐装','DFS234341231','DF123124324','粥',4,500,100,'2024-05-17/FD5FC047681C4B888A53DD9054296D8B.jpg',1),(19,'旺旺大礼包',1,'武汉','1000g','礼盒','FS2032541','CG654524123','礼品',68,690,800,'/images/noDefaultImage.jpg',1),(20,'法式小面包',2,'广州','50g','小袋装','VD645245','QE6241452','零食',1,10202,5000,'/images/noDefaultImage.jpg',1),(21,'纯牛奶',5,'新疆','12盒/箱','盒装','KO95245145','QE41641564','补钙纯牛奶',58,6221,3000,'2024-05-19/E3B2BD504ACA4916856A83542B80C07A.png',1);
/*!40000 ALTER TABLE `bus_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_inport`
--

DROP TABLE IF EXISTS `bus_inport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_inport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `inporttime` datetime DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int DEFAULT NULL,
  `goodsid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `bus_inport_ibfk_1` (`providerid`) USING BTREE,
  KEY `bus_inport_ibfk_2` (`goodsid`) USING BTREE,
  CONSTRAINT `bus_inport_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bus_inport_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `bus_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_inport`
--

LOCK TABLES `bus_inport` WRITE;
/*!40000 ALTER TABLE `bus_inport` DISABLE KEYS */;
INSERT INTO `bus_inport` VALUES (18,'支付宝','2024-05-19 07:45:45','超级管理员',200,'散装零食',3306,1,2),(19,'微信','2024-05-19 07:46:42','超级管理员',202,'零食',4443,2,20);
/*!40000 ALTER TABLE `bus_inport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_outport`
--

DROP TABLE IF EXISTS `bus_outport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_outport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `providerid` int DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `outputtime` datetime DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `outportprice` double(10,2) DEFAULT NULL,
  `number` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `goodsid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_outport`
--

LOCK TABLES `bus_outport` WRITE;
/*!40000 ALTER TABLE `bus_outport` DISABLE KEYS */;
INSERT INTO `bus_outport` VALUES (7,2,'微信','2024-05-19 07:47:04','超级管理员',4443.00,120,'商品过期',20);
/*!40000 ALTER TABLE `bus_outport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_provider`
--

DROP TABLE IF EXISTS `bus_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `connectionperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `available` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_provider`
--

LOCK TABLES `bus_provider` WRITE;
/*!40000 ALTER TABLE `bus_provider` DISABLE KEYS */;
INSERT INTO `bus_provider` VALUES (1,'旺旺食品','434000','仙桃','0728-4124312','小明','13413441141','中国农业银行','654124345131','12312321@sina.com','5123123',1),(2,'达利园食品','430000','汉川','0728-4124312','大明','13413441141','中国农业银行','654124345131','12312321@sina.com','5123123',1),(3,'娃哈哈集团','513131','杭州','21312','小晨','12312','建设银行','512314141541','123131@163.com','312312',1),(4,'蒙牛集团','332005','内蒙古','0790-362514856','姿态','13617252689','中国银行','36214587962509','13617252689@163.com','364145',1),(5,'伊利集团','562115','内蒙古','0792-36548569','Rita','13698560566','建设银行','3621458963596509','13698560566@163.com','362514',1);
/*!40000 ALTER TABLE `bus_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_sales`
--

DROP TABLE IF EXISTS `bus_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerid` int DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `salestime` datetime DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `goodsid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_sales`
--

LOCK TABLES `bus_sales` WRITE;
/*!40000 ALTER TABLE `bus_sales` DISABLE KEYS */;
INSERT INTO `bus_sales` VALUES (8,12,'支付宝','2024-05-19 07:48:19','超级管理员',310,'季后补尾款，3000元',6000.00,19);
/*!40000 ALTER TABLE `bus_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_salesback`
--

DROP TABLE IF EXISTS `bus_salesback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_salesback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerid` int DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `salesbacktime` datetime DEFAULT NULL,
  `salebackprice` double(10,2) DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `number` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `goodsid` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_salesback`
--

LOCK TABLES `bus_salesback` WRITE;
/*!40000 ALTER TABLE `bus_salesback` DISABLE KEYS */;
INSERT INTO `bus_salesback` VALUES (7,12,'支付宝','2024-05-19 07:48:51',6000.00,'超级管理员',20,'商品销售不佳',19);
/*!40000 ALTER TABLE `bus_salesback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `open` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `available` int DEFAULT NULL COMMENT '状态【0不可用1可用】',
  `ordernum` int DEFAULT NULL COMMENT '排序码【为了调试显示顺序】',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (1,0,'总经办',1,'公司最高级管理层部门','深圳',1,1,'2019-04-10 14:06:32'),(2,1,'销售部',0,'统管销售渠道','武汉',1,2,'2019-04-10 14:06:32'),(3,1,'运营部',0,'运营总部，统管商家加盟','武汉',1,3,'2019-04-10 14:06:32'),(4,1,'生产部',0,'生产货源，管理货源渠道，采购商品','武汉',1,4,'2019-04-10 14:06:32'),(5,2,'销售一部',0,'销售一部','武汉',1,5,'2019-04-10 14:06:32'),(6,2,'销售二部',0,'销售二部','武汉',1,6,'2019-04-10 14:06:32'),(7,3,'运营一部',0,'运营一部','武汉',1,7,'2019-04-10 14:06:32'),(8,2,'销售三部',0,'销售三部','长沙',1,8,'2019-04-10 14:06:32'),(9,2,'销售四部',0,'销售四部','常德',1,9,'2019-04-10 14:06:32'),(10,2,'销售五部',0,'销售五部','岳阳',1,10,'2019-04-10 14:06:32'),(18,4,'生产一部',0,'生产食品','武汉',1,11,'2019-04-13 09:49:38');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_loginfo`
--

DROP TABLE IF EXISTS `sys_loginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_loginfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_loginfo`
--

LOCK TABLES `sys_loginfo` WRITE;
/*!40000 ALTER TABLE `sys_loginfo` DISABLE KEYS */;
INSERT INTO `sys_loginfo` VALUES (291,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 08:56:49'),(292,'落亦--luoyi','0:0:0:0:0:0:0:1','2024-05-17 09:07:24'),(293,'李四-lisi','0:0:0:0:0:0:0:1','2024-05-17 09:08:20'),(294,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 09:12:20'),(295,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:08:48'),(296,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:12:19'),(297,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:14:15'),(298,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:30:29'),(299,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:46:14'),(300,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 10:48:34'),(301,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 11:05:38'),(302,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 11:22:53'),(303,'李九-lijiu','0:0:0:0:0:0:0:1','2024-05-17 11:26:32'),(304,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 11:27:28'),(305,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 11:30:31'),(306,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-17 11:41:17'),(307,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 06:48:13'),(308,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 07:00:33'),(309,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 07:14:10'),(310,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 07:19:13'),(311,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 07:30:48'),(312,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 08:14:10'),(313,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 08:36:33'),(314,'超级管理员-system','0:0:0:0:0:0:0:1','2024-05-19 08:45:27'),(315,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 08:48:00'),(316,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 08:50:35'),(317,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 08:51:28'),(318,'肖正合-xiaozhenghe','0:0:0:0:0:0:0:1','2024-05-19 08:52:44'),(319,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 08:55:11'),(320,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 09:28:39'),(321,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 09:31:40'),(322,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 09:35:47'),(323,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 09:37:05'),(324,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:03:28'),(325,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:08:42'),(326,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:10:35'),(327,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:10:57'),(328,'胡浩-huhao','0:0:0:0:0:0:0:1','2024-05-19 10:24:37'),(329,'胡浩-huhao','0:0:0:0:0:0:0:1','2024-05-19 10:25:24'),(330,'胡浩-huhao','0:0:0:0:0:0:0:1','2024-05-19 10:26:50'),(331,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 10:27:56'),(332,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 10:29:42'),(333,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 10:33:17'),(334,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:42:23'),(335,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:47:49'),(336,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:49:05'),(337,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 10:56:21'),(338,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 11:11:47'),(339,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 11:56:20'),(340,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 12:08:55'),(341,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 12:18:52'),(342,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 12:23:59'),(343,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 12:27:18'),(344,'超级管理员-admin','127.0.0.1','2024-05-19 12:28:50'),(345,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 12:40:01'),(346,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 12:42:44'),(347,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 12:45:33'),(348,'超级管理员-admin','0:0:0:0:0:0:0:1','2024-05-19 12:46:36'),(349,'顾北辰-wsleli','0:0:0:0:0:0:0:1','2024-05-19 12:49:02');
/*!40000 ALTER TABLE `sys_loginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `createtime` datetime DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (57,'有关南部地区销售通知','加大运营力度，降本增效，适度减少部门用人量。','2024-05-19 08:36:00','顾北辰');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `open` int DEFAULT NULL,
  `ordernum` int DEFAULT NULL,
  `available` int DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` VALUES (1,0,'menu','仓库管理系统',NULL,'&#xe68e;','','',1,1,1),(2,1,'menu','基础管理',NULL,'&#xe857;','','',0,2,1),(3,1,'menu','进货管理',NULL,'&#xe645;','',NULL,0,3,1),(4,1,'menu','销售管理',NULL,'&#xe611;','','',0,4,1),(5,1,'menu','系统管理',NULL,'&#xe614;','','',0,5,1),(6,1,'menu','其它管理',NULL,'&#xe628;','','',0,6,1),(7,2,'menu','客户管理',NULL,'&#xe651;','/bus/toCustomerManager','',0,7,1),(8,2,'menu','供应商管理',NULL,'&#xe658;','/bus/toProviderManager','',0,8,1),(9,2,'menu','商品管理',NULL,'&#xe657;','/bus/toGoodsManager','',0,9,1),(10,3,'menu','商品进货',NULL,'&#xe756;','/bus/toInportManager','',0,10,1),(11,3,'menu','商品退货查询',NULL,'&#xe65a;','/bus/toOutportManager','',0,11,1),(12,4,'menu','商品销售',NULL,'&#xe65b;','/bus/toSalesManager','',0,12,1),(13,4,'menu','销售退货查询',NULL,'&#xe770;','/bus/toSalesbackManager','',0,13,1),(14,5,'menu','部门管理',NULL,'&#xe770;','/sys/toDeptManager','',0,14,1),(15,5,'menu','菜单管理',NULL,'&#xe663;','/sys/toMenuManager','',0,15,1),(16,5,'menu','权限管理','','&#xe857;','/sys/toPermissionManager','',0,16,1),(17,5,'menu','角色管理','','&#xe650;','/sys/toRoleManager','',0,17,1),(18,5,'menu','用户管理','','&#xe612;','/sys/toUserManager','',0,18,1),(21,6,'menu','登陆日志',NULL,'&#xe675;','/sys/toLoginfoManager','',0,21,1),(22,6,'menu','系统公告',NULL,'&#xe756;','/sys/toNoticeManager',NULL,0,22,1),(23,6,'menu','图标管理',NULL,'&#xe670;','../resources/page/icon.html',NULL,0,23,1),(30,14,'permission','添加部门','dept:create','',NULL,NULL,0,24,1),(31,14,'permission','修改部门','dept:update','',NULL,NULL,0,26,1),(32,14,'permission','删除部门','dept:delete','',NULL,NULL,0,27,1),(34,15,'permission','添加菜单','menu:create','','','',0,29,1),(35,15,'permission','修改菜单','menu:update','',NULL,NULL,0,30,1),(36,15,'permission','删除菜单','menu:delete','',NULL,NULL,0,31,1),(38,16,'permission','添加权限','permission:create','',NULL,NULL,0,33,1),(39,16,'permission','修改权限','permission:update','',NULL,NULL,0,34,1),(40,16,'permission','删除权限','permission:delete','',NULL,NULL,0,35,1),(42,17,'permission','添加角色','role:create','',NULL,NULL,0,37,1),(43,17,'permission','修改角色','role:update','',NULL,NULL,0,38,1),(44,17,'permission','删除角色','role:delete','',NULL,NULL,0,39,1),(46,17,'permission','分配权限','role:selectPermission','',NULL,NULL,0,41,1),(47,18,'permission','添加用户','user:create','',NULL,NULL,0,42,1),(48,18,'permission','修改用户','user:update','',NULL,NULL,0,43,1),(49,18,'permission','删除用户','user:delete','',NULL,NULL,0,44,1),(51,18,'permission','用户分配角色','user:selectRole','',NULL,NULL,0,46,1),(52,18,'permission','重置密码','user:resetPwd',NULL,NULL,NULL,0,47,1),(53,14,'permission','部门查询','dept:view',NULL,NULL,NULL,0,48,1),(54,15,'permission','菜单查询','menu:view',NULL,NULL,NULL,0,49,1),(55,16,'permission','权限查询','permission:view',NULL,NULL,NULL,0,50,1),(56,17,'permission','角色查询','role:view',NULL,NULL,NULL,0,51,1),(57,18,'permission','用户查询','user:view',NULL,NULL,NULL,0,52,1),(68,7,'permission','客户查询','customer:view',NULL,NULL,NULL,NULL,60,1),(69,7,'permission','客户添加','customer:create',NULL,NULL,NULL,NULL,61,1),(70,7,'permission','客户修改','customer:update',NULL,NULL,NULL,NULL,62,1),(71,7,'permission','客户删除','customer:delete',NULL,NULL,NULL,NULL,63,1),(73,21,'permission','日志查询','info:view',NULL,NULL,NULL,NULL,65,1),(74,21,'permission','日志删除','info:delete',NULL,NULL,NULL,NULL,66,1),(75,21,'permission','日志批量删除','info:batchdelete',NULL,NULL,NULL,NULL,67,1),(76,22,'permission','公告查询','notice:view',NULL,NULL,NULL,NULL,68,1),(77,22,'permission','公告添加','notice:create',NULL,NULL,NULL,NULL,69,1),(78,22,'permission','公告修改','notice:update',NULL,NULL,NULL,NULL,70,1),(79,22,'permission','公告删除','notice:delete',NULL,NULL,NULL,NULL,71,1),(81,8,'permission','供应商查询','provider:view',NULL,NULL,NULL,NULL,73,1),(82,8,'permission','供应商添加','provider:create',NULL,NULL,NULL,NULL,74,1),(83,8,'permission','供应商修改','provider:update',NULL,NULL,NULL,NULL,75,1),(84,8,'permission','供应商删除','provider:delete',NULL,NULL,NULL,NULL,76,1),(86,22,'permission','公告查看','notice:viewnotice',NULL,NULL,NULL,NULL,78,1),(91,9,'permission','商品查询','goods:view',NULL,NULL,NULL,0,79,1),(92,9,'permission','商品添加','goods:create',NULL,NULL,NULL,0,80,1),(116,9,'permission','商品删除','goods:delete',NULL,NULL,NULL,0,84,1),(117,9,'permission','商品修改','goods:update',NULL,NULL,NULL,0,85,1),(118,9,'permission','商品查询','goods:view',NULL,NULL,NULL,0,86,1),(119,22,'permission','公告批量删除','notice:batchdelete',NULL,NULL,NULL,0,87,1),(122,6,'menu','缓存管理',NULL,'&#xe630','/sys/toCacheManager','_black',1,88,1),(123,122,'permission','同步缓存','cache:syncCache',NULL,NULL,NULL,0,89,1),(124,122,'permission','清空缓存','cache:removeAllCache',NULL,NULL,NULL,0,90,1);
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `available` int DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','拥有所有菜单权限',1,'2019-04-10 14:06:32'),(4,'基础数据管理员','基础数据管理员',1,'2019-04-10 14:06:32'),(6,'销售管理员','销售管理员',1,'2019-04-10 14:06:32'),(8,'系统管理员','管理所有的系统设置',1,'2020-02-24 07:46:27'),(10,'运营管理员','测试系统',1,'2020-03-06 03:31:36'),(11,'生产管理员','进货管理',1,'2024-05-19 08:30:55');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_permission` (
  `rid` int NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`pid`,`rid`) USING BTREE,
  KEY `sys_role_permission_ibfk_1` (`pid`) USING BTREE,
  KEY `sys_role_permission_ibfk_2` (`rid`) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` VALUES (1,1),(4,1),(6,1),(8,1),(10,1),(1,2),(4,2),(1,3),(1,4),(6,4),(1,5),(8,5),(1,6),(10,6),(1,7),(4,7),(1,8),(4,8),(1,9),(4,9),(1,10),(1,11),(1,12),(6,12),(1,13),(6,13),(1,14),(8,14),(1,15),(8,15),(1,16),(8,16),(1,17),(8,17),(1,18),(8,18),(1,21),(10,21),(1,22),(10,22),(1,23),(10,23),(1,30),(8,30),(1,31),(8,31),(1,32),(8,32),(1,34),(8,34),(1,35),(8,35),(1,36),(8,36),(1,38),(8,38),(1,39),(8,39),(1,40),(8,40),(1,42),(8,42),(1,43),(8,43),(1,44),(8,44),(1,46),(8,46),(1,47),(8,47),(1,48),(8,48),(1,49),(8,49),(1,51),(8,51),(1,52),(8,52),(1,53),(8,53),(1,54),(8,54),(1,55),(8,55),(1,56),(8,56),(1,57),(8,57),(1,68),(4,68),(1,69),(1,70),(1,71),(1,73),(10,73),(1,74),(10,74),(1,75),(10,75),(1,76),(10,76),(1,77),(10,77),(1,78),(10,78),(1,79),(10,79),(1,81),(4,81),(1,82),(1,83),(1,84),(1,86),(10,86),(1,91),(4,91),(1,92),(4,92),(1,116),(4,116),(1,117),(4,117),(1,118),(4,118),(10,119),(10,122),(10,123),(10,124);
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sex` int DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `deptid` int DEFAULT NULL,
  `hiredate` datetime DEFAULT NULL,
  `mgr` int DEFAULT NULL COMMENT '上级领导id',
  `available` int DEFAULT '1' COMMENT '是否可用，0不可用，1可用',
  `ordernum` int DEFAULT NULL COMMENT '排序码',
  `type` int DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sys_user_loginname` (`loginname`) USING BTREE COMMENT '登陆名称唯一',
  KEY `FK_sys_dept_sys_user` (`deptid`) USING BTREE,
  CONSTRAINT `FK_sys_dept_sys_user` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'超级管理员','admin','82e281d08002b01f7a65dc3442418fce','系统深处的男人',1,'超级管理员',1,'2018-06-25 11:06:34',NULL,1,1,0,'2024-05-19/2C004C209E9A4C7DB923993D1F20EAEB.jpg','04A93C74C8294AA09A8B974FD1F4ECBB'),(18,'顾北辰','wsleli','32131a2e99a6880ee396e31bdd14495b','湖南长沙',1,'董事长+超级用户',1,'2024-05-18 16:00:00',NULL,1,1,1,'2024-05-19/B142E45FA88C4836AE931F1B7837C77D.jpg','1C4DC01A010B446C80FC95CEA31CE22C'),(19,'肖正合','xiaozhenghe','c4f6747897a1ff384adc2e1e90705c5e','湖南长沙',1,'销售部总经理',2,'2024-05-19 08:03:24',18,1,2,1,'/images/defaultUserTitle.jpg','44309A140F1F4CF3807030271F6AD9D4'),(20,'刘耕宏','liugenghong','b6c313d21696fdcb81f4f072ca45918e','湖南长沙',1,'运营部总经理',3,'2024-05-19 08:06:43',18,1,3,1,'/images/defaultUserTitle.jpg','46456744324E4CC1A6959C914DBA909C'),(21,'嘉和','jiahe','d50c3e5d03f906a31cce806d3f58726b','湖南长沙',1,'生产部总经理',4,'2024-05-19 08:07:48',18,1,4,1,'/images/defaultUserTitle.jpg','F3D8B13EC4524B35A81CC78D61243E91'),(22,'徐小小','xuxiaoxiao','3374c30d6729b14611e3d10f20df1329','台湾',0,'销售一部经理',5,'2024-05-19 08:08:38',19,1,5,1,'/images/defaultUserTitle.jpg','CE910372E9F74A3E9CA21C32D0B1214B'),(23,'胡浩','huhao','1ec2c088c5d32d6d5195fa670c5f684f','广东中三',1,'销售二部经理',6,'2024-05-19 08:10:13',19,1,6,1,'2024-05-19/4FA99C798EA74BE28DD67B4ABF064EE1.jpg','7BC5B3B09DEF4E7785319D61DABC2122'),(24,'林妍','linyan','0e643695b07154d6fa6a5ce3edfcb82f','湖北武汉',0,'销售三部经理',8,'2024-05-19 08:11:35',19,1,7,1,'/images/defaultUserTitle.jpg','62B2334D2D774EA18D24CFFF09BD7925'),(25,'光耀先','guangyaoxian','52847bd0e35d0e5e9f52d1e1a1e6dc98','四川',1,'销售四部经理',9,'2024-05-19 08:16:06',19,1,8,1,'/images/defaultUserTitle.jpg','A62EB34AFEA24F1885AAC67C5045C4C4'),(26,'林夏','linxia','abfabbffed57450c91c6518b7e36f32c','福建',0,'销售五部经理',10,'2024-05-19 08:17:09',19,1,9,1,'/images/defaultUserTitle.jpg','A5A766823D2A4346B9958F020FEE2165'),(27,'福堇','fujin','6798789b47b64fbd4340e8998208855b','浙江温州',0,'运营一部经理',7,'2024-05-19 08:18:14',20,1,10,1,'/images/defaultUserTitle.jpg','2AD180B1C86F46EB809DE2D8269DDE13'),(28,'咸燃','xianran','5a85b8a09d50b29049fedc8e7a0be80b','北京海淀',1,'生产一部经理',18,'2024-05-19 08:19:37',21,1,11,1,'/images/defaultUserTitle.jpg','3CF174F0E807484BBE30DB73FFA5E217');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`uid`,`rid`) USING BTREE,
  KEY `FK_sys_user_role_1` (`rid`) USING BTREE,
  CONSTRAINT `FK_sys_user_role_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sys_user_role_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(18,1),(19,6),(22,6),(23,6),(24,6),(25,6),(26,6),(20,10),(27,10),(21,11),(28,11);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19 21:06:28
