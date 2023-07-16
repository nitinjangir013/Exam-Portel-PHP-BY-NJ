-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2023 at 05:54 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'admin', '3711e55b379e27ef0f5a6144bf4c45a4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

DROP TABLE IF EXISTS `tbl_ans`;
CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quesNo` int NOT NULL,
  `rightAns` int NOT NULL DEFAULT '0',
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(1, 1, 0, 'clean separation of design & content'),
(2, 1, 0, 'minimal code duplication'),
(3, 1, 1, 'Highest priority'),
(4, 1, 0, 'Reduces page download time'),
(5, 2, 0, 'Text-decoration:line-through'),
(6, 2, 1, 'Text-decoration:in-line'),
(7, 2, 0, 'Text-decoration:overline'),
(8, 2, 0, 'Text-decoration:underline'),
(9, 3, 0, 'Cue'),
(10, 3, 0, 'Voice-family'),
(11, 3, 1, 'Load'),
(12, 3, 0, 'Speak'),
(13, 4, 0, 'Class'),
(14, 4, 1, 'Style'),
(15, 4, 0, 'span'),
(16, 4, 0, 'link'),
(17, 5, 0, 'Slow'),
(18, 5, 1, 'Normal'),
(19, 5, 0, 'Fast'),
(20, 5, 0, 'None'),
(21, 6, 0, 'DoC'),
(22, 6, 0, 'JNDI'),
(23, 6, 1, 'IoC'),
(24, 6, 0, 'XML');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

DROP TABLE IF EXISTS `tbl_ques`;
CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quesNo` int NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(1, 1, 'Which of the following does not apply to external styles?'),
(2, 2, 'Which of the following is not a valid text-decoration option?'),
(3, 3, 'Which of the following is not a valid property of an aural style sheet?'),
(4, 4, 'Which element property is required to define internal styles?'),
(5, 5, 'What is the initial value of the marque speed property?'),
(6, 6, 'The core of the spring framework is based on the principle of');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(5, 'Nitin', 'nitin', 'ca7f39f8747a2dae7fb6021abee34794', 'nitin@gmail.com', 1),
(6, 'Aman', 'aman', '8276bff3d2bbd1f7c4c3c3b6981d0658', 'aman@gmail.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
