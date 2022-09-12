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
-- Table structure for table `QnABoard`
--

DROP TABLE IF EXISTS `QnABoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QnABoard` (
  `qnaSeq` int(11) NOT NULL AUTO_INCREMENT,
  `userSeq` int(11) NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `qtext` text NOT NULL,
  `atext` text,
  `qwriteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`qnaSeq`),
  KEY `FK_MemberInfo_TO_QnABoard_idx` (`userSeq`),
  CONSTRAINT `FK_MemberInfo_TO_QnABoard` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QnABoard`
--

LOCK TABLES `QnABoard` WRITE;
/*!40000 ALTER TABLE `QnABoard` DISABLE KEYS */;
INSERT INTO `QnABoard` VALUES (18,48,'동주형 바보','찬영이가 썼구나','찬영아 맞을래?','2018-11-01 09:18:05'),(24,48,'펭귄 한마리를 주문했는데 안와서 환불할게요','9월 12일에 펭귄 한마리를 주문했는데 아직 도착하지않았습니다.\r\n환불처리 부탁드립니다.','남극에서 배송오는데 시간이 걸립니다. 환불하시려면 남극으로 가셔서 환불하시기 바랍니다.','2018-11-02 02:18:18'),(29,48,'짠짠영님 답변부탁드립니다.','잘생겼어요','감사합니다','2018-11-06 08:05:23'),(30,5,'짠영님 채팅프로그램 문의드립니다','한달이 지났는데 왜 완성이 안되나요','(삐빅) 미구현된 기능입니다.','2018-11-07 05:33:18');
/*!40000 ALTER TABLE `QnABoard` ENABLE KEYS */;
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

-- Dump completed on 2019-12-20 11:50:06
