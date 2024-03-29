CREATE DATABASE  IF NOT EXISTS `SB_Master` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `SB_Master`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: sb-mall.cu5prbfi9jue.ap-northeast-2.rds.amazonaws.com    Database: SB_Master
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED='';

--
-- Table structure for table `CrowdOrder`
--

DROP TABLE IF EXISTS `CrowdOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdOrder` (
  `orderSeq` int(11) NOT NULL AUTO_INCREMENT,
  `orderDetailNum` varchar(45) DEFAULT '0',
  `userSeq` int(11) DEFAULT NULL,
  `crowdBoardSeq` int(11) DEFAULT NULL,
  `goodsNo` varchar(20) DEFAULT NULL,
  `optionSeq` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `onePrice` int(20) DEFAULT NULL,
  `salePrice` int(20) DEFAULT NULL,
  `refund` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`orderSeq`),
  KEY `userSeq_idx` (`userSeq`),
  KEY `crOrderSeq_idx` (`crowdBoardSeq`),
  KEY `codNo_idx` (`orderDetailNum`),
  KEY `goodsNo2_idx` (`goodsNo`),
  KEY `optionSeq2_idx` (`optionSeq`),
  CONSTRAINT `crBoardSeq2` FOREIGN KEY (`crowdBoardSeq`) REFERENCES `CrowdBoard` (`crowdBoardSeq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `goodsNo2` FOREIGN KEY (`goodsNo`) REFERENCES `CrowdGoods` (`goodsNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `optionSeq2` FOREIGN KEY (`optionSeq`) REFERENCES `CrowdGoodsOption` (`optionSeq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orderDetailNum2` FOREIGN KEY (`orderDetailNum`) REFERENCES `CrowdOrderDetail` (`orderDetailNum`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `userSeq2` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdOrder`
--

LOCK TABLES `CrowdOrder` WRITE;
/*!40000 ALTER TABLE `CrowdOrder` DISABLE KEYS */;
INSERT INTO `CrowdOrder` VALUES (8,'1544580197103OD',1,61,'1544579217809',53,1,1450000,1450000,0),(9,'1544580590229OD',1,61,'1544578942292',48,1,900000,900000,0),(10,'1544594789831OD',1,64,'1544594596723',60,1,2020000,2020000,0),(11,'1544594803342OD',1,64,'1544594596723',60,1,2020000,2020000,0),(12,'1544594997471OD',1,65,'1544594848664',62,3,4000000,12000000,0),(13,'1544595194217OD',1,66,'1544594976781',63,1,80000000,80000000,0),(14,'1544595257295OD',5,67,'1544595201107',64,1,20000000,20000000,0),(15,'1544595257295OD',5,67,'1544595201107',65,1,30000000,30000000,0),(16,'1544595298808OD',5,67,'1544595201107',65,1,30000000,30000000,0),(17,'1544595323299OD',1,66,'1544594976781',63,4,80000000,320000000,0),(18,'1544595365082OD',1,64,'1544594596723',60,1,2020000,2020000,0),(21,'1545019550368OD',1,70,'1544597331922',69,1,120000000,120000000,0),(22,'1545122833026OD',1,70,'1544597331922',69,1,120000000,120000000,0),(23,'1545127025412OD',1,70,'1544597331922',69,1,120000000,120000000,0),(25,'1545206439948OD',1,70,'1544597331922',69,1,120000000,120000000,0),(28,'1545291263278OD',1,70,'1544597331922',69,1,120000000,120000000,0),(32,'1545460031072OD',5,67,'1544595201107',64,2,20000000,40000000,0),(33,'1545460031072OD',5,67,'1544595201107',65,1,30000000,30000000,0),(34,'1545460593160OD',5,67,'1544595201107',64,2,20000000,40000000,0),(35,'1545460593160OD',5,67,'1544595201107',65,1,30000000,30000000,0),(36,'1545465396830OD',5,67,'1544595201107',64,2,20000000,40000000,0),(37,'1545465396830OD',5,67,'1544595201107',65,1,30000000,30000000,0),(38,'1545468556869OD',5,67,'1544595201107',64,2,20000000,40000000,0),(39,'1545468556869OD',5,67,'1544595201107',65,1,30000000,30000000,0),(40,'1545471170836OD',5,67,'1544595201107',65,2,30000000,60000000,0),(41,'1545471170836OD',5,67,'1544595201107',64,1,20000000,20000000,0),(42,'1545575550336OD',1,70,'1544597331922',69,1,120000000,120000000,0),(43,'1545622759840OD',1,61,'1544578942292',49,1,1100000,1100000,0),(44,'1545622759840OD',1,61,'1544579217809',46,1,1000000,1000000,0),(45,'1545626407811OD',1,88,'1545620712883',98,2,3280000,6560000,0),(46,'1545626407811OD',1,88,'1545624988298',102,1,9200000,9200000,0),(47,'1545630082207OD',1,88,'1545620712883',97,2,2490000,4980000,0),(48,'1545630082207OD',1,88,'1545624988298',102,1,9200000,9200000,0),(49,'1545632941964OD',1,88,'1545620712883',97,2,2490000,4980000,0),(50,'1545632941964OD',1,88,'1545624988298',102,1,9200000,9200000,0),(51,'1545790690829OD',1,88,'1545620712883',97,2,2490000,4980000,0),(52,'1545790690829OD',1,88,'1545624988298',102,1,9200000,9200000,0),(53,'1545794346695OD',1,88,'1545620712883',98,2,3280000,6560000,0),(54,'1545794346695OD',1,88,'1545624988298',102,1,9200000,9200000,0),(55,'1545805693717OD',1,88,'1545620712883',97,2,2490000,4980000,0),(56,'1545805693717OD',1,88,'1545624988298',101,1,5500000,5500000,0),(57,'1565224640808OD',1,87,'1545622778260',94,1,2000000,2000000,0);
/*!40000 ALTER TABLE `CrowdOrder` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20 11:50:09
