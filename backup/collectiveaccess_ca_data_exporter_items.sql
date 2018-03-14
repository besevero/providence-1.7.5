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
-- Table structure for table `ca_data_exporter_items`
--

DROP TABLE IF EXISTS `ca_data_exporter_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_data_exporter_items` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `exporter_id` int(10) unsigned NOT NULL,
  `element` varchar(1024) NOT NULL,
  `context` varchar(1024) DEFAULT NULL,
  `source` varchar(1024) DEFAULT NULL,
  `settings` longtext NOT NULL,
  `hier_item_id` int(10) unsigned NOT NULL,
  `hier_left` decimal(30,20) unsigned NOT NULL,
  `hier_right` decimal(30,20) unsigned NOT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`),
  KEY `i_parent_id` (`parent_id`),
  KEY `i_exporter_id` (`exporter_id`),
  KEY `i_hier_left` (`hier_left`),
  KEY `i_hier_right` (`hier_right`),
  KEY `i_hier_item_id` (`hier_item_id`),
  CONSTRAINT `fk_ca_data_exporter_items_exporter_id` FOREIGN KEY (`exporter_id`) REFERENCES `ca_data_exporters` (`exporter_id`),
  CONSTRAINT `fk_ca_data_exporter_items_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `ca_data_exporter_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_data_exporter_items`
--

LOCK TABLES `ca_data_exporter_items` WRITE;
/*!40000 ALTER TABLE `ca_data_exporter_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_data_exporter_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:51
