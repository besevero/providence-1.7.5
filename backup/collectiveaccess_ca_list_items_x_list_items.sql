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
-- Table structure for table `ca_list_items_x_list_items`
--

DROP TABLE IF EXISTS `ca_list_items_x_list_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_list_items_x_list_items` (
  `relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term_left_id` int(10) unsigned NOT NULL,
  `term_right_id` int(10) unsigned NOT NULL,
  `type_id` smallint(5) unsigned DEFAULT NULL,
  `source_info` longtext NOT NULL,
  `sdatetime` decimal(30,20) DEFAULT NULL,
  `edatetime` decimal(30,20) DEFAULT NULL,
  `label_left_id` int(10) unsigned DEFAULT NULL,
  `label_right_id` int(10) unsigned DEFAULT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`relation_id`),
  UNIQUE KEY `u_all` (`term_left_id`,`term_right_id`,`type_id`,`sdatetime`,`edatetime`),
  KEY `i_term_left_id` (`term_left_id`),
  KEY `i_term_right_id` (`term_right_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_label_left_id` (`label_left_id`),
  KEY `i_label_right_id` (`label_right_id`),
  CONSTRAINT `ca_ca_list_items_x_list_items_term_left_id` FOREIGN KEY (`term_left_id`) REFERENCES `ca_list_items` (`item_id`),
  CONSTRAINT `ca_ca_list_items_x_list_items_term_right_id` FOREIGN KEY (`term_right_id`) REFERENCES `ca_list_items` (`item_id`),
  CONSTRAINT `ca_ca_list_items_x_list_items_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_relationship_types` (`type_id`),
  CONSTRAINT `fk_ca_list_items_x_list_items_label_left_id` FOREIGN KEY (`label_left_id`) REFERENCES `ca_list_item_labels` (`label_id`),
  CONSTRAINT `fk_ca_list_items_x_list_items_label_right_id` FOREIGN KEY (`label_right_id`) REFERENCES `ca_list_item_labels` (`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_list_items_x_list_items`
--

LOCK TABLES `ca_list_items_x_list_items` WRITE;
/*!40000 ALTER TABLE `ca_list_items_x_list_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_list_items_x_list_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:25
