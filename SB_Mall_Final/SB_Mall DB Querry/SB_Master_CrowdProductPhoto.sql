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
-- Table structure for table `CrowdProductPhoto`
--

DROP TABLE IF EXISTS `CrowdProductPhoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdProductPhoto` (
  `crProductPhotoSeq` int(11) NOT NULL AUTO_INCREMENT,
  `productNo` varchar(20) DEFAULT NULL,
  `crPhotoList` varchar(255) DEFAULT 'http://52.79.226.226/file/crproduct/1543288924349noImage2.png',
  PRIMARY KEY (`crProductPhotoSeq`),
  KEY `productNo_idx` (`productNo`),
  CONSTRAINT `productNo` FOREIGN KEY (`productNo`) REFERENCES `CrowdProduct` (`productNo`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdProductPhoto`
--

LOCK TABLES `CrowdProductPhoto` WRITE;
/*!40000 ALTER TABLE `CrowdProductPhoto` DISABLE KEYS */;
INSERT INTO `CrowdProductPhoto` VALUES (7,NULL,''),(8,NULL,''),(9,NULL,''),(10,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(11,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(12,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(13,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(14,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(15,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(16,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(17,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(18,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(20,NULL,'http://sbmallstore.com/file/crproduct/1542956196676mini.jpg\r\n'),(21,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(22,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(23,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(24,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(25,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(26,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(27,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(28,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r '),(29,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r\n'),(30,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png\r\n'),(31,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png'),(32,NULL,'http://sbmallstore.com/file/crproduct/1543393231069doohan_itank_90313.jpg\r\n'),(33,NULL,'http://sbmallstore.com/file/crproduct/1543393243230mission-r-electric-superbike-ttxgp-4.jpeg\r\n'),(34,NULL,'http://sbmallstore.com/file/crproduct/1543393249531sora_electric_superbike_red_35090.jpg\r\n'),(35,NULL,'http://sbmallstore.com/file/crproduct/1543393255995testImg.jpg\r\n'),(36,'1544578942293p','http://sbmallstore.com/file/crproduct/1544579966672doohan_itank_90313.jpg\r\n'),(37,'1544578942293p','http://sbmallstore.com/file/crproduct/1544579983920juliette-duncan-gyropode-thumb.jpg\r\n'),(38,NULL,'http://sbmallstore.com/file/crproduct/1544587932929gocart1.jpg\r\n'),(39,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png'),(40,'1544594596723p','http://sbmallstore.com/file/crproduct/1544594642367PA3039B-1-7052-fvQR_0.jpg\r\n'),(41,'1544594848664p','http://sbmallstore.com/file/crproduct/1544594898680SE18-JT-Honda-2.jpg\r\n'),(42,'1544594976782p','http://sbmallstore.com/file/crproduct/1544595030578Mission-RS-Motorcycle-Worlds-Fastest-Electric-Vehicle-4.jpg\r\n'),(43,'1544595201107p','http://sbmallstore.com/file/crproduct/1544595200962flycar.png\r\n'),(44,'1544596749625p','http://sbmallstore.com/file/crproduct/1544596861747sora_electric_superbike_red_35090.jpg\r\n'),(45,'1544597146828p','http://sbmallstore.com/file/crproduct/1544597215672testImg.jpg\r\n'),(46,'1544597331922p','http://sbmallstore.com/file/crproduct/1544597454001mission-r-electric-superbike-ttxgp-4.jpeg\r\n'),(47,'1544598534775p','http://sbmallstore.com/file/crproduct/154459855796310847460_801348263263911_715942620728574818_o.jpg\r\n'),(48,NULL,'http://sbmallstore.com/file/crproduct/1545127079185KakaoTalk_20181108_203540753.png\r\n'),(49,NULL,'http://sbmallstore.com/file/crproduct/1545291364418주민등록증.jpg\r\n'),(50,NULL,'http://sbmallstore.com/file/crproduct/1543288924349noImage2.png'),(51,NULL,'http://52.79.226.226/file/crproduct/1543288924349noImage2.png'),(52,NULL,'http://52.79.226.226/file/crproduct/1543288924349noImage2.png'),(53,NULL,'http://sbmallstore.com/file/crproduct/1545576545845bg.gif\r\n'),(54,'1545614819840p','http://sbmallstore.com/file/crproduct/1545614854562Segway-Ninebot-Mini-Pro-Scooter-500x500.jpg\r\n'),(55,'1545614901735p','http://sbmallstore.com/file/crproduct/154561494841643639029_709873179369190_570940898989309952_o_500x.jpg\r\n'),(56,'1545615067941p','http://sbmallstore.com/file/crproduct/1545615100295n1-500x500.jpg\r\n'),(57,'1545615168201p','http://sbmallstore.com/file/crproduct/1545615213659segway-es4-kickscooter-ninebot-high-performance-foldable-electric-scooter-28-mile-range-186-mph-top-speed-cruise-control-mobile-app-connectivity-picture-4.jpg\r\n'),(58,'1545615270965p','http://sbmallstore.com/file/crproduct/15456152977426355425_1.jpg\r\n'),(59,'1545615334003p','http://sbmallstore.com/file/crproduct/1545615378864PA3039B-1-7052-fvQR_0.jpg\r\n'),(60,'1545615424450p','http://sbmallstore.com/file/crproduct/1545615498706fsa.jpg\r\n'),(61,'1545616823557p','http://sbmallstore.com/file/crproduct/154561688409043639029_709873179369190_570940898989309952_o_500x.jpg\r\n'),(62,NULL,'http://sbmallstore.com/file/crproduct/1545619272741noImage2.png\r\n'),(63,NULL,'http://52.79.226.226/file/crproduct/1543288924349noImage2.png'),(64,'1545622778260p','http://sbmallstore.com/file/crproduct/154562282888031ZEh5dGkbL.jpg\r\n'),(65,'1545620712884p','http://sbmallstore.com/file/crproduct/1545624868482juliette-duncan-gyropode-thumb.jpg\r\n'),(66,NULL,'http://sbmallstore.com/file/crproduct/154562657124051Rx8IN7hLL.jpg\r\n'),(67,NULL,'http://sbmallstore.com/file/crproduct/154563012420131ZEh5dGkbL.jpg\r\n'),(68,NULL,'http://sbmallstore.com/file/crproduct/154563297847851Rx8IN7hLL.jpg\r\n'),(69,NULL,'http://sbmallstore.com/file/crproduct/154579072862031ZEh5dGkbL.jpg\r\n'),(70,NULL,'http://sbmallstore.com/file/crproduct/154579438699151Rx8IN7hLL.jpg\r\n'),(71,'1545805706977p','http://sbmallstore.com/file/crproduct/15458057284036355425_1.jpg\r\n');
/*!40000 ALTER TABLE `CrowdProductPhoto` ENABLE KEYS */;
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
