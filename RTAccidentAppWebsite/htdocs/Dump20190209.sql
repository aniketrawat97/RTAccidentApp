-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: accident
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

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
-- Table structure for table `accident_report`
--

DROP TABLE IF EXISTS `accident_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accident_report` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vehcile_No` varchar(45) NOT NULL,
  `Casualty` int(11) DEFAULT NULL,
  `Injuries` int(11) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Cause` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Description` varchar(400) DEFAULT NULL,
  `Title` varchar(100) NOT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accident_report`
--

LOCK TABLES `accident_report` WRITE;
/*!40000 ALTER TABLE `accident_report` DISABLE KEYS */;
INSERT INTO `accident_report` VALUES (1,'rj27bk1855',2,2,'NH-8','Overspeeding','2019-02-18','12:06:00','The vehicle was trying to overtake the truck but the was more than required so it got out of control and to control driver steered it and the vehicle flipped and climbed the divider.','bike crash'),(2,'rj27ce1213',2,2,'100ft','slippery_road','2019-02-13','11:45:00','The car was at a normal speed but suddenly from the cut in divider the cow crossed the road and driver applied brakes but as the road being slippery car slipped and hit the standing scooty and flipped ','car hit a scooty'),(3,'gj06bf1718',3,1,'nav-marg','drink-drive','2019-01-15','13:15:00','This accident was entirely because of the mistake and irresponsibility of the driver as he was drunk.','truck scratched a car'),(4,'mp44bk7332',2,0,'sabarmati','distraction','2019-01-31','16:14:00','This tragedy would not have happened if the driver concentrated on driving instead of seeing back while driving and because of which he lost control over bike and bike felt into valley','bike fell in valley'),(5,'dl17sv7077',1,4,'haldighati','technical issue','2019-02-11','19:20:00','Driver is not at all responsible for it as while taking a sharp turn he applied the brakes to slow down but brakes failed and car directly got crushed into tree.','car in tree'),(6,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `accident_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Locality` varchar(45) NOT NULL,
  `Insurance_company` varchar(60) NOT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Bike crash','Rajasthan','udaipur','Sector-14','Bajaj'),(2,'Car hit a scooty','Rajasthan','jaipur','Ganesh Nagar','Maruti_suzuki'),(3,'truck scrached a car','Madhya Pradesh','jodhpur','vaishali Nagar','LIC'),(4,'Bike fell in valley','Gujrat','surat','gb road','BK'),(5,'car in tree','maharashtra','pune','bandra','netmeds');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance_details`
--

DROP TABLE IF EXISTS `insurance_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurance_details` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Policy_no` varchar(30) NOT NULL,
  `Vehicle_No` varchar(45) DEFAULT NULL,
  `Phone_no` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_details`
--

LOCK TABLES `insurance_details` WRITE;
/*!40000 ALTER TABLE `insurance_details` DISABLE KEYS */;
INSERT INTO `insurance_details` VALUES (1,'BJrj27bk1855','rj27bk1855',234567),(2,'MSrj27ce1213','rj27ce1213',567890),(3,'LIgj06bf1718','gj06bf1718',124531),(4,'BKmp44bk7332','mp44bk7332',756432),(5,'NMdl17sv7077','dl17sv7077',435689);
/*!40000 ALTER TABLE `insurance_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_info` (
  `Name` varchar(40) NOT NULL,
  `Number` int(10) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_info`
--

LOCK TABLES `personal_info` WRITE;
/*!40000 ALTER TABLE `personal_info` DISABLE KEYS */;
INSERT INTO `personal_info` VALUES ('bk',24,'other'),('golu',123,'police');
/*!40000 ALTER TABLE `personal_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police`
--

DROP TABLE IF EXISTS `police`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_No` varchar(45) NOT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Road_condition` varchar(100) DEFAULT NULL,
  `Report` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police`
--

LOCK TABLES `police` WRITE;
/*!40000 ALTER TABLE `police` DISABLE KEYS */;
INSERT INTO `police` VALUES (1,'rj27bk1855',90,'normal','The number of people in 2 bikes were 4 out of which died , driver-name:ram,shyam'),(2,'rj27ce1213',50,'slippery-road','Many people were present car and car slipped because of excess tar on road '),(3,'gj06bf1718',70,'concrete','Driver was totally drunk and was coming from party with his friends.All were of age around 23-24'),(4,'mp44bk7332',50,'perfect','Driver was not attentive as he was looking back and lost control over bike'),(5,'dl17sv7077',40,'patch-work','driver name-raju was driving the car it was at normal speed but brakes failed and car bumped into tree');
/*!40000 ALTER TABLE `police` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporter`
--

DROP TABLE IF EXISTS `reporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporter` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Interview` blob,
  `Photos` blob,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporter`
--

LOCK TABLES `reporter` WRITE;
/*!40000 ALTER TABLE `reporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification` (
  `Case ID` int(11) NOT NULL,
  `Number` bigint(10) NOT NULL,
  PRIMARY KEY (`Case ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification`
--

LOCK TABLES `verification` WRITE;
/*!40000 ALTER TABLE `verification` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-09 17:00:13
