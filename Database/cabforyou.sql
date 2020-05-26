CREATE DATABASE  IF NOT EXISTS `cabforyou` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cabforyou`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: cabforyou
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nishant','knishant113544@gmail.com','7838716789','25/11/1999','male','temp'),(2,'Rahul','rahul@gmail.com','1234567890','01/01/2020','male','rahul'),(3,'priyanshu','priyanshu@gmail.com','54324545566','03/06/2001','male','00000'),(4,'Akash','akashtonk@gmail.com','9876543221','00/00/00','male','akash'),(5,'Vivek','vivek@gmail.com','1234567890','12/01/1999','male','11111'),(6,'Indu','indu@gmail.com','9654092620','01/01/1970','female','indu'),(7,'Rahul','rahul@gmail.com','635426576','61235','male','70'),(8,'Ronak','ronak@gmail.com','4336557665','45356','male','ronak'),(9,'Nishant','knishant114@gmail.com','8888888888','6789789','male','12345678'),(10,'Nishant','knishant116@gmail.com','8888888888','5678','male','1234'),(11,'Nishant','knisannt117@gmail.com','1234567890','aa','male','1234'),(12,'Nishant','213414@gmail.com','1234567890','12345','male','12345'),(15,'nISHANT','\" email \"','\"+mobile \"','\" dob \"','\" gender \"','p'),(16,'akash','himanshu32301@gmail.com','65556566556','6344665','male','akash');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `cabid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES ('1','pradeep','56326556365','5352355','male','11111'),('11','Nishant','8888888888','4552','male','7777'),('dl1234','Vivek','1234567890','12/10/1234','male','vivek');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride_request`
--

DROP TABLE IF EXISTS `ride_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ride_request` (
  `ride_id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `cartype` varchar(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `cabid` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL,
  PRIMARY KEY (`ride_id`),
  KEY `customer_id` (`customer_id`),
  KEY `cabid` (`cabid`),
  CONSTRAINT `ride_request_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `ride_request_ibfk_2` FOREIGN KEY (`cabid`) REFERENCES `driver` (`cabid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride_request`
--

LOCK TABLES `ride_request` WRITE;
/*!40000 ALTER TABLE `ride_request` DISABLE KEYS */;
INSERT INTO `ride_request` VALUES (13,'model town ','ashok vihar','2020-03-25','16:00:00','business',16,'dl1234','aproved',4,100),(14,'ashok vihar','model','2020-03-25','18:00:00','standard',16,'dl1234','aproved',5,100);
/*!40000 ALTER TABLE `ride_request` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-23 12:16:56
