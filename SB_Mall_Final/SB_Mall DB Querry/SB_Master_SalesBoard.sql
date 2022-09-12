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
-- Table structure for table `SalesBoard`
--

DROP TABLE IF EXISTS `SalesBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesBoard` (
  `salesSeq` int(11) NOT NULL AUTO_INCREMENT COMMENT '판매번호',
  `userSeq` int(11) DEFAULT NULL COMMENT '회원번호',
  `title` varchar(100) NOT NULL COMMENT '게시글 제목',
  `text` text NOT NULL COMMENT '게시글 내용',
  `viewSeq` int(11) NOT NULL COMMENT '조회수',
  `writeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`salesSeq`),
  KEY `FK_MemberInfo_TO_SalesBoard` (`userSeq`),
  CONSTRAINT `FK_MemberInfo_TO_SalesBoard` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COMMENT='판매게시판-관리자전용';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesBoard`
--

LOCK TABLES `SalesBoard` WRITE;
/*!40000 ALTER TABLE `SalesBoard` DISABLE KEYS */;
INSERT INTO `SalesBoard` VALUES (143,5,'dtv-1','<p style=\"text-align: center; \"><img style=\"width: 860px;\" src=\"http://sbmallstore.com/file/product/1545454055297gw03.jpg\"><br></p>',103,'2018-12-22 04:47:57'),(144,5,'genny-segway','<p>genny</p>',31,'2018-12-22 04:49:46'),(145,5,'GM EN-V','<p><br></p>',11,'2018-12-22 04:51:57'),(147,5,'국산 전동휠','<p style=\"text-align: center; \"><img src=\"http://sbmallstore.com/file/product/1545459960615gw02.jpg\" style=\"width: 860px;\"><img src=\"http://sbmallstore.com/file/product/1545459964693gw03.jpg\" style=\"width: 860px;\"><br></p>',212,'2018-12-22 06:27:25'),(153,5,'보드형 세그웨이','<p><br></p>',9,'2018-12-24 02:22:17'),(154,5,'호버보드','<p><br></p>',4,'2018-12-24 02:25:13'),(155,5,'아동용 세그웨이','<p><br></p>',8,'2018-12-24 02:26:47'),(156,5,'친환경 세그웨이','<p><br></p>',3,'2018-12-24 02:28:20'),(157,5,'스케이팅 보드형 세그웨이','<p><br></p>',6,'2018-12-24 02:29:50'),(158,5,'마리오카트','<p><br></p>',10,'2018-12-24 02:30:38'),(159,5,'전동휠의 최강자 나인봇A1','<p><br></p>',6,'2018-12-24 02:32:13'),(160,5,'나인봇 드리프트','<p><br></p>',2,'2018-12-24 02:33:10'),(161,5,'근두은 퀵보드','<p><br></p>',1,'2018-12-24 02:33:58'),(162,5,'기본형 전동휠','<p><br></p>',3,'2018-12-24 02:36:42'),(163,5,'샤오미 세그웨이','<p><br></p>',5,'2018-12-24 02:37:47'),(164,123,'6666666666','<p>6666666</p>',1,'2019-09-11 00:43:36');
/*!40000 ALTER TABLE `SalesBoard` ENABLE KEYS */;
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

-- Dump completed on 2019-12-20 11:50:07
