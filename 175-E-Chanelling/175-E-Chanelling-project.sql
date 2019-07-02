CREATE DATABASE  IF NOT EXISTS `ecare` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ecare`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ecare
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_table` (
  `admin_Name` varchar(20) DEFAULT NULL,
  `pword` varchar(30) DEFAULT NULL,
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table`
--

LOCK TABLES `admin_table` WRITE;
/*!40000 ALTER TABLE `admin_table` DISABLE KEYS */;
INSERT INTO `admin_table` VALUES ('Amal_manager','amal123',1);
/*!40000 ALTER TABLE `admin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(40) NOT NULL,
  `Person_nature` varchar(40) NOT NULL,
  `feed` varchar(200) NOT NULL,
  `hos_lacation` varchar(30) NOT NULL,
  PRIMARY KEY (`feedid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,'Doc1','Annoying','Worse','Colombo1'),(5,'Nurse','caring','Good','Wallawatte'),(6,'Nurse2','Caring','Good','Waththala'),(8,'Attendant103','Kind','Better','Maharagama'),(13,'doc345','Arrogant','Better','Kandy'),(14,'Doc501','Caring','Best','Mountlavinia');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_appointment`
--

DROP TABLE IF EXISTS `table_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_appointment` (
  `app_ID` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `did` varchar(20) NOT NULL,
  `docname` varchar(20) NOT NULL,
  `consul_fee` varchar(20) NOT NULL,
  `app_time` varchar(20) NOT NULL,
  `app_date` varchar(20) NOT NULL,
  PRIMARY KEY (`app_ID`),
  KEY `fkkpid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_appointment`
--

LOCK TABLES `table_appointment` WRITE;
/*!40000 ALTER TABLE `table_appointment` DISABLE KEYS */;
INSERT INTO `table_appointment` VALUES (1,'5','W.Banuka','1','W.Kamal','1650','7.30 p.m','2018-05-17'),(2,'2','T.Amaya','2','S.D.Amith','1600','6.00 p.m','2018-04-30'),(3,'3','Y.Zaara','1','W.Kamal','1650','4.00 p.m','2018-07-04'),(5,'4','M.Amana','4','Y.Usha','1600','2.30 p.m','2018-06-20');
/*!40000 ALTER TABLE `table_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_doctor`
--

DROP TABLE IF EXISTS `table_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_doctor` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `fees` varchar(45) NOT NULL,
  `depid` varchar(45) NOT NULL,
  `depname` varchar(40) NOT NULL,
  `degree` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `marital` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_doctor`
--

LOCK TABLES `table_doctor` WRITE;
/*!40000 ALTER TABLE `table_doctor` DISABLE KEYS */;
INSERT INTO `table_doctor` VALUES (1,'W.Kamal','kamal@w.lk','kamal123','Male','45','1650','R123','Rheumatologists','MRCP.UK','Colombo 3','0776548733','Married','1976-03-05'),(3,'Y.Theshika','th@df.lk','theshika@123','Female','27','1450','G123','General','MDP.UK','Colombo 5','07773456213','Unmarried','1989-08-18'),(5,'S.John','john@gh.lk','john1234','Male','42','1700','C123','Cardiologists','MRCP.UK','Nugegoda','0963456785','Unmarried','1976-03-25'),(6,'F.Wilson','wilson@w.op','wilson123','Male','50','1400','E123','ENT','WER.R','Negambo','0763765889','Married','1968-12-25'),(7,'Mariyana.J','mari@we,ui','mari1234','Female','38','1600','P123','Psychology','DCV.LK','Kurunagala','0776123453','Married','1980-10-12'),(8,'Y.Usha ','usha@w.py','usha123','Female','50','1350','R123','Rheumatologists ','MRCP.UK','Wallawatte','0756432178','Married','1968-04-23');
/*!40000 ALTER TABLE `table_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_patient`
--

DROP TABLE IF EXISTS `table_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_patient` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `pdob` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `marital` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `did` int(10) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_patient`
--

LOCK TABLES `table_patient` WRITE;
/*!40000 ALTER TABLE `table_patient` DISABLE KEYS */;
INSERT INTO `table_patient` VALUES (1,'A.Silva','silva@gmail.com','silva123','765432156','1954-06-21','Male','75','Married','Matara',1),(2,'T.Amaya','amaya@r.ip','amaya123','0982345612','2000-02-21','Female','18','Unmarried','Rajagiriya',3),(3,'R.Ravindu','rs@e.lk','rs123','0712345743','1990-04-23','Male','28','Unmarried','Dehiwala',3),(4,'M.Amana','ami@w.oi','amana123','723457213','2001-09-07','Female','17','Unmarried','Ambalangoda',4),(5,'W.Banuka','banuka@r.lk','banuka123','773452134','1976-06-04','Male','42','Married','Colombo 3',1),(6,'A.M.Loral','loral@a.jk','loral1234','1234567899','1990-05-30','Female','28','Unmarried','Kaduwela',1),(7,'V.Sera','sera@a.jk','sera1234','0723456784','1985-05-04','Female','33','Married','Dehiwala',4),(8,'P.Amaadi','amaadi@e.lk','amaadi123','8765439021','2002-05-07','Female','17','Unmarried','Nadimala,Dehiwala',3);
/*!40000 ALTER TABLE `table_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-08 19:24:42
