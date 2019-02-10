-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 10, 2019 at 08:16 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accident`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident_report`
--

DROP TABLE IF EXISTS `accident_report`;
CREATE TABLE IF NOT EXISTS `accident_report` (
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

--
-- Dumping data for table `accident_report`
--

INSERT INTO `accident_report` (`Case_ID`, `Vehcile_No`, `Casualty`, `Injuries`, `Location`, `Cause`, `Date`, `Time`, `Description`, `Title`) VALUES
(1, 'rj27bk1855', 2, 2, 'NH-8', 'Overspeeding', '2019-02-18', '12:06:00', 'The vehicle was trying to overtake the truck but the was more than required so it got out of control and to control driver steered it and the vehicle flipped and climbed the divider.', 'bike crash'),
(2, 'rj27ce1213', 2, 2, '100ft', 'slippery_road', '2019-02-13', '11:45:00', 'The car was at a normal speed but suddenly from the cut in divider the cow crossed the road and driver applied brakes but as the road being slippery car slipped and hit the standing scooty and flipped ', 'car hit a scooty'),
(3, 'gj06bf1718', 3, 1, 'nav-marg', 'drink-drive', '2019-01-15', '13:15:00', 'This accident was entirely because of the mistake and irresponsibility of the driver as he was drunk.', 'truck scratched a car'),
(4, 'mp44bk7332', 2, 0, 'sabarmati', 'distraction', '2019-01-31', '16:14:00', 'This tragedy would not have happened if the driver concentrated on driving instead of seeing back while driving and because of which he lost control over bike and bike felt into valley', 'bike fell in valley'),
(5, 'dl17sv7077', 1, 4, 'haldighati', 'technical issue', '2019-02-11', '19:20:00', 'Driver is not at all responsible for it as while taking a sharp turn he applied the brakes to slow down but brakes failed and car directly got crushed into tree.', 'car in tree'),
(6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Locality` varchar(45) NOT NULL,
  `Insurance_company` varchar(60) NOT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Case_ID`, `Title`, `State`, `City`, `Locality`, `Insurance_company`) VALUES
(1, 'Bike crash', 'Rajasthan', 'udaipur', 'Sector-14', 'Bajaj'),
(2, 'Car hit a scooty', 'Rajasthan', 'jaipur', 'Ganesh Nagar', 'Maruti_suzuki'),
(3, 'truck scrached a car', 'Madhya Pradesh', 'jodhpur', 'vaishali Nagar', 'LIC'),
(4, 'Bike fell in valley', 'Gujrat', 'surat', 'gb road', 'BK'),
(5, 'car in tree', 'maharashtra', 'pune', 'bandra', 'netmeds');

-- --------------------------------------------------------

--
-- Table structure for table `company_detail`
--

DROP TABLE IF EXISTS `company_detail`;
CREATE TABLE IF NOT EXISTS `company_detail` (
  `S.No.` int(50) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Passwords` varchar(250) NOT NULL,
  `hashs` varchar(250) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`S.No.`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_detail`
--

INSERT INTO `company_detail` (`S.No.`, `Firstname`, `Lastname`, `company_name`, `contact_number`, `Email`, `Passwords`, `hashs`, `active`) VALUES
(5, 's', 'f', 'g', '9876543210', 'abc@gmail.com', '3488c62d4ffa2b5f5dceab74fed6f5d5765babda', '9f53d83ec0691550f7d2507d57f4f5a2', 0),
(2, 'Naman', 'Jain', 'Maruti Suzuki India Pvt. Ltd.', '9876543210', 'abc@gmail.com', '1a6ccedd98c9e78387d3283817438825a58ec010', 'f4552671f8909587cf485ea990207f3b', 0),
(4, 's', 'f', 'g', '9876543210', 'abc@gmail.com', '3488c62d4ffa2b5f5dceab74fed6f5d5765babda', '6a10bbd480e4c5573d8f3af73ae0454b', 0),
(6, 's', 'f', 'g', '9876543210', 'abc@gmail.com', '3488c62d4ffa2b5f5dceab74fed6f5d5765babda', '11b9842e0a271ff252c1903e7132cd68', 0),
(7, 's', 'w', 't', '1234567890', 'abc@gmail.com', '19f9932208fcef7a94a3966b7cb27199f169fd06', 'a2557a7b2e94197ff767970b67041697', 0),
(8, 's', 'w', 't', '1234567890', 'abc@gmail.com', '19f9932208fcef7a94a3966b7cb27199f169fd06', 'ab233b682ec355648e7891e66c54191b', 0),
(9, 's', 'w', 't', '1234567890', 'abc@gmail.com', '19f9932208fcef7a94a3966b7cb27199f169fd06', '69adc1e107f7f7d035d7baf04342e1ca', 0),
(10, 's', 'w', 't', '1234567890', 'abc@gmail.com', '19f9932208fcef7a94a3966b7cb27199f169fd06', 'b53b3a3d6ab90ce0268229151c9bde11', 0),
(11, 's', 'fs', 'a', '6789009876', 'xyz@gmail.com', '996ddc7f76c9b01deb5d527fe1e90f711bc91e01', '061412e4a03c02f9902576ec55ebbe77', 0);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_details`
--

DROP TABLE IF EXISTS `insurance_details`;
CREATE TABLE IF NOT EXISTS `insurance_details` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Policy_no` varchar(30) NOT NULL,
  `Vehicle_No` varchar(45) DEFAULT NULL,
  `Phone_no` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `insurance_details`
--

INSERT INTO `insurance_details` (`Case_ID`, `Policy_no`, `Vehicle_No`, `Phone_no`) VALUES
(1, 'BJrj27bk1855', 'rj27bk1855', 234567),
(2, 'MSrj27ce1213', 'rj27ce1213', 567890),
(3, 'LIgj06bf1718', 'gj06bf1718', 124531),
(4, 'BKmp44bk7332', 'mp44bk7332', 756432),
(5, 'NMdl17sv7077', 'dl17sv7077', 435689);

-- --------------------------------------------------------

--
-- Table structure for table `login_detail`
--

DROP TABLE IF EXISTS `login_detail`;
CREATE TABLE IF NOT EXISTS `login_detail` (
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

DROP TABLE IF EXISTS `personal_info`;
CREATE TABLE IF NOT EXISTS `personal_info` (
  `Name` varchar(40) NOT NULL,
  `Number` int(10) NOT NULL,
  `Type` varchar(45) NOT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`Name`, `Number`, `Type`) VALUES
('bk', 24, 'other'),
('golu', 123, 'police');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

DROP TABLE IF EXISTS `police`;
CREATE TABLE IF NOT EXISTS `police` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_No` varchar(45) NOT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Road_condition` varchar(100) DEFAULT NULL,
  `Report` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`Case_ID`, `Vehicle_No`, `Speed`, `Road_condition`, `Report`) VALUES
(1, 'rj27bk1855', 90, 'normal', 'The number of people in 2 bikes were 4 out of which died , driver-name:ram,shyam'),
(2, 'rj27ce1213', 50, 'slippery-road', 'Many people were present car and car slipped because of excess tar on road '),
(3, 'gj06bf1718', 70, 'concrete', 'Driver was totally drunk and was coming from party with his friends.All were of age around 23-24'),
(4, 'mp44bk7332', 50, 'perfect', 'Driver was not attentive as he was looking back and lost control over bike'),
(5, 'dl17sv7077', 40, 'patch-work', 'driver name-raju was driving the car it was at normal speed but brakes failed and car bumped into tree');

-- --------------------------------------------------------

--
-- Table structure for table `reporter`
--

DROP TABLE IF EXISTS `reporter`;
CREATE TABLE IF NOT EXISTS `reporter` (
  `Case_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Interview` blob,
  `Photos` blob,
  PRIMARY KEY (`Case_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
CREATE TABLE IF NOT EXISTS `verification` (
  `Case ID` int(11) NOT NULL,
  `Number` bigint(10) NOT NULL,
  PRIMARY KEY (`Case ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
