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
-- Table structure for table `ca_bundle_display_placements`
--

DROP TABLE IF EXISTS `ca_bundle_display_placements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_bundle_display_placements` (
  `placement_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_id` int(10) unsigned NOT NULL,
  `bundle_name` varchar(255) NOT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` longtext NOT NULL,
  PRIMARY KEY (`placement_id`),
  KEY `i_bundle_name` (`bundle_name`),
  KEY `i_rank` (`rank`),
  KEY `i_display_id` (`display_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_bundle_display_placements`
--

LOCK TABLES `ca_bundle_display_placements` WRITE;
/*!40000 ALTER TABLE `ca_bundle_display_placements` DISABLE KEYS */;
INSERT INTO `ca_bundle_display_placements` VALUES (1,1,'ca_objects.idno',1,'Tjs='),(2,1,'ca_objects.preferred_labels',2,'Tjs='),(3,1,'ca_objects.description',3,'Tjs='),(4,1,'ca_objects.date',4,'Tjs='),(5,1,'ca_objects.type_id',5,'Tjs='),(6,1,'ca_entities',6,'Tjs=');
/*!40000 ALTER TABLE `ca_bundle_display_placements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:37
