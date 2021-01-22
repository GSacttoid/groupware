-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: gw_greenart
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `approval_set`
--

DROP TABLE IF EXISTS `approval_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `approval_set` (
  `app_num` int NOT NULL,
  `app_A_auth` int DEFAULT NULL,
  `app_B_auth` int DEFAULT NULL,
  `app_before_sign` char(1) NOT NULL DEFAULT 'N',
  `app_other_sign` char(1) NOT NULL DEFAULT 'Y',
  `app_after_sign` char(1) NOT NULL DEFAULT 'N',
  `app_return` char(1) NOT NULL DEFAULT 'N',
  `app_view` char(1) NOT NULL DEFAULT 'Y',
  `app_cencle` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`app_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `approval_set`
--

LOCK TABLES `approval_set` WRITE;
/*!40000 ALTER TABLE `approval_set` DISABLE KEYS */;
INSERT INTO `approval_set` VALUES (1,7,5,'Y','N','Y','N','Y','N');
/*!40000 ALTER TABLE `approval_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_manaalbum`
--

DROP TABLE IF EXISTS `buseo_article_manaalbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_manaalbum` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_manaalbum`
--

LOCK TABLES `buseo_article_manaalbum` WRITE;
/*!40000 ALTER TABLE `buseo_article_manaalbum` DISABLE KEYS */;
INSERT INTO `buseo_article_manaalbum` VALUES (3,'N','가족사진~','관리자','','2021-01-18 20:27:03',3,'XrK289zppOPqtjIfMnd61JN5Pt9F0m0o.jpg','200821-2121x1414-family.jpg','c://upload//fileUpload//',1,0,0),(4,'N','[답글] 가족사진~','관리자','','2021-01-18 20:27:22',0,NULL,NULL,NULL,1,1,1),(5,'N','가족사진~~','관리자','','2021-01-18 20:27:36',1,'eEur2ihFxSyDJsHl0FJi3PNXQBZJfUd5.jpg','278188052-H.jpg','c://upload//fileUpload//',2,0,0),(6,'N','[답글] 가족사진~~','관리자','','2021-01-18 20:27:41',0,NULL,NULL,NULL,2,1,1),(7,'N','가족사진!','관리자','','2021-01-18 20:27:54',3,'1grWHnrz1IB2Aqs6ULMtiIySGH4Dwhqz.jpg','Family.jpg','c://upload//fileUpload//',3,0,0),(8,'N','가족사진~','관리자','','2021-01-18 20:28:05',0,'n9NJ7ArY1W2MQRDoFGgvv9LGnSNrFQd5.jpg','family-parents-grandparents-Morsa-Images-Taxi-56a906ad3df78cf772a2ef29.jpg','c://upload//fileUpload//',4,0,0),(9,'N','가족~','관리자','','2021-01-18 20:28:16',4,'0KUKKMnRwhD4EfhB4r1Xn1DeEuCNDVT4.jpg','koreanfamily.jpg','c://upload//fileUpload//',5,0,0),(10,'N','가족사진~~','관리자','','2021-01-18 20:28:27',5,'3gBg2HLDWnkdnJNzMnK7f7D6VmurzcYE.jpg','original.jpg','c://upload//fileUpload//',6,0,0),(11,'N','[답글] 가족사진~~','관리자','','2021-01-18 20:28:32',0,NULL,NULL,NULL,6,1,1),(12,'N','[답글] 가족~','관리자','','2021-01-18 20:28:35',0,NULL,NULL,NULL,5,1,1),(13,'N','[답글] 가족사진!','관리자','','2021-01-18 20:28:40',0,NULL,NULL,NULL,3,1,1);
/*!40000 ALTER TABLE `buseo_article_manaalbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_manafree`
--

DROP TABLE IF EXISTS `buseo_article_manafree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_manafree` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_manafree`
--

LOCK TABLES `buseo_article_manafree` WRITE;
/*!40000 ALTER TABLE `buseo_article_manafree` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_article_manafree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_manasug`
--

DROP TABLE IF EXISTS `buseo_article_manasug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_manasug` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_manasug`
--

LOCK TABLES `buseo_article_manasug` WRITE;
/*!40000 ALTER TABLE `buseo_article_manasug` DISABLE KEYS */;
INSERT INTO `buseo_article_manasug` VALUES (6,'N','결제&nbsp;양식&nbsp;관련&nbsp;건의사항','박블루','&lt;p>11&lt;/p>\r<br />','2021-01-20 21:47:51',25,NULL,NULL,NULL,1,0,0);
/*!40000 ALTER TABLE `buseo_article_manasug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_salealbum`
--

DROP TABLE IF EXISTS `buseo_article_salealbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_salealbum` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_salealbum`
--

LOCK TABLES `buseo_article_salealbum` WRITE;
/*!40000 ALTER TABLE `buseo_article_salealbum` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_article_salealbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_salefree`
--

DROP TABLE IF EXISTS `buseo_article_salefree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_salefree` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_salefree`
--

LOCK TABLES `buseo_article_salefree` WRITE;
/*!40000 ALTER TABLE `buseo_article_salefree` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_article_salefree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_article_salesug`
--

DROP TABLE IF EXISTS `buseo_article_salesug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_article_salesug` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_article_salesug`
--

LOCK TABLES `buseo_article_salesug` WRITE;
/*!40000 ALTER TABLE `buseo_article_salesug` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_article_salesug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_board`
--

DROP TABLE IF EXISTS `buseo_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_board` (
  `menu_num` int NOT NULL AUTO_INCREMENT,
  `menu_buseo` varchar(20) DEFAULT NULL,
  `menu_kind` varchar(5) DEFAULT NULL,
  `menu_code` varchar(30) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_color` char(7) DEFAULT NULL,
  `menu_read` int DEFAULT NULL,
  `menu_write` int DEFAULT NULL,
  `menu_reply` int DEFAULT NULL,
  `menu_download` int DEFAULT NULL,
  `menu_maker` varchar(20) DEFAULT NULL,
  `menu_regdate` date DEFAULT NULL,
  PRIMARY KEY (`menu_num`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_board`
--

LOCK TABLES `buseo_board` WRITE;
/*!40000 ALTER TABLE `buseo_board` DISABLE KEYS */;
INSERT INTO `buseo_board` VALUES (35,'관리부','건의사항','manaSug','[관리부] 건의사항','#B00020',1,2,2,2,'관리자','2021-01-15'),(36,'관리부','일반게시판','manaFree','[관리부] 일반게시판','#404E67',1,2,2,2,'관리자','2021-01-15'),(37,'관리부','앨범게시판','manaAlbum','[관리부] 앨범 게시판','#1A237E',1,2,2,2,'관리자','2021-01-15'),(38,'영업부','건의사항','saleSug','[영업부] 건의사항','#5D1049',1,2,2,2,'관리자','2021-01-17'),(39,'영업부','일반게시판','saleFree','[영업부] 일반 게시판','#5D1049',1,2,2,2,'관리자','2021-01-17'),(40,'영업부','앨범게시판','saleAlbum','[영업부] 앨범 게시판','#5D1049',1,2,2,2,'관리자','2021-01-17');
/*!40000 ALTER TABLE `buseo_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_manaalbum`
--

DROP TABLE IF EXISTS `buseo_comment_manaalbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_manaalbum` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_manaalbum`
--

LOCK TABLES `buseo_comment_manaalbum` WRITE;
/*!40000 ALTER TABLE `buseo_comment_manaalbum` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_comment_manaalbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_manafree`
--

DROP TABLE IF EXISTS `buseo_comment_manafree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_manafree` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_manafree`
--

LOCK TABLES `buseo_comment_manafree` WRITE;
/*!40000 ALTER TABLE `buseo_comment_manafree` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_comment_manafree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_manasug`
--

DROP TABLE IF EXISTS `buseo_comment_manasug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_manasug` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_manasug`
--

LOCK TABLES `buseo_comment_manasug` WRITE;
/*!40000 ALTER TABLE `buseo_comment_manasug` DISABLE KEYS */;
INSERT INTO `buseo_comment_manasug` VALUES (1,6,'찬성','박블루','2021-01-20 22:21:09'),(2,6,'11','박블루','2021-01-20 22:21:20'),(3,6,'하하','관리자','2021-01-20 22:23:16'),(4,6,'11','관리자','2021-01-20 22:45:45');
/*!40000 ALTER TABLE `buseo_comment_manasug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_salealbum`
--

DROP TABLE IF EXISTS `buseo_comment_salealbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_salealbum` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_salealbum`
--

LOCK TABLES `buseo_comment_salealbum` WRITE;
/*!40000 ALTER TABLE `buseo_comment_salealbum` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_comment_salealbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_salefree`
--

DROP TABLE IF EXISTS `buseo_comment_salefree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_salefree` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_salefree`
--

LOCK TABLES `buseo_comment_salefree` WRITE;
/*!40000 ALTER TABLE `buseo_comment_salefree` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_comment_salefree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo_comment_salesug`
--

DROP TABLE IF EXISTS `buseo_comment_salesug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo_comment_salesug` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo_comment_salesug`
--

LOCK TABLES `buseo_comment_salesug` WRITE;
/*!40000 ALTER TABLE `buseo_comment_salesug` DISABLE KEYS */;
/*!40000 ALTER TABLE `buseo_comment_salesug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_article_comalbum`
--

DROP TABLE IF EXISTS `com_article_comalbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_article_comalbum` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_article_comalbum`
--

LOCK TABLES `com_article_comalbum` WRITE;
/*!40000 ALTER TABLE `com_article_comalbum` DISABLE KEYS */;
INSERT INTO `com_article_comalbum` VALUES (2,'N','family&nbsp;','관리자','','2021-01-19 10:06:35',1,'DrVRLwYH2zrk6zHEuYsXRXfYjfoseSY6.jpg','200821-2121x1414-family.jpg','c://upload//fileUpload//',1,0,0),(3,'N','[답글] family ','관리자','','2021-01-19 10:06:40',0,NULL,NULL,NULL,1,1,1),(4,'N','우리&nbsp;가족&nbsp;사진~','관리자','','2021-01-19 10:06:53',0,'5rjOPiB7CHhiPQcJoir2EuWZmkB4E8tQ.jpg','278188052-H.jpg','c://upload//fileUpload//',2,0,0),(5,'N','행복한&nbsp;우리&nbsp;가족','관리자','','2021-01-19 10:07:07',1,'NQLq4FUhHaHkJWHmto75UGlvgtQAFOTc.jpg','family-parents-grandparents-Morsa-Images-Taxi-56a906ad3df78cf772a2ef29.jpg','c://upload//fileUpload//',3,0,0),(6,'N','가족~','관리자','','2021-01-19 10:07:17',1,'Sti0yudwk68juWIHtdEPjSsBNNfLGuiM.jpg','Family.jpg','c://upload//fileUpload//',4,0,0),(7,'N','우리가족&nbsp;자랑','관리자','','2021-01-19 10:07:29',2,'k2Gqi88ZQl11EmcEdi1BWpTgG8PDtep2.jpg','koreanfamily.jpg','c://upload//fileUpload//',5,0,0),(8,'N','가족~','관리자','','2021-01-19 10:07:38',0,'93UIWevLJrTSjkJGc9o8N3CjiAwzWpzU.jpg','original.jpg','c://upload//fileUpload//',6,0,0),(9,'N','[답글] 우리가족 자랑','관리자','','2021-01-19 10:07:42',2,NULL,NULL,NULL,5,1,1),(10,'N','[답글] [답글] 우리가족 자랑','관리자','','2021-01-19 10:07:46',69,NULL,NULL,NULL,5,2,2),(11,'N','[답글] 가족~','관리자','','2021-01-19 10:07:50',1,NULL,NULL,NULL,4,1,1),(12,'N','[답글] 행복한 우리 가족','관리자','','2021-01-19 10:07:55',1,NULL,NULL,NULL,3,1,1),(13,'N','[답글] [답글] 가족~','관리자','','2021-01-19 10:08:04',0,NULL,NULL,NULL,4,2,2),(14,'N','가족사진~','관리자','&lt;p>행복한 우리가족 자랑합니다~&lt;/p>\r<br />','2021-01-20 22:42:13',7,'QicDib3wNGiUXh8gbhbp5XBEcVHLilFf.jpg','Family.jpg','c://upload//fileUpload//',7,0,0);
/*!40000 ALTER TABLE `com_article_comalbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_article_comfree`
--

DROP TABLE IF EXISTS `com_article_comfree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_article_comfree` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_article_comfree`
--

LOCK TABLES `com_article_comfree` WRITE;
/*!40000 ALTER TABLE `com_article_comfree` DISABLE KEYS */;
INSERT INTO `com_article_comfree` VALUES (3,'N','오늘의&nbsp;유머','관리자','','2021-01-19 10:02:47',1,NULL,NULL,NULL,1,0,0),(4,'N','[답글] 오늘의 유머','관리자','','2021-01-19 10:02:52',1,NULL,NULL,NULL,1,1,1),(5,'N','[답글] [답글] 오늘의 유머','관리자','','2021-01-19 10:02:56',0,NULL,NULL,NULL,1,2,2),(6,'N','마음이&nbsp;평온해&nbsp;지는&nbsp;글귀','관리자','','2021-01-19 10:03:09',0,NULL,NULL,NULL,2,0,0),(7,'N','오늘&nbsp;뉴스','관리자','','2021-01-19 10:03:26',4,NULL,NULL,NULL,3,0,0),(8,'N','[답글] 오늘 뉴스','관리자','','2021-01-19 10:03:31',0,NULL,NULL,NULL,3,1,1),(9,'N','과학&nbsp;뉴스','관리자','','2021-01-19 10:04:04',1,NULL,NULL,NULL,4,0,0),(10,'N','우리지역&nbsp;코로나&nbsp;확진자&nbsp;현황','관리자','','2021-01-19 10:05:12',0,NULL,NULL,NULL,5,0,0),(11,'N','코로나&nbsp;예방','관리자','','2021-01-19 10:05:27',0,NULL,NULL,NULL,6,0,0),(12,'N','판매&nbsp;-&nbsp;제주&nbsp;감귤','관리자','','2021-01-19 10:06:01',3,NULL,NULL,NULL,7,0,0),(13,'N','[답글] 판매 - 제주 감귤','관리자','','2021-01-19 10:06:12',0,NULL,NULL,NULL,7,1,1);
/*!40000 ALTER TABLE `com_article_comfree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_article_su`
--

DROP TABLE IF EXISTS `com_article_su`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_article_su` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `division` char(1) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text,
  `regdate` datetime DEFAULT NULL,
  `hit` int DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL,
  `fileOriName` varchar(300) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  `re_step` int DEFAULT NULL,
  `re_level` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_article_su`
--

LOCK TABLES `com_article_su` WRITE;
/*!40000 ALTER TABLE `com_article_su` DISABLE KEYS */;
INSERT INTO `com_article_su` VALUES (22,'N','로고&nbsp;변경건','관리자','','2021-01-18 17:03:03',2,NULL,NULL,NULL,1,0,0),(23,'N','[답글] 로고 변경건','관리자','','2021-01-18 17:03:23',1,NULL,NULL,NULL,1,1,1),(24,'N','[답글] [답글] 로고 변경건','관리자','','2021-01-18 17:03:30',1,NULL,NULL,NULL,1,2,2),(25,'N','결재&nbsp;문서&nbsp;양식&nbsp;변경건','관리자','','2021-01-18 17:04:04',1,NULL,NULL,NULL,2,0,0),(26,'N','[답글] 결재 문서 양식 변경건','관리자','','2021-01-18 17:04:08',1,NULL,NULL,NULL,2,1,1),(27,'N','게시판&nbsp;색상&nbsp;변경&nbsp;요청','관리자','','2021-01-18 17:04:33',1,NULL,NULL,NULL,3,0,0),(28,'N','[답글] 게시판 색상 변경 요청','관리자','','2021-01-18 17:04:37',0,NULL,NULL,NULL,3,1,1),(29,'N','[답글] [답글] [답글] 로고 변경건','관리자','','2021-01-18 17:05:01',0,NULL,NULL,NULL,1,3,3),(30,'N','설문조사&nbsp;요청건','관리자','','2021-01-18 17:05:24',3,NULL,NULL,NULL,4,0,0),(31,'N','[답글] 설문조사 요청건','관리자','','2021-01-18 17:05:30',2,NULL,NULL,NULL,4,1,1),(32,'N','[답글] [답글] 설문조사 요청건','관리자','','2021-01-18 17:05:37',1,NULL,NULL,NULL,4,2,2),(33,'N','이메일&nbsp;주소&nbsp;변경','관리자','','2021-01-18 17:21:10',5,NULL,NULL,NULL,5,0,0);
/*!40000 ALTER TABLE `com_article_su` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_board`
--

DROP TABLE IF EXISTS `com_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_board` (
  `menu_num` int NOT NULL AUTO_INCREMENT,
  `menu_kind` varchar(5) DEFAULT NULL,
  `menu_code` varchar(30) DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `menu_color` char(7) DEFAULT NULL,
  `menu_read` int DEFAULT NULL,
  `menu_write` int DEFAULT NULL,
  `menu_reply` int DEFAULT NULL,
  `menu_download` int DEFAULT NULL,
  `menu_maker` varchar(20) DEFAULT NULL,
  `menu_regdate` date DEFAULT NULL,
  PRIMARY KEY (`menu_num`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_board`
--

LOCK TABLES `com_board` WRITE;
/*!40000 ALTER TABLE `com_board` DISABLE KEYS */;
INSERT INTO `com_board` VALUES (11,'건의사항','su','(회사) 건의사항','#B00020',1,2,2,2,'관리자','2021-01-15'),(12,'일반게시판','comfree','(회사) 일반 게시판','#1A237E',1,2,2,2,'관리자','2021-01-15'),(13,'앨범게시판','comAlbum','(회사) 직원 사진자랑','#5D1049',1,2,2,2,'관리자','2021-01-15');
/*!40000 ALTER TABLE `com_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_comment_comalbum`
--

DROP TABLE IF EXISTS `com_comment_comalbum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_comment_comalbum` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_comment_comalbum`
--

LOCK TABLES `com_comment_comalbum` WRITE;
/*!40000 ALTER TABLE `com_comment_comalbum` DISABLE KEYS */;
INSERT INTO `com_comment_comalbum` VALUES (6,14,'11','관리자','2021-01-20 22:46:04'),(7,14,'보기 좋네요~','관리자','2021-01-20 22:46:26');
/*!40000 ALTER TABLE `com_comment_comalbum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_comment_comfree`
--

DROP TABLE IF EXISTS `com_comment_comfree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_comment_comfree` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_comment_comfree`
--

LOCK TABLES `com_comment_comfree` WRITE;
/*!40000 ALTER TABLE `com_comment_comfree` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_comment_comfree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_comment_su`
--

DROP TABLE IF EXISTS `com_comment_su`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `com_comment_su` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `comment` text,
  `who` varchar(20) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_comment_su`
--

LOCK TABLES `com_comment_su` WRITE;
/*!40000 ALTER TABLE `com_comment_su` DISABLE KEYS */;
INSERT INTO `com_comment_su` VALUES (1,33,'11','관리자','2021-01-20 22:45:55');
/*!40000 ALTER TABLE `com_comment_su` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_notice`
--

DROP TABLE IF EXISTS `company_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_notice` (
  `sn_num` int NOT NULL AUTO_INCREMENT,
  `sn_code` char(6) DEFAULT NULL,
  `sn_maker` varchar(10) DEFAULT NULL,
  `sn_title` varchar(50) DEFAULT NULL,
  `sn_content` text,
  `sn_read` int DEFAULT NULL,
  `sn_write` int DEFAULT NULL,
  `sn_download` int DEFAULT NULL,
  `sn_reply` int DEFAULT NULL,
  `sn_type` varchar(6) DEFAULT NULL,
  `sn_regdate` date DEFAULT NULL,
  `sn_count` int DEFAULT '0',
  `sn_files` varchar(300) DEFAULT NULL,
  `sn_files_oriName` varchar(300) DEFAULT NULL,
  `sn_files_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sn_num`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_notice`
--

LOCK TABLES `company_notice` WRITE;
/*!40000 ALTER TABLE `company_notice` DISABLE KEYS */;
INSERT INTO `company_notice` VALUES (25,NULL,'관리자','2021 상반기 경력사원 서류전형 합격자 발표 일정','<p>2021 상반기 경력사원 서류전형 합격자 발표 일정</p>\r\n',1,1,1,1,'공지사항','2021-01-18',3,NULL,NULL,NULL),(26,NULL,'관리자','연말정산 자료 제출','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL),(29,NULL,'관리자','2021 신입생 환영회 안내','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(30,NULL,'관리자','결재문서 로고 변경 안내','',1,1,1,1,'일반게시글','2021-01-18',2,NULL,NULL,NULL),(31,NULL,'관리자','(경축) 금탑 수상','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(32,NULL,'관리자','창립 100주년 기념행사','',1,1,1,1,'공지사항','2021-01-18',4,NULL,NULL,NULL),(33,NULL,'관리자','2020년 성과 발표 회의','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(34,NULL,'관리자','코로나 방역 지침','',1,1,1,1,'일반게시글','2021-01-18',1,NULL,NULL,NULL),(35,NULL,'관리자','2021년 공휴일 안내','',1,1,1,1,'일반게시글','2021-01-18',1,NULL,NULL,NULL),(36,NULL,'관리자','[[박그린 대표]] 대통령 표창','',1,1,1,1,'공지사항','2021-01-18',4,NULL,NULL,NULL),(37,NULL,'관리자','2021년 1월 소식지','',1,1,1,1,'일반게시글','2021-01-18',2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `company_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_approval`
--

DROP TABLE IF EXISTS `gw_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_approval` (
  `app_num` int NOT NULL AUTO_INCREMENT,
  `app_writer` varchar(20) DEFAULT NULL,
  `app_regdate` date DEFAULT NULL,
  `app_end_date` date DEFAULT NULL,
  `app_storage` varchar(30) DEFAULT NULL,
  `app_sign1` varchar(30) DEFAULT NULL,
  `app_sign2` varchar(30) DEFAULT NULL,
  `app_sign3` varchar(30) DEFAULT NULL,
  `app_sign4` varchar(30) DEFAULT NULL,
  `app_sign5` varchar(30) DEFAULT NULL,
  `app_ref` varchar(300) DEFAULT NULL,
  `app_file` varchar(300) DEFAULT NULL,
  `app_file_ori` varchar(300) DEFAULT NULL,
  `app_sign_img` varchar(300) DEFAULT NULL,
  `app_auth` int NOT NULL DEFAULT '1',
  `app_before_sign` char(1) NOT NULL DEFAULT 'N',
  `app_other_sign` char(1) NOT NULL DEFAULT 'Y',
  `app_after_sign` char(1) NOT NULL DEFAULT 'N',
  `app_return` char(1) NOT NULL DEFAULT 'N',
  `app_view` char(1) NOT NULL DEFAULT 'Y',
  `app_cencle` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`app_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_approval`
--

LOCK TABLES `gw_approval` WRITE;
/*!40000 ALTER TABLE `gw_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `gw_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_buseo`
--

DROP TABLE IF EXISTS `gw_buseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_buseo` (
  `bid` int NOT NULL AUTO_INCREMENT,
  `buseo_id` int DEFAULT NULL,
  `buseo_name` varchar(20) DEFAULT NULL,
  `buseo_regdate` date DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_buseo`
--

LOCK TABLES `gw_buseo` WRITE;
/*!40000 ALTER TABLE `gw_buseo` DISABLE KEYS */;
INSERT INTO `gw_buseo` VALUES (1,100,'관리부','2021-01-09'),(2,200,'영업부','2021-01-09'),(3,300,'총무부','2021-01-09'),(4,400,'전산부','2021-01-09'),(5,500,'생산부','2021-01-09'),(6,600,'인사부','2021-01-09'),(7,700,'품질부','2021-01-09');
/*!40000 ALTER TABLE `gw_buseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_company_info`
--

DROP TABLE IF EXISTS `gw_company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_company_info` (
  `com_num` int NOT NULL AUTO_INCREMENT,
  `com_name` varchar(30) DEFAULT NULL,
  `com_code` varchar(20) DEFAULT NULL,
  `com_ceo` varchar(5) DEFAULT NULL,
  `com_file` varchar(300) DEFAULT NULL,
  `com_logo_paper` varchar(300) DEFAULT NULL,
  `com_logo` varchar(300) DEFAULT NULL,
  `com_tel` varchar(15) DEFAULT NULL,
  `com_fax` varchar(15) DEFAULT NULL,
  `com_address` varchar(200) DEFAULT NULL,
  `logo_name` varchar(20) DEFAULT NULL,
  `logo_sub_name` varchar(30) DEFAULT NULL,
  `com_start` varchar(10) DEFAULT NULL,
  `com_address_num` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`com_num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_company_info`
--

LOCK TABLES `gw_company_info` WRITE;
/*!40000 ALTER TABLE `gw_company_info` DISABLE KEYS */;
INSERT INTO `gw_company_info` VALUES (1,'(주)그린아트컴퍼니','123-12-12123','홍그린','파일','파일','파일','055-333-3333','055-444-5555','경남 양산시 물금읍','GreenArt','Groupware System','2021-01-06','56854');
/*!40000 ALTER TABLE `gw_company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_employee`
--

DROP TABLE IF EXISTS `gw_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_employee` (
  `emp_num` int NOT NULL AUTO_INCREMENT,
  `emp_buseo` varchar(10) DEFAULT NULL,
  `emp_grade` int DEFAULT '1',
  `emp_id` varchar(20) DEFAULT NULL,
  `emp_enter` date DEFAULT NULL,
  `emp_name` varchar(10) DEFAULT NULL,
  `emp_pwd` varchar(20) DEFAULT NULL,
  `emp_photo` varchar(300) DEFAULT '',
  `emp_regdate` date DEFAULT NULL,
  `emp_auth` int DEFAULT '1',
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_gender` char(2) DEFAULT NULL,
  `emp_birth` char(12) DEFAULT NULL,
  `emp_phone` char(13) DEFAULT NULL,
  `emp_tel` char(13) DEFAULT NULL,
  `emp_company_tel` char(13) DEFAULT NULL,
  `emp_height` char(3) DEFAULT NULL,
  `emp_weight` char(3) DEFAULT NULL,
  `emp_hobby` varchar(10) DEFAULT NULL,
  `emp_speciality` varchar(10) DEFAULT NULL,
  `emp_married` char(3) DEFAULT NULL,
  `emp_license` varchar(100) DEFAULT NULL,
  `emp_lang` varchar(100) DEFAULT NULL,
  `emp_comment` text,
  PRIMARY KEY (`emp_num`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_employee`
--

LOCK TABLES `gw_employee` WRITE;
/*!40000 ALTER TABLE `gw_employee` DISABLE KEYS */;
INSERT INTO `gw_employee` VALUES (1,'100',5,'admin','2021-01-01','관리자','qwer','d25d781f-09a0-492a-8408-382713746e47_증명.jpg',NULL,10,'Y','남자','2000-08-01','010-1234-1234','','1234','180','80','','','미혼','','',''),(4,'100',2,'jhpark','2021-01-07','박블루','1111','4235418f-5d04-405a-b113-d7e6aa057f6c_증명.jpg','2020-12-23',1,'Y','남자','2021-01-07','010-3333-3333','','1112','','','','','미혼','','',''),(5,'100',1,'aaaaa',NULL,'김블랙','11',NULL,'2020-12-23',1,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'500',1,'sssssssss',NULL,'에스','1212',NULL,'2021-01-06',1,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'100',1,'acttoid',NULL,'엑토','1111',NULL,'2021-01-06',1,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'400',1,'qwerqwer',NULL,'김블루','11',NULL,'2021-01-07',1,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'400',1,'asdf',NULL,'김총무','11',NULL,'2021-01-07',1,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'700',1,'rrrrrrrr',NULL,'박분홍','1111',NULL,'2021-01-08',5,'Y',NULL,NULL,'010-3333-3333',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'600',1,'product',NULL,'김생산','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-2222-2222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'100',1,'managekim',NULL,'김관리','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-6666-6666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'200',1,'human',NULL,'홍휴먼','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-9999-9999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'300',1,'new',NULL,'이기획','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-7777-7777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'400',1,'money',NULL,'최총무','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-1111-1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'500',1,'sales',NULL,'김영업','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-2424-2424',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'500',1,'saleskim',NULL,'이홍보','11',NULL,'2021-01-08',10,'Y',NULL,NULL,'010-1234-1234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'100',10,'green','2021-01-18','박그린','11','a4e7843e-fd3b-475a-b78b-7a076a5d7e7a_','2021-01-08',10,'Y','남자','2021-01-18','010-3333-1111','','','','','','','미혼','','',''),(20,'200',1,'redlee',NULL,'이사부','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-2222-2222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'300',1,'bubuchoi',NULL,'최부부','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-1212-1212',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'600',1,'sanbu',NULL,'최산수','11',NULL,'2021-01-08',1,'Y',NULL,NULL,'010-4545-4545',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'300',3,'hand','2020-10-01','육손','11',NULL,'2021-01-08',1,'Y','남자','2019-02-01','010-3232-3333','','','','','','','미혼','','',''),(24,'200',6,'book','2021-01-01','손책','11',NULL,'2021-01-08',10,'Y','남자','2021-01-01','010-5555-6666','','','','','','','미혼','','',''),(25,'200',4,'user','2021-01-01','사용자','11','a4862faa-9d58-44dc-a255-a82327d0ff8f_증명.jpg','2021-01-08',1,'Y','여자','2021-01-01','010-7777-2522','','','','','','','미혼','11','',''),(26,'500',3,'web','2020-09-02','김구글','11','432d2eb8-883e-497b-bdac-d55e7c93001a_증명.jpg','2021-01-08',1,'Y','남자','1994-06-08','010-6566-4444','055-222-2222','1234','182','80','양구','축구','기혼','11','11','<p>11</p>\r\n'),(27,'300',2,'resource','2021-01-06','이소스','11','f2af8829-6377-4408-b495-91ce996220df_증명 (1).jpg','2021-01-08',1,'Y','남자','2021-01-18','010-1234-4444','','','','','','','미혼','','',''),(39,'100',1,'1111111',NULL,'aaaaa','aa',NULL,'2021-01-08',1,'x',NULL,NULL,'aaaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'100',1,'dddd',NULL,'ddd','eee',NULL,'2021-01-08',1,'x',NULL,NULL,'ddddd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'100',1,'qwefd',NULL,'dddd','dddd',NULL,'2021-01-08',1,'x',NULL,NULL,'dddd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'100',1,'aherhaeja',NULL,'11','11',NULL,'2021-01-08',1,'x',NULL,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'400',1,'123',NULL,'123','qq',NULL,'2021-01-09',1,'N',NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(72,'100',6,'ddddwww','2021-01-01','김부장','11','fb08a0b9-67f0-4233-9782-02c644cdf09d_증명 (1).jpg','2021-01-10',1,'Y','남자','2021-01-06','010-3333-1234','','1232','','','','','미혼','','',''),(73,'500',3,'111111','2021-01-01','김주임','11','2de63d0a-2cb2-4d36-a0fc-f0fc90beb168_증명.jpg','2021-01-10',1,'Y','남자','2021-01-01','010-1234-1234','','1233','11','','','','미혼','','',''),(74,'200',2,'survey','2021-01-01','박서베이','11','4b27da31-8878-4949-a5c5-af3cda6388ec_증명.jpg','2021-01-12',2,'Y','여자','2015-01-07','010-3333-5555','','','182','80','축구','','미혼','','',''),(75,'100',4,'asdfasdf','2021-01-18','김신규','1111','3ccb9776-89c2-4ae3-9628-ffbf64b6b9c2_증명 (1).jpg','2021-01-18',1,'Y','남자','2021-01-01','1111','','1111','180','','','','미혼','','',''),(76,'100',1,'photo',NULL,'김포토','11',NULL,'2021-01-20',1,'Y',NULL,NULL,'010-5555-6666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'100',2,'test','2021-01-01','김테스','11','d23b5f56-ab4c-4f89-8c59-9cfe63dc1d4e_Family.jpg','2021-01-20',1,'Y','남자','2021-01-01','010-5321-5954','11','11','111','11','축구','축구','미혼','','','<p>11</p>\r\n');
/*!40000 ALTER TABLE `gw_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_grade`
--

DROP TABLE IF EXISTS `gw_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_grade` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `grade_id` int DEFAULT NULL,
  `grade_name` varchar(10) DEFAULT NULL,
  `grade_auth` int DEFAULT NULL,
  `grade_regdate` date DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_grade`
--

LOCK TABLES `gw_grade` WRITE;
/*!40000 ALTER TABLE `gw_grade` DISABLE KEYS */;
INSERT INTO `gw_grade` VALUES (19,1,'임시',1,'2021-01-09'),(20,2,'사원',2,'2021-01-09'),(21,3,'주임',3,'2021-01-09'),(22,4,'대리',4,'2021-01-09'),(23,5,'과장',5,'2021-01-09'),(24,6,'부장',6,'2021-01-09'),(25,7,'이사',7,'2021-01-09'),(26,8,'전무이사',8,'2021-01-09'),(27,10,'대표이사',10,'2021-01-09');
/*!40000 ALTER TABLE `gw_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_info`
--

DROP TABLE IF EXISTS `gw_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_info` (
  `info_num` int NOT NULL AUTO_INCREMENT,
  `info_domain` varchar(30) DEFAULT NULL,
  `info_gw_start` date DEFAULT NULL,
  `info_gw_end` date DEFAULT NULL,
  `info_gw_user` int DEFAULT NULL,
  `info_total_volume` int DEFAULT NULL,
  `info_total_volume_used` int DEFAULT NULL,
  `info_mail_volume` int DEFAULT NULL,
  `info_mail_volume_used` int DEFAULT NULL,
  `info_webhard_volume` int DEFAULT NULL,
  `info_webhard_volume_used` int DEFAULT NULL,
  `info_gw_volume` int DEFAULT NULL,
  `info_gw_volume_used` int DEFAULT NULL,
  PRIMARY KEY (`info_num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_info`
--

LOCK TABLES `gw_info` WRITE;
/*!40000 ALTER TABLE `gw_info` DISABLE KEYS */;
INSERT INTO `gw_info` VALUES (1,'gw.greenart.kr','2009-04-02','2022-04-02',200,5000,3000,2000,1000,2000,1000,1000,500);
/*!40000 ALTER TABLE `gw_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_survey`
--

DROP TABLE IF EXISTS `gw_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_survey` (
  `survey_id` int NOT NULL AUTO_INCREMENT,
  `survey_status` varchar(10) DEFAULT NULL,
  `survey_buseo` varchar(10) DEFAULT 'NULL',
  `survey_grade` varchar(10) DEFAULT NULL,
  `survey_way` varchar(5) DEFAULT NULL,
  `survey_view` varchar(10) DEFAULT NULL,
  `survey_result` varchar(10) DEFAULT NULL,
  `survey_startDate` varchar(20) DEFAULT NULL,
  `survey_endDate` varchar(20) DEFAULT NULL,
  `survey_maker` varchar(10) DEFAULT NULL,
  `survey_title` varchar(50) DEFAULT NULL,
  `survey_content` text,
  `survey_example` varchar(300) DEFAULT NULL,
  `survey_ex_cnt` varchar(50) DEFAULT NULL,
  `survey_regdate` date DEFAULT NULL,
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_survey`
--

LOCK TABLES `gw_survey` WRITE;
/*!40000 ALTER TABLE `gw_survey` DISABLE KEYS */;
INSERT INTO `gw_survey` VALUES (38,'설문종료','NULL',NULL,'단일투표','회사','공개','2021-01-01','2021-01-13','관리자','1/13~1/15 연차 대체사용',NULL,'찬성|반대|기권|','4|3|1|','2021-01-12'),(39,'설문종료','영업부',NULL,'단일투표','부서','공개','2021-01-11','2021-01-16','관리자','부서회식장소 (1/13)',NULL,'참나무 숯불갈비|동해 횟집|오리궁|족발나라|','2|0|0|0|','2021-01-12'),(40,'설문종료','NULL','사원','단일투표','직급','공개','2021-01-11','2021-01-16','관리자','신입생 추가교육 참석여부',NULL,'참석|미참석|','2|0|','2021-01-12'),(42,'설문종료','NULL',NULL,'단일투표','회사','공개','2021-01-14','2021-01-16','관리자','앨범생성 관련 설문조사',NULL,'찬성|반대|기권|','3|2|0|','2021-01-12'),(43,'설문진행중','관리부',NULL,'단일투표','부서','공개','2021-01-20','2021-01-29','관리자','설문조사 기안작성 권한',NULL,'사원|대리|과장|부장|','0|0|0|0|','2021-01-12'),(44,'설문종료','관리부',NULL,'단일투표','부서','공개','2020-12-02','2020-12-18','관리자','연말 기부행사 일정 ',NULL,'12/28|12/29|12/30|','0|0|0|','2021-01-12'),(45,'설문종료','NULL',NULL,'단일투표','회사','공개','2021-01-01','2021-01-15','관리자','문서 logo 양식',NULL,'logo ex1|logo ex2|logo ex3|logo ex4|','4|5|2|2|','2021-01-12'),(46,'설문종료','NULL',NULL,'단일투표','회사','공개','2021-01-01','2021-01-06','관리자','가족 모임 행사 참여',NULL,'참석|불참|','0|0|','2021-01-12'),(47,'설문종료','NULL','부장','단일투표','직급','공개','2021-01-04','2021-01-07','관리자','부장급 간담회 일정',NULL,'1/20|1/25|','0|0|','2021-01-12'),(48,'설문진행중','총무부',NULL,'다중투표','부서','공개','2021-01-12','2021-01-22','관리자','화상회의 프로그램',NULL,'zoom|meeting|','0|0|','2021-01-12'),(49,'설문종료','NULL',NULL,'단일투표','회사','공개','2021-01-11','2021-01-14','관리자','설문종료일',NULL,'1/13|1/14|','0|2|','2021-01-14'),(50,'설문대기중','NULL',NULL,'단일투표','회사','공개','2021-01-26','2021-02-03','관리자','리눅스 강좌 일정',NULL,'2/20~2/23|2/25~2/28|3/3~3/6|','0|0|0|','2021-01-15'),(51,'설문진행중','NULL',NULL,'단일투표','회사','공개','2021-01-18','2021-01-30','관리자','java 재교육',NULL,'참석|미참석|','11|3|','2021-01-18'),(52,'설문진행중','NULL',NULL,'단일투표','회사','공개','2021-01-21','2021-01-31','관리자','자원봉사 지원관련',NULL,'참석|미참석|잘모르겠다|','0|0|0|','2021-01-18'),(53,'설문진행중','NULL',NULL,'단일투표','회사','공개','2021-01-19','2021-01-31','관리자','그룹웨어 모바일 적용',NULL,'찬성|반대|상관없다|','0|0|0|','2021-01-20');
/*!40000 ALTER TABLE `gw_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gw_system_notice`
--

DROP TABLE IF EXISTS `gw_system_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gw_system_notice` (
  `sn_num` int NOT NULL AUTO_INCREMENT,
  `sn_maker` varchar(10) DEFAULT NULL,
  `sn_title` varchar(50) DEFAULT NULL,
  `sn_content` text,
  `sn_read` int DEFAULT NULL,
  `sn_write` int DEFAULT NULL,
  `sn_download` int DEFAULT NULL,
  `sn_reply` int DEFAULT NULL,
  `sn_type` varchar(5) DEFAULT NULL,
  `sn_regdate` date DEFAULT NULL,
  `sn_count` int DEFAULT '0',
  `sn_files` varchar(300) DEFAULT NULL,
  `sn_files_oriName` varchar(300) DEFAULT NULL,
  `sn_files_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`sn_num`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gw_system_notice`
--

LOCK TABLES `gw_system_notice` WRITE;
/*!40000 ALTER TABLE `gw_system_notice` DISABLE KEYS */;
INSERT INTO `gw_system_notice` VALUES (115,'관리자','그룹웨어 정기점검 안내','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL),(116,'관리자','그룹웨어 보안관련 업데이트 안내','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(117,'관리자','시스템 긴급점검 안내','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(118,'관리자','그룹웨어 사용자 정보변경 안내','',1,1,1,1,'공지사항','2021-01-18',1,NULL,NULL,NULL),(119,'관리자','그룹웨어 정기점검 안내','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL),(120,'관리자','그룹웨어 정검점검 안내 - 연장점검','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL),(121,'관리자','메일 오류 - 긴급 점검','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL),(122,'관리자','그룹웨어 정기점검 안내','',1,1,1,1,'공지사항','2021-01-18',2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `gw_system_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_address`
--

DROP TABLE IF EXISTS `mail_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_address` (
  `ma_id` int NOT NULL AUTO_INCREMENT,
  `ma_address` varchar(30) DEFAULT NULL,
  `ma_name` varchar(20) DEFAULT NULL,
  `ma_group` varchar(20) DEFAULT NULL,
  `ma_company` varchar(20) DEFAULT NULL,
  `ma_buseo` varchar(10) DEFAULT NULL,
  `ma_grade` varchar(10) DEFAULT NULL,
  `ma_content` varchar(300) DEFAULT NULL,
  `ma_phone` varchar(15) DEFAULT NULL,
  `ma_tel` varchar(15) DEFAULT NULL,
  `ma_regdate` date DEFAULT NULL,
  PRIMARY KEY (`ma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_address`
--

LOCK TABLES `mail_address` WRITE;
/*!40000 ALTER TABLE `mail_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-22  9:28:31
