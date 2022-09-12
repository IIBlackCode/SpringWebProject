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
-- Table structure for table `CrowdReply`
--

DROP TABLE IF EXISTS `CrowdReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdReply` (
  `crReplySeq` int(11) NOT NULL AUTO_INCREMENT,
  `crReply` varchar(255) NOT NULL,
  `crRegTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userSeq` int(11) NOT NULL,
  `crowdBoardSeq` int(11) NOT NULL,
  `rating` int(11) DEFAULT '5',
  PRIMARY KEY (`crReplySeq`),
  KEY `userSeqFK_idx` (`userSeq`),
  KEY `crBoardSeqFK_idx` (`crowdBoardSeq`),
  CONSTRAINT `crBoardSeqFK` FOREIGN KEY (`crowdBoardSeq`) REFERENCES `CrowdBoard` (`crowdBoardSeq`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `userSeqFK` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdReply`
--

LOCK TABLES `CrowdReply` WRITE;
/*!40000 ALTER TABLE `CrowdReply` DISABLE KEYS */;
INSERT INTO `CrowdReply` VALUES (48,'구매 이후로 한번도 지각한 적이 없습니다 추천합니다^^','2018-12-12 06:13:43',1,65,5),(49,'거짓말임 이거 순간이동 못함','2018-12-12 06:56:52',5,66,1),(51,'글의 내용과 맞지않는 내용은 삭제하였습니다.','2018-12-12 06:58:15',1,70,5),(56,'이사이트 후기 조작합니다.','2018-12-13 10:49:27',5,70,1),(57,'아주 좋아요.','2018-12-19 08:06:20',172,65,4),(62,'댓글1','2018-12-19 08:13:46',1,61,5),(63,'댓글2','2018-12-19 08:13:50',1,61,4),(64,'댓글3','2018-12-19 08:13:56',1,61,3),(66,'댓글4','2018-12-19 08:14:25',1,61,2),(67,'댓글5','2018-12-19 08:14:30',1,61,1),(71,'ㅁㅇㄴㅁㅇㅁㅇ','2018-12-22 07:55:47',1,67,4),(72,'ㅁㅇㅁㄴㅇㅁㄴㅇ','2018-12-22 08:48:25',1,67,5),(73,'안녕하세요','2018-12-22 09:31:50',1,67,5),(74,'dsaa','2018-12-24 01:49:39',1,71,5),(75,'감사합니다ㅇㄷ','2018-12-24 03:37:18',1,85,4),(76,'좋아','2018-12-24 04:38:56',1,88,5),(77,'안녕','2018-12-24 05:40:33',1,88,5),(78,'안녕하세요','2018-12-24 06:28:13',1,88,5),(83,'1','2018-12-26 05:03:17',1,88,2),(84,'정말 좋아요','2018-12-26 06:27:08',1,88,2),(85,'안녕하세여','2019-01-02 02:36:19',123,68,5),(86,'xx','2019-01-04 07:28:47',176,94,5),(87,'','2019-01-21 07:42:17',176,69,4),(88,'sadasd','2019-03-05 01:06:53',1,69,2),(89,'sdfsdf','2019-03-05 01:07:27',1,67,5),(90,'123123','2019-03-07 01:44:58',176,88,5);
/*!40000 ALTER TABLE `CrowdReply` ENABLE KEYS */;
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

-- Dump completed on 2019-12-20 11:50:10
