-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: jatin
-- ------------------------------------------------------
-- Server version	8.0.14

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
-- Table structure for table `batchrgstr`
--

DROP TABLE IF EXISTS `batchrgstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batchrgstr` (
  `batchcode` char(20) NOT NULL,
  `batchyear` int(11) DEFAULT NULL,
  `teacher` varchar(50) DEFAULT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `Stream` varchar(20) DEFAULT NULL,
  `Section` char(10) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `batchcode` (`batchcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchrgstr`
--

LOCK TABLES `batchrgstr` WRITE;
/*!40000 ALTER TABLE `batchrgstr` DISABLE KEYS */;
INSERT INTO `batchrgstr` VALUES ('B001',2021,'Teacher1','12','Science','B',1),('B002',2020,'t2','12','Science','C',2);
/*!40000 ALTER TABLE `batchrgstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student1`
--

DROP TABLE IF EXISTS `student1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student1` (
  `u_fname` char(20) DEFAULT NULL,
  `u_lname` char(20) DEFAULT NULL,
  `u_uname` char(20) DEFAULT NULL,
  `u_pass` char(20) DEFAULT NULL,
  `proffesion` int(1) DEFAULT '1',
  `security_question` varchar(50) DEFAULT NULL,
  `security_answer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student1`
--

LOCK TABLES `student1` WRITE;
/*!40000 ALTER TABLE `student1` DISABLE KEYS */;
INSERT INTO `student1` VALUES ('Jatin','Thakkar','Rokr1590','1234',1,'In which city you where born ?','Pune'),('Student1',NULL,'Student1122233024','#WH8111',2,NULL,NULL);
/*!40000 ALTER TABLE `student1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentrgstr`
--

DROP TABLE IF EXISTS `studentrgstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentrgstr` (
  `Rollno` int(11) NOT NULL,
  `StudentName` char(50) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  `batchcode` char(5) DEFAULT NULL,
  `Section` char(20) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `Birth_date` varchar(50) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pass` char(20) DEFAULT NULL,
  `PMobile` varchar(50) DEFAULT NULL,
  `Address` mediumtext,
  KEY `ID` (`ID`),
  CONSTRAINT `studentrgstr_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `batchrgstr` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentrgstr`
--

LOCK TABLES `studentrgstr` WRITE;
/*!40000 ALTER TABLE `studentrgstr` DISABLE KEYS */;
INSERT INTO `studentrgstr` VALUES (233024,'Jatin',2,'B002','C',12,NULL,'Jatin123233024','#RI8231',NULL,NULL),(233025,'Kunal',2,'B002','C',12,NULL,'Kunal123233025','#DJ5649',NULL,NULL),(233024,'Student1',1,'B001','B',12,'Thu Jul 25 15:20:58 IST 2002','Student1122233024','#WH8111','9765986466','Pimple Saudagar ');
/*!40000 ALTER TABLE `studentrgstr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-09 16:48:52
