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
-- Table structure for table `Budget`
--

DROP TABLE IF EXISTS `Budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Budget` (
  `year` year(4) NOT NULL,
  `yearBudget` bigint(20) DEFAULT '0',
  `Jan` bigint(20) DEFAULT '0',
  `Feb` bigint(20) DEFAULT '0',
  `Mar` bigint(20) DEFAULT '0',
  `Apr` bigint(20) DEFAULT '0',
  `May` bigint(20) DEFAULT '0',
  `Jun` bigint(20) DEFAULT '0',
  `Jul` bigint(20) DEFAULT '0',
  `Aug` bigint(20) DEFAULT '0',
  `Sep` bigint(20) DEFAULT '0',
  `Oct` bigint(20) DEFAULT '0',
  `Nov` bigint(20) DEFAULT '0',
  `Dec` bigint(20) DEFAULT '0',
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='INT(11)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Budget`
--

LOCK TABLES `Budget` WRITE;
/*!40000 ALTER TABLE `Budget` DISABLE KEYS */;
INSERT INTO `Budget` VALUES (2000,0,0,0,0,0,0,0,0,0,0,0,0,0),(2001,0,0,0,0,0,0,0,0,0,0,0,0,0),(2002,0,0,0,0,0,0,0,0,0,0,0,0,0),(2003,0,0,0,0,0,0,0,0,0,0,0,0,0),(2004,0,0,0,0,0,0,0,0,0,0,0,0,0),(2005,0,0,0,0,0,0,0,0,0,0,0,0,0),(2006,0,0,0,0,0,0,0,0,0,0,0,0,0),(2007,4,1,1,2,0,0,0,0,0,0,0,0,0),(2008,0,0,0,0,0,0,0,0,0,0,0,0,0),(2009,0,0,0,0,0,0,0,0,0,0,0,0,0),(2010,0,0,0,0,0,0,0,0,0,0,0,0,0),(2011,0,0,0,0,0,0,0,0,0,0,0,0,0),(2012,0,0,0,0,0,0,0,0,0,0,0,0,0),(2013,0,0,0,0,0,0,0,0,0,0,0,0,0),(2014,0,0,0,0,0,0,0,0,0,0,0,0,0),(2015,0,0,0,0,0,0,0,0,0,0,0,0,0),(2016,0,0,0,0,0,0,0,0,0,0,0,0,0),(2017,2502111112,2500000000,1,0,0,0,0,0,0,0,0,0,2111111),(2018,65830000000,2000000000,30000000,2500000000,3000000000,2500000000,2000000000,2500000000,2800000000,2000000000,3000000000,3500000000,40000000000),(2019,54833300320,2000000000,30000000000,33300000,3000000000,2500000000,2000000000,2500000000,2800000000,2000000000,3000000000,320,5000000000),(2020,123123123234,111,123123123123,0,0,0,0,0,0,0,0,0,0),(2021,0,0,0,0,0,0,0,0,0,0,0,0,0),(2022,0,0,0,0,0,0,0,0,0,0,0,0,0),(2023,0,0,0,0,0,0,0,0,0,0,0,0,0),(2024,0,0,0,0,0,0,0,0,0,0,0,0,0),(2025,0,0,0,0,0,0,0,0,0,0,0,0,0),(2026,0,0,0,0,0,0,0,0,0,0,0,0,0),(2027,0,0,0,0,0,0,0,0,0,0,0,0,0),(2028,0,0,0,0,0,0,0,0,0,0,0,0,0),(2029,0,0,0,0,0,0,0,0,0,0,0,0,0),(2030,0,0,0,0,0,0,0,0,0,0,0,0,0),(2031,0,0,0,0,0,0,0,0,0,0,0,0,0),(2032,0,0,0,0,0,0,0,0,0,0,0,0,0),(2033,0,0,0,0,0,0,0,0,0,0,0,0,0),(2034,0,0,0,0,0,0,0,0,0,0,0,0,0),(2035,0,0,0,0,0,0,0,0,0,0,0,0,0),(2036,0,0,0,0,0,0,0,0,0,0,0,0,0),(2037,0,0,0,0,0,0,0,0,0,0,0,0,0),(2038,0,0,0,0,0,0,0,0,0,0,0,0,0),(2039,0,0,0,0,0,0,0,0,0,0,0,0,0),(2040,0,0,0,0,0,0,0,0,0,0,0,0,0),(2041,0,0,0,0,0,0,0,0,0,0,0,0,0),(2042,0,0,0,0,0,0,0,0,0,0,0,0,0),(2043,0,0,0,0,0,0,0,0,0,0,0,0,0),(2044,0,0,0,0,0,0,0,0,0,0,0,0,0),(2045,0,0,0,0,0,0,0,0,0,0,0,0,0),(2046,0,0,0,0,0,0,0,0,0,0,0,0,0),(2047,0,0,0,0,0,0,0,0,0,0,0,0,0),(2048,0,0,0,0,0,0,0,0,0,0,0,0,0),(2049,0,0,0,0,0,0,0,0,0,0,0,0,0),(2050,0,0,0,0,0,0,0,0,0,0,0,0,0),(2051,0,0,0,0,0,0,0,0,0,0,0,0,0),(2052,0,0,0,0,0,0,0,0,0,0,0,0,0),(2053,0,0,0,0,0,0,0,0,0,0,0,0,0),(2054,0,0,0,0,0,0,0,0,0,0,0,0,0),(2055,0,0,0,0,0,0,0,0,0,0,0,0,0),(2056,0,0,0,0,0,0,0,0,0,0,0,0,0),(2057,0,0,0,0,0,0,0,0,0,0,0,0,0),(2058,0,0,0,0,0,0,0,0,0,0,0,0,0),(2059,0,0,0,0,0,0,0,0,0,0,0,0,0),(2060,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `Budget` ENABLE KEYS */;
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
