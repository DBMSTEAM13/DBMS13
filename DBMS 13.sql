-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: DBMS
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
-- Table structure for table `APPOINTMENT`
--

DROP TABLE IF EXISTS `APPOINTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `APPOINTMENT` (
  `PID` int NOT NULL,
  `P_NAME` int NOT NULL,
  `NEXT_APPOINTMENT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `APPOINTMENT`
--

LOCK TABLES `APPOINTMENT` WRITE;
/*!40000 ALTER TABLE `APPOINTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `APPOINTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ASSIGNED_RESOURCE`
--

DROP TABLE IF EXISTS `ASSIGNED_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSIGNED_RESOURCE` (
  `PID` int NOT NULL,
  `SID` int NOT NULL,
  `SNAME` varchar(255) NOT NULL,
  `EID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSIGNED_RESOURCE`
--

LOCK TABLES `ASSIGNED_RESOURCE` WRITE;
/*!40000 ALTER TABLE `ASSIGNED_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSIGNED_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BILLING_ACCOUNTS`
--

DROP TABLE IF EXISTS `BILLING_ACCOUNTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BILLING_ACCOUNTS` (
  `PID` int NOT NULL,
  `P NAME` varchar(255) NOT NULL,
  `TREATMENT_COST` float NOT NULL,
  `LAB_SCAN_COST` float NOT NULL,
  `ADMISSION_COST` float NOT NULL,
  `PHARMACY_COST` float NOT NULL,
  `PAYMENT_METHOD` varchar(255) NOT NULL,
  `PAYEE_NAME` varchar(255) NOT NULL,
  `PAYEE_MOBILE_NO` int NOT NULL,
  `PATIENT_EMAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BILLING_ACCOUNTS`
--

LOCK TABLES `BILLING_ACCOUNTS` WRITE;
/*!40000 ALTER TABLE `BILLING_ACCOUNTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BILLING_ACCOUNTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EQUIPMENT_MAINTAINANCE`
--

DROP TABLE IF EXISTS `EQUIPMENT_MAINTAINANCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EQUIPMENT_MAINTAINANCE` (
  `EID` int NOT NULL,
  `LAST` date NOT NULL,
  `NEXT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EQUIPMENT_MAINTAINANCE`
--

LOCK TABLES `EQUIPMENT_MAINTAINANCE` WRITE;
/*!40000 ALTER TABLE `EQUIPMENT_MAINTAINANCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `EQUIPMENT_MAINTAINANCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EQUPTMENT`
--

DROP TABLE IF EXISTS `EQUPTMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EQUPTMENT` (
  `EID` int NOT NULL,
  `ENAME` varchar(255) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EQUPTMENT`
--

LOCK TABLES `EQUPTMENT` WRITE;
/*!40000 ALTER TABLE `EQUPTMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `EQUPTMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HISTORY_PROBLEM`
--

DROP TABLE IF EXISTS `HISTORY_PROBLEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HISTORY_PROBLEM` (
  `PID` int NOT NULL,
  `CURRENT` text NOT NULL,
  `HISTORY` text NOT NULL,
  `ALLERGY` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HISTORY_PROBLEM`
--

LOCK TABLES `HISTORY_PROBLEM` WRITE;
/*!40000 ALTER TABLE `HISTORY_PROBLEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `HISTORY_PROBLEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LABORATORY`
--

DROP TABLE IF EXISTS `LABORATORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LABORATORY` (
  `PID` int NOT NULL,
  `LAB_SCAN_TEST` text NOT NULL,
  `RESULT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LABORATORY`
--

LOCK TABLES `LABORATORY` WRITE;
/*!40000 ALTER TABLE `LABORATORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `LABORATORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOCATION_ID`
--

DROP TABLE IF EXISTS `LOCATION_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCATION_ID` (
  `READER_ID` int NOT NULL,
  `LOCATION_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCATION_ID`
--

LOCK TABLES `LOCATION_ID` WRITE;
/*!40000 ALTER TABLE `LOCATION_ID` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCATION_ID` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATIENT_LOCATION`
--

DROP TABLE IF EXISTS `PATIENT_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_LOCATION` (
  `RFID` int NOT NULL,
  `PID` int NOT NULL,
  `READER_ID` int NOT NULL,
  `LOCATION_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT_LOCATION`
--

LOCK TABLES `PATIENT_LOCATION` WRITE;
/*!40000 ALTER TABLE `PATIENT_LOCATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `PATIENT_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PATIENT_TABLE`
--

DROP TABLE IF EXISTS `PATIENT_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_TABLE` (
  `RFID` int NOT NULL,
  `PID` int NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `MIDDLE_NAME` varchar(255) NOT NULL,
  `PHONE_NUMBER` int NOT NULL,
  `EMERGENCY_PHONE NUMBER` int NOT NULL,
  `ADDRESS` text NOT NULL,
  `ADMISSION` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PATIENT_TABLE`
--

LOCK TABLES `PATIENT_TABLE` WRITE;
/*!40000 ALTER TABLE `PATIENT_TABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `PATIENT_TABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STAFF`
--

DROP TABLE IF EXISTS `STAFF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAFF` (
  `SID` int NOT NULL,
  `SNAME` varchar(255) NOT NULL,
  `DEPARTMENT` varchar(255) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAFF`
--

LOCK TABLES `STAFF` WRITE;
/*!40000 ALTER TABLE `STAFF` DISABLE KEYS */;
/*!40000 ALTER TABLE `STAFF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TREATMENT`
--

DROP TABLE IF EXISTS `TREATMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TREATMENT` (
  `PID` int NOT NULL,
  `TREATMENT_DONE` text NOT NULL,
  `TREATMENT_COST` float NOT NULL,
  `LAB_SCAN_TEST` text NOT NULL,
  `RESULT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TREATMENT`
--

LOCK TABLES `TREATMENT` WRITE;
/*!40000 ALTER TABLE `TREATMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `TREATMENT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-19 15:09:42
