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
-- Table structure for table `ca_entities`
--

DROP TABLE IF EXISTS `ca_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_entities` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `locale_id` smallint(5) unsigned DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `idno` varchar(255) NOT NULL,
  `idno_sort` varchar(255) NOT NULL,
  `is_template` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `commenting_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tagging_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `source_info` longtext NOT NULL,
  `life_sdatetime` decimal(30,20) DEFAULT NULL,
  `life_edatetime` decimal(30,20) DEFAULT NULL,
  `hier_entity_id` int(10) unsigned NOT NULL,
  `hier_left` decimal(30,20) NOT NULL,
  `hier_right` decimal(30,20) NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entity_id`),
  KEY `i_source_id` (`source_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_idno` (`idno`),
  KEY `i_idno_sort` (`idno_sort`),
  KEY `i_hier_entity_id` (`hier_entity_id`),
  KEY `i_locale_id` (`locale_id`),
  KEY `i_parent_id` (`parent_id`),
  KEY `i_hier_left` (`hier_left`),
  KEY `i_hier_right` (`hier_right`),
  KEY `i_life_sdatetime` (`life_sdatetime`),
  KEY `i_life_edatetime` (`life_edatetime`),
  KEY `i_view_count` (`view_count`),
  KEY `i_entity_filter` (`entity_id`,`deleted`,`access`),
  CONSTRAINT `fk_ca_entities_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`),
  CONSTRAINT `fk_ca_entities_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `ca_entities` (`entity_id`),
  CONSTRAINT `fk_ca_entities_source_id` FOREIGN KEY (`source_id`) REFERENCES `ca_list_items` (`item_id`),
  CONSTRAINT `fk_ca_entities_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_list_items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_entities`
--

LOCK TABLES `ca_entities` WRITE;
/*!40000 ALTER TABLE `ca_entities` DISABLE KEYS */;
INSERT INTO `ca_entities` VALUES (1,NULL,NULL,NULL,87,'bernardo','bernardo    ',0,0,0,0,0,'Tjs=',NULL,NULL,1,1.00000000000000000000,4294967296.00000000000000000000,1,0,0,1),(3,NULL,NULL,NULL,89,'','            ',0,0,0,0,0,'Tjs=',NULL,NULL,3,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,3),(4,NULL,NULL,NULL,89,'brasileira','brasileira  ',0,0,0,0,0,'Tjs=',NULL,NULL,4,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,4),(5,NULL,NULL,NULL,88,'Organização Teste','Organiza    o           Teste       ',0,0,0,0,0,'Tjs=',NULL,NULL,5,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,5),(6,NULL,NULL,NULL,89,'cultura1','cultura1    ',0,0,0,0,0,'Tjs=',NULL,NULL,6,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,6),(7,NULL,NULL,NULL,89,'cultura2','cultura2    ',0,0,0,0,0,'Tjs=',NULL,NULL,7,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,7),(8,NULL,NULL,NULL,89,'cultura3','cultura3    ',0,0,0,0,0,'Tjs=',NULL,NULL,8,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,8),(9,NULL,NULL,NULL,87,'pessoa1','pessoa1     ',0,0,0,0,0,'Tjs=',NULL,NULL,9,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,9),(10,NULL,NULL,NULL,88,'organizacaoTeste','organizacaoTeste',0,0,0,0,0,'Tjs=',NULL,NULL,10,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,10),(12,NULL,NULL,NULL,87,'usuarioTeste2','usuarioTeste2',0,0,0,0,0,'Tjs=',NULL,NULL,12,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,12),(13,NULL,NULL,NULL,88,'organizacaoTeste2','organizacaoTeste2',0,0,0,0,0,'Tjs=',NULL,NULL,13,1.00000000000000000000,4294967296.00000000000000000000,0,0,0,13);
/*!40000 ALTER TABLE `ca_entities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:22:13
