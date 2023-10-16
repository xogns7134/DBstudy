-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: shop3
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bbs3`
--

DROP TABLE IF EXISTS `bbs3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs3` (
  `no` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `bbs3_FK` (`writer`),
  CONSTRAINT `bbs3_FK` FOREIGN KEY (`writer`) REFERENCES `member3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs3`
--

LOCK TABLES `bbs3` WRITE;
/*!40000 ALTER TABLE `bbs3` DISABLE KEYS */;
/*!40000 ALTER TABLE `bbs3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member3`
--

DROP TABLE IF EXISTS `member3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member3` (
  `id` varchar(100) NOT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member3`
--

LOCK TABLES `member3` WRITE;
/*!40000 ALTER TABLE `member3` DISABLE KEYS */;
INSERT INTO `member3` VALUES ('apple','1234','apple','012'),('ice','1234','apple','012');
/*!40000 ALTER TABLE `member3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply3`
--

DROP TABLE IF EXISTS `reply3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply3` (
  `id` varchar(100) NOT NULL,
  `oriid` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `writer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reply3_FK` (`oriid`),
  KEY `reply3_FK_1` (`writer`),
  CONSTRAINT `reply3_FK` FOREIGN KEY (`oriid`) REFERENCES `bbs3` (`no`),
  CONSTRAINT `reply3_FK_1` FOREIGN KEY (`writer`) REFERENCES `member3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply3`
--

LOCK TABLES `reply3` WRITE;
/*!40000 ALTER TABLE `reply3` DISABLE KEYS */;
/*!40000 ALTER TABLE `reply3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'shop3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-16 15:08:47
