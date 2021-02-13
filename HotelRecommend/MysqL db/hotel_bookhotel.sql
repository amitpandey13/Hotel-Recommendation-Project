-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `bookhotel`
--

DROP TABLE IF EXISTS `bookhotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookhotel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usermail` varchar(45) NOT NULL,
  `hotelname` varchar(45) NOT NULL,
  `numperson` varchar(5) NOT NULL,
  `numbed` varchar(45) NOT NULL,
  `contactnum` varchar(45) NOT NULL,
  `aadhar` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `checkin` varchar(45) NOT NULL,
  `checkout` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookhotel`
--

LOCK TABLES `bookhotel` WRITE;
/*!40000 ALTER TABLE `bookhotel` DISABLE KEYS */;
INSERT INTO `bookhotel` VALUES (7,'aspp9308@gmail.com','King Royals','2','2','7225915441','xxxxxxxxxxxx','booked','9','2020-11-29','2020-11-30'),(8,'ashok@gmail.com','King Royals','2','1','8541862635','6205143426','booked','8.5','2020-11-30','2021-01-01'),(9,'aspp9308@gmail.com','King Royals','2','1','8541862635','6205143426','booked','9','2020-12-03','2020-12-04'),(10,'rakesh@gmail.com','King Royals','2','1','8541862635','6205143426','booked','7','2020-12-05','2020-12-06'),(11,'aspp775@gmail.com','King Royals','1','1','7759917154','6205143426','booked','7','2020-12-07','2020-12-07'),(12,'deepak@gmail.com','Hotel Lincoln','2','1','8541862635','6205143426','booked','8','2020-12-16','2020-12-17'),(13,'alok12@gmail.com','King Royals','1','1','8360263358','6205143426','booked','7','2020-12-16','2020-12-17'),(14,'aspp9307@gmail.com','King','1','1','7225915441','6205143426','booked','8','2020-12-17','2020-12-18');
/*!40000 ALTER TABLE `bookhotel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-13 11:51:19
