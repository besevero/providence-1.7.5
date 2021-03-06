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
-- Table structure for table `ca_loans`
--

DROP TABLE IF EXISTS `ca_loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_loans` (
  `loan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `locale_id` smallint(5) unsigned DEFAULT NULL,
  `idno` varchar(255) NOT NULL,
  `idno_sort` varchar(255) NOT NULL,
  `is_template` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0',
  `source_id` int(10) unsigned DEFAULT NULL,
  `source_info` longtext NOT NULL,
  `hier_left` decimal(30,20) NOT NULL,
  `hier_right` decimal(30,20) NOT NULL,
  `hier_loan_id` int(10) unsigned NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`loan_id`),
  KEY `i_parent_id` (`parent_id`),
  KEY `i_type_id` (`type_id`),
  KEY `i_source_id` (`source_id`),
  KEY `i_locale_id` (`locale_id`),
  KEY `idno` (`idno`),
  KEY `idno_sort` (`idno_sort`),
  KEY `hier_left` (`hier_left`),
  KEY `hier_right` (`hier_right`),
  KEY `hier_loan_id` (`hier_loan_id`),
  KEY `i_view_count` (`view_count`),
  KEY `i_loan_filter` (`loan_id`,`deleted`,`access`),
  CONSTRAINT `fk_ca_loans_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`),
  CONSTRAINT `fk_ca_loans_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `ca_loans` (`loan_id`),
  CONSTRAINT `fk_ca_loans_source_id` FOREIGN KEY (`source_id`) REFERENCES `ca_list_items` (`item_id`),
  CONSTRAINT `fk_ca_loans_type_id` FOREIGN KEY (`type_id`) REFERENCES `ca_list_items` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_loans`
--

LOCK TABLES `ca_loans` WRITE;
/*!40000 ALTER TABLE `ca_loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `ca_loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:52
