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
-- Table structure for table `ca_editor_ui_screen_type_restrictions`
--

DROP TABLE IF EXISTS `ca_editor_ui_screen_type_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_editor_ui_screen_type_restrictions` (
  `restriction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_num` tinyint(3) unsigned NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `screen_id` int(10) unsigned NOT NULL,
  `include_subtypes` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `settings` longtext NOT NULL,
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`restriction_id`),
  KEY `i_screen_id` (`screen_id`),
  KEY `i_type_id` (`type_id`),
  CONSTRAINT `fk_ca_editor_ui_screen_type_restrictions_screen_id` FOREIGN KEY (`screen_id`) REFERENCES `ca_editor_ui_screens` (`screen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_editor_ui_screen_type_restrictions`
--

LOCK TABLES `ca_editor_ui_screen_type_restrictions` WRITE;
/*!40000 ALTER TABLE `ca_editor_ui_screen_type_restrictions` DISABLE KEYS */;
INSERT INTO `ca_editor_ui_screen_type_restrictions` VALUES (1,20,87,105,0,'Tjs=',1),(5,20,87,55,0,'Tjs=',5),(6,20,88,55,0,'Tjs=',6),(7,20,87,56,0,'Tjs=',7),(8,20,88,56,0,'Tjs=',8),(9,20,87,57,0,'Tjs=',9),(10,20,88,57,0,'Tjs=',10);
/*!40000 ALTER TABLE `ca_editor_ui_screen_type_restrictions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:22:44
