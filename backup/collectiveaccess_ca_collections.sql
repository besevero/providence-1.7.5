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
-- Table structure for table `ca_collections`
--

DROP TABLE IF EXISTS `ca_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_collections` (
  `collection_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `locale_id` smallint(5) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `idno` varchar(255) NOT NULL,
  `idno_sort` varchar(255) NOT NULL,
  `is_template` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `commenting_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tagging_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `source_id` int(10) unsigned DEFAULT NULL,
  `source_info` longtext NOT NULL,
  `hier_collection_id` int(10) unsigned NOT NULL,
  `hier_left` decimal(30,20) NOT NULL,
  `hier_right` decimal(30,20) NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `acl_inherit_from_parent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`collection_id`),
  KEY `i_parent_id` (`parent_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_idno` (`idno`),
  KEY `i_idno_sort` (`idno_sort`),
  KEY `i_locale_id` (`locale_id`),
  KEY `i_source_id` (`source_id`),
  KEY `i_hier_collection_id` (`hier_collection_id`),
  KEY `i_hier_left` (`hier_left`),
  KEY `i_hier_right` (`hier_right`),
  KEY `i_acl_inherit_from_parent` (`acl_inherit_from_parent`),
  KEY `i_view_count` (`view_count`),
  KEY `i_collection_filter` (`collection_id`,`deleted`,`access`),
  CONSTRAINT `fk_ca_collections_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`),
  CONSTRAINT `fk_ca_collections_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `ca_collections` (`collection_id`),
  CONSTRAINT `fk_ca_collections_source_id` FOREIGN KEY (`source_id`) REFERENCES `ca_list_items` (`item_id`),
  CONSTRAINT `fk_ca_collections_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_list_items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_collections`
--

LOCK TABLES `ca_collections` WRITE;
/*!40000 ALTER TABLE `ca_collections` DISABLE KEYS */;
INSERT INTO `ca_collections` VALUES (1,NULL,NULL,126,'colecaoTeste','colecaoTeste',0,0,0,0,0,NULL,'Tjs=',1,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,1,0),(3,NULL,NULL,126,'colecaoTeste2','colecaoTeste2',0,0,0,0,0,NULL,'Tjs=',3,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,3,0);
/*!40000 ALTER TABLE `ca_collections` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:22:39
