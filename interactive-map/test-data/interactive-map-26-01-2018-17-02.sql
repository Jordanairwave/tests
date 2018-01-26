# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: interactive-map
# Generation Time: 2018-01-26 17:02:23 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` text COLLATE utf8_unicode_ci,
  `last_name` text COLLATE utf8_unicode_ci,
  `mobile_number` int(11) DEFAULT NULL,
  `region` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `profile_pic` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;

INSERT INTO `sales` (`id`, `first_name`, `last_name`, `mobile_number`, `region`, `email`, `profile_pic`)
VALUES
	(13,'Bugs ','Bunny',1212121201,'Scotland','bugs@test.com','bugs.jpg'),
	(14,'Marvin','Martian',1212121202,'East Midlands','marvin@test.com','marvin.jpg'),
	(15,'Tom','Cat',1212121203,'London','tom@test.com','tom.jpg'),
	(16,'Daffy','Duck',1212121204,'South West','daffy@test.com','daffy.jpg'),
	(17,'Jerry','Mouse',1212121204,'Northen Irland','jerry@test.com','jerry.jpg'),
	(18,'Tweety','Pie',1212121205,'Yorkshire','tweety@test.com','tweety.jpg'),
	(19,'Top','Cat',1212121206,'North East','top@test.com','top.jpg'),
	(20,'Scooby','Doo',1212121207,'North West','scooby@test.com','scooby.jpg'),
	(21,'Scrappy','Doo',1212121208,'West Midlands','scrappy@test.com','scrappy.jpg'),
	(22,'Donald','Duck',1212121209,'South East','donald@test.com','donald.jpg'),
	(23,'Porky','Pig',1212121210,'East of England','porky@test.com','porky.jpg'),
	(24,'Micky','Mouse',1212121211,'Wales','micky@test.com','micky.jpg');

/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
