-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2015 at 02:50 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web2-final`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblforum`
--

CREATE TABLE IF NOT EXISTS `tblforum` (
`forumid` int(100) NOT NULL,
  `forumcategoryid` int(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `titledescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblforumcategory`
--

CREATE TABLE IF NOT EXISTS `tblforumcategory` (
  `forumcategoryid` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE IF NOT EXISTS `tblitem` (
`itemid` int(100) NOT NULL,
  `itemcategoryid` int(100) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `itemdescription` int(50) NOT NULL,
  `itemprice` int(11) NOT NULL,
  `locationID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblitemcategory`
--

CREATE TABLE IF NOT EXISTS `tblitemcategory` (
`itemcategoryid` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblitemcategory`
--

INSERT INTO `tblitemcategory` (`itemcategoryid`, `category`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbllocation`
--

CREATE TABLE IF NOT EXISTS `tbllocation` (
`locationID` int(100) NOT NULL,
  `locationName` varchar(100) NOT NULL,
  `mapx` int(100) NOT NULL,
  `mapy` int(100) NOT NULL,
  `mapz` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllocation`
--

INSERT INTO `tbllocation` (`locationID`, `locationName`, `mapx`, `mapy`, `mapz`) VALUES
(1, '', 0, 0, 0),
(2, '', 0, 0, 0),
(3, '', 0, 0, 0),
(4, '', 0, 0, 0),
(5, '', 0, 0, 0),
(6, '', 0, 0, 0),
(7, '', 0, 0, 0),
(8, '', 0, 0, 0),
(9, '', 0, 0, 0),
(10, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblpost`
--

CREATE TABLE IF NOT EXISTS `tblpost` (
`postid` int(11) NOT NULL,
  `postidapprove` int(100) NOT NULL,
  `postiddenied` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpostapprove`
--

CREATE TABLE IF NOT EXISTS `tblpostapprove` (
`postidapprove` int(100) NOT NULL,
  `itemcategoryid` int(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `x` int(100) NOT NULL,
  `y` int(100) NOT NULL,
  `itemname` varchar(50) NOT NULL,
  `itemdescription` varchar(50) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpostdenied`
--

CREATE TABLE IF NOT EXISTS `tblpostdenied` (
  `postiddenied` int(11) NOT NULL,
  `itemcategoryid` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `itemname` varchar(11) NOT NULL,
  `itemdescription` varchar(100) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
`userid` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `accesslevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblforum`
--
ALTER TABLE `tblforum`
 ADD PRIMARY KEY (`forumid`);

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
 ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `tblitemcategory`
--
ALTER TABLE `tblitemcategory`
 ADD PRIMARY KEY (`itemcategoryid`);

--
-- Indexes for table `tbllocation`
--
ALTER TABLE `tbllocation`
 ADD PRIMARY KEY (`locationID`);

--
-- Indexes for table `tblpost`
--
ALTER TABLE `tblpost`
 ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblpostapprove`
--
ALTER TABLE `tblpostapprove`
 ADD PRIMARY KEY (`postidapprove`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblforum`
--
ALTER TABLE `tblforum`
MODIFY `forumid` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblitem`
--
ALTER TABLE `tblitem`
MODIFY `itemid` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblitemcategory`
--
ALTER TABLE `tblitemcategory`
MODIFY `itemcategoryid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbllocation`
--
ALTER TABLE `tbllocation`
MODIFY `locationID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblpost`
--
ALTER TABLE `tblpost`
MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblpostapprove`
--
ALTER TABLE `tblpostapprove`
MODIFY `postidapprove` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
