-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Current Database: `db_seguridad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_seguridad` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_seguridad`;

--
-- Table structure for table `susti`
--

DROP TABLE IF EXISTS `susti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `susti` (
  `id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(30) NOT NULL,
  `llaveA` varchar(32) NOT NULL,
  `llaveB` varchar(32) NOT NULL,
  `cifrado` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `susti`
--

LOCK TABLES `susti` WRITE;
/*!40000 ALTER TABLE `susti` DISABLE KEYS */;
INSERT INTO `susti` VALUES (54,'','™>,(Kù”mGì¡êýô','NùI#×ÀàaÔM)¸¨',''),(55,'','™>,(Kù”mGì¡êýô','NùI#×ÀàaÔM)¸¨',''),(56,'','™>,(Kù”mGì¡êýô','NùI#×ÀàaÔM)¸¨',''),(57,'','™>,(Kù”mGì¡êýô','NùI#×ÀàaÔM)¸¨','');
/*!40000 ALTER TABLE `susti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transposicion`
--

DROP TABLE IF EXISTS `transposicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transposicion` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mensajetra` varchar(50) NOT NULL,
  `columna` varchar(32) NOT NULL,
  `orden` varchar(50) NOT NULL,
  `cifrado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transposicion`
--

LOCK TABLES `transposicion` WRITE;
/*!40000 ALTER TABLE `transposicion` DISABLE KEYS */;
INSERT INTO `transposicion` VALUES (38,'hola desde seguridad informatica','U1þ=QÌ¬øÞÓòJPp','Ÿ³åClö²9ñKÔ‡È',' lsedna*oesiima_eudoi*hd_r_rcadgaft*'),(39,'lo que sea','U1þ=QÌ¬øÞÓòJPp','XÂ–« òœ¶û3:]¨µß',' uaqe_so_'),(40,'hola desde el tec','5','Ÿ³åClö²9ñKÔ‡È',' lsl*//oeec//_et*//hd_e//ad_*'),(41,'hola desde el tec','U1þ=QÌ¬øÞÓòJPp','Ÿ³åClö²9ñKÔ‡È',' lsl*oeec_et*hd_ead_*');
/*!40000 ALTER TABLE `transposicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vige`
--

DROP TABLE IF EXISTS `vige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vige` (
  `id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `mensaje` varchar(50) NOT NULL,
  `llave` varchar(30) NOT NULL,
  `cifrado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vige`
--

LOCK TABLES `vige` WRITE;
/*!40000 ALTER TABLE `vige` DISABLE KEYS */;
INSERT INTO `vige` VALUES (5,'lo que sea','’² P„%Ja€uTê•E','tb vm fj'),(6,'hola desde vige','œ,‘ŸV5Lm_‹)<LÑÅ','wyf aqj or'),(7,'hola desde vige','’² P„%Ja€uTê•E','pbq lrxm inm');
/*!40000 ALTER TABLE `vige` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Current Database: `pos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pos` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pos`;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Laptops'),(2,'Desktop PC\'s'),(3,'Tablets');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'Neovic Devierte','Silay City, Negros Occidental','09092735719');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL,
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,2,'Purchase',4,10,'2017-09-18 09:32:01'),(2,2,'Purchase',20,10,'2017-09-18 09:32:01'),(3,2,'Purchase',1,99,'2017-09-18 09:32:01'),(4,2,'Purchase',2,20,'2017-09-18 09:32:01'),(5,2,'Purchase',2,10,'2017-09-18 09:34:29'),(6,2,'Purchase',2,10,'2017-09-18 11:09:21'),(7,2,'Purchase',3,12,'2017-09-18 11:09:22'),(8,2,'Purchase',4,8,'2017-09-18 11:09:22'),(9,1,'Add Product',27,10,'2017-09-18 13:59:25'),(10,1,'Update quantity',27,20,'2017-09-18 14:04:32'),(11,2,'Purchase',1,2,'2017-10-08 13:59:16'),(12,2,'Purchase',1,2,'2017-10-09 09:03:38'),(13,2,'Purchase',8,1,'2017-10-09 09:03:38');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'DELL Inspiron 15 7000 15.6',5.85,887,'upload/1.jpg',4),(2,1,'MICROSOFT Surface Pro 4 & Typecover - 128 GB\r\n',799,948,'upload/2.jpg',0),(3,2,'DELL Inspiron 15 5000 15.6',599,977,'upload/3.jpg',4),(4,1,'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey',399,982,'upload/4.jpg',0),(5,1,'APPLE MacBook Air 13.3\" (2017)',879,9900,'upload/5.jpg',0),(6,1,'DELL Inspiron 15 5000 15',449.99,1000,'upload/6.jpg',4),(8,1,'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver',549.99,999,'upload/8.jpg',0),(9,2,'PC SPECIALIST Vortex Core Lite Gaming PC',599.99,1000,'upload/9.jpg',0),(10,2,'DELL Inspiron 5675 Gaming PC - Recon Blue',599.99,1000,'upload/10.jpg',4),(11,2,'HP Barebones OMEN X 900-099nn Gaming PC',489.98,1000,'upload/11.jpg',0),(12,2,'ACER Aspire GX-781 Gaming PC',749.99,1000,'upload/12.jpg',0),(13,2,'HP Pavilion Power 580-015na Gaming PC',799.99,1000,'upload/13.jpg',0),(14,2,'LENOVO Legion Y520 Gaming PC',899.99,1000,'upload/14.jpg',0),(15,2,'PC SPECIALIST Vortex Minerva XT-R Gaming PC',999.99,1000,'upload/15.jpg',0),(16,2,'C SPECIALIST Vortex Core II Gaming PC',649.99,1000,'upload/16.jpg',0),(17,3,'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black',49.99,1000,'upload/17.jpg',0),(18,3,'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black',79.99,1000,'upload/18.jpg',0),(19,3,'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black',99.99,1000,'upload/19.jpg',0),(20,3,'APPLE 9.7\" iPad - 32 GB, Space Grey',339,990,'upload/20.jpg',0),(21,3,'APPLE 9.7\" iPad - 32 GB, Gold',339,1000,'upload/21.jpg',0),(22,3,'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)',619,1000,'upload/22.jpg',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `salesid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,2,34,'2017-09-16 16:23:38'),(2,2,18,'2017-09-16 16:25:28'),(3,2,6,'2017-09-16 16:27:31'),(4,2,1014244,'2017-09-16 16:44:01'),(5,2,9588,'2017-09-18 09:06:29'),(6,2,88779,'2017-09-18 09:08:42'),(7,2,15579,'2017-09-18 09:09:34'),(8,2,112361,'2017-09-18 09:32:00'),(9,2,7990,'2017-09-18 09:34:29'),(10,2,18370,'2017-09-18 11:09:21'),(11,2,1798,'2017-10-08 13:59:16'),(12,2,2347.99,'2017-10-09 09:03:38');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_detail`
--

DROP TABLE IF EXISTS `sales_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_detail` (
  `sales_detailid` int(11) NOT NULL AUTO_INCREMENT,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL,
  PRIMARY KEY (`sales_detailid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_detail`
--

LOCK TABLES `sales_detail` WRITE;
/*!40000 ALTER TABLE `sales_detail` DISABLE KEYS */;
INSERT INTO `sales_detail` VALUES (1,2,1,12),(2,2,2,10),(3,3,3,11),(4,4,2,50),(5,4,1,106),(6,4,5,1000),(7,5,2,12),(8,6,5,101),(9,7,1,10),(10,7,3,11),(11,8,4,10),(12,8,20,10),(13,8,1,99),(14,8,2,20),(15,9,2,10),(16,10,2,10),(17,10,3,12),(18,10,4,8),(19,11,1,2),(20,12,1,2),(21,12,8,1);
/*!40000 ALTER TABLE `sales_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (4,'Dell Computer Corporation','One Dell WayRound Rock, Texas 78682','1-800-WWW-DELL');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1),(2,'user','ee11cbb19052e40b07aac0ca060c23ee',2),(4,'supplier','99b0e8da24e29e4ccb5d7d76e677c2ac',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `seguridad`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `seguridad` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `seguridad`;

--
-- Table structure for table `regcnfid`
--

DROP TABLE IF EXISTS `regcnfid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regcnfid` (
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `curp` varchar(100) DEFAULT NULL,
  `firmad` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regcnfid`
--

LOCK TABLES `regcnfid` WRITE;
/*!40000 ALTER TABLE `regcnfid` DISABLE KEYS */;
INSERT INTO `regcnfid` VALUES ('juan luis','gil tapia','juanluis12345678gt','5fd3224b893a5e3625e18b22c2faadfd'),('edgar','morales','MOGE950406HMNRMD09','f4253fff0f02083bdbc21c0634b5d2e2');
/*!40000 ALTER TABLE `regcnfid` ENABLE KEYS */;
UNLOCK TABLES;