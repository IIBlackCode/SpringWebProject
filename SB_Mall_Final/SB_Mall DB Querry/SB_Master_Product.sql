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
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `productSeq` int(11) NOT NULL AUTO_INCREMENT COMMENT '제품번호',
  `salesSeq` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL COMMENT '판매가격',
  `productName` varchar(60) NOT NULL COMMENT '제품이름',
  `photo` varchar(255) NOT NULL COMMENT '제품사진',
  `detail` varchar(255) NOT NULL COMMENT '제품상세설명',
  PRIMARY KEY (`productSeq`),
  KEY `salesSeq_idx` (`salesSeq`),
  CONSTRAINT `salesSeq` FOREIGN KEY (`salesSeq`) REFERENCES `SalesBoard` (`salesSeq`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COMMENT='판매품목';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (129,NULL,100000,'카트류','http://sbmallstore.com/file/salesboard/1542610575177gocart1.jpg','마리오가타고다님'),(130,NULL,20000,'테스트 product','http://sbmallstore.com/file/crproduct/1542616150300subwayMap.jpeg','이거 꼭 사야해'),(131,NULL,50000,'킥보드','http://sbmallstore.com/file/salesboard/1542681655140quickBoard1.jpg','검정킥보드'),(132,NULL,500000,'탑승제품','http://sbmallstore.com/file/salesboard/1542764254976flycar.png','하늘을나르는자동차'),(133,NULL,222112,'sss2','http://sbmallstore.com/file/salesboard/1542791164935wheel1.jpg','qwefwef'),(134,NULL,477655,'yryy','http://sbmallstore.com/file/salesboard/1542952676868wheel1.jpg','585887'),(135,NULL,20000,'대표','http://sbmallstore.com/file/salesboard/1542956304199star.jpg','ㄷㄷㄷ'),(136,NULL,23523,'25325','http://sbmallstore.com/file/salesboard/1542956640315flycar.png','5235235'),(137,NULL,234,'214','','234234'),(138,NULL,241,'qwfqf','','rwer'),(139,NULL,12312,'12412','http://sbmallstore.com/file/salesboard/1542965519043검정.png','3123412'),(140,NULL,100000,'옵션제품','http://sbmallstore.com/file/salesboard/1543211347019RealMySQL.jpg','옵션테스트'),(141,NULL,50000,'미니언즈','http://sbmallstore.com/file/salesboard/1543911822786mini.jpg','ㅂㄱㅈ'),(142,NULL,22,'1232','','112'),(143,NULL,124,'222','http://sbmallstore.com/file/salesboard/1543923730990quickBoard1.jpg','122'),(144,NULL,222,'2222','http://sbmallstore.com/file/salesboard/1543923748711wheel2.jpg','2222'),(145,NULL,53,'테스트','http://sbmallstore.com/file/salesboard/1544058945362segway1.jpg','3333'),(146,NULL,4,'태추수','http://sbmallstore.com/file/salesboard/1544059264901RealMySQL.jpg','1'),(147,NULL,10000000,'썰귝슈','http://sbmallstore.com/file/salesboard/1544069330249meboon.jpg','황금을넣었어'),(148,NULL,333,'23423','http://sbmallstore.com/file/salesboard/1544413711453noname2.png\r\n','2523523'),(149,NULL,33,'4553523','http://sbmallstore.com/file/salesboard/1544414653711KakaoTalk_20181022_182000998.png','23r23r32r'),(150,NULL,100,'검댕이','http://sbmallstore.com/file/salesboard/1544545169916검정.png','가난한 자들은 이것을 구입하세요.'),(151,NULL,34,'23wr23','http://sbmallstore.com/file/salesboard/1544585124180검정.png','645645'),(152,NULL,0,'12','http://sbmallstore.com/file/salesboard/1544592173173quickBoard2.jpg','12412'),(153,NULL,100,'두발인가','http://sbmallstore.com/file/salesboard/1544597112533wheel2.jpg','두발자전거'),(154,NULL,123,'ㅇㅈ','http://sbmallstore.com/file/salesboard/1545290858559newProject.png','435235'),(155,NULL,3333,'퇴실요정','','ㅇㅇ'),(156,143,150000,'dtv-1','http://sbmallstore.com/file/salesboard/1545453829489dtv1.jpg','탱크형 세그웨이'),(157,144,500000,'genny','http://sbmallstore.com/file/salesboard/1545454132667genny_segway_wheelchair.jpg','휠체어형 세그웨이'),(158,145,3500000,'GM EN-V','http://sbmallstore.com/file/salesboard/1545454205310GM EN-V 2.jpg','탑승형 제품'),(159,NULL,20000,'대표','','설명'),(160,147,150000,'GwKorea','http://sbmallstore.com/file/salesboard/1545459477190gw01.jpg','Made in korea'),(161,NULL,123132,'123','http://sbmallstore.com/file/salesboard/1545460797966ninebot_a1_p1.jpg','12313'),(162,NULL,50000,'나인봇A1','http://sbmallstore.com/file/salesboard/1545463964344나인봇A1.jpg','43424'),(163,NULL,100000,'나인봇a1','http://sbmallstore.com/file/salesboard/1545465056450나인봇A1.jpg','최신형 전동휠 나인봇'),(164,NULL,100000,'나인봇a1','http://sbmallstore.com/file/salesboard/1545468299839나인봇A1.jpg','최신형 전동휠 나인봇'),(165,NULL,100000,'나인봇a1','http://sbmallstore.com/file/salesboard/1545470900066나인봇A1.jpg','나인봇a1'),(166,153,50000,'보드형 세그웨이','http://sbmallstore.com/file/salesboard/1545618070117휠3.jpg','보드형 세그웨이'),(167,154,150000,'호버보드','http://sbmallstore.com/file/salesboard/1545618196378hoverboard.jpg','기본에 충실한 세그웨이'),(168,155,300000,'아동용 세그웨이','http://sbmallstore.com/file/salesboard/1545618344414segway-minilite.jpg','아이들도 안전하게!'),(169,156,380000,'에코라이더','http://sbmallstore.com/file/salesboard/1545618442790EcoRider.jpg','환경을 생각한 저탄소배출 세그웨이'),(170,157,100000,'스케이트 세그웨이','http://sbmallstore.com/file/salesboard/1545618514219wheel4.jpg','스케이트처럼 탑승 가능한'),(171,158,3000000,'마리오카트','http://sbmallstore.com/file/salesboard/1545618602526gocart1.jpg','마리오가 사용하던 그 카트!'),(172,159,250000,'나인봇A1','http://sbmallstore.com/file/salesboard/1545618678293나인봇A1.jpg','대표상품 나인봇A1'),(173,160,80000,'나인봇 드리프트','http://sbmallstore.com/file/salesboard/1545618758137나인봇드리프트.jpg','스케이팅형'),(174,161,500000,'근두은','http://sbmallstore.com/file/salesboard/1545618806685quickBoard1.jpg','근두은의 탑승감'),(175,162,50000,'나인봇One','http://sbmallstore.com/file/salesboard/1545618955766wheel1.jpg','가장 기본에 충실한 전동휠'),(176,163,80000,'샤오미 세그웨이','http://sbmallstore.com/file/salesboard/1545619028541wheel2.jpg','가성비갑 샤오미'),(177,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545622392459나인봇A1.jpg','최신형 나인봇'),(178,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545626058613나인봇A1.jpg','최시형 전동륄나인봇'),(179,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545629789721나인봇A1.jpg','나인봇'),(180,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545632676269나인봇A1.jpg','최신형 전동휠 나인봇'),(181,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545790257376나인봇A1.jpg','나인봇a'),(182,NULL,10000,'나인봇','http://sbmallstore.com/file/salesboard/1545794008911나인봇A1.jpg','나인봇'),(183,NULL,100000,'나인봇','http://sbmallstore.com/file/salesboard/1545805392809나인봇A1.jpg','최신형 전동휠 팝니다'),(184,164,666,'66','http://sbmallstore.com/file/salesboard/1568162591180new2.png','666');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
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
