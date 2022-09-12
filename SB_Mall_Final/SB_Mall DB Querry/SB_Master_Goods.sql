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
-- Table structure for table `Goods`
--

DROP TABLE IF EXISTS `Goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Goods` (
  `goodsNo` varchar(20) NOT NULL,
  `productSeq` int(11) NOT NULL,
  `goodsName` varchar(60) NOT NULL,
  `goodsPrice` int(11) NOT NULL DEFAULT '0',
  `goodsPhoto` varchar(255) DEFAULT NULL,
  `cost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`goodsNo`),
  KEY `productSeq_idx` (`productSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Goods`
--

LOCK TABLES `Goods` WRITE;
/*!40000 ALTER TABLE `Goods` DISABLE KEYS */;
INSERT INTO `Goods` VALUES ('1542610610141',129,'마리오카트',2000000,'http://sbmallstore.com/file/goods/1542610610143gocart1.jpg',500000),('1542610624228',129,'간이카트',100000,'http://sbmallstore.com/file/goods/1542610624230wheel2.jpg',30000),('1542616102950',130,'킥보드',20000,'http://sbmallstore.com/file/crgoods/1542616223516subwayMap.jpeg',10000),('1542681681206',131,'기본킥보드',50000,'http://sbmallstore.com/file/goods/1542681681209quickBoard1.jpg',20000),('1542681714054',131,'세그웨이',100000,'http://sbmallstore.com/file/goods/1542681714056segway1.jpg',95000),('1542764299996',132,'flyCar',20000000,'http://sbmallstore.com/file/goods/1542764299998flycar.png',18500000),('1542764384081',132,'전동바퀴',1000000,'http://sbmallstore.com/file/goods/1542764384083wheel1.jpg',880000),('1542791175358',133,'eeee',1111,'http://sbmallstore.com/file/goods/1542791175360mini.jpg',11),('1542952692027',134,'67868',9888,'http://sbmallstore.com/file/goods/1542952692028black.png',9000),('1542956362327',135,'제품1',10000,'http://sbmallstore.com/file/goods/1542956362329star.jpg',9000),('1542956393230',135,'제품2',10000,'http://sbmallstore.com/file/goods/1542956393231mini.jpg',9000),('1542956650251',136,'4454',3454,'http://sbmallstore.com/file/goods/1542956650253wheel1.jpg',1800),('1542960593160',137,'234',234,'',100),('1542960630802',138,'wer',3333,'http://sbmallstore.com/file/goods/1542960630804quickBoard2.jpg',1850),('1542965525305',139,'32423',234234,'http://sbmallstore.com/file/goods/1542965525307meboon.jpg',200000),('1543211375348',140,'기본1',50000,'http://sbmallstore.com/file/goods/1543211375349wheel1.jpg',38000),('1543211388608',140,'기본2',80000,'http://sbmallstore.com/file/goods/1543211388609meboon.jpg',65000),('1543211405507',140,'기본3',100000,'http://sbmallstore.com/file/goods/1543211405508wheel2.jpg',95000),('1543911843659',141,'미니언즈',50000,'http://sbmallstore.com/file/goods/1543911843661mini.jpg',38500),('1543911869330',141,'근두운',150000,'http://sbmallstore.com/file/goods/1543911869332근두운quick.jpg',138000),('1543923695880',142,'12412',50000,'http://sbmallstore.com/file/goods/1543923695881meboon.jpg',20000),('1543923737550',143,'2323',50000,'http://sbmallstore.com/file/goods/1543923737553wheel1.jpg',45000),('1543923760985',144,'2222',50000,'http://sbmallstore.com/file/goods/1543923760987quickBoard1.jpg',38000),('1544058964440',145,'머글거',12,'http://sbmallstore.com/file/goods/1544058964442meboon.jpg',9),('1544059289232',146,'검댕이',200,'http://sbmallstore.com/file/goods/1544059289235black.png',150),('1544069358718',147,'다이아국스',15000000,'http://sbmallstore.com/file/goods/1544069358719black.png',14000000),('1544069373702',147,'쌀국수',10000000,'http://sbmallstore.com/file/goods/1544069373703meboon.jpg',9500000),('1544413733476',148,'ㄹㄹㄹㄹ',0,'http://sbmallstore.com/file/goods/15444137334771212.jpg',0),('1544414664025',149,'23532',0,'http://sbmallstore.com/file/goods/1544414664029KakaoTalk_20181108_203540753.png',0),('1544545194950',150,'검댕이',100,'http://sbmallstore.com/file/goods/1544545194952검정.png',0),('1544545388942',150,'싸구려 세그웨이',150,'http://sbmallstore.com/file/goods/1544545388943segway1.jpg',0),('1544585098848',151,'4323',43242,'http://sbmallstore.com/file/goods/1544585098851black.png',0),('1544592183658',152,'1241',124124,'',0),('1544597156999',153,'두발전동기',100,'http://sbmallstore.com/file/goods/1544597157001wheel2.jpg',0),('1544597184921',153,'근두운',150,'http://sbmallstore.com/file/goods/1544597184923근두운quick.jpg',0),('1545290873069',154,'23434',0,'http://sbmallstore.com/file/goods/1545290873071주민등록증.jpg',0),('1545290873181',154,'23434',0,'http://sbmallstore.com/file/goods/1545290873183주민등록증.jpg',0),('1545380148727',155,'ㅇㅇ',3333,'',0),('1545380156697',155,'ㅇㅇ',3333,'',0),('1545453960198',156,'dtv-1',150000,'http://sbmallstore.com/file/goods/1545453960200dtv1.jpg',0),('1545454028791',156,'EcoRider',200000,'http://sbmallstore.com/file/goods/1545454028794EcoRider.jpg',0),('1545454172925',157,'genny',500000,'http://sbmallstore.com/file/goods/1545454172927genny_segway_wheelchair.jpg',0),('1545454314941',158,'GM EN-V',3500000,'http://sbmallstore.com/file/goods/1545454314943GM EN-V 2.jpg',0),('1545455984944',159,'제품1',50000,'',0),('1545455991079',159,'제품2',100000,'',0),('1545459697785',160,'Gw01',50000,'http://sbmallstore.com/file/goods/1545459697788gw01.jpg',0),('1545459710707',160,'나인봇A1',200000,'http://sbmallstore.com/file/goods/1545459710708나인봇A1.jpg',0),('1545459764044',160,'나인봇One',200000,'http://sbmallstore.com/file/goods/1545459764045wheel1.jpg',0),('1545460851414',161,'123132',12312313,'http://sbmallstore.com/file/goods/1545460851416나인봇A1.jpg',0),('1545460876847',161,'123132',12312313,'http://sbmallstore.com/file/goods/1545460876847나인봇A1.jpg',0),('1545464043618',162,'나인봇A1',100000,'http://sbmallstore.com/file/goods/1545464043620나인봇A1.jpg',0),('1545464072513',162,'나인봇 드리프트',150000,'http://sbmallstore.com/file/goods/1545464072515나인봇드리프트.jpg',0),('1545465094470',163,'나인봇a1',10000,'http://sbmallstore.com/file/goods/1545465094472나인봇A1.jpg',0),('1545465123023',163,'나인봇 드리프트',15000,'http://sbmallstore.com/file/goods/1545465123024나인봇드리프트.jpg',0),('1545468327318',164,'나인봇a1',100000,'http://sbmallstore.com/file/goods/1545468327320나인봇A1.jpg',0),('1545468350790',164,'나인봇 드리프트',1500000,'http://sbmallstore.com/file/goods/1545468350791나인봇드리프트.jpg',0),('1545470925685',165,'나인봇a1',100000,'http://sbmallstore.com/file/goods/1545470925687나인봇A1.jpg',0),('1545470936508',165,'나인봇 드리프트',150000,'http://sbmallstore.com/file/goods/1545470936510나인봇드리프트.jpg',0),('1545618134763',166,'보드형 세그웨이',0,'http://sbmallstore.com/file/goods/1545618134765휠3.jpg',0),('1545618310945',167,'호버보드',150000,'http://sbmallstore.com/file/goods/1545618310947hoverboard.jpg',0),('1545618405600',168,'아동용 세그웨이',300000,'http://sbmallstore.com/file/goods/1545618405601segway-minilite.jpg',0),('1545618499029',169,'에코라이더',380000,'http://sbmallstore.com/file/goods/1545618499031EcoRider.jpg',0),('1545618574822',170,'스케이트 세그웨이',0,'http://sbmallstore.com/file/goods/1545618574823wheel4.jpg',0),('1545618636669',171,'마리오카트',3000000,'http://sbmallstore.com/file/goods/1545618636671gocart1.jpg',0),('1545618731934',172,'나인봇A1',250000,'http://sbmallstore.com/file/goods/1545618731935나인봇A1.jpg',0),('1545618788097',173,'나인봇 드리프트',80000,'http://sbmallstore.com/file/goods/1545618788099나인봇드리프트.jpg',0),('1545618836565',174,'근두은',500000,'http://sbmallstore.com/file/goods/1545618836568quickBoard1.jpg',0),('1545619000951',175,'나인봇One',50000,'http://sbmallstore.com/file/goods/1545619000954wheel1.jpg',0),('1545619066275',176,'샤오미 세그웨이',80000,'http://sbmallstore.com/file/goods/1545619066277wheel2.jpg',0),('1545622422933',177,'나인봇',100000,'http://sbmallstore.com/file/goods/1545622422936나인봇드리프트.jpg',0),('1545622439016',177,'나인봇 드리프트',150000,'http://sbmallstore.com/file/goods/1545622439021나인봇A1.jpg',0),('1545626085907',178,'나인봇',100000,'http://sbmallstore.com/file/goods/1545626085910나인봇A1.jpg',0),('1545626096732',178,'나인봇드리프트',150000,'http://sbmallstore.com/file/goods/1545626096733나인봇드리프트.jpg',0),('1545629812471',179,'나인봇',10000,'http://sbmallstore.com/file/goods/1545629812475나인봇A1.jpg',0),('1545629823225',179,'나인드리프트',150000,'http://sbmallstore.com/file/goods/1545629823228나인봇드리프트.jpg',0),('1545632695574',180,'나인봇',100000,'http://sbmallstore.com/file/goods/1545632695577나인봇A1.jpg',0),('1545632704950',180,'나인드리프트',150000,'http://sbmallstore.com/file/goods/1545632704952나인봇드리프트.jpg',0),('1545790276681',181,'나인봇',100000,'http://sbmallstore.com/file/goods/1545790276684나인봇A1.jpg',0),('1545790286629',181,'나인봇드리프트',150000,'http://sbmallstore.com/file/goods/1545790286632나인봇드리프트.jpg',0),('1545794036726',182,'나인봇',10000,'http://sbmallstore.com/file/goods/1545794036729나인봇A1.jpg',0),('1545794047026',182,'나인봇듸리프트',15000,'http://sbmallstore.com/file/goods/1545794047028나인봇드리프트.jpg',0),('1545805412641',183,'나인봇',100000,'http://sbmallstore.com/file/goods/1545805412645나인봇A1.jpg',0),('1545805419680',183,'나인드리프트',150000,'http://sbmallstore.com/file/goods/1545805419683나인봇드리프트.jpg',0),('1568162600585',184,'66',6666,'http://sbmallstore.com/file/goods/1568162600590no_image.png',0),('1568162601688',184,'66',6666,'http://sbmallstore.com/file/goods/1568162601690no_image.png',0),('1568162605223',184,'66',6666,'http://sbmallstore.com/file/goods/1568162605226admin.png',0),('1568162605543',184,'66',6666,'http://sbmallstore.com/file/goods/1568162605546admin.png',0);
/*!40000 ALTER TABLE `Goods` ENABLE KEYS */;
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

-- Dump completed on 2019-12-20 11:50:05
