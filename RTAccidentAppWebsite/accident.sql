-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2019 at 01:33 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
-- Table structure for table `accident report`
--

CREATE TABLE `accident report` (
  `Case ID` varchar(30) NOT NULL,
  `Vehcile_No` varchar(45) NOT NULL,
  `Casualty` int(11) DEFAULT NULL,
  `Injuries` int(11) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Cause` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Description` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `S.No` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `State` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Locality` varchar(45) NOT NULL,
  `Insurance_company` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`S.No`, `Title`, `State`, `City`, `Locality`, `Insurance_company`) VALUES
(1, 'Bike crash', 'Rajasthan', 'udaipur', 'Sector-14', 'Bajaj'),
(2, 'Car hit a scooty', 'Rajasthan', 'jaipur', 'Ganesh Nagar', 'Maruti_suzuki'),
(3, 'truck scrached a car', 'Madhya Pradesh', 'jodhpur', 'vaishali Nagar', 'LIC'),
(4, 'Bike fell in valley', 'Gujrat', 'surat', 'gb road', 'BK'),
(5, 'car in tree', 'maharashtra', 'pune', 'bandra', 'netmeds'),
(6, 'bike with car', 'gujrat', 'vadodra', '11 g', 'LIC');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_details`
--

CREATE TABLE `insurance_details` (
  `Case_ID` varchar(30) NOT NULL,
  `Policy_no` varchar(30) NOT NULL,
  `Vehicle_No` varchar(45) DEFAULT NULL,
  `Phone_no` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `Name` varchar(40) NOT NULL,
  `Number` varchar(12) NOT NULL,
  `Type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`Name`, `Number`, `Type`) VALUES
('afgasg', '1', 'POLICE'),
('rfgehn', '122431', 'POLICE'),
('sdfad', '12531', 'POLICE'),
('dsfh', '234', 'POLICE'),
('dfbh', '23462', 'POLICE'),
('sbn', '235', 'POLICE'),
('feges', '23542343', 'POLICE'),
('feges', '23542345', 'POLICE'),
('trhfgnb', '236326', 'POLICE'),
('sdtgh', '2365', 'POLICE'),
('dfbhg', '25', 'POLICE'),
('tghr', '263', 'POLICE'),
('afgasg', '3', 'POLICE'),
('afgasg', '4', 'POLICE'),
('afgasg', '5', 'POLICE'),
('rtjhnrtbw', '5234524', 'POLICE');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `Vehicle_No` varchar(45) NOT NULL,
  `Speed` int(11) DEFAULT NULL,
  `Road_condition` varchar(100) DEFAULT NULL,
  `Report` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reporter`
--

CREATE TABLE `reporter` (
  `Case_ID` varchar(30) NOT NULL,
  `Interview` blob,
  `Photos` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `Case ID` varchar(30) NOT NULL,
  `Number` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident report`
--
ALTER TABLE `accident report`
  ADD PRIMARY KEY (`Case ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `S.No_UNIQUE` (`S.No`);

--
-- Indexes for table `insurance_details`
--
ALTER TABLE `insurance_details`
  ADD PRIMARY KEY (`Case_ID`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`Number`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`Vehicle_No`);

--
-- Indexes for table `reporter`
--
ALTER TABLE `reporter`
  ADD PRIMARY KEY (`Case_ID`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`Case ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `S.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
