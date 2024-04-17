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
-- Table structure for table `gov_details`
--

DROP TABLE IF EXISTS `gov_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gov_details` (
  `OLD_owner_Id` int DEFAULT NULL,
  `current_owner_id` int DEFAULT NULL,
  `Survey_num` int DEFAULT NULL,
  `house_id` int DEFAULT NULL,
  KEY `house_id` (`house_id`),
  KEY `OLD_owner_Id` (`OLD_owner_Id`),
  KEY `current_owner_id` (`current_owner_id`),
  CONSTRAINT `gov_details_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `bike` (`House_Id`),
  CONSTRAINT `gov_details_ibfk_2` FOREIGN KEY (`OLD_owner_Id`) REFERENCES `oldownerdetails` (`owner_Id`),
  CONSTRAINT `gov_details_ibfk_3` FOREIGN KEY (`current_owner_id`) REFERENCES `ownerdetails` (`owner_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gov_details`
--

LOCK TABLES `gov_details` WRITE;
/*!40000 ALTER TABLE `gov_details` DISABLE KEYS */;
INSERT INTO `gov_details` VALUES (1,1,1234,1),(2,2,5678,2),(3,3,9012,3),(4,4,3456,4),(5,5,7890,5);
/*!40000 ALTER TABLE `gov_details` ENABLE KEYS */;
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
