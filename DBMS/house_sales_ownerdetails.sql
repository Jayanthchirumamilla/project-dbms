-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: house_sales
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ownerdetails`
--

DROP TABLE IF EXISTS `ownerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ownerdetails` (
  `owner_Id` int NOT NULL AUTO_INCREMENT,
  `owner_address` varchar(50) DEFAULT NULL,
  `Phone_Num` varchar(50) DEFAULT NULL,
  `owner_name` varchar(50) DEFAULT NULL,
  `house_id` int DEFAULT NULL,
  PRIMARY KEY (`owner_Id`),
  KEY `house_id` (`house_id`),
  CONSTRAINT `ownerdetails_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `bike` (`House_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ownerdetails`
--

LOCK TABLES `ownerdetails` WRITE;
/*!40000 ALTER TABLE `ownerdetails` DISABLE KEYS */;
INSERT INTO `ownerdetails` VALUES (1,'123 Main St.','123-456-7890','John Doe',1),(2,'123 south St.','122-333-4456','John Watson',2),(3,'123 Manison St.','123-456-7890','Wanda',3),(4,'456 Esster St.','123-444-7890','Steve',4),(5,'112 varma St.','123-456-7770','Tony',5);
/*!40000 ALTER TABLE `ownerdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 10:37:18
