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
-- Table structure for table `ca_entity_labels`
--

DROP TABLE IF EXISTS `ca_entity_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_entity_labels` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `locale_id` smallint(5) unsigned NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `displayname` varchar(512) NOT NULL,
  `forename` varchar(100) NOT NULL,
  `other_forenames` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `surname` varchar(512) NOT NULL,
  `prefix` varchar(100) NOT NULL,
  `suffix` varchar(100) NOT NULL,
  `name_sort` varchar(512) NOT NULL,
  `source_info` longtext NOT NULL,
  `is_preferred` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `u_all` (`entity_id`,`forename`(50),`other_forenames`(50),`middlename`(50),`surname`(50),`type_id`,`locale_id`),
  KEY `i_entity_id` (`entity_id`),
  KEY `i_forename` (`forename`),
  KEY `i_surname` (`surname`(128)),
  KEY `i_locale_id` (`locale_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_name_sort` (`name_sort`(128)),
  CONSTRAINT `fk_ca_entity_labels_entity_id` FOREIGN KEY (`entity_id`) REFERENCES `ca_entities` (`entity_id`),
  CONSTRAINT `fk_ca_entity_labels_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`),
  CONSTRAINT `fk_ca_entity_labels_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_list_items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_entity_labels`
--

LOCK TABLES `ca_entity_labels` WRITE;
/*!40000 ALTER TABLE `ca_entity_labels` DISABLE KEYS */;
INSERT INTO `ca_entity_labels` VALUES (1,1,1,NULL,'Bernardo','Bernardo','','Cirne','Severo','','','Bernardo','',1),(2,3,1,NULL,'[EM BRANCO]','[EM','','','BRANCO]','','','EM BRANCO','',1),(3,4,1,NULL,'[EM BRANCO]','[EM','','','BRANCO]','','','EM BRANCO','',1),(4,5,1,NULL,'Teste','','','','Teste','','','Teste','',1),(5,6,1,NULL,'Teste2','','','','Teste2','','','Teste000000000000002','',1),(6,7,1,NULL,'[EM BRANCO]','[EM','','','BRANCO]','','','EM BRANCO','',1),(7,8,1,NULL,'[EM BRANCO]','[EM','','','BRANCO]','','','EM BRANCO','',1),(8,9,1,NULL,'Pessoa 1','Pessoa','','','1','','','Pessoa 000000000000001','',1),(9,10,1,NULL,'Organização Teste','Organização','','','Teste','','','Organização Teste','',1),(10,12,1,NULL,'teste teste','teste','','','teste','','','teste teste','',1),(11,13,1,NULL,'Organização teste 2','Organização teste 2','','','','','','Organização teste 000000000000002','',1);
/*!40000 ALTER TABLE `ca_entity_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:04
