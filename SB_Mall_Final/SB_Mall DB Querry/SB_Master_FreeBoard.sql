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
-- Table structure for table `FreeBoard`
--

DROP TABLE IF EXISTS `FreeBoard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FreeBoard` (
  `boardSeq` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시글번호',
  `userSeq` int(11) NOT NULL COMMENT '회원번호',
  `boardTitle` varchar(100) NOT NULL COMMENT '제목',
  `boardContent` varchar(1000) NOT NULL COMMENT '내용',
  `boardWriteDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성날자',
  `writerName` varchar(50) NOT NULL COMMENT '회원이름',
  `viewSeq` int(11) DEFAULT NULL,
  `userId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`boardSeq`),
  KEY `FK_MemberInfo_TO_FreeBoard` (`userSeq`),
  CONSTRAINT `FK_MemberInfo_TO_FreeBoard` FOREIGN KEY (`userSeq`) REFERENCES `MemberInfo` (`userSeq`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COMMENT='자유게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FreeBoard`
--

LOCK TABLES `FreeBoard` WRITE;
/*!40000 ALTER TABLE `FreeBoard` DISABLE KEYS */;
INSERT INTO `FreeBoard` VALUES (95,3,'게시글 글쓰기 테스트','<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>1</td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td>1</td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td>1</td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td>1</td><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table><p><br></p>','2018-12-11 14:00:25','김인규',0,NULL),(115,1,'게시글 누가 싹다 지웠음?ㅋㅋ','범인은 자수하시오.','2019-08-16 06:58:58','김성범',0,NULL),(117,273,'88888888888888888','<p>888888888888888888888888888888888888</p><p><br></p><p><br></p><p><br></p>','2019-09-10 11:45:07','관리자',0,NULL),(118,123,'admin1234','<p>abcd</p>','2019-10-21 10:09:44','Admin',0,NULL),(119,3,'53w535','<p>2342434</p>','2019-12-14 14:32:13','김인규',0,NULL);
/*!40000 ALTER TABLE `FreeBoard` ENABLE KEYS */;
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
