-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: OnlineShoppingWebsite
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressNo` varchar(45) NOT NULL,
  `userNo` varchar(45) DEFAULT NULL,
  `receiverName` varchar(45) DEFAULT NULL,
  `regionNo` varchar(45) DEFAULT NULL,
  `addressDetails` varchar(45) DEFAULT NULL,
  `phoneNum` varchar(11) DEFAULT NULL,
  `addressTag` varchar(45) DEFAULT NULL,
  `isDefaultAddress` tinyint(1) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`addressNo`),
  KEY `fk_Address_User1_idx` (`userNo`),
  KEY `fk_Address_Area1_idx` (`regionNo`),
  CONSTRAINT `fk_Address_Area1` FOREIGN KEY (`regionNo`) REFERENCES `Area` (`regionNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Address_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('A01','U01','Emma','G01','w University','18946791594','home',1,0),('A02','U02','Olivia','G02','wanke B02','13675487561','home',1,0),('A03','U02','Kelly','G03','CT','13967918497','school',0,0),('A04','U04','Edith','G04','GH','13997845612','company',1,0),('A05','U05','Joyce','G05','LK','13567849512','home',1,0);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Area`
--

DROP TABLE IF EXISTS `Area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Area` (
  `regionNo` varchar(45) NOT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`regionNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Area`
--

LOCK TABLES `Area` WRITE;
/*!40000 ALTER TABLE `Area` DISABLE KEYS */;
INSERT INTO `Area` VALUES ('G01','AH','HF','SS'),('G02','BJ','BJ','CP'),('G03','FJ','FZ','GL'),('G04','GS','LZ','CG'),('G05','GD','GZ','HP');
/*!40000 ALTER TABLE `Area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlackList`
--

DROP TABLE IF EXISTS `BlackList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlackList` (
  `userNo` varchar(45) NOT NULL,
  `productNo` varchar(45) NOT NULL,
  PRIMARY KEY (`userNo`,`productNo`),
  KEY `fk_BlackList_Product1_idx` (`productNo`),
  CONSTRAINT `fk_BlackList_Product1` FOREIGN KEY (`productNo`) REFERENCES `Product` (`productNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_BlackList_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlackList`
--

LOCK TABLES `BlackList` WRITE;
/*!40000 ALTER TABLE `BlackList` DISABLE KEYS */;
INSERT INTO `BlackList` VALUES ('U01','P01'),('U01','P02'),('U01','P03'),('U04','P04'),('U05','P05');
/*!40000 ALTER TABLE `BlackList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comments` (
  `commentNo` varchar(45) NOT NULL,
  `userNo` varchar(45) DEFAULT NULL,
  `productNo` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `comment` text,
  `commentTime` datetime DEFAULT NULL,
  PRIMARY KEY (`commentNo`),
  KEY `fk_Comments_User1_idx` (`userNo`),
  KEY `fk_Comments_ProductinOrder1_idx` (`productNo`),
  CONSTRAINT `fk_Comments_ProductinOrder1` FOREIGN KEY (`productNo`) REFERENCES `ProductinOrder` (`productNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comments_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` VALUES ('C01','U01','P04',5,'taste good','2018-09-11 10:30:11'),('C02','U02','P02',4,'good quality','2018-11-11 00:00:00'),('C03','U02','P01',3,'the color is different','2018-11-20 08:00:00'),('C04','U04','P05',4,'it is ok','2019-05-21 12:00:00');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `History` (
  `userNo` varchar(45) NOT NULL,
  `productNo` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`userNo`,`productNo`,`time`),
  KEY `fk_History_Product1_idx` (`productNo`),
  CONSTRAINT `fk_History_Product1` FOREIGN KEY (`productNo`) REFERENCES `Product` (`productNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_History_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
INSERT INTO `History` VALUES ('U02','P02','2018-11-07 00:00:00'),('U02','P03','2019-05-15 00:00:00'),('U01','P04','2018-08-09 00:00:00'),('U02','P04','2019-05-17 00:00:00'),('U05','P05','2019-05-13 00:00:00');
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order` (
  `orderNo` varchar(45) NOT NULL,
  `userNo` varchar(45) DEFAULT NULL,
  `timeofOrder` datetime DEFAULT NULL,
  `addressNo` varchar(45) DEFAULT NULL,
  `trackingNum` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `freight` double DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `expressCompany` varchar(45) DEFAULT NULL,
  `expectedDate` date DEFAULT NULL,
  `paymentNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `fk_Order_User1_idx` (`userNo`),
  KEY `fk_Order_Address1_idx` (`addressNo`),
  KEY `fk_Order_Payment1_idx` (`paymentNo`),
  CONSTRAINT `fk_Order_Address1` FOREIGN KEY (`addressNo`) REFERENCES `Address` (`addressNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Payment1` FOREIGN KEY (`paymentNo`) REFERENCES `Payment` (`paymentNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES ('OR01','U01','2018-09-08 10:30:11','A01','M01','REL',10,50,'EMS','2018-09-09','PA01'),('OR02','U02','2018-11-08 00:00:00','A02','M02','GMPS',15,87,'FEDEX','2018-11-09','PA02'),('OR03','U02','2019-05-17 08:00:00','A03','M03','PCNF',10,38,'EMS','2019-05-18','PA03'),('OR04','U04','2019-05-18 12:00:00','A04','M04','CNF',11,261,'CAE','2019-05-19','PA04');
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `paymentNo` varchar(45) NOT NULL,
  `userNo` varchar(45) DEFAULT NULL,
  `cardNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`paymentNo`),
  KEY `fk_Payment_User1_idx` (`userNo`),
  CONSTRAINT `fk_Payment_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES ('PA01','U01','CA01'),('PA02','U02','CA02'),('PA03','U02','CA03'),('PA04','U04','CA04'),('PA05','U05','CA05');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `productNo` varchar(45) NOT NULL,
  `storeNo` varchar(45) NOT NULL,
  `imageUrl` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `introduction` text,
  `parameterValues` text,
  `monthlySales` int(11) DEFAULT NULL,
  `originalPrice` double DEFAULT NULL,
  `currentPrice` double DEFAULT NULL,
  `isonShelf` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`productNo`),
  KEY `fk_Product_Store_idx` (`storeNo`),
  CONSTRAINT `fk_Product_Store` FOREIGN KEY (`storeNo`) REFERENCES `Store` (`storeNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES ('P01','S01','5707.jpg','clothes','sagi','skirt','relatively cheap','{color:red, material: cotton}',1000,100,90,1),('P02','S02','642.jpg','shoes','nike','slipper','very popular','{color:black, material: plastic}',1500,20,18,1),('P03','S01','cat13.jpg','clothes','sagi','sweater','expensive','{color:blue, material: wool}',2000,10,5,1),('P04','S04','neko.jpg','food','yayo','milk','practical','{material: dairy}',2500,40,7,1),('P05','S05','cat33.jpg','commodity','LK','tissue','pratical','{weight: 1kg}',3000,50,10,1);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductinCart`
--

DROP TABLE IF EXISTS `ProductinCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductinCart` (
  `userNo` varchar(45) NOT NULL,
  `productNo` varchar(45) NOT NULL,
  `numofProduct` int(11) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userNo`,`productNo`),
  KEY `fk_ProductinCart_Product1_idx` (`productNo`),
  CONSTRAINT `fk_ProductinCart_Product1` FOREIGN KEY (`productNo`) REFERENCES `Product` (`productNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductinCart_User1` FOREIGN KEY (`userNo`) REFERENCES `User` (`userNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductinCart`
--

LOCK TABLES `ProductinCart` WRITE;
/*!40000 ALTER TABLE `ProductinCart` DISABLE KEYS */;
INSERT INTO `ProductinCart` VALUES ('U01','P04',1,1),('U02','P01',2,0),('U02','P03',3,0),('U04','P05',4,0),('U05','P04',5,0);
/*!40000 ALTER TABLE `ProductinCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProductinOrder`
--

DROP TABLE IF EXISTS `ProductinOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProductinOrder` (
  `productNo` varchar(45) NOT NULL,
  `orderNo` varchar(45) NOT NULL,
  `price` double DEFAULT NULL,
  `numofProduct` int(11) DEFAULT NULL,
  PRIMARY KEY (`productNo`,`orderNo`),
  KEY `fk_ProductinOrder_Order1_idx` (`orderNo`),
  CONSTRAINT `fk_ProductinOrder_Order1` FOREIGN KEY (`orderNo`) REFERENCES `Order` (`orderNo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductinOrder_Product1` FOREIGN KEY (`productNo`) REFERENCES `Product` (`productNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProductinOrder`
--

LOCK TABLES `ProductinOrder` WRITE;
/*!40000 ALTER TABLE `ProductinOrder` DISABLE KEYS */;
INSERT INTO `ProductinOrder` VALUES ('P01','OR02',9,2),('P02','OR02',18,3),('P04','OR01',40,1),('P04','OR03',7,4),('P05','OR04',50,5);
/*!40000 ALTER TABLE `ProductinOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Store` (
  `storeNo` varchar(45) NOT NULL,
  `storeName` varchar(45) DEFAULT NULL,
  `dateofFound` datetime DEFAULT NULL,
  `numofFans` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `imagesUrls` varchar(45) DEFAULT NULL,
  `telephoneNum` varchar(11) DEFAULT NULL,
  `introduction` text,
  `isDelete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`storeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES ('S01','sagi specialty store','2006-06-06 00:00:00',100,100,'002.jpg','13978946729','made in china',0),('S02','running specialty store','2007-07-07 00:00:00',200,99,'602.jpg','13649734765','international Brand',0),('S03','Pazzo','2008-08-08 00:00:00',300,98,'452.jpg','13646857915','pay attention to quality',1),('S04','Yayo specialty store','2009-09-09 00:00:00',400,97,'441.jpg','18767549899','10 years old store',0),('S05','LK specialty store','2010-10-10 00:00:00',500,96,'400.jpg','13945754796','celebrity shop',0);
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userNo` varchar(45) NOT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `isDelete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('U01','Dye','147852','demo.jpg','M','1997-01-01',1,0,0),('U02','Earl','852963','car24.jpg','F','1998-02-02',2,5,0),('U03','Eason','963741','cat22.jpg','M','1999-03-03',3,7,0),('U04','Colin','147251','cat11.jpg','F','2000-04-04',4,9,0),('U05','Mabel','96325','114.jpg','F','2001-05-05',5,3,0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-27 20:54:21
