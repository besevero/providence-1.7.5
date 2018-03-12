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
-- Table structure for table `ca_movements_x_collections`
--

DROP TABLE IF EXISTS `ca_movements_x_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_movements_x_collections` (
  `relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movement_id` int(10) unsigned NOT NULL,
  `collection_id` int(10) unsigned NOT NULL,
  `type_id` smallint(5) unsigned NOT NULL,
  `source_info` longtext NOT NULL,
  `sdatetime` decimal(30,20) DEFAULT NULL,
  `edatetime` decimal(30,20) DEFAULT NULL,
  `label_left_id` int(10) unsigned DEFAULT NULL,
  `label_right_id` int(10) unsigned DEFAULT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relation_id`),
  UNIQUE KEY `u_all` (`movement_id`,`collection_id`,`type_id`,`sdatetime`,`edatetime`),
  KEY `i_movement_id` (`movement_id`),
  KEY `i_collection_id` (`collection_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_label_left_id` (`label_left_id`),
  KEY `i_label_right_id` (`label_right_id`),
  CONSTRAINT `fk_ca_movements_x_collections_collection_id` FOREIGN KEY (`collection_id`) REFERENCES `ca_collections` (`collection_id`),
  CONSTRAINT `fk_ca_movements_x_collections_label_left_id` FOREIGN KEY (`label_left_id`) REFERENCES `ca_movement_labels` (`label_id`),
  CONSTRAINT `fk_ca_movements_x_collections_label_right_id` FOREIGN KEY (`label_right_id`) REFERENCES `ca_collection_labels` (`label_id`),
  CONSTRAINT `fk_ca_movements_x_collections_movement_id` FOREIGN KEY (`movement_id`) REFERENCES `ca_movements` (`movement_id`),
  CONSTRAINT `fk_ca_movements_x_collections_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_relationship_types` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_movements_x_collections`
--

LOCK TABLES `ca_movements_x_collections` WRITE;
/*!40000 ALTER TABLE `ca_movements_x_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_movements_x_collections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:39
