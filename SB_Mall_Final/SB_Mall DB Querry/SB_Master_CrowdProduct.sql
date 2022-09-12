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
-- Table structure for table `CrowdProduct`
--

DROP TABLE IF EXISTS `CrowdProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdProduct` (
  `crProductSeq` int(11) NOT NULL AUTO_INCREMENT,
  `productNo` varchar(20) DEFAULT NULL,
  `crowdBoardSeq` int(11) DEFAULT NULL,
  `crPrice` int(11) NOT NULL,
  `crProductName` varchar(60) NOT NULL,
  `crPhoto` varchar(255) NOT NULL DEFAULT 'http://52.79.226.226/file/crproduct/1543288924349noImage2.png',
  `crDetail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`crProductSeq`),
  UNIQUE KEY `productNo_UNIQUE` (`productNo`),
  KEY `crowdBoardSeq_idx` (`crowdBoardSeq`),
  CONSTRAINT `crowdBoardSeq2` FOREIGN KEY (`crowdBoardSeq`) REFERENCES `CrowdBoard` (`crowdBoardSeq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdProduct`
--

LOCK TABLES `CrowdProduct` WRITE;
/*!40000 ALTER TABLE `CrowdProduct` DISABLE KEYS */;
INSERT INTO `CrowdProduct` VALUES (45,'1544578942293p',61,800000,'sb킥보드','http://sbmallstore.com/file/crproduct/1544579966672doohan_itank_90313.jpg\r\n','엔진3.0의 안정적인 킥보드'),(48,'1544594596723p',64,2000000,'비트바이크','http://sbmallstore.com/file/crproduct/1544594642367PA3039B-1-7052-fvQR_0.jpg\r\n','비트바이크 5000마력'),(49,'1544594848664p',65,3000000,'아크원자로 킥보드','http://sbmallstore.com/file/crproduct/1544594898680SE18-JT-Honda-2.jpg\r\n','세계 최고속도'),(50,'1544594976782p',66,50000000,'순간이동 아스가르드','http://sbmallstore.com/file/crproduct/1544595030578Mission-RS-Motorcycle-Worlds-Fastest-Electric-Vehicle-4.jpg\r\n','프리미엄 Thor'),(51,'1544595201107p',67,20000000,'비행자동차','http://sbmallstore.com/file/crproduct/1544595200962flycar.png\r\n','하늘을 날아다녀요'),(52,'1544596749625p',68,50000000,'스타크인더스트리 킥보드','http://sbmallstore.com/file/crproduct/1544596861747sora_electric_superbike_red_35090.jpg\r\n','미래 기술의 집약체'),(53,'1544597146828p',69,50000000,'실버서퍼 보드 vol.01','http://sbmallstore.com/file/crproduct/1544597215672testImg.jpg\r\n','실버서퍼 보드vol.01 리미티드에디션'),(54,'1544597331922p',70,120000000,'분노의질주K9','http://sbmallstore.com/file/crproduct/1544597454001mission-r-electric-superbike-ttxgp-4.jpeg\r\n','분노의 질주'),(55,'1544598534775p',71,89000000,'포르쉐 하이엔드 킥보드','http://sbmallstore.com/file/crproduct/154459855796310847460_801348263263911_715942620728574818_o.jpg\r\n','포르쉐 하이엔드 킥보드'),(62,'1545614819840p',78,2000000,'비트바이크','http://sbmallstore.com/file/crproduct/1545614854562Segway-Ninebot-Mini-Pro-Scooter-500x500.jpg\r\n','비트바이크'),(63,'1545614901735p',79,20000000,'크리스마스 전동기기','http://sbmallstore.com/file/crproduct/154561494841643639029_709873179369190_570940898989309952_o_500x.jpg\r\n','크리스마스 전동기기'),(64,'1545615067941p',80,5000000,'세그웨이 3세대','http://sbmallstore.com/file/crproduct/1545615100295n1-500x500.jpg\r\n','세그웨이 3세대'),(65,'1545615168201p',81,12000000,'[비트모터]하이엔드 킥보드','http://sbmallstore.com/file/crproduct/1545615213659segway-es4-kickscooter-ninebot-high-performance-foldable-electric-scooter-28-mile-range-186-mph-top-speed-cruise-control-mobile-app-connectivity-picture-4.jpg\r\n','하이엔드 킥보드'),(66,'1545615270965p',82,7000000,'샤오미 미지아2','http://sbmallstore.com/file/crproduct/15456152977426355425_1.jpg\r\n','샤오미 미지아2'),(67,'1545615334003p',83,4000000,'샤오미 나인봇 미니','http://sbmallstore.com/file/crproduct/1545615378864PA3039B-1-7052-fvQR_0.jpg\r\n','샤오미 나인봇 미니'),(68,'1545615424450p',84,5500000,'맥스 바이크 boost02','http://sbmallstore.com/file/crproduct/1545615498706fsa.jpg\r\n','맥스 바이크 boost02'),(69,'1545616823557p',85,2000000,'한정판 전동기기','http://sbmallstore.com/file/crproduct/154561688409043639029_709873179369190_570940898989309952_o_500x.jpg\r\n','한정판 전동기기'),(71,'1545622778260p',87,2000000,'갓웨이전동기기','http://sbmallstore.com/file/crproduct/154562282888031ZEh5dGkbL.jpg\r\n','갓웨이전동기기'),(72,'1545620712884p',88,2000000,'SB전동기기 모음','http://sbmallstore.com/file/crproduct/1545624868482juliette-duncan-gyropode-thumb.jpg\r\n','SB전동기기 모음'),(78,'1545805706977p',94,20000000,'갓웨이','http://sbmallstore.com/file/crproduct/15458057284036355425_1.jpg\r\n','갓웨이전동기기');
/*!40000 ALTER TABLE `CrowdProduct` ENABLE KEYS */;
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
