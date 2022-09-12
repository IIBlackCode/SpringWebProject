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
-- Table structure for table `CrowdGoods`
--

DROP TABLE IF EXISTS `CrowdGoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CrowdGoods` (
  `goodsNo` varchar(20) NOT NULL,
  `crProductSeq` int(11) DEFAULT NULL,
  `goodsName` varchar(60) NOT NULL DEFAULT '이름없음',
  `crGoodsPrice` int(11) NOT NULL DEFAULT '0',
  `goodsPhoto` varchar(255) DEFAULT 'http://52.79.226.226/file/crproduct/1543288924349noImage2.png',
  `cost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goodsNo`),
  KEY `crProductSeq_idx` (`crProductSeq`),
  CONSTRAINT `crProductSeq` FOREIGN KEY (`crProductSeq`) REFERENCES `CrowdProduct` (`crProductSeq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CrowdGoods`
--

LOCK TABLES `CrowdGoods` WRITE;
/*!40000 ALTER TABLE `CrowdGoods` DISABLE KEYS */;
INSERT INTO `CrowdGoods` VALUES ('1544578942292',45,'sb킥보드 1세대',800000,'http://sbmallstore.com/file/crgoods/1544580003855juliette-duncan-gyropode-thumb.jpg\r\n',0),('1544579217809',45,'sb킥보드 2세대',1000000,'http://sbmallstore.com/file/crgoods/1544580026821PA3039B-1-7052-fvQR_0.jpg\r\n',0),('1544594596723',48,'비트바이크 1세대',2000000,'http://sbmallstore.com/file/crgoods/1544594678669PA3039B-1-7052-fvQR_0.jpg\r\n',0),('1544594848664',49,'아크원자로 킥보드',3000000,'http://sbmallstore.com/file/crgoods/1544594929457SE18-JT-Honda-2.jpg\r\n',0),('1544594976781',50,'순간이동 토르 에디션',50000000,'http://sbmallstore.com/file/crgoods/1544595066059Mission-RS-Motorcycle-Worlds-Fastest-Electric-Vehicle-4.jpg\r\n',0),('1544595201107',51,'비행자동차',20000000,'http://sbmallstore.com/file/crgoods/1544595200966flycar.png\r\n',0),('1544596749625',52,'아이언보드',50000000,'http://sbmallstore.com/file/crgoods/1544596893131sora_electric_superbike_red_35090.jpg\r\n',0),('1544596918439',52,'보드버스터',70000000,'http://sbmallstore.com/file/crgoods/154459694203310847460_801348263263911_715942620728574818_o.jpg\r\n',0),('1544597146828',53,'실버서퍼 vol.01',50000000,'http://sbmallstore.com/file/crgoods/1544597253433testImg.jpg\r\n',0),('1544597331922',54,'분노의질주 K9',120000000,'http://sbmallstore.com/file/crgoods/1544597489434mission-r-electric-superbike-ttxgp-4.jpeg\r\n',0),('1544598534775',55,'포르쉐 하이엔드 킥보드',89000000,'http://sbmallstore.com/file/crgoods/154459858109010847460_801348263263911_715942620728574818_o.jpg\r\n',0),('1545614819840',62,'비트바이크',2000000,'http://sbmallstore.com/file/crgoods/1545614869489Segway-Ninebot-Mini-Pro-Scooter-500x500.jpg\r\n',0),('1545614901735',63,'이브 바이크',2000000,'http://sbmallstore.com/file/crgoods/154561496729243639029_709873179369190_570940898989309952_o_500x.jpg\r\n',0),('1545614989124',63,'크리스 바이크',3000000,'http://sbmallstore.com/file/crgoods/1545615002737n1-500x500.jpg\r\n',0),('1545615067941',64,'세그웨이 3세대',5000000,'http://sbmallstore.com/file/crgoods/1545615126907n1-500x500.jpg\r\n',0),('1545615168200',65,'하이엔드 킥보드',12000000,'http://sbmallstore.com/file/crgoods/1545615236891segway-es4-kickscooter-ninebot-high-performance-foldable-electric-scooter-28-mile-range-186-mph-top-speed-cruise-control-mobile-app-connectivity-picture-4.jpg\r\n',0),('1545615270965',66,'샤오미 미지아2',7000000,'http://sbmallstore.com/file/crgoods/15456153137046355425_1.jpg\r\n',0),('1545615334003',67,'샤오미 나인봇 미니',4000000,'http://sbmallstore.com/file/crgoods/1545615398896PA3039B-1-7052-fvQR_0.jpg\r\n',0),('1545615424449',68,'맥스 바이크 boost02',5500000,'http://sbmallstore.com/file/crgoods/1545615534818fsa.jpg\r\n',0),('1545616823557',69,'전동기기',2000000,'http://sbmallstore.com/file/crgoods/154561690798143639029_709873179369190_570940898989309952_o_500x.jpg\r\n',0),('1545620712883',72,'SB킥보드 3.0',2000000,'http://sbmallstore.com/file/crgoods/1545624899013juliette-duncan-gyropode-thumb.jpg\r\n',0),('1545622778260',71,'갓웨이18',2000000,'http://sbmallstore.com/file/crgoods/154562285268131ZEh5dGkbL.jpg\r\n',0),('1545624988298',72,'SB바이크 2.4',5000000,'http://sbmallstore.com/file/crgoods/154562501064543639029_709873179369190_570940898989309952_o_500x.jpg\r\n',0),('1545805706977',78,'갓웨이19',1000000,'http://sbmallstore.com/file/crgoods/1545805743499images.jpeg\r\n',0);
/*!40000 ALTER TABLE `CrowdGoods` ENABLE KEYS */;
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
