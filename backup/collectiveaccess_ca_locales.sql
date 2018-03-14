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
-- Table structure for table `ca_locales`
--

DROP TABLE IF EXISTS `ca_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_locales` (
  `locale_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `language` varchar(3) NOT NULL,
  `country` char(2) NOT NULL,
  `dialect` varchar(8) DEFAULT NULL,
  `dont_use_for_cataloguing` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`locale_id`),
  KEY `u_language_country` (`language`,`country`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_locales`
--

LOCK TABLES `ca_locales` WRITE;
/*!40000 ALTER TABLE `ca_locales` DISABLE KEYS */;
INSERT INTO `ca_locales` VALUES (1,'English (US)','en','US',NULL,0),(2,'Français','fr','FR',NULL,1),(3,'English (Canadian)','en','CA',NULL,1),(4,'English (Australian)','en','AU',NULL,1),(5,'Deutsch (Deutschland)','de','DE',NULL,1),(6,'Deutsch (Österreich)','de','AT',NULL,1),(7,'Français (Canadien)','fr','CA',NULL,1),(8,'Czech','cs','CZ',NULL,1),(9,'Greek','el','GR',NULL,1),(10,'Español','es','ES',NULL,1),(11,'Italiano','it','IT',NULL,1),(12,'Nederlands','nl','NL',NULL,1),(13,'Serbian','sr','RS',NULL,1),(14,'Svenska','sv','SE',NULL,1);
/*!40000 ALTER TABLE `ca_locales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:01
