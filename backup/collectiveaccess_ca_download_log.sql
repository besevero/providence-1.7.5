-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: collectiveaccess
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `ca_download_log`
--

DROP TABLE IF EXISTS `ca_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_download_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_datetime` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_addr` char(15) DEFAULT NULL,
  `table_num` tinyint(3) unsigned NOT NULL,
  `row_id` int(10) unsigned NOT NULL,
  `representation_id` int(10) unsigned DEFAULT NULL,
  `download_source` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `fk_ca_download_log_user_id` (`user_id`),
  KEY `fk_ca_download_log_representation_id` (`representation_id`),
  KEY `i_table_num_row_id` (`table_num`,`row_id`),
  KEY `i_log_datetime` (`log_datetime`),
  CONSTRAINT `fk_ca_download_log_representation_id` FOREIGN KEY (`representation_id`) REFERENCES `ca_object_representations` (`representation_id`),
  CONSTRAINT `fk_ca_download_log_user_id` FOREIGN KEY (`user_id`) REFERENCES `ca_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_download_log`
--

LOCK TABLES `ca_download_log` WRITE;
/*!40000 ALTER TABLE `ca_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_download_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:35
