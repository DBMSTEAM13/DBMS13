CREATE DATABASE  IF NOT EXISTS `dbms2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbms2`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbms2
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
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'2020-09-30',24,30),(2,'2021-08-10',53,66),(3,'2021-06-23',87,70),(4,'2021-01-14',31,33),(5,'2020-11-18',92,36),(6,'2020-06-06',78,12),(7,'2020-11-16',30,60),(8,'2020-04-27',62,60),(9,'2019-10-24',12,92),(10,'2021-03-22',92,72),(11,'2021-08-05',5,91),(12,'2020-10-21',93,69),(13,'2020-01-20',29,53),(14,'2020-05-24',67,46),(15,'2021-06-02',25,68),(16,'2021-03-23',20,25),(17,'2020-12-16',96,67),(18,'2021-07-15',94,8),(19,'2020-01-27',24,66),(20,'2020-07-27',80,19),(21,'2019-10-18',96,18),(22,'2020-10-19',77,89),(23,'2021-09-01',41,18),(24,'2020-11-22',8,55),(25,'2021-03-03',63,5),(26,'2021-08-04',16,99),(27,'2021-01-27',21,31),(28,'2020-07-18',33,92),(29,'2019-11-01',98,45),(30,'2020-04-22',47,29),(31,'2021-05-10',11,45),(32,'2019-12-06',43,81),(33,'2021-09-08',70,77),(34,'2021-07-26',15,63),(35,'2019-12-03',38,78),(36,'2020-08-02',79,59),(37,'2020-07-19',59,73),(38,'2020-12-20',99,20),(39,'2021-09-13',62,34),(40,'2021-09-24',88,80),(41,'2021-08-24',19,66),(42,'2021-03-27',91,33),(43,'2020-07-19',86,43),(44,'2020-06-14',98,12),(45,'2020-03-11',81,8),(46,'2020-07-17',85,18),(47,'2020-05-21',13,47),(48,'2019-10-24',58,31),(49,'2019-11-07',41,24),(50,'2020-02-14',87,51),(51,'2021-01-27',1,58),(52,'2020-03-20',71,64),(53,'2020-06-07',6,39),(54,'2020-06-01',40,58),(55,'2021-06-26',70,83),(56,'2021-01-31',44,44),(57,'2020-08-09',57,89),(58,'2021-08-03',31,49),(59,'2020-04-03',19,2),(60,'2021-09-09',1,17),(61,'2021-02-04',99,29),(62,'2020-09-19',4,100),(63,'2021-04-12',78,2),(64,'2021-05-04',19,98),(65,'2020-03-17',50,94),(66,'2019-10-15',13,94),(67,'2020-05-04',60,69),(68,'2020-11-20',97,11),(69,'2020-09-29',49,26),(70,'2019-10-31',96,72),(71,'2020-08-18',23,69),(72,'2020-09-11',48,14),(73,'2019-11-08',16,82),(74,'2020-07-26',2,76),(75,'2021-09-05',55,94),(76,'2021-08-28',44,58),(77,'2021-05-07',47,42),(78,'2020-08-01',55,88),(79,'2020-06-24',6,1),(80,'2020-02-16',24,86),(81,'2019-10-10',60,54),(82,'2020-06-14',63,6),(83,'2020-01-08',78,90),(84,'2021-07-12',6,75),(85,'2021-08-21',2,37),(86,'2020-02-17',91,47),(87,'2020-01-06',65,48),(88,'2020-09-05',64,68),(89,'2020-12-15',76,37),(90,'2019-12-15',74,91),(91,'2021-07-30',53,9),(92,'2021-08-12',48,72),(93,'2020-08-21',59,18),(94,'2021-02-11',13,60),(95,'2021-02-28',51,64),(96,'2021-02-13',55,84),(97,'2021-05-21',87,8),(98,'2020-08-09',45,61),(99,'2021-02-13',51,43),(100,'2021-04-18',66,43);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `assigned_resource_ibfk_2` FOREIGN KEY (`EID`) REFERENCES `equipments` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assigned_resource`
--

LOCK TABLES `assigned_resource` WRITE;
/*!40000 ALTER TABLE `assigned_resource` DISABLE KEYS */;
INSERT INTO `assigned_resource` VALUES (23,4,'2020-03-19'),(25,3,'2020-06-20'),(29,5,'2020-12-10'),(60,2,'2020-05-06'),(9,2,'2020-12-15'),(83,5,'2020-04-02'),(25,5,'2020-06-16'),(79,4,'2021-06-21'),(48,3,'2020-11-26'),(43,4,'2020-04-15'),(89,5,'2020-02-25'),(14,4,'2019-10-30'),(45,4,'2020-12-02'),(46,5,'2020-02-19'),(5,1,'2020-12-07'),(5,3,'2021-07-13'),(48,4,'2020-06-20'),(10,3,'2021-04-02'),(74,4,'2020-08-15'),(43,5,'2021-03-18'),(8,3,'2020-02-15'),(67,3,'2021-07-11'),(100,3,'2020-06-07'),(32,4,'2020-10-15'),(43,4,'2020-11-04'),(15,5,'2020-02-20'),(71,4,'2021-08-24'),(99,5,'2021-03-28'),(42,5,'2020-11-03'),(7,1,'2019-11-08'),(40,5,'2021-06-21'),(67,5,'2020-05-29'),(78,2,'2020-11-28'),(99,3,'2021-09-24'),(38,3,'2021-03-09'),(8,1,'2021-09-06'),(74,3,'2020-12-12'),(60,1,'2021-04-29'),(31,5,'2021-04-05'),(36,2,'2020-06-14'),(8,5,'2020-07-27'),(58,1,'2020-12-12'),(36,1,'2020-04-09'),(39,2,'2020-11-19'),(31,5,'2021-08-31'),(100,4,'2020-06-13'),(78,4,'2021-05-28'),(53,5,'2020-11-14'),(34,2,'2020-07-19'),(38,2,'2021-06-22'),(13,1,'2021-08-13'),(72,1,'2020-02-08'),(27,5,'2021-09-12'),(37,5,'2020-06-17'),(2,1,'2021-06-06'),(90,2,'2021-05-29'),(37,4,'2020-01-12'),(70,1,'2020-05-02'),(80,1,'2020-03-17'),(36,4,'2020-09-22'),(69,3,'2020-04-24'),(36,3,'2020-03-11'),(52,4,'2021-08-02'),(81,3,'2020-11-11'),(71,2,'2020-03-05'),(80,2,'2019-11-17'),(52,4,'2020-02-05'),(36,5,'2021-07-21'),(77,3,'2020-03-19'),(40,4,'2019-11-22'),(50,5,'2020-05-13'),(2,5,'2021-07-10'),(86,5,'2020-01-09'),(52,1,'2020-07-16'),(21,3,'2020-12-05'),(90,4,'2020-10-17'),(52,4,'2020-03-16'),(81,5,'2020-02-29'),(1,2,'2020-03-19'),(51,3,'2021-09-27'),(6,1,'2020-12-24'),(81,1,'2020-05-26'),(34,2,'2020-02-19'),(45,4,'2019-11-05'),(59,4,'2021-08-31'),(1,2,'2020-01-15'),(36,2,'2021-01-20'),(92,5,'2020-05-06'),(15,4,'2021-03-03'),(73,2,'2020-09-22'),(10,4,'2019-12-04'),(64,1,'2021-05-01'),(77,1,'2021-08-01'),(40,2,'2021-05-31'),(82,5,'2020-09-12'),(43,1,'2020-08-31'),(38,5,'2021-06-20'),(68,5,'2020-10-17'),(58,4,'2021-03-20'),(88,3,'2021-05-20');
/*!40000 ALTER TABLE `assigned_resource` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `billing_account_chk_2` CHECK ((`TOTAL_COST` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_account`
--

LOCK TABLES `billing_account` WRITE;
/*!40000 ALTER TABLE `billing_account` DISABLE KEYS */;
INSERT INTO `billing_account` VALUES (1,78,'Hadassah L. Suarez','9268013522',18100,'2021-05-12','Google Pay'),(2,54,'Denton A. Dickson','9535718509',79200,'2021-03-20','Credit Cards'),(3,77,'Jordan Y. Dickson','9529354544',69400,'2020-03-03','Google Pay'),(4,10,'Brent P. Cotton','9504652167',19400,'2020-11-14','Net Banking'),(5,46,'Amy Q. Mcclain','9003559588',57100,'2021-02-17','Net Banking'),(6,76,'Travis K. Walls','9429075924',54800,'2021-04-14','Paytm'),(7,46,'Kimberly O. Bush','9641414850',46300,'2019-12-24','Net Banking'),(8,59,'Ori J. Mays','9065946007',84900,'2021-07-06','Cash'),(9,28,'Buckminster N. Alvarez','9272870431',27200,'2020-04-25','Google Pay'),(10,68,'Jade Q. Benjamin','9674219776',24600,'2021-08-25','Cash'),(11,41,'Uma H. Gilbert','9011794346',56300,'2020-11-01','Paytm'),(12,63,'Owen C. Cummings','9071479514',22400,'2019-11-11','Cash'),(13,20,'Roth V. Pittman','9040786389',83800,'2020-12-01','Cash'),(14,77,'Kay M. Sherman','9988312557',43800,'2019-12-03','Paytm'),(15,88,'Adam L. Mendez','9558868852',87200,'2021-08-31','Net Banking'),(16,54,'Cullen O. Gallegos','9527597976',72900,'2020-08-03','Cash'),(17,83,'Mohammad K. Keller','9075553694',84900,'2020-07-14','Credit Cards'),(18,20,'Daquan B. Diaz','9743169394',73600,'2021-08-15','Paytm'),(19,24,'Cullen J. Hutchinson','9622736225',16900,'2021-04-09','Net Banking'),(20,74,'Vernon C. Mueller','9323522746',34600,'2020-06-11','Credit Cards'),(21,5,'Denton C. Manning','9498008181',16500,'2019-12-25','Paytm'),(22,60,'Jane B. Witt','9125455463',84700,'2021-06-06','Net Banking'),(23,89,'Kyla P. Justice','9966765132',49200,'2021-04-24','Google Pay'),(24,16,'Quamar H. Randolph','9899592187',26600,'2021-09-19','Net Banking'),(25,90,'Brendan C. Collins','9152478975',15400,'2020-07-23','Google Pay'),(26,36,'Leah T. Mccray','9054102014',92600,'2020-09-28','Credit Cards'),(27,78,'Elvis O. Russell','9571018489',55300,'2020-11-27','Net Banking'),(28,3,'Nora A. Ferguson','9622371308',16500,'2021-01-08','Cash'),(29,41,'Kibo A. Velazquez','9032628505',69900,'2020-09-17','Net Banking'),(30,31,'Jordan N. Rich','9807506723',74700,'2020-07-29','Credit Cards'),(31,85,'Knox B. Santos','9637267209',54800,'2021-06-21','Cash'),(32,67,'Pamela D. Snyder','9659764727',17800,'2020-01-05','Cash'),(33,52,'Madeson O. Ford','9451659342',66900,'2019-11-22','Cash'),(34,70,'Tatyana Q. Atkinson','9944702122',56100,'2019-10-12','Credit Cards'),(35,30,'Jelani W. Montoya','9812781200',45300,'2021-09-05','Google Pay'),(36,70,'Burke Z. Matthews','9853931720',58300,'2020-12-20','Google Pay'),(37,19,'Pandora U. Garner','9904242575',17700,'2021-04-15','Credit Cards'),(38,86,'Halee A. Tran','9827478164',72600,'2020-06-09','Credit Cards'),(39,58,'Driscoll C. Turner','9873927804',59500,'2021-07-29','Credit Cards'),(40,50,'Lael J. Silva','9936755236',27800,'2020-02-20','Google Pay'),(41,40,'Pearl A. Dale','9659082093',55600,'2021-05-23','Google Pay'),(42,84,'Kelly N. Nelson','9381632309',28900,'2021-06-16','Net Banking'),(43,77,'Phyllis P. Burt','9097400617',83800,'2020-11-11','Net Banking'),(44,40,'Kalia W. White','9115820057',22800,'2021-03-19','Google Pay'),(45,8,'Blaze K. Sparks','9103899386',84200,'2020-02-05','Cash'),(46,94,'Mariam G. Allison','9958034556',28300,'2020-01-07','Net Banking'),(47,19,'Emerson Y. Wolf','9364947038',28500,'2021-09-13','Net Banking'),(48,91,'Ross N. Morin','9937040455',74700,'2021-01-25','Net Banking'),(49,99,'Cassady N. Browning','9109969692',78900,'2020-12-15','Google Pay'),(50,7,'Maile J. Whitney','9839466989',32800,'2021-04-14','Net Banking'),(51,62,'Alyssa G. Alvarez','9270790588',19400,'2021-08-01','Credit Cards'),(52,39,'Eden G. Burks','9017558466',72800,'2021-06-29','Paytm'),(53,23,'Bo C. Copeland','9230568251',15500,'2020-12-16','Cash'),(54,78,'Thaddeus H. Lancaster','9438058983',79200,'2020-07-08','Paytm'),(55,21,'Jamal U. Bailey','9284734516',26400,'2020-11-10','Net Banking'),(56,35,'Kyle Z. Pugh','9307704376',78800,'2020-05-01','Paytm'),(57,61,'Arthur J. Jensen','9236387504',44100,'2021-04-29','Paytm'),(58,78,'Davis V. Shepherd','9785780217',55400,'2020-07-24','Credit Cards'),(59,88,'Lael U. Mckee','9905293944',11700,'2020-10-24','Credit Cards'),(60,23,'Fletcher F. Owens','9805788039',34700,'2020-01-24','Credit Cards'),(61,36,'Signe S. Jimenez','9722736833',12500,'2019-10-15','Credit Cards'),(62,63,'Connor E. James','9138837952',37200,'2020-08-09','Net Banking'),(63,85,'Gage K. Guzman','9153066380',69400,'2020-05-19','Net Banking'),(64,35,'Jermaine D. Jensen','9776263760',96300,'2020-08-03','Credit Cards'),(65,45,'Tyrone W. Campbell','9521723641',44800,'2020-12-24','Google Pay'),(66,47,'Giacomo D. Turner','9401470088',89500,'2020-03-28','Net Banking'),(67,69,'Felix R. Callahan','9068748520',79900,'2021-09-08','Paytm'),(68,94,'Hiram E. Roth','9315527652',57500,'2020-06-06','Google Pay'),(69,14,'Ima Y. Wallace','9188368102',36700,'2020-10-19','Cash'),(70,36,'Keefe D. Dillard','9492965427',61500,'2020-05-25','Google Pay'),(71,51,'Amber X. Woodard','9519490196',49900,'2020-08-18','Cash'),(72,83,'Lavinia G. Salinas','9905472513',16200,'2021-09-11','Paytm'),(73,50,'Fiona Q. Gray','9065547494',29200,'2020-07-15','Paytm'),(74,60,'Uta B. Conner','9642845413',23800,'2021-04-28','Net Banking'),(75,30,'Nicholas W. Tyler','9466168648',58900,'2021-04-24','Paytm'),(76,27,'Quin B. Walters','9484715217',45100,'2020-09-10','Net Banking'),(77,92,'Regina A. Holder','9754933115',26900,'2020-03-22','Google Pay'),(78,91,'Patrick X. Rosales','9544787119',93400,'2020-04-13','Paytm'),(79,27,'Amos R. Solis','9480613331',63600,'2020-12-16','Credit Cards'),(80,30,'Ivory G. Hernandez','9667999807',92700,'2020-05-07','Google Pay'),(81,9,'Edward F. Calderon','9253480754',72100,'2020-05-30','Cash'),(82,1,'Louis F. Copeland','9344266242',36700,'2021-02-20','Google Pay'),(83,29,'Vaughan V. Miles','9436017333',46800,'2020-05-12','Net Banking'),(84,99,'Kyle Q. Gill','9743002575',35600,'2019-10-03','Google Pay'),(85,43,'Zeus V. Gallagher','9935643589',86500,'2021-01-16','Cash'),(86,98,'Brittany S. Sherman','9887263726',97300,'2021-06-03','Cash'),(87,27,'Chiquita M. Russell','9364481635',44700,'2020-10-31','Google Pay'),(88,55,'Cyrus A. Wallace','9236451794',11600,'2020-11-25','Net Banking'),(89,62,'Preston Q. Martinez','9833276003',15600,'2021-09-16','Google Pay'),(90,37,'Macey V. Mooney','9450956147',73500,'2020-12-21','Google Pay'),(91,49,'Channing T. Humphrey','9396019707',96900,'2021-04-04','Paytm'),(92,11,'Yetta O. Fischer','9507834286',13500,'2021-02-09','Paytm'),(93,42,'Laith L. Waters','9508681263',18700,'2020-03-28','Net Banking'),(94,64,'Len D. Glenn','9030861356',38400,'2021-03-11','Net Banking'),(95,17,'Avram K. Hull','9562096752',26500,'2020-10-09','Cash'),(96,86,'Reece S. Griffin','9770074386',87300,'2020-12-09','Net Banking'),(97,87,'Idola G. Rivas','9088896401',87500,'2019-10-12','Net Banking'),(98,23,'Rhonda W. Daniel','9395696781',46300,'2021-06-21','Google Pay'),(99,10,'Hiroko Z. Best','9624452279',85800,'2019-12-09','Google Pay'),(100,77,'Brandon F. Hendricks','9115090803',12300,'2021-02-02','Google Pay');
/*!40000 ALTER TABLE `billing_account` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `equipment_maintainance_ibfk_1` FOREIGN KEY (`EID`) REFERENCES `equipments` (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_maintainance`
--

LOCK TABLES `equipment_maintainance` WRITE;
/*!40000 ALTER TABLE `equipment_maintainance` DISABLE KEYS */;
INSERT INTO `equipment_maintainance` VALUES (1,'2022-12-15','2028-09-24'),(2,'2023-02-02','2028-08-13'),(3,'2020-02-28','2025-03-23'),(4,'2021-06-28','2028-05-25'),(5,'2021-02-26','2025-05-01');
/*!40000 ALTER TABLE `equipment_maintainance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipments` (
  `EID` int NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(255) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,'Ambulatory Blood Pressure Monitor'),(2,'EverFlow Oxygen Concentrator'),(3,'Electric Air Compression Leg Massager'),(4,'Portable Suction Machine'),(5,'ICU Bed'),(6,'Infusion Pump'),(7,'Ambulatory Blood Pressure Monitor - 2'),(8,'Ambulatory Blood Pressure Monitor - 3'),(9,'Ambulatory Blood Pressure Monitor - 4'),(10,'Ambulatory Blood Pressure Monitor - 5'),(11,'Ambulatory Blood Pressure Monitor - 6'),(12,'Ambulatory Blood Pressure Monitor - 7'),(13,'Ambulatory Blood Pressure Monitor - 8'),(14,'Ambulatory Blood Pressure Monitor - 9'),(15,'Ambulatory Blood Pressure Monitor - 10'),(16,'EverFlow Oxygen Concentrator - 2'),(17,'EverFlow Oxygen Concentrator - 3'),(18,'EverFlow Oxygen Concentrator - 4'),(19,'EverFlow Oxygen Concentrator - 5'),(20,'EverFlow Oxygen Concentrator - 6'),(21,'EverFlow Oxygen Concentrator - 7'),(22,'EverFlow Oxygen Concentrator - 8'),(23,'EverFlow Oxygen Concentrator - 9'),(24,'EverFlow Oxygen Concentrator - 10'),(25,' Electric Air Compression Leg Massager - 2'),(26,' Electric Air Compression Leg Massager - 3'),(27,' Electric Air Compression Leg Massager - 4'),(28,' Electric Air Compression Leg Massager - 5'),(29,' Electric Air Compression Leg Massager - 6'),(30,' Electric Air Compression Leg Massager - 7'),(31,' Electric Air Compression Leg Massager - 8'),(32,' Electric Air Compression Leg Massager - 9'),(33,' Electric Air Compression Leg Massager - 10'),(34,'Portable Suction Machine - 2'),(35,'Portable Suction Machine - 3'),(36,'Portable Suction Machine - 4'),(37,'Portable Suction Machine - 5'),(38,'Portable Suction Machine - 6'),(39,'Portable Suction Machine - 7'),(40,'Portable Suction Machine - 8'),(41,'Portable Suction Machine - 9'),(42,'Portable Suction Machine - 10'),(43,'ICU Bed - 2'),(44,'ICU Bed - 3'),(45,'ICU Bed - 4'),(46,'ICU Bed - 5'),(47,'ICU Bed - 6'),(48,'ICU Bed - 7'),(49,'ICU Bed - 8'),(50,'ICU Bed - 9'),(51,'ICU Bed - 10'),(52,'Infusion Pump - 2'),(53,'Infusion Pump - 3'),(54,'Infusion Pump - 4'),(55,'Infusion Pump - 5'),(56,'Infusion Pump - 6'),(57,'Infusion Pump - 7'),(58,'Infusion Pump - 8'),(59,'Infusion Pump - 9'),(60,'Infusion Pump - 10'),(61,'Infusion Pump - 11'),(62,'Infusion Pump - 12'),(63,'Infusion Pump - 13'),(64,'Infusion Pump - 14'),(65,'Infusion Pump - 15');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `history_problem`
--

LOCK TABLES `history_problem` WRITE;
/*!40000 ALTER TABLE `history_problem` DISABLE KEYS */;
INSERT INTO `history_problem` VALUES ('2019-10-13','Chicken pox','Pneumonia','Pollen Allergy',57),('2019-10-23','Pneumonia','SwineFlu','Latex Allergy',49),('2019-10-28','Chicken pox','Dengue','Pollen Allergy',27),('2019-11-19','Dengue','Typhoid','Pollen Allergy',71),('2019-12-14','Dengue','Chicken pox','Insect Allergy',77),('2019-12-17','Typhoid','SwineFlu','Latex Allergy',78),('2019-12-26','Typhoid','Chicken pox','Mold Allergy',6),('2020-01-10','Viral Flu','Pneumonia','Pollen Allergy',17),('2020-01-19','Chicken pox','Pneumonia','Insect Allergy',86),('2020-02-16','Malaria','Typhoid','Drug Allergy',75),('2020-03-22','Malaria','Viral Flu','Food Allergy',80),('2020-03-24','Jaundice','Jaundice','Insect Allergy',53),('2020-03-30','SwineFlu','Typhoid','Drug Allergy',14),('2020-04-13','Dengue','Malaria','Latex Allergy',85),('2020-05-05','Pneumonia','Jaundice','Pollen Allergy',72),('2020-05-06','Dengue','Malaria','Drug Allergy',1),('2020-05-13','Malaria','Typhoid','Drug Allergy',4),('2020-05-20','SwineFlu','Pneumonia','Mold Allergy',24),('2020-05-23','Chicken pox','Jaundice','Mold Allergy',96),('2020-06-06','SwineFlu','SwineFlu','Food Allergy',97),('2020-06-08','Jaundice','Typhoid','Insect Allergy',46),('2020-06-22','Typhoid','SwineFlu','Pet Allergy',64),('2020-06-27','Pneumonia','Pneumonia','Food Allergy',20),('2020-07-04','Chicken pox','Dengue','Latex Allergy',69),('2020-07-07','SwineFlu','Jaundice','Pet Allergy',78),('2020-07-08','Viral Flu','Jaundice','Latex Allergy',89),('2020-07-10','Malaria','Dengue','Pet Allergy',22),('2020-07-12','Chicken pox','Malaria','Food Allergy',71),('2020-07-19','SwineFlu','Chicken pox','Food Allergy',93),('2020-07-21','Viral Flu','Chicken pox','Food Allergy',58),('2020-07-25','Malaria','Dengue','Latex Allergy',42),('2020-08-06','Jaundice','Malaria','Mold Allergy',40),('2020-08-15','Pneumonia','Pneumonia','Latex Allergy',16),('2020-08-17','Chicken pox','Jaundice','Pollen Allergy',74),('2020-08-27','Dengue','Dengue','Insect Allergy',28),('2020-08-30','Dengue','Pneumonia','Latex Allergy',96),('2020-09-18','Typhoid','Dengue','Mold Allergy',60),('2020-09-20','Jaundice','Malaria','Pollen Allergy',72),('2020-09-26','Typhoid','Malaria','Food Allergy',85),('2020-10-12','Chicken pox','Malaria','Food Allergy',89),('2020-10-18','Jaundice','Chicken pox','Food Allergy',54),('2020-11-02','Typhoid','Malaria','Latex Allergy',90),('2020-11-10','Jaundice','Pneumonia','Drug Allergy',57),('2020-11-23','Pneumonia','SwineFlu','Latex Allergy',28),('2020-11-27','Typhoid','SwineFlu','Pet Allergy',45),('2020-12-15','Viral Flu','Malaria','Pollen Allergy',95),('2020-12-16','Malaria','Viral Flu','Drug Allergy',72),('2020-12-19','Dengue','Viral Flu','Pollen Allergy',12),('2020-12-24','Jaundice','Viral Flu','Pet Allergy',25),('2020-12-31','Malaria','Dengue','Drug Allergy',97),('2021-01-01','Malaria','SwineFlu','Drug Allergy',56),('2021-01-04','Chicken pox','Malaria','Pet Allergy',66),('2021-01-05','Pneumonia','SwineFlu','Drug Allergy',61),('2021-02-09','Chicken pox','Pneumonia','Insect Allergy',91),('2021-02-17','Chicken pox','Chicken pox','Mold Allergy',11),('2021-03-11','Dengue','Malaria','Pollen Allergy',54),('2021-03-18','Viral Flu','Typhoid','Mold Allergy',94),('2021-03-25','SwineFlu','Chicken pox','Drug Allergy',84),('2021-03-31','Typhoid','Dengue','Latex Allergy',20),('2021-04-15','Pneumonia','Jaundice','Food Allergy',91),('2021-04-19','Typhoid','SwineFlu','Pet Allergy',88),('2021-04-23','Viral Flu','Dengue','Pollen Allergy',14),('2021-04-28','Typhoid','Viral Flu','Insect Allergy',73),('2021-05-03','Typhoid','Malaria','Pollen Allergy',64),('2021-05-08','Typhoid','SwineFlu','Mold Allergy',70),('2021-05-14','Malaria','Viral Flu','Food Allergy',11),('2021-05-23','Malaria','Dengue','Drug Allergy',81),('2021-05-28','Dengue','Malaria','Latex Allergy',40),('2021-06-01','SwineFlu','Malaria','Mold Allergy',86),('2021-06-04','Typhoid','Dengue','Insect Allergy',95),('2021-06-05','Dengue','Dengue','Food Allergy',70),('2021-06-09','Jaundice','Typhoid','Latex Allergy',53),('2021-06-12','Typhoid','Dengue','Pollen Allergy',72),('2021-06-13','Jaundice','Pneumonia','Food Allergy',94),('2021-06-14','Malaria','Jaundice','Mold Allergy',92),('2021-07-06','Viral Flu','Typhoid','Mold Allergy',4),('2021-07-10','Jaundice','SwineFlu','Insect Allergy',37),('2021-07-16','Jaundice','Pneumonia','Mold Allergy',94),('2021-07-24','Malaria','Pneumonia','Latex Allergy',93),('2021-07-29','Jaundice','Jaundice','Food Allergy',88),('2021-08-15','Dengue','Viral Flu','Latex Allergy',61),('2021-08-31','Chicken pox','Jaundice','Pet Allergy',40),('2021-09-02','Viral Flu','Dengue','Pet Allergy',84),('2021-09-09','Dengue','Malaria','Mold Allergy',7),('2021-09-20','Chicken pox','Viral Flu','Mold Allergy',59);
/*!40000 ALTER TABLE `history_problem` ENABLE KEYS */;
UNLOCK TABLES;

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
  `DATE_OF_TEST` date NOT NULL,
  `RESULT` varchar(255) NOT NULL,
  PRIMARY KEY (`LID`),
  KEY `PID` (`PID`),
  CONSTRAINT `laboratory_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory`
--

LOCK TABLES `laboratory` WRITE;
/*!40000 ALTER TABLE `laboratory` DISABLE KEYS */;
INSERT INTO `laboratory` VALUES (1,58,'Complete Blood Count','2019-10-23','https://www.hospital_lab_results/results462.pdf'),(2,49,'Comprehensive Metabolic Panel','2021-01-05','https://www.hospital_lab_results/results856.pdf'),(3,46,'Basic Metabolic Panel','2019-12-16','https://www.hospital_lab_results/results251.pdf'),(4,87,'Cultures','2019-10-20','https://www.hospital_lab_results/results368.pdf'),(5,74,'Prothrombin Time','2021-02-28','https://www.hospital_lab_results/results256.pdf'),(6,3,'Cultures','2019-12-13','https://www.hospital_lab_results/results559.pdf'),(7,20,'Urinalysis','2020-03-18','https://www.hospital_lab_results/results830.pdf'),(8,79,'Hemoglobin A1C','2020-05-01','https://www.hospital_lab_results/results114.pdf'),(9,16,'Lipid Panel','2020-12-29','https://www.hospital_lab_results/results519.pdf'),(10,94,'Cultures','2019-12-31','https://www.hospital_lab_results/results654.pdf'),(11,42,'Cultures','2021-04-05','https://www.hospital_lab_results/results224.pdf'),(12,20,'Complete Blood Count','2020-07-20','https://www.hospital_lab_results/results118.pdf'),(13,94,'Basic Metabolic Panel','2020-03-23','https://www.hospital_lab_results/results410.pdf'),(14,16,'Cultures','2020-06-28','https://www.hospital_lab_results/results517.pdf'),(15,36,'Cultures','2021-06-05','https://www.hospital_lab_results/results880.pdf'),(16,34,'Complete Blood Count','2020-08-07','https://www.hospital_lab_results/results997.pdf'),(17,93,'Basic Metabolic Panel','2019-10-08','https://www.hospital_lab_results/results776.pdf'),(18,17,'Lipid Panel','2019-11-26','https://www.hospital_lab_results/results148.pdf'),(19,74,'Urinalysis','2020-08-26','https://www.hospital_lab_results/results502.pdf'),(20,4,'Hemoglobin A1C','2019-10-23','https://www.hospital_lab_results/results941.pdf'),(21,69,'Complete Blood Count','2021-08-19','https://www.hospital_lab_results/results829.pdf'),(22,26,'Complete Blood Count','2021-05-20','https://www.hospital_lab_results/results149.pdf'),(23,50,'Comprehensive Metabolic Panel','2020-09-28','https://www.hospital_lab_results/results894.pdf'),(24,77,'Comprehensive Metabolic Panel','2021-02-11','https://www.hospital_lab_results/results776.pdf'),(25,36,'Lipid Panel','2021-03-27','https://www.hospital_lab_results/results926.pdf'),(26,86,'Hemoglobin A1C','2021-04-24','https://www.hospital_lab_results/results145.pdf'),(27,94,'Cultures','2020-06-26','https://www.hospital_lab_results/results250.pdf'),(28,85,'Basic Metabolic Panel','2020-06-05','https://www.hospital_lab_results/results786.pdf'),(29,54,'Cultures','2021-09-14','https://www.hospital_lab_results/results935.pdf'),(30,83,'Complete Blood Count','2020-02-29','https://www.hospital_lab_results/results115.pdf'),(31,76,'Hemoglobin A1C','2021-06-23','https://www.hospital_lab_results/results374.pdf'),(32,71,'Prothrombin Time','2020-11-14','https://www.hospital_lab_results/results608.pdf'),(33,47,'Urinalysis','2019-09-26','https://www.hospital_lab_results/results103.pdf'),(34,9,'Cultures','2020-04-29','https://www.hospital_lab_results/results783.pdf'),(35,74,'Urinalysis','2021-06-10','https://www.hospital_lab_results/results369.pdf'),(36,19,'Hemoglobin A1C','2021-04-21','https://www.hospital_lab_results/results564.pdf'),(37,18,'Prothrombin Time','2020-05-02','https://www.hospital_lab_results/results407.pdf'),(38,49,'','2020-03-18','https://www.hospital_lab_results/results774.pdf'),(39,41,'','2020-01-16','https://www.hospital_lab_results/results711.pdf'),(40,79,'Cultures','2020-11-04','https://www.hospital_lab_results/results664.pdf'),(41,29,'Urinalysis','2020-03-14','https://www.hospital_lab_results/results735.pdf'),(42,33,'','2020-03-09','https://www.hospital_lab_results/results473.pdf'),(43,12,'Basic Metabolic Panel','2020-07-17','https://www.hospital_lab_results/results618.pdf'),(44,26,'Basic Metabolic Panel','2020-03-24','https://www.hospital_lab_results/results872.pdf'),(45,54,'Urinalysis','2019-12-18','https://www.hospital_lab_results/results408.pdf'),(46,3,'Cultures','2020-10-08','https://www.hospital_lab_results/results412.pdf'),(47,88,'Lipid Panel','2020-09-15','https://www.hospital_lab_results/results383.pdf'),(48,52,'Urinalysis','2020-06-13','https://www.hospital_lab_results/results749.pdf'),(49,95,'Comprehensive Metabolic Panel','2019-10-01','https://www.hospital_lab_results/results278.pdf'),(50,14,'','2020-03-24','https://www.hospital_lab_results/results407.pdf'),(51,13,'Complete Blood Count','2021-09-09','https://www.hospital_lab_results/results662.pdf'),(52,65,'Basic Metabolic Panel','2020-02-18','https://www.hospital_lab_results/results356.pdf'),(53,58,'Comprehensive Metabolic Panel','2020-03-24','https://www.hospital_lab_results/results237.pdf'),(54,5,'Comprehensive Metabolic Panel','2020-11-12','https://www.hospital_lab_results/results756.pdf'),(55,46,'Complete Blood Count','2019-10-01','https://www.hospital_lab_results/results435.pdf'),(56,91,'Lipid Panel','2020-05-20','https://www.hospital_lab_results/results994.pdf'),(57,48,'Prothrombin Time','2020-09-01','https://www.hospital_lab_results/results472.pdf'),(58,75,'Comprehensive Metabolic Panel','2020-10-14','https://www.hospital_lab_results/results330.pdf'),(59,19,'Cultures','2020-11-14','https://www.hospital_lab_results/results301.pdf'),(60,3,'Basic Metabolic Panel','2020-03-23','https://www.hospital_lab_results/results321.pdf'),(61,58,'Comprehensive Metabolic Panel','2020-02-17','https://www.hospital_lab_results/results661.pdf'),(62,47,'Basic Metabolic Panel','2020-10-23','https://www.hospital_lab_results/results635.pdf'),(63,41,'','2020-12-16','https://www.hospital_lab_results/results309.pdf'),(64,49,'Cultures','2021-09-18','https://www.hospital_lab_results/results259.pdf'),(65,54,'Lipid Panel','2020-07-04','https://www.hospital_lab_results/results441.pdf'),(66,33,'Urinalysis','2021-06-23','https://www.hospital_lab_results/results407.pdf'),(67,23,'Cultures','2021-08-30','https://www.hospital_lab_results/results491.pdf'),(68,23,'Complete Blood Count','2020-07-07','https://www.hospital_lab_results/results173.pdf'),(69,79,'Cultures','2019-10-12','https://www.hospital_lab_results/results488.pdf'),(70,62,'Basic Metabolic Panel','2021-06-17','https://www.hospital_lab_results/results726.pdf'),(71,17,'Basic Metabolic Panel','2021-06-01','https://www.hospital_lab_results/results402.pdf'),(72,60,'Lipid Panel','2021-04-20','https://www.hospital_lab_results/results726.pdf'),(73,9,'Lipid Panel','2021-09-15','https://www.hospital_lab_results/results982.pdf'),(74,73,'Complete Blood Count','2020-05-05','https://www.hospital_lab_results/results141.pdf'),(75,56,'Cultures','2020-09-22','https://www.hospital_lab_results/results454.pdf'),(76,23,'Comprehensive Metabolic Panel','2020-03-31','https://www.hospital_lab_results/results928.pdf'),(77,63,'Comprehensive Metabolic Panel','2020-06-30','https://www.hospital_lab_results/results151.pdf'),(78,15,'Comprehensive Metabolic Panel','2021-08-23','https://www.hospital_lab_results/results949.pdf'),(79,31,'Hemoglobin A1C','2021-03-28','https://www.hospital_lab_results/results380.pdf'),(80,65,'Lipid Panel','2020-10-11','https://www.hospital_lab_results/results835.pdf'),(81,65,'Lipid Panel','2020-08-31','https://www.hospital_lab_results/results655.pdf'),(82,12,'Lipid Panel','2020-02-25','https://www.hospital_lab_results/results332.pdf'),(83,92,'Cultures','2020-03-20','https://www.hospital_lab_results/results888.pdf'),(84,21,'Urinalysis','2020-11-27','https://www.hospital_lab_results/results153.pdf'),(85,70,'Prothrombin Time','2021-08-01','https://www.hospital_lab_results/results918.pdf'),(86,83,'Comprehensive Metabolic Panel','2021-02-20','https://www.hospital_lab_results/results253.pdf'),(87,81,'Comprehensive Metabolic Panel','2020-10-29','https://www.hospital_lab_results/results347.pdf'),(88,16,'Cultures','2021-02-19','https://www.hospital_lab_results/results108.pdf'),(89,21,'Basic Metabolic Panel','2020-06-16','https://www.hospital_lab_results/results370.pdf'),(90,5,'Urinalysis','2020-05-22','https://www.hospital_lab_results/results752.pdf'),(91,98,'Comprehensive Metabolic Panel','2020-03-05','https://www.hospital_lab_results/results188.pdf'),(92,63,'Basic Metabolic Panel','2020-11-04','https://www.hospital_lab_results/results490.pdf'),(93,22,'Cultures','2020-07-18','https://www.hospital_lab_results/results755.pdf'),(94,37,'Lipid Panel','2020-06-01','https://www.hospital_lab_results/results195.pdf'),(95,37,'Hemoglobin A1C','2021-09-23','https://www.hospital_lab_results/results147.pdf'),(96,47,'Lipid Panel','2021-04-13','https://www.hospital_lab_results/results205.pdf'),(97,98,'Lipid Panel','2020-12-09','https://www.hospital_lab_results/results958.pdf'),(98,60,'Basic Metabolic Panel','2021-05-02','https://www.hospital_lab_results/results272.pdf'),(99,60,'Comprehensive Metabolic Panel','2021-04-11','https://www.hospital_lab_results/results544.pdf'),(100,31,'','2019-10-16','https://www.hospital_lab_results/results309.pdf');
/*!40000 ALTER TABLE `laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_id`
--

DROP TABLE IF EXISTS `location_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_id` (
  `READER_ID` varchar(12) NOT NULL,
  `LOCATION_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`READER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_id`
--

LOCK TABLES `location_id` WRITE;
/*!40000 ALTER TABLE `location_id` DISABLE KEYS */;
INSERT INTO `location_id` VALUES ('00GYEQISHZ70','Room 102'),('01YNKNFQAY31','Room 110'),('02YXNWBYRA58','Room 204'),('04HRBZQTTD83','Room 103'),('11MVJBWOOJ96','ICU Room 3'),('11RPZHFCHE97','Room 104'),('12WXGQHRNG68','Room 108'),('15PHXPETAH76','ICU Room 2'),('18EUBJBRLZ84','Room 210'),('19ZXNOMFZH33','First Floor Hall'),('21OYLWSSCC38','WashRoom 2'),('24BSAAYKPE32','Lab 1'),('27CGYPNMSD69','ICU Room 4'),('29ZPZHERQS71','Room 101'),('34KYZZQTMK95','Room 201'),('34ZLZQKQEV88','Room 207'),('38GAWIRHTZ38','ICU Room 5'),('41DBGMFVGD57','Room 203'),('43CRUIHXSE46','Room 205'),('43KUGNVGWO19','Room 100'),('52CEMTAEQA76','Room 202'),('52KCSWLOFI15','Room 109'),('55TGFGUKCA49','Lab 2'),('57RUMTQVPQ35','Room 208'),('64DBKSIYCH49','Operation Theatre 2'),('66UBTFEKGU22','Room 107'),('73KEZLXIWG22','Room 105'),('73VLAGJEOA06','Room 206'),('75FQGALQMW73','Operation Theatre 1'),('78CYCLTAPX66','WashRoom 1'),('88RHDOCGCK48','Ground Floor Hall'),('89ZCIEBUDL32','Room 209'),('91EVJPSDGY83','ICU Room 1'),('92TPEJXEWK80','Room 106');
/*!40000 ALTER TABLE `location_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_info` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `RFID` varchar(12) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `MIDDLE_NAME` varchar(15) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `E_MOBILE_NO` varchar(10) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `MOBILE_NO` bigint DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_info`
--

LOCK TABLES `patient_info` WRITE;
/*!40000 ALTER TABLE `patient_info` DISABLE KEYS */;
INSERT INTO `patient_info` VALUES (1,'CW15020453IX','Anastasia','G.','Kumar','montes@aauctornon.edu','9595216403','8453 Nec St.',9817536935),(2,'XP59955745BZ','Dennis','Q.','Patel','velit.Sed@lacus.co.uk','9301341758','P.O. Box 714, 8860 In Rd.',9817536936),(3,'PH96195336IV','Talon','T.','Patel','adipiscing.non@Etiamlaoreetlibero.edu','9915184253','P.O. Box 791, 4169 Nunc St.',9817536937),(4,'CB46440802KK','Ross','O.','Singh','facilisis@luctusipsumleo.net','9464068610','452-3950 Netus St.',9817536938),(5,'ZL27685206OO','Leo','Z.','Raj','nonummy.Fusce.fermentum@pharetraQuisqueac.edu','9707329025','270-6618 Elementum St.',9817536939),(6,'EZ59022685TR','Sebastian','Z.','Raj','arcu.Aliquam.ultrices@velarcueu.edu','9760523400','P.O. Box 775, 171 Molestie St.',9817536940),(7,'OR85892044RV','Herman','C.','Ismail','lorem@aliquet.co.uk','9501859025','258-2737 Primis Ave',9817536941),(8,'OO62639997OF','Beck','P.','Raj','quis.diam@tincidunt.org','9603291995','4871 Lorem Rd.',9817536942),(9,'QC20254873HM','Tamekah','R.','Raj','lacus@Morbi.com','9670732954','P.O. Box 868, 8024 Non, St.',9817536943),(10,'DA89332403KJ','Gemma','Q.','Raj','ipsum.primis.in@etultrices.edu','9372774464','P.O. Box 186, 7168 Ullamcorper. Road',9817536944),(11,'XS86678566VG','Reagan','R.','Raj','sit@Aeneangravidanunc.com','9304562035','Ap #505-5207 Vel Av.',9817536945),(12,'SM54741156ZD','Ingrid','N.','Ismail','Curabitur.sed.tortor@aliquam.co.uk','9055674754','199-614 Neque Road',9817536946),(13,'DV28009793JF','Anastasia','J.','Kumar','magna@accumsan.edu','9914220158','4855 Mi Rd.',9817536947),(14,'MX48847748YE','Griffin','V.','Patel','tempor.est@scelerisqueneque.ca','9767943530','P.O. Box 477, 2205 Erat, Av.',9817536948),(15,'JO01987981GN','Rosalyn','W.','Raj','libero.est@condimentum.co.uk','9233736029','Ap #976-6527 Nonummy Ave',9817536949),(16,'XK74484211TO','McKenzie','Z.','Khan','elit.Aliquam.auctor@habitantmorbitristique.ca','9877361079','Ap #487-7835 Gravida Road',9817536950),(17,'NL35748252UB','Yvette','X.','Kumar','Pellentesque.ut.ipsum@erosnec.com','9273101361','P.O. Box 899, 3664 Nunc St.',9817536951),(18,'KE22189905NP','Valentine','F.','Kumar','aliquam.iaculis@Sedidrisus.net','9412219443','5134 Nisl Avenue',9817536952),(19,'VX67371453ZO','Summer','Y.','Singh','parturient@rhoncus.net','9190356344','Ap #144-9386 Dolor Rd.',9817536953),(20,'HH70606716AL','Buckminster','X.','Kumar','interdum@miDuisrisus.com','9972825081','243-9953 Sed, Av.',9817536954),(21,'IX34539911KC','Aaron','H.','Patel','luctus@tellusAeneanegestas.org','9756512806','Ap #858-2174 Dapibus Ave',9817536955),(22,'GO06046519MU','Nolan','C.','Ismail','purus.Duis.elementum@orci.org','9651707013','7110 Eget Ave',9817536956),(23,'OA05175079RS','Jocelyn','S.','Khan','nec.imperdiet.nec@sodaleseliterat.co.uk','9873408676','P.O. Box 306, 8198 Sagittis Ave',9817536957),(24,'NW34508094GQ','Hall','V.','Jain','lorem.Donec.elementum@atlibero.net','9187800084','P.O. Box 596, 1316 Vivamus Street',9817536958),(25,'PX01190462JO','Rhiannon','P.','Ismail','Integer@neque.net','9137097114','7984 Turpis Rd.',9817536959),(26,'TE00937611SC','Fredericka','Z.','Khan','magnis.dis.parturient@sociis.co.uk','9335110608','224-4888 Libero Rd.',9817536960),(27,'SB10202043TE','Hermione','Y.','Ismail','et@necluctus.edu','9611391266','P.O. Box 469, 710 Urna. Ave',9817536961),(28,'SP16405529UV','Yetta','Z.','Jain','mauris@molestieorci.ca','9806853424','P.O. Box 513, 4355 Ipsum. Road',9817536962),(29,'OI56677136VS','Tatiana','V.','Khan','cursus.et@interdum.net','9129037841','704-6519 Sem Av.',9817536963),(30,'KV09546158MY','Karina','S.','Ismail','montes.nascetur.ridiculus@ornareFuscemollis.edu','9285824351','Ap #797-3013 Odio. St.',9817536964),(31,'UA51677103NX','Georgia','A.','Jain','est.arcu@Nullaeuneque.co.uk','9498733735','616-2057 Libero. Road',9823436935),(32,'IC57821014KE','Drew','Q.','Patel','convallis.dolor@interdum.ca','9448202460','Ap #752-8862 Eget St.',9854636935),(33,'WM64173805JS','Kellie','N.','Singh','eget@luctus.ca','9935743777','862-7519 Amet Road',9854676935),(34,'JF55829848JH','Abigail','R.','Ismail','odio.sagittis@sed.co.uk','9714107067','1853 Iaculis, Avenue',9812356935),(35,'QV79247464QN','Colorado','K.','Patel','rhoncus@ligula.ca','9834646756','Ap #745-5955 Neque Road',9124136935),(36,'NI16723077YF','Alana','W.','Singh','massa@enimSednulla.com','9419476730','3873 Dis St.',9816736935),(37,'OD23036602UM','Paloma','Z.','Ismail','in@ipsumCurabiturconsequat.com','9781259889','638-7902 Nulla Avenue',6717536935),(38,'ST02274946RR','Dahlia','I.','Singh','massa@magnisdis.edu','9677764394','666 At, Rd.',7717536935),(39,'DR98954778ZW','Drake','A.','Kumar','dapibus.ligula.Aliquam@mollis.co.uk','9292509778','5242 Senectus Av.',7817536935),(40,'UA23075447EU','Oleg','I.','Khan','ut.pellentesque@odioapurus.com','9519812306','9061 Nisl. Rd.',9816736935),(41,'VR32112694AF','Forrest','G.','Singh','sed.turpis.nec@laciniaorciconsectetuer.ca','9209481122','653-1588 Auctor Avenue',9813436935),(42,'TF95408079TR','Cullen','S.','Kumar','libero.Donec.consectetuer@inaliquet.org','9633845926','P.O. Box 693, 9154 Consequat St.',9017536935),(43,'BS69142787AU','Abraham','S.','Patel','lobortis@nislarcuiaculis.ca','9574051374','7316 Est, St.',9811236935),(44,'WI59211091RK','Eaton','O.','Ismail','gravida.mauris.ut@arcu.net','9753898547','Ap #471-4154 Vitae, Rd.',9878536935),(45,'UI45362137QI','Paula','Y.','Singh','libero.dui@enim.co.uk','9299318143','Ap #768-9382 Consectetuer Ave',9812336935),(46,'FF18651578UW','Xaviera','C.','Kumar','pede.sagittis.augue@ipsum.ca','9359162918','662-3746 Ultrices. Rd.',9817590935),(47,'QY55796013NJ','Martina','R.','Khan','lectus@DuisgravidaPraesent.com','9877672379','P.O. Box 417, 5414 Non, Road',9817578935),(48,'HT46754061IM','Odette','M.','Jain','dui@aliquet.ca','9892810255','Ap #809-4262 Duis Road',9817565935),(49,'AK40384485GR','Cruz','J.','Raj','Aliquam.rutrum@dolordapibus.co.uk','9542714479','Ap #776-1922 Nunc Avenue',9617536935),(50,'IO29809042QC','Bryar','O.','Singh','vitae@Proinsed.org','9064478561','Ap #327-7410 Consequat Avenue',9417536235),(51,'CG24666910RX','Yasir','C.','Singh','eu@et.com','9023235642','Ap #427-5945 Enim, Rd.',9817536125),(52,'XH38750976WJ','Margaret','H.','Jain','justo.Proin.non@estarcuac.com','9243255748','Ap #365-800 Nisi. Avenue',9017536935),(53,'IP53477712JC','Ryan','N.','Raj','porttitor.eros@fringillaDonecfeugiat.edu','9375030468','970-4794 Eu St.',9815678935),(54,'JL39004910YU','Lars','U.','Khan','a@CurabiturmassaVestibulum.net','9043038936','P.O. Box 275, 9480 Donec St.',9811234935),(55,'MR33624287FA','Amethyst','X.','Khan','tellus.id.nunc@InloremDonec.co.uk','9273672777','401-3544 Sit Av.',9817678935),(56,'HH51923039GP','Callum','T.','Singh','sem.mollis@felispurus.ca','9029933205','P.O. Box 504, 6284 Hendrerit Rd.',9817589935),(57,'TF17608271YL','Hayes','M.','Jain','eget.nisi.dictum@velitPellentesque.com','9367653348','P.O. Box 372, 2210 Auctor Av.',9817512935),(58,'AK87769920AU','Dacey','U.','Jain','quis.diam@sociisnatoquepenatibus.net','9997457768','P.O. Box 141, 8554 A Ave',9817049935),(59,'IL40933667LI','Imelda','F.','Singh','tempor@laciniaorciconsectetuer.ca','9565672113','Ap #859-9755 Euismod Ave',9817121935),(60,'IE55113031BJ','Kiona','W.','Singh','arcu@malesuadafames.edu','9412836308','590-7300 Duis Av.',9817531235),(61,'CR68848479NO','Quyn','M.','Jain','lectus@ultricesmauris.ca','9734369574','7869 Ligula. Street',9817536901),(62,'IJ99140630JB','Brielle','F.','Singh','Aliquam.nec@facilisis.net','9160144350','P.O. Box 112, 1515 Gravida Street',9817536902),(63,'NZ30098635KJ','Octavius','Z.','Khan','In@eratVivamusnisi.edu','9695519335','Ap #423-9783 In, Rd.',9817536903),(64,'RH92408310LN','Rylee','B.','Patel','Integer.vitae.nibh@velest.org','9600386608','P.O. Box 297, 5435 At St.',9817536904),(65,'NZ56156627HR','Dorothy','D.','Jain','natoque@adipiscingMaurismolestie.co.uk','9699218412','Ap #540-6339 Morbi Rd.',9817536905),(66,'KL46233078NF','Valentine','X.','Singh','id@Aliquamvulputateullamcorper.edu','9342697946','130-986 Lectus Av.',9817536906),(67,'AX65359445FP','Hedley','N.','Singh','dictum.sapien@semvitae.net','9263183116','Ap #108-2167 Gravida St.',9817536907),(68,'BL82053505HL','Barbara','R.','Kumar','quis.urna@augueacipsum.org','9476050759','175-5142 A, Rd.',9817536908),(69,'BS14568860LE','Francesca','T.','Khan','Nunc.commodo.auctor@inmolestie.com','9547091935','6064 Aliquam Street',9817536909),(70,'JZ54584518EM','Jocelyn','Q.','Patel','est@vestibulummassa.co.uk','9454834874','5629 Sed St.',9817536910),(71,'OA73953946EO','Pascale','U.','Raj','nonummy.ipsum@lacusNulla.com','9786909589','P.O. Box 847, 7971 Feugiat Ave',9817536911),(72,'KU64033894BP','Fallon','R.','Khan','netus@nuncInat.edu','9035632184','803-6096 Nulla Ave',9817536912),(73,'VS66003159BE','Hakeem','Y.','Ismail','magna.sed@anteVivamusnon.ca','9566877111','P.O. Box 935, 4429 Felis. St.',9817536913),(74,'FZ30809092IZ','Alan','Z.','Ismail','sagittis.lobortis@commodotincidunt.ca','9693304676','Ap #376-4777 Porttitor Road',9817536914),(75,'NU56595422RH','Anthony','Q.','Ismail','pellentesque.tellus@Vivamus.co.uk','9740345244','Ap #441-7430 Odio, St.',9817536915),(76,'SM26214393LC','Walter','Y.','Raj','tincidunt@Integervitaenibh.net','9095666438','4039 Libero. Street',9817536916),(77,'AX20751955RU','Clayton','N.','Khan','vitae.diam.Proin@nisidictum.ca','9843102849','6776 Faucibus Street',9817536917),(78,'MO43016746ZC','Hiram','Y.','Raj','enim@dictum.co.uk','9289526129','Ap #165-2251 Vehicula Street',9817536918),(79,'DO60770789FV','Samuel','J.','Khan','Quisque.nonummy@aliquetodio.ca','9127139448','5895 Ac Rd.',9817536919),(80,'GE88433597RP','Adele','R.','Singh','quam@Duisac.com','9431846303','304-3446 Magna. Avenue',9817536920),(81,'OY68040315OW','Giacomo','A.','Patel','faucibus@vestibulumloremsit.co.uk','9927443977','3432 Integer St.',9817536921),(82,'KQ37569927ZT','Mona','F.','Khan','purus@rutrum.net','9534453862','164-8992 Molestie Avenue',9817536922),(83,'UD22699305MW','Hu','B.','Raj','massa.lobortis.ultrices@Nulla.com','9660707808','P.O. Box 810, 871 Feugiat Street',9817536923),(84,'EN43956603VQ','Felicia','F.','Raj','Nunc@magnisdis.ca','9517358900','Ap #552-9971 Eu, Street',9817536924),(85,'AO46309307SR','Neville','Q.','Ismail','sed.consequat@Aliquam.org','9962574710','2639 Adipiscing Road',9817536925),(86,'QN89066465TE','Len','A.','Patel','eget.varius@atlacus.edu','9896705723','809-7314 Iaculis Avenue',9817536926),(87,'QT67078303MN','Fritz','U.','Khan','at@sagittisNullam.com','9017041281','P.O. Box 843, 9873 Ut Road',9817536927),(88,'SF06503063QB','Chiquita','W.','Jain','euismod@mipede.net','9402529842','817-9511 Ullamcorper Rd.',9817536928),(89,'ON04936744WM','Ferdinand','P.','Khan','amet.risus.Donec@nullamagnamalesuada.net','9801254114','Ap #281-2440 Ut Rd.',9817536929),(90,'DY61168304DE','Quentin','I.','Kumar','dis.parturient@Nuncmauriselit.ca','9443280635','P.O. Box 640, 8963 Urna. Av.',9817536930),(91,'KL59114987VU','Clarke','Y.','Raj','Nulla.facilisis@mollis.net','9315734604','6512 Nunc, Street',9817536931),(92,'UE48668254VI','Maia','H.','Singh','at@vestibulumlorem.edu','9568527243','4120 Nullam Av.',9817536932),(93,'MC95569577JR','Aubrey','W.','Kumar','nisi.Aenean@eros.com','9038670741','4170 Dignissim St.',9817536933),(94,'GB48257579DQ','Plato','B.','Kumar','Duis.dignissim@Nam.com','9875302589','P.O. Box 737, 3915 Odio. St.',9817536934),(95,'QA11496818LG','Shannon','X.','Patel','ac@nec.ca','9133278973','P.O. Box 865, 7737 Pellentesque Street',9817536965),(96,'OG33429983VQ','Levi','J.','Jain','magna.nec.quam@ut.edu','9854532876','P.O. Box 796, 664 At Street',9817536966),(97,'EX81409481ON','Lane','Y.','Khan','ligula.Aenean@Integerurna.com','9731482298','P.O. Box 658, 5642 Iaculis Road',9817536967),(98,'DY16561894VY','Raya','H.','Khan','rutrum.urna@adipiscing.ca','9493250649','Ap #205-8200 A Road',9817536968),(99,'HU41495317GF','Patricia','U.','Ismail','adipiscing.non@nascetur.net','9546781552','670-3558 Velit Road',9817536969),(100,'IK32692466PN','Isaiah','P.','Jain','sit.amet.consectetuer@diam.ca','9466653530','P.O. Box 273, 9658 A, Avenue',9817536970);
/*!40000 ALTER TABLE `patient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_location`
--

DROP TABLE IF EXISTS `patient_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_location` (
  `PID` int NOT NULL,
  `READER_ID` varchar(12) NOT NULL,
  `LOCATION_TIME` datetime NOT NULL,
  PRIMARY KEY (`LOCATION_TIME`),
  KEY `PID` (`PID`),
  KEY `READER_ID` (`READER_ID`),
  CONSTRAINT `patient_location_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`),
  CONSTRAINT `patient_location_ibfk_2` FOREIGN KEY (`READER_ID`) REFERENCES `location_id` (`READER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_location`
--

LOCK TABLES `patient_location` WRITE;
/*!40000 ALTER TABLE `patient_location` DISABLE KEYS */;
INSERT INTO `patient_location` VALUES (23,'75FQGALQMW73','2019-10-03 19:45:00'),(47,'41DBGMFVGD57','2019-10-30 05:27:00'),(26,'27CGYPNMSD69','2019-11-15 11:37:00'),(65,'00GYEQISHZ70','2019-11-27 02:06:00'),(74,'52KCSWLOFI15','2019-12-16 04:56:00'),(6,'04HRBZQTTD83','2019-12-16 12:11:00'),(65,'12WXGQHRNG68','2019-12-17 08:26:00'),(62,'15PHXPETAH76','2019-12-18 10:17:00'),(76,'21OYLWSSCC38','2019-12-22 16:01:00'),(43,'01YNKNFQAY31','2019-12-24 02:03:00'),(77,'11MVJBWOOJ96','2020-01-01 13:38:00'),(4,'21OYLWSSCC38','2020-01-01 21:01:00'),(42,'01YNKNFQAY31','2020-01-02 17:33:00'),(40,'19ZXNOMFZH33','2020-01-05 03:11:00'),(47,'57RUMTQVPQ35','2020-01-16 06:58:00'),(26,'00GYEQISHZ70','2020-01-17 22:37:00'),(35,'64DBKSIYCH49','2020-01-26 23:15:00'),(31,'04HRBZQTTD83','2020-02-04 00:12:00'),(76,'27CGYPNMSD69','2020-02-26 10:25:00'),(52,'02YXNWBYRA58','2020-02-27 01:57:00'),(12,'29ZPZHERQS71','2020-02-28 02:08:00'),(13,'43CRUIHXSE46','2020-03-25 01:41:00'),(88,'12WXGQHRNG68','2020-05-02 18:02:00'),(21,'12WXGQHRNG68','2020-05-08 04:48:00'),(88,'19ZXNOMFZH33','2020-05-12 21:57:00'),(23,'11RPZHFCHE97','2020-05-13 00:58:00'),(12,'92TPEJXEWK80','2020-05-22 12:12:00'),(97,'57RUMTQVPQ35','2020-06-07 21:37:00'),(99,'04HRBZQTTD83','2020-06-13 08:57:00'),(97,'15PHXPETAH76','2020-07-04 04:33:00'),(99,'01YNKNFQAY31','2020-07-18 17:51:00'),(96,'64DBKSIYCH49','2020-07-22 19:56:00'),(20,'00GYEQISHZ70','2020-07-27 20:52:00'),(80,'12WXGQHRNG68','2020-07-27 22:20:00'),(42,'38GAWIRHTZ38','2020-08-05 19:58:00'),(62,'27CGYPNMSD69','2020-08-06 06:56:00'),(7,'38GAWIRHTZ38','2020-08-13 07:49:00'),(83,'38GAWIRHTZ38','2020-08-19 11:20:00'),(9,'52KCSWLOFI15','2020-08-21 08:12:00'),(81,'75FQGALQMW73','2020-08-25 14:58:00'),(19,'11MVJBWOOJ96','2020-08-30 02:44:00'),(15,'73VLAGJEOA06','2020-09-02 18:18:00'),(72,'11MVJBWOOJ96','2020-09-12 07:03:00'),(49,'19ZXNOMFZH33','2020-09-19 21:07:00'),(34,'11MVJBWOOJ96','2020-09-20 04:41:00'),(64,'43KUGNVGWO19','2020-09-20 17:41:00'),(76,'88RHDOCGCK48','2020-10-02 20:38:00'),(87,'89ZCIEBUDL32','2020-10-13 10:27:00'),(7,'73VLAGJEOA06','2020-10-13 16:32:00'),(66,'89ZCIEBUDL32','2020-10-17 13:05:00'),(29,'19ZXNOMFZH33','2020-10-19 12:29:00'),(91,'92TPEJXEWK80','2020-11-09 15:39:00'),(42,'21OYLWSSCC38','2020-11-14 22:27:00'),(64,'43CRUIHXSE46','2020-11-27 03:07:00'),(23,'01YNKNFQAY31','2020-11-28 06:45:00'),(72,'00GYEQISHZ70','2020-11-30 08:17:00'),(3,'00GYEQISHZ70','2020-12-14 21:14:00'),(96,'15PHXPETAH76','2020-12-16 16:15:00'),(78,'27CGYPNMSD69','2020-12-17 04:27:00'),(96,'78CYCLTAPX66','2021-02-14 07:45:00'),(41,'24BSAAYKPE32','2021-02-25 01:07:00'),(22,'24BSAAYKPE32','2021-02-25 07:21:00'),(81,'55TGFGUKCA49','2021-02-27 06:15:00'),(64,'73KEZLXIWG22','2021-02-28 00:41:00'),(98,'00GYEQISHZ70','2021-02-28 16:30:00'),(62,'92TPEJXEWK80','2021-02-28 18:43:00'),(54,'04HRBZQTTD83','2021-03-01 11:29:00'),(30,'57RUMTQVPQ35','2021-03-07 19:06:00'),(88,'19ZXNOMFZH33','2021-03-09 04:08:00'),(5,'55TGFGUKCA49','2021-03-20 00:52:00'),(98,'04HRBZQTTD83','2021-04-10 05:18:00'),(85,'78CYCLTAPX66','2021-04-10 11:27:00'),(28,'92TPEJXEWK80','2021-04-11 23:44:00'),(72,'43CRUIHXSE46','2021-04-12 08:30:00'),(15,'34KYZZQTMK95','2021-04-12 19:00:00'),(33,'52CEMTAEQA76','2021-04-13 20:50:00'),(57,'78CYCLTAPX66','2021-05-09 09:43:00'),(65,'55TGFGUKCA49','2021-05-16 10:07:00'),(93,'21OYLWSSCC38','2021-05-24 15:56:00'),(76,'92TPEJXEWK80','2021-05-26 14:01:00'),(95,'75FQGALQMW73','2021-05-27 16:57:00'),(80,'00GYEQISHZ70','2021-06-08 01:51:00'),(74,'11RPZHFCHE97','2021-06-08 19:13:00'),(46,'29ZPZHERQS71','2021-06-09 04:08:00'),(49,'52CEMTAEQA76','2021-06-10 15:26:00'),(61,'52CEMTAEQA76','2021-06-11 08:25:00'),(17,'19ZXNOMFZH33','2021-06-26 03:38:00'),(25,'24BSAAYKPE32','2021-07-01 20:43:00'),(32,'75FQGALQMW73','2021-07-01 22:41:00'),(39,'92TPEJXEWK80','2021-07-04 08:48:00'),(1,'02YXNWBYRA58','2021-07-05 19:40:00'),(56,'41DBGMFVGD57','2021-07-16 06:21:00'),(37,'52CEMTAEQA76','2021-07-31 00:36:00'),(43,'92TPEJXEWK80','2021-08-04 16:56:00'),(85,'27CGYPNMSD69','2021-08-15 11:46:00'),(62,'66UBTFEKGU22','2021-09-05 13:44:00'),(38,'12WXGQHRNG68','2021-09-19 07:29:00');
/*!40000 ALTER TABLE `patient_location` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Dr Hyacinth Carey','Physiotherapy'),(2,'Dr Oren Lambert','Rheumatology'),(3,'Dr Rigel Gould','Chaplaincy'),(4,'Dr Brynn Hoover','Neurology'),(5,'Dr Lewis Reilly','Gastroenterology'),(6,'Dr Barbara Mayo','Urology'),(7,'Dr Gemma Daugherty','General Physician'),(8,'Dr Ivy Livingston','Oncology'),(9,'Dr Kane Stevens','General surgery'),(10,'Dr Ciara Lang','Rheumatology'),(11,'Dr Lydia Alvarez','Anaesthetics'),(12,'Dr Mohammad Gilliam','Chaplaincy'),(13,'Dr Eleanor Alvarez','Gynaecology'),(14,'Dr Ruby Gilbert','Urology'),(15,'Dr Yen Rocha','Cardiology'),(16,'Dr Noel Colon','General surgery'),(17,'Dr Camilla Cote','Gynaecology'),(18,'Dr Kyla Foster','Anaesthetics'),(19,'Dr Alyssa Huff','Cardiology'),(20,'Dr Joan England','Anaesthetics'),(21,'Dr Nicole Boyle','Radiotherapy'),(22,'Dr Kevin Hawkins','Chaplaincy'),(23,'Dr Yuli Morton','Ear nose and throat'),(24,'Dr Kim Nielsen','Physiotherapy'),(25,'Dr Samuel Mcdonald','Neurology'),(26,'Dr Cole Lee','Gynaecology'),(27,'Dr Cassady Duran','Physiotherapy'),(28,'Dr Danielle Crane','Physiotherapy'),(29,'Dr Adara Hensley','Ear nose and throat'),(30,'Dr Jennifer Key','Oncology'),(31,'Dr Andrew Morin','Ophthalmology'),(32,'Dr Dale Lewis','Nephrology'),(33,'Dr Rajah Cardenas','Gynaecology'),(34,'Dr Chiquita Harvey','Oncology'),(35,'Dr Hayes Pierce','Gynaecology'),(36,'Dr Ivor Mooney','Neurology'),(37,'Dr Gray Beach','Gynaecology'),(38,'Dr Wynter Booth','Anaesthetics'),(39,'Dr Berk Terrell','Cardiology'),(40,'Dr Maris Shields','Gynaecology'),(41,'Dr Brennan Hester','Rheumatology'),(42,'Dr Kim Velez','Ophthalmology'),(43,'Dr Aileen Buckner','Orthopaedics'),(44,'Dr Flavia Solomon','Nephrology'),(45,'Dr Dieter Quinn','Anaesthetics'),(46,'Dr Ross Macdonald','Oncology'),(47,'Dr Octavius Roberts','Rheumatology'),(48,'Dr Joshua Cummings','Orthopaedics'),(49,'Dr Boris Farley','General Physician'),(50,'Dr Keegan Poole','General Physician'),(51,'DrCameron Petty','Radiotherapy'),(52,'Dr Haley Patrick','Ophthalmology'),(53,'Dr Hyatt Evans','Nephrology'),(54,'Dr Teegan Preston','Neurology'),(55,'Dr Lareina Dodson','Nephrology'),(56,'Dr Brenna Waller','Rheumatology'),(57,'Dr Galvin Hartman','General Physician'),(58,'Dr Xerxes Fry','Neurology'),(59,'Dr Petra Richard','Nephrology'),(60,'Dr Cade Mueller','Gastroenterology'),(61,'Dr Alec Robbins','Oncology'),(62,'Dr Dane Serrano','Ear nose and throat'),(63,'Dr Judith Tillman','General Physician'),(64,'Dr Jonah Ball','Orthopaedics'),(65,'Dr Abraham Holt','Cardiology'),(66,'Dr Adam Salas','Chaplaincy'),(67,'Dr Shellie Boyd','Gynaecology'),(68,'Dr Daniel Mccarty','Orthopaedics'),(69,'Dr Kiona Dillard','Oncology'),(70,'Dr Jesse James','Gynaecology'),(71,'Dr Simon Bowen','General surgery'),(72,'Dr Isadora Keller','Physiotherapy'),(73,'Dr Skyler Beasley','Anaesthetics'),(74,'Dr Ruth Bentley','Gastroenterology'),(75,'Violet Boyle','Gynaecology'),(76,'Morgan Callahan','Rheumatology'),(77,'Chase Lowery','Gynaecology'),(78,'Ria Fernandez','Haematology'),(79,'Leonard Whitley','Urology'),(80,'Craig Stanley','Physiotherapy'),(81,'Willa Andrews','Neurology'),(82,'Bertha Vaughn','Physiotherapy'),(83,'Nadine Barron','Neurology'),(84,'Colt Clark','Oncology'),(85,'Angelica Franks','Neurology'),(86,'Ina Baldwin','Gynaecology'),(87,'Shad Smith','Anaesthetics'),(88,'Valentine Higgins','Cardiology'),(89,'Noelle Leach','Orthopaedics'),(90,'Montana Larsen','Gynaecology'),(91,'Adria Mckee','Ophthalmology'),(92,'Dr Bertha Castillo','Nephrology'),(93,'Leah Acevedo','Chaplaincy'),(94,'August Silva','Urology'),(95,'Mariko Flowers','Orthopaedics'),(96,'Nola Elliott','Orthopaedics'),(97,'Kimberley Moss','Gynaecology'),(98,'Joshua Sharp','Gastroenterology'),(99,'Samuel Harvey','Neurology'),(100,'Doris Cortez','Orthopaedics');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `staff_assigned_patient`
--

LOCK TABLES `staff_assigned_patient` WRITE;
/*!40000 ALTER TABLE `staff_assigned_patient` DISABLE KEYS */;
INSERT INTO `staff_assigned_patient` VALUES (10,1),(53,1),(65,1),(9,3),(12,5),(56,5),(100,5),(51,7),(37,10),(56,10),(28,11),(85,11),(96,12),(81,14),(41,15),(54,15),(8,18),(84,19),(94,19),(64,20),(70,20),(51,21),(14,22),(61,23),(67,23),(82,25),(68,26),(27,27),(87,27),(79,29),(3,30),(26,32),(52,34),(15,35),(33,35),(52,35),(6,36),(26,37),(28,37),(63,37),(86,38),(46,39),(93,39),(13,40),(51,40),(16,41),(88,45),(62,46),(86,48),(7,49),(99,49),(2,50),(20,50),(15,52),(47,53),(15,55),(74,55),(40,57),(51,57),(81,57),(2,58),(54,58),(60,60),(8,61),(90,62),(41,63),(54,63),(40,64),(6,66),(63,66),(49,67),(39,69),(93,73),(20,74),(38,76),(40,76),(73,76),(24,78),(29,78),(45,78),(55,79),(39,80),(6,81),(43,81),(44,81),(21,82),(47,82),(73,82),(84,84),(8,86),(96,88),(52,89),(2,90),(85,91),(50,94),(24,96),(55,96),(58,98),(89,99),(31,100);
/*!40000 ALTER TABLE `staff_assigned_patient` ENABLE KEYS */;
UNLOCK TABLES;

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
  `DATE_OF_TREATMENT` date NOT NULL,
  PRIMARY KEY (`TID`),
  KEY `treatment_ibfk_1` (`PID`),
  CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `patient_info` (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,2,'Radiation therapy','2020-12-11'),(2,1,'Immunotherapy','2020-06-06'),(3,23,'Palliative care','2021-08-01'),(4,40,'Chemotherapy','2020-05-06'),(5,50,'Chemotherapy','2021-09-18'),(6,73,'Stem cell transplantation','2020-05-09'),(7,37,'Chemotherapy','2019-10-22'),(8,26,'Vaccine therapy','2021-03-14'),(9,68,'Chemotherapy','2021-02-21'),(10,98,'Palliative care','2020-04-21'),(11,89,'Stem cell transplantation','2020-03-19'),(12,44,'Radiation therapy','2021-08-13'),(13,40,'Vaccine therapy','2020-08-20'),(14,59,'Vaccine therapy','2020-09-17'),(15,83,'Palliative care','2020-11-23'),(16,42,'Stem cell transplantation','2020-10-14'),(17,69,'Chemotherapy','2020-05-20'),(18,61,'Vaccine therapy','2021-06-18'),(19,40,'Blood transfusion','2021-08-05'),(20,56,'Chemotherapy','2021-05-22'),(21,47,'Blood transfusion','2021-01-17'),(22,80,'Radiation therapy','2020-08-14'),(23,66,'Vaccine therapy','2021-03-13'),(24,31,'Stem cell transplantation','2020-09-30'),(25,97,'Palliative care','2020-09-11'),(26,58,'Radiation therapy','2019-10-24'),(27,80,'Stem cell transplantation','2020-10-04'),(28,46,'Chemotherapy','2020-12-04'),(29,47,'Chemotherapy','2021-07-03'),(30,17,'Immunotherapy','2021-09-02'),(31,32,'Blood transfusion','2021-07-20'),(32,89,'Immunotherapy','2020-05-29'),(33,8,'Stem cell transplantation','2020-12-02'),(34,47,'Radiation therapy','2020-01-14'),(37,6,'Palliative care','2021-07-11'),(38,42,'Vaccine therapy','2020-02-05'),(39,52,'Stem cell transplantation','2020-09-15'),(40,28,'Immunotherapy','2020-07-08'),(41,82,'Radiation therapy','2021-02-27'),(42,75,'Stem cell transplantation','2021-06-18'),(43,51,'Radiation therapy','2020-04-04'),(44,63,'Vaccine therapy','2021-08-31'),(45,52,'Immunotherapy','2021-04-29'),(46,77,'Radiation therapy','2021-03-25'),(47,57,'Blood transfusion','2021-02-15'),(48,45,'Vaccine therapy','2021-04-14'),(49,40,'Immunotherapy','2020-02-05'),(50,28,'Palliative care','2021-04-07'),(51,83,'Blood transfusion','2019-10-24'),(52,16,'Palliative care','2020-10-28'),(53,72,'Radiation therapy','2019-11-24'),(54,49,'Stem cell transplantation','2021-01-04'),(55,23,'Chemotherapy','2020-12-31'),(56,34,'Palliative care','2020-12-01'),(57,32,'Vaccine therapy','2020-01-14'),(58,33,'Vaccine therapy','2019-10-27'),(59,28,'Radiation therapy','2021-01-01'),(60,37,'Radiation therapy','2019-11-06'),(61,75,'Palliative care','2019-10-07'),(62,87,'Palliative care','2021-04-01'),(63,66,'Immunotherapy','2020-11-10'),(64,53,'Immunotherapy','2020-08-18'),(65,6,'Radiation therapy','2019-11-02'),(67,90,'Vaccine therapy','2020-05-27'),(68,11,'Radiation therapy','2020-07-07'),(69,67,'Palliative care','2020-06-21'),(70,67,'Chemotherapy','2019-10-25'),(71,88,'Radiation therapy','2020-03-25'),(72,68,'Palliative care','2020-02-02'),(73,59,'Blood transfusion','2021-05-20'),(74,64,'Stem cell transplantation','2021-03-13'),(75,53,'Vaccine therapy','2020-12-10'),(77,85,'Chemotherapy','2020-08-30'),(78,70,'Blood transfusion','2020-01-23'),(79,100,'Blood transfusion','2020-05-09'),(80,9,'Blood transfusion','2019-10-18'),(81,39,'Immunotherapy','2021-02-24'),(82,48,'Chemotherapy','2020-06-05'),(83,14,'Blood transfusion','2020-03-28'),(84,33,'Blood transfusion','2020-12-14'),(85,69,'Immunotherapy','2021-04-23'),(86,25,'Radiation therapy','2021-08-21'),(87,98,'Immunotherapy','2020-08-04'),(88,15,'Vaccine therapy','2020-05-30'),(89,96,'Immunotherapy','2021-05-27'),(90,46,'Immunotherapy','2020-01-26'),(91,12,'Immunotherapy','2019-10-22'),(92,43,'Radiation therapy','2020-08-30'),(93,34,'Radiation therapy','2019-12-16'),(94,4,'Radiation therapy','2020-02-27'),(95,99,'Stem cell transplantation','2020-08-10'),(96,53,'Palliative care','2021-02-04'),(97,70,'Immunotherapy','2020-05-16'),(98,1,'Vaccine therapy','2020-07-08'),(99,63,'Blood transfusion','2020-09-26'),(100,15,'Radiation therapy','2020-03-14');
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-11 12:31:04
