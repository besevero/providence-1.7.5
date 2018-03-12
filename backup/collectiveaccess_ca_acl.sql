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
-- Table structure for table `ca_acl`
--

DROP TABLE IF EXISTS `ca_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_acl` (
  `acl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `table_num` tinyint(3) unsigned NOT NULL,
  `row_id` int(10) unsigned NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `notes` char(10) NOT NULL,
  `inherited_from_table_num` tinyint(3) unsigned DEFAULT NULL,
  `inherited_from_row_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`acl_id`),
  KEY `i_row_id` (`row_id`,`table_num`),
  KEY `i_user_id` (`user_id`),
  KEY `i_group_id` (`group_id`),
  KEY `i_inherited_from_table_num` (`inherited_from_table_num`),
  KEY `i_inherited_from_row_id` (`inherited_from_row_id`),
  CONSTRAINT `fk_ca_acl_group_id` FOREIGN KEY (`group_id`) REFERENCES `ca_user_groups` (`group_id`),
  CONSTRAINT `fk_ca_acl_user_id` FOREIGN KEY (`user_id`) REFERENCES `ca_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_acl`
--

LOCK TABLES `ca_acl` WRITE;
/*!40000 ALTER TABLE `ca_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_acl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:23:04
