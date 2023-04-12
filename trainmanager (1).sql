-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2022 at 09:04 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cusid` int(10) NOT NULL,
  `cusadd` int(20) NOT NULL,
  `cusname` int(20) NOT NULL,
  `ttid` int(10) NOT NULL COMMENT 'foreign key',
  PRIMARY KEY (`cusid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `loginid` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `roleid` int(10) NOT NULL COMMENT 'foreign key',
  `userid` int(10) NOT NULL COMMENT 'foreign key',
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `username`, `password`, `roleid`, `userid`) VALUES
(101, 'yaseen', 'yaseen', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `roleid` int(10) NOT NULL,
  `rolename` varchar(20) NOT NULL,
  `roledesc` varchar(20) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
CREATE TABLE IF NOT EXISTS `station` (
  `stndesc` varchar(20) NOT NULL,
  `stnid` int(10) NOT NULL,
  `stntype` varchar(20) NOT NULL,
  `stnname` varchar(20) NOT NULL,
  PRIMARY KEY (`stnid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `ttid` int(10) NOT NULL,
  `ttdesc` varchar(20) NOT NULL,
  PRIMARY KEY (`ttid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
CREATE TABLE IF NOT EXISTS `trains` (
  `trnno` int(10) NOT NULL,
  `trnname` varchar(20) NOT NULL,
  `trnticket` varchar(20) NOT NULL,
  `trntype` varchar(20) NOT NULL,
  PRIMARY KEY (`trnno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(10) NOT NULL,
  `trnno` int(10) NOT NULL COMMENT 'foreign key',
  `stnno` int(10) NOT NULL COMMENT 'foreign key',
  `cusid` int(10) NOT NULL COMMENT 'foreign key',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
