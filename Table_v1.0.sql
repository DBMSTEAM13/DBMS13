CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `APPID` int NOT NULL,
  `APPOINTMENT_DATE` date NOT NULL,
  `PID` int NOT NULL,
  `SID` int NOT NULL,
  PRIMARY KEY (`APPID`),
  KEY `PID` (`PID`),
  KEY `SID` (`SID`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`SID`) REFERENCES `staff` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assigned_resource`
--

DROP TABLE IF EXISTS `assigned_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assigned_resource` (
  `PID` int NOT NULL,
  `EID` int NOT NULL,
  `ASSIGNED_DATE` date NOT NULL,
  KEY `PID` (`PID`),
  KEY `EID` (`EID`),
  CONSTRAINT `assigned_resource_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `assigned_resource_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `equpiments` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `billing_account`
--

DROP TABLE IF EXISTS `billing_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_account` (
  `TRANSACTION_ID` int NOT NULL AUTO_INCREMENT,
  `PID` int NOT NULL,
  `PAYEE_NAME` varchar(255) NOT NULL,
  `PAYEE_MOBILE_NO` varchar(10) NOT NULL,
  `TOTAL_COST` double NOT NULL,
  `DATE_OF_TRANSACTION` date NOT NULL,
  `PAYMENT_METHOD` varchar(255) NOT NULL,
  PRIMARY KEY (`TRANSACTION_ID`),
  KEY `PID` (`PID`),
  CONSTRAINT `billing_account_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `billing_account_chk_1` CHECK ((`PAYEE_MOBILE_NO` like _utf8mb4'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
  CONSTRAINT `billing_account_chk_2` CHECK ((`TOTAL_COST` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equipment_maintainance`
--

DROP TABLE IF EXISTS `equipment_maintainance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_maintainance` (
  `EID` int NOT NULL,
  `LAST_MAINTAINANCE` date NOT NULL,
  `NEXT_MAINTAINANCE` date NOT NULL,
  KEY `EID` (`EID`),
  CONSTRAINT `equipment_maintainance_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `equpiments` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equpiments`
--

DROP TABLE IF EXISTS `equpiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equpiments` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(255) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history_problem`
--

DROP TABLE IF EXISTS `history_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_problem` (
  `DATE` date NOT NULL,
  `CURRENT` varchar(255) NOT NULL,
  `HISTORY` varchar(255) NOT NULL,
  `ALLERGY` varchar(255) NOT NULL,
  `PID` int NOT NULL,
  PRIMARY KEY (`DATE`),
  KEY `PID` (`PID`),
  CONSTRAINT `history_problem_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratory`
--

DROP TABLE IF EXISTS `laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory` (
  `LID` int NOT NULL,
  `PID` int NOT NULL,
  `LAB_SCAN_TEST` varchar(255) NOT NULL,
  `LAB_SCAN_COST` int NOT NULL,
  `DATE_OF_TEST` int NOT NULL,
  `RESULT` varchar(255) NOT NULL,
  PRIMARY KEY (`LID`),
  KEY `PID` (`PID`),
  CONSTRAINT `laboratory_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `laboratory_chk_1` CHECK ((`LAB_SCAN_COST` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `location_id`
--

DROP TABLE IF EXISTS `location_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_id` (
  `READER_ID` int NOT NULL,
  `LOCATION_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`READER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_info` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `RFID` int NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `MIDDLE_NAME` varchar(15) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `MOBILE_NO` varchar(10) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `E_MOBILE_NO` varchar(10) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  PRIMARY KEY (`PID`),
  CONSTRAINT `patient_info_chk_1` CHECK ((`MOBILE_NO` like _utf8mb4'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
  CONSTRAINT `patient_info_chk_2` CHECK ((`E_MOBILE_NO` like _utf8mb4'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient_location`
--

DROP TABLE IF EXISTS `patient_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_location` (
  `RFID` int NOT NULL,
  `PID` int NOT NULL,
  `READER_ID` int NOT NULL,
  `LOCATION_TIME` date NOT NULL,
  PRIMARY KEY (`LOCATION_TIME`),
  KEY `PID` (`PID`),
  KEY `READER_ID` (`READER_ID`),
  CONSTRAINT `patient_location_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `patient_location_ibfk_2` FOREIGN KEY (`READER_ID`) REFERENCES `location_id` (`READER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `SID` int NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(255) NOT NULL,
  `DEPARMENT` varchar(255) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `staff_assigned_patient`
--

DROP TABLE IF EXISTS `staff_assigned_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_assigned_patient` (
  `SID` int NOT NULL,
  `PID` int NOT NULL,
  PRIMARY KEY (`SID`,`PID`),
  KEY `PID` (`PID`),
  CONSTRAINT `staff_assigned_patient_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `staff` (`SID`),
  CONSTRAINT `staff_assigned_patient_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `TID` int NOT NULL AUTO_INCREMENT,
  `PID` int NOT NULL,
  `TREATMENT_DONE` varchar(255) NOT NULL,
  `TREATMENT_COST` bigint NOT NULL,
  `PHARMACY_COST` int NOT NULL,
  `DATE_OF_TREATMENT` date NOT NULL,
  PRIMARY KEY (`TID`),
  KEY `PID` (`PID`),
  CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `treatment_chk_1` CHECK ((`TREATMENT_COST` > 0)),
  CONSTRAINT `treatment_chk_2` CHECK ((`PHARMACY_COST` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-20 21:34:59
