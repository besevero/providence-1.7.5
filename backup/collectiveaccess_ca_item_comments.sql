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
-- Table structure for table `ca_item_comments`
--

DROP TABLE IF EXISTS `ca_item_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_item_comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_num` tinyint(3) unsigned NOT NULL,
  `row_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `locale_id` smallint(5) unsigned NOT NULL,
  `media1` longblob NOT NULL,
  `media2` longblob NOT NULL,
  `media3` longblob NOT NULL,
  `media4` longblob NOT NULL,
  `comment` text,
  `rating` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_on` int(10) unsigned NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ip_addr` varchar(39) DEFAULT NULL,
  `moderated_on` int(10) unsigned DEFAULT NULL,
  `moderated_by_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `i_row_id` (`row_id`),
  KEY `i_table_num` (`table_num`),
  KEY `i_email` (`email`),
  KEY `i_user_id` (`user_id`),
  KEY `i_created_on` (`created_on`),
  KEY `i_access` (`access`),
  KEY `i_moderated_on` (`moderated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_item_comments`
--

LOCK TABLES `ca_item_comments` WRITE;
/*!40000 ALTER TABLE `ca_item_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_item_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:20:58
