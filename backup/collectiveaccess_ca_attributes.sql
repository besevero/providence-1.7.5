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
-- Table structure for table `ca_attributes`
--

DROP TABLE IF EXISTS `ca_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_attributes` (
  `attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `element_id` smallint(5) unsigned NOT NULL,
  `locale_id` smallint(5) unsigned DEFAULT NULL,
  `table_num` tinyint(3) unsigned NOT NULL,
  `row_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`attribute_id`),
  KEY `i_locale_id` (`locale_id`),
  KEY `i_row_id` (`row_id`),
  KEY `i_table_num` (`table_num`),
  KEY `i_element_id` (`element_id`),
  KEY `i_row_table_num` (`row_id`,`table_num`),
  CONSTRAINT `fk_ca_attributes_element_id` FOREIGN KEY (`element_id`) REFERENCES `ca_metadata_elements` (`element_id`),
  CONSTRAINT `fk_ca_attributes_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_attributes`
--

LOCK TABLES `ca_attributes` WRITE;
/*!40000 ALTER TABLE `ca_attributes` DISABLE KEYS */;
INSERT INTO `ca_attributes` VALUES (1,97,1,57,1),(2,98,1,57,1),(3,99,1,57,1),(4,100,1,57,1),(5,101,1,57,1),(6,102,1,57,1),(7,103,1,57,1),(8,104,1,57,1),(9,110,1,57,1),(10,111,1,57,1),(11,116,1,57,1),(12,121,1,57,1),(13,122,1,57,1),(14,129,1,57,1),(15,130,1,57,1),(16,131,1,57,1),(17,132,1,57,1),(18,141,1,57,1),(19,142,1,57,1),(20,143,1,57,1),(21,144,1,57,1),(22,145,1,57,1),(23,146,1,57,1),(24,147,1,57,1),(25,416,1,57,1),(26,431,1,57,1),(27,432,1,57,1),(28,172,1,57,1),(29,177,1,57,1),(30,178,1,57,1),(31,179,1,57,1),(32,180,1,57,1),(33,97,1,57,2),(34,98,1,57,2),(35,99,1,57,2),(36,100,1,57,2),(37,101,1,57,2),(38,102,1,57,2),(39,103,1,57,2),(40,104,1,57,2),(41,110,1,57,2),(42,111,1,57,2),(43,116,1,57,2),(44,121,1,57,2),(45,122,1,57,2),(46,129,1,57,2),(47,130,1,57,2),(48,131,1,57,2),(49,132,1,57,2),(50,141,1,57,2),(51,142,1,57,2),(52,143,1,57,2),(53,144,1,57,2),(54,145,1,57,2),(55,146,1,57,2),(56,147,1,57,2),(57,416,1,57,2),(58,431,1,57,2),(59,432,1,57,2),(60,172,1,57,2),(61,177,1,57,2),(62,178,1,57,2),(63,179,1,57,2),(64,180,1,57,2),(65,97,1,57,3),(66,98,1,57,3),(67,99,1,57,3),(68,100,1,57,3),(69,101,1,57,3),(70,102,1,57,3),(71,103,1,57,3),(72,104,1,57,3),(73,110,1,57,3),(74,111,1,57,3),(75,116,1,57,3),(76,121,1,57,3),(77,122,1,57,3),(78,129,1,57,3),(79,130,1,57,3),(80,131,1,57,3),(81,132,1,57,3),(82,141,1,57,3),(83,142,1,57,3),(84,143,1,57,3),(85,144,1,57,3),(86,145,1,57,3),(87,146,1,57,3),(88,147,1,57,3),(89,416,1,57,3),(90,431,1,57,3),(91,432,1,57,3),(92,172,1,57,3),(93,177,1,57,3),(94,178,1,57,3),(95,179,1,57,3),(96,180,1,57,3),(97,97,1,57,4),(98,98,1,57,4),(99,99,1,57,4),(100,100,1,57,4),(101,101,1,57,4),(102,102,1,57,4),(103,103,1,57,4),(104,104,1,57,4),(105,110,1,57,4),(106,111,1,57,4),(107,116,1,57,4),(108,121,1,57,4),(109,122,1,57,4),(110,129,1,57,4),(111,130,1,57,4),(112,131,1,57,4),(113,132,1,57,4),(114,141,1,57,4),(115,142,1,57,4),(116,143,1,57,4),(117,144,1,57,4),(118,145,1,57,4),(119,146,1,57,4),(120,147,1,57,4),(121,416,1,57,4),(122,431,1,57,4),(123,432,1,57,4),(124,172,1,57,4),(125,177,1,57,4),(126,178,1,57,4),(127,179,1,57,4),(128,180,1,57,4),(129,22,1,72,2),(130,34,1,72,2),(131,161,1,57,2),(132,158,1,57,2),(133,152,1,57,2),(134,157,1,57,2),(135,167,1,57,2),(136,161,1,57,2),(137,158,1,57,2),(138,152,1,57,2),(140,167,1,57,2),(141,496,1,57,2),(142,498,1,57,2),(143,66,1,57,2),(144,160,1,57,2),(145,22,1,57,2),(146,465,1,57,2),(147,498,1,57,2),(148,498,1,57,2),(149,498,1,57,2),(150,500,1,57,2),(152,499,1,20,3),(153,499,1,20,4),(154,22,1,51,1),(155,22,1,51,2),(156,22,1,13,1),(157,34,1,13,1),(160,22,1,72,3),(161,481,1,72,3),(162,403,1,72,3),(163,34,1,72,3),(164,499,1,20,6),(165,499,1,20,7),(166,499,1,20,8),(167,22,1,57,5),(168,178,1,57,5),(169,455,1,20,12),(170,456,1,20,12),(171,502,1,20,12),(172,503,1,20,12),(173,461,1,20,12),(174,462,1,20,12),(175,463,1,20,12),(176,465,1,20,12),(177,22,1,13,3),(178,34,1,13,3);
/*!40000 ALTER TABLE `ca_attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:23:16
