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
-- Table structure for table `ca_editor_uis`
--

DROP TABLE IF EXISTS `ca_editor_uis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_editor_uis` (
  `ui_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `is_system_ui` tinyint(3) unsigned NOT NULL,
  `editor_type` tinyint(3) unsigned NOT NULL,
  `editor_code` varchar(100) DEFAULT NULL,
  `color` char(6) DEFAULT NULL,
  `icon` longblob NOT NULL,
  PRIMARY KEY (`ui_id`),
  UNIQUE KEY `u_code` (`editor_code`),
  KEY `i_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_editor_uis`
--

LOCK TABLES `ca_editor_uis` WRITE;
/*!40000 ALTER TABLE `ca_editor_uis` DISABLE KEYS */;
INSERT INTO `ca_editor_uis` VALUES (1,NULL,1,133,'loan_cataloguers_ui','',''),(2,NULL,1,137,'movement_cataloguers_ui','',''),(3,NULL,1,36,'list_cataloguers_ui','',''),(4,NULL,1,33,'list_item_cataloguers_ui','',''),(5,NULL,1,79,'relationship_types_config_ui','',''),(6,NULL,1,103,'set_cataloguers_ui','',''),(7,NULL,1,105,'set_item_cataloguers_ui','',''),(8,NULL,1,121,'search_forms_config_ui','',''),(9,NULL,1,124,'bundle_display_config_ui','',''),(10,NULL,1,153,'tour_editor_ui','',''),(11,NULL,1,155,'tour_stop_editor_ui','',''),(12,NULL,1,235,'site_page_editor_ui','',''),(13,NULL,1,57,'object_cataloguers_ui','',''),(14,NULL,1,20,'entity_cataloguers_ui','',''),(15,NULL,1,72,'place_cataloguers_ui','',''),(16,NULL,1,67,'occurrence_cataloguers_ui','',''),(17,NULL,1,13,'collection_cataloguers_ui','',''),(18,NULL,1,89,'storage_locations_cataloguers_ui','',''),(19,NULL,1,51,'object_lots_cataloguers_ui','',''),(20,NULL,1,56,'representation_cataloguers_ui','',''),(21,NULL,1,82,'representation_annotation_cataloguers_ui','',''),(22,NULL,1,101,'ui_editor','000000',''),(23,NULL,1,100,'ui_screen_editor','CC0000',''),(24,NULL,0,20,NULL,'','');
/*!40000 ALTER TABLE `ca_editor_uis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:36
