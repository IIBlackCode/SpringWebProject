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
-- Table structure for table `CrowdBoard`
--

DROP TABLE IF EXISTS `CrowdBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdBoard` (
  `crowdBoardSeq` int(11) NOT NULL AUTO_INCREMENT,
  `userSeq` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `viewSeq` int(11) NOT NULL DEFAULT '0',
  `writeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salesDay` timestamp NOT NULL,
  `targetPrice` int(22) NOT NULL,
  `totalOrderPrice` int(22) DEFAULT '0',
  `leftDays` int(11) DEFAULT NULL,
  `achieve` int(11) DEFAULT NULL,
  PRIMARY KEY (`crowdBoardSeq`),
  KEY `FK_MemberInfo_TO_CrowdSalesBoard_idx` (`userSeq`),
  CONSTRAINT `FK_MemberInfo_TO_CrowdSalesBoard` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdBoard`
--

LOCK TABLES `CrowdBoard` WRITE;
/*!40000 ALTER TABLE `CrowdBoard` DISABLE KEYS */;
INSERT INTO `CrowdBoard` VALUES (61,1,'얼리버드 킥보드 엔진3.0','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544580041422mijia_01.jpg&#10;\" style=\"width: 758px;\"><img src=\"http://sbmallstore.com/file/crsalesboard/1544580046890mijia_02.jpg&#10;\" style=\"width: 758px;\"><br></p>',303,'2018-12-12 02:00:48','2019-01-11 02:00:48',100000000,4450000,NULL,NULL),(64,1,'bitBike-Turbo','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544594731817mijia_01.jpg&#10;\" style=\"width: 758px;\"><br></p>',414,'2018-12-12 06:05:57','2019-01-11 06:05:57',30000000,6060000,NULL,NULL),(65,1,'비트모터스-전동기기','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544594962190mijia_02.jpg&#10;\" style=\"width: 758px;\"><br></p>',355,'2018-12-12 06:09:24','2019-01-11 06:09:24',10000000,4000000,NULL,NULL),(66,1,'순간이동 장치','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544595108238Mission-RS-Motorcycle-Worlds-Fastest-Electric-Vehicle-4.jpg&#10;\" style=\"width: 978px;\"><br></p>',7,'2018-12-12 06:11:49','2019-01-11 06:11:49',100000000,160000000,NULL,NULL),(67,5,' 비행기술','<ul><li style=\"text-align: center; \"><img style=\"width: 830px;\" src=\"http://sbmallstore.com/file/crsalesboard/1544595191862quickBoard2.jpg&#10;\"><br></li></ul>',12,'2018-12-12 06:13:56','2019-01-11 06:13:56',200000000,330000000,NULL,NULL),(68,1,'[리미티드에디션] 스타크인더스트리 킥보드','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544596978636mijia_02.jpg&#10;\" style=\"width: 758px;\"><br></p>',11,'2018-12-12 06:43:00','2019-01-11 06:43:00',300000000,0,NULL,NULL),(69,1,'[마블스튜디오] 실버서퍼 vol.01','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544597297557mijia_02.jpg&#10;\" style=\"width: 758px;\"><br></p>',189,'2018-12-12 06:48:24','2019-01-11 06:48:24',20000000,0,NULL,NULL),(70,1,'한정판매 - 분노의질주 K9 ','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544597521689mijia_01.jpg&#10;\" style=\"width: 758px;\"><br></p>',266,'2018-12-12 06:52:03','2019-01-11 06:52:03',650000000,720000000,NULL,NULL),(71,1,'포르쉐 하이엔드 킥보드','<p><img src=\"http://sbmallstore.com/file/crsalesboard/1544598607355mijia_01.jpg&#10;\" style=\"width: 758px;\"><br></p>',4,'2018-12-11 22:10:08','2019-01-10 22:10:08',400000000,0,NULL,NULL),(78,1,'비트바이크','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561488373710b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',1,'2018-12-24 01:28:16','2019-01-23 01:28:16',10000000,0,NULL,NULL),(79,1,'크리스마스 전동기기','<p><img src=\"http://sbmallstore.com/file/crsalesboard/154561502455810b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',0,'2018-12-24 01:31:03','2019-01-23 01:31:03',20000000,0,NULL,NULL),(80,1,'세그웨이 3세대','<p style=\"text-align: center;\"><img src=\"http://sbmallstore.com/file/crsalesboard/154561514497210b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',1,'2018-12-24 01:32:39','2019-01-23 01:32:39',50000000,0,NULL,NULL),(81,1,'[비트모터]하이엔드 킥보드','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561525835610b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',0,'2018-12-24 01:34:26','2019-01-23 01:34:26',40000000,0,NULL,NULL),(82,1,'샤오미 미지아2','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561532484910b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',0,'2018-12-24 01:35:33','2019-01-23 01:35:33',35000000,0,NULL,NULL),(83,1,'샤오미 나인봇 미니','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561540990410b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',1,'2018-12-24 01:37:00','2019-01-23 01:37:00',45000000,0,NULL,NULL),(84,1,'맥스 바이크 boost02','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561554627410b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',2,'2018-12-24 01:39:13','2019-01-23 01:39:13',70000000,0,NULL,NULL),(85,1,'한정판 전동기기','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154561692575510b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',21,'2018-12-24 02:02:24','2019-01-23 02:02:24',10000000,0,NULL,NULL),(87,1,'한정판 갓웨이전동기기','<p><img src=\"http://sbmallstore.com/file/crsalesboard/154562288122710b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 779.987px;\"><br></p>',6,'2018-12-24 03:41:29','2019-01-23 03:41:29',10000000,2000000,NULL,NULL),(88,1,'SB전동기기 모음','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154562507139110b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',72,'2018-12-24 04:17:59','2019-01-23 04:17:59',50000000,43850000,NULL,NULL),(94,1,'갓웨이전동기기','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/crsalesboard/154580577233310b42798-c65a-490e-93ae-1d1de4eb63aa.jpg&#10;\" style=\"width: 780px;\"><br></p>',8,'2018-12-26 06:29:36','2019-01-25 06:29:36',10000000,0,NULL,NULL);
/*!40000 ALTER TABLE `CrowdBoard` ENABLE KEYS */;
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

-- Dump completed on 2019-12-20 11:50:11
