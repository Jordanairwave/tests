# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Database: interactive-map
# Generation Time: 2018-02-05 16:04:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table postcodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `postcodes`;

CREATE TABLE `postcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `postcode` text COLLATE utf8_unicode_ci,
  `region` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `postcodes` WRITE;
/*!40000 ALTER TABLE `postcodes` DISABLE KEYS */;

INSERT INTO `postcodes` (`id`, `postcode`, `region`)
VALUES
	(2,'AB','Scotland'),
	(3,'DD','Scotland'),
	(4,'DG','Scotland'),
	(5,'EH','Scotland'),
	(6,'FK','Scotland'),
	(7,'G','Scotland'),
	(8,'HS','Scotland'),
	(9,'IV','Scotland'),
	(10,'KA','Scotland'),
	(11,'KW','Scotland'),
	(12,'KY','Scotland'),
	(13,'ML','Scotland'),
	(14,'PA','Scotland'),
	(15,'PH','Scotland'),
	(16,'ZE','Scotland'),
	(17,'DE','East Midlands'),
	(18,'DN','East Midlands'),
	(19,'LE','East Midlands'),
	(20,'LN','East Midlands'),
	(21,'MK','East Midlands'),
	(22,'NG','East Midlands'),
	(23,'NN','East Midlands'),
	(24,'OX','East Midlands'),
	(25,'PE','East Midlands'),
	(26,'S','East Midlands'),
	(27,'SK','East Midlands'),
	(28,'E','London'),
	(29,'EC','London'),
	(30,'N','London'),
	(31,'NW','London'),
	(32,'SE','London'),
	(33,'SW','London'),
	(34,'W','London'),
	(35,'WC','London'),
	(36,'BA','South West'),
	(37,'BH','South West'),
	(38,'BS','South West'),
	(39,'DT','South West'),
	(40,'EX','South West'),
	(41,'GL','South West'),
	(42,'PL','South West'),
	(43,'SN','South West'),
	(44,'SP','South West'),
	(45,'TA','South West'),
	(46,'TQ','South West'),
	(47,'TR','South West'),
	(48,'BT','Northen Ireland'),
	(49,'HD','Yorkshire and the Humber'),
	(50,'HG','Yorkshire and the Humber'),
	(51,'HU','Yorkshire and the Humber'),
	(52,'HX','Yorkshire and the Humber'),
	(53,'LS','Yorkshire and the Humber'),
	(54,'WF','Yorkshire and the Humber'),
	(55,'YO','Yorkshire and the Humber'),
	(56,'DH','North East'),
	(57,'DL','North East'),
	(58,'NE','North East'),
	(59,'SR','North East'),
	(60,'TD','North East'),
	(61,'TS','North East'),
	(62,'BB','North West'),
	(63,'BD','North West'),
	(64,'BL','North West'),
	(65,'CA','North West'),
	(66,'CW','North West'),
	(67,'FY','North West'),
	(68,'L','North West'),
	(69,'LA','North West'),
	(70,'M','North West'),
	(71,'OL','North West'),
	(72,'PR','North West'),
	(73,'WA','North West'),
	(74,'WN','North West'),
	(75,'B','West Midlands'),
	(76,'CV','West Midlands'),
	(77,'DY','West Midlands'),
	(78,'HR','West Midlands'),
	(79,'LD','West Midlands'),
	(80,'NP','West Midlands'),
	(81,'ST','West Midlands'),
	(82,'SY','West Midlands'),
	(83,'TF','West Midlands'),
	(84,'WR','West Midlands'),
	(85,'WS','West Midlands'),
	(86,'WV','West Midlands'),
	(87,'BN','South East'),
	(88,'BR','South East'),
	(89,'CR','South East'),
	(90,'CT','South East'),
	(91,'DA','South East'),
	(92,'GU','South East'),
	(93,'KT','South East'),
	(94,'ME','South East'),
	(95,'PO','South East'),
	(96,'RG','South East'),
	(97,'RH','South East'),
	(98,'SL','South East'),
	(99,'SM','South East'),
	(100,'SO','South East'),
	(101,'TN','South East'),
	(102,'TW','South East'),
	(103,'UB','South East'),
	(104,'AL','East of England'),
	(105,'CB','East of England'),
	(106,'CM','East of England'),
	(107,'CO','East of England'),
	(108,'EN','East of England'),
	(109,'HA','East of England'),
	(110,'HP','East of England'),
	(111,'IG','East of England'),
	(112,'IP','East of England'),
	(113,'LU','East of England'),
	(114,'NR','East of England'),
	(115,'RM','East of England'),
	(116,'SG','East of England'),
	(117,'SS','East of England'),
	(118,'WD','East of England'),
	(119,'CF','Wales'),
	(120,'CH','Wales'),
	(121,'LL','Wales'),
	(122,'SA','Wales');

/*!40000 ALTER TABLE `postcodes` ENABLE KEYS */;
UNLOCK TABLES;


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
	(17,'Jerry','Mouse',1212121204,'Northen Ireland','jerry@test.com','jerry.jpg'),
	(18,'Tweety','Pie',1212121205,'Yorkshire and the Humber','tweety@test.com','tweety.jpg'),
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
