-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.34 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cms
CREATE DATABASE IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cms`;

-- Dumping structure for table cms.classestable
CREATE TABLE IF NOT EXISTS `classestable` (
  `Class_id` int DEFAULT NULL,
  `Class_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table cms.classestable: ~10 rows (approximately)
INSERT INTO `classestable` (`Class_id`, `Class_name`) VALUES
	(1, 'Grade 10 Science'),
	(2, 'Grade 10 English'),
	(3, 'Grade 10 Sinhala'),
	(4, 'Grade 10 Business studies and Accounting'),
	(5, 'Grade 10 Mathematics'),
	(6, 'Grade 11 Science'),
	(7, 'Grade 11 English'),
	(8, 'Grade 11 Sinhala'),
	(9, 'Grade 11 Business studies and Accounting'),
	(10, 'Grade 11 Mathematics');

-- Dumping structure for table cms.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(200) DEFAULT NULL,
  `Date_Of_Birth` datetime DEFAULT NULL,
  `School` varchar(200) DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Medium` varchar(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `TelephoneNumber` bigint DEFAULT NULL,
  `ParentName` varchar(200) DEFAULT NULL,
  `ParentTelephone` bigint DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table cms.student: ~0 rows (approximately)

-- Dumping structure for table cms.studentclass
CREATE TABLE IF NOT EXISTS `studentclass` (
  `ClassInfo_id` int NOT NULL AUTO_INCREMENT,
  `Student_id` int NOT NULL,
  `class_id` int NOT NULL,
  PRIMARY KEY (`ClassInfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table cms.studentclass: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
