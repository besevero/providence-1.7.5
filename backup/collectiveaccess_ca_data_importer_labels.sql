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
-- Table structure for table `ca_data_importer_labels`
--

DROP TABLE IF EXISTS `ca_data_importer_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_data_importer_labels` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `importer_id` int(10) unsigned NOT NULL,
  `locale_id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_sort` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `source_info` longtext NOT NULL,
  `is_preferred` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `u_all` (`importer_id`,`locale_id`,`name`,`is_preferred`),
  KEY `i_importer_id` (`importer_id`),
  KEY `i_locale_id` (`locale_id`),
  KEY `i_name_sort` (`name_sort`(128)),
  CONSTRAINT `fk_ca_data_importer_labels_importer_id` FOREIGN KEY (`importer_id`) REFERENCES `ca_data_importers` (`importer_id`),
  CONSTRAINT `fk_ca_data_importer_labels_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_data_importer_labels`
--

LOCK TABLES `ca_data_importer_labels` WRITE;
/*!40000 ALTER TABLE `ca_data_importer_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_data_importer_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:22
