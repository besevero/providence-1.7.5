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
-- Table structure for table `ca_editor_ui_labels`
--

DROP TABLE IF EXISTS `ca_editor_ui_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_editor_ui_labels` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ui_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `locale_id` smallint(6) NOT NULL,
  PRIMARY KEY (`label_id`),
  KEY `i_ui_id` (`ui_id`),
  KEY `i_locale_id` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_editor_ui_labels`
--

LOCK TABLES `ca_editor_ui_labels` WRITE;
/*!40000 ALTER TABLE `ca_editor_ui_labels` DISABLE KEYS */;
INSERT INTO `ca_editor_ui_labels` VALUES (1,1,'Loan editor','',1),(2,1,'Loan editor','',3),(3,1,'Editeur de prêt','',2),(4,1,'Lån redigerare','',14),(5,2,'Movement editor','',1),(6,2,'Movement editor','',3),(7,2,'Editeur de mouvement','',2),(8,2,'Förflyttning redigerare','',14),(9,3,'List editor','',1),(10,3,'List editor','',3),(11,3,'Editeur de liste','',2),(12,3,'List redigerare','',14),(13,4,'List item editor','',1),(14,4,'List item editor','',3),(15,4,'Editeur d\'item de liste','',2),(16,4,'Listpost redigerare','',14),(17,5,'Relationship types configuration editor','',1),(18,5,'Relationship types configuration editor','',3),(19,5,'Editeur de configuration de types de relation','',2),(20,5,'Relationstyper konfigurationsredigerare','',14),(21,6,'Set editor','',1),(22,6,'Editeur de jeu','',2),(23,7,'Set item editor','',1),(24,7,'Editeur de l\'item du jeu','',2),(25,8,'Search forms configuration editor','',1),(26,8,'Search forms configuration editor','',3),(27,8,'Editeur de configuration de formulaires de recherche','',2),(28,8,'Sök formulär konfigurationsredigerare','',14),(29,9,'Display list configuration editor','',1),(30,9,'Display list configuration editor','',3),(31,9,'Editeur de configuration de liste','',2),(32,9,'Display list konfigurationsredigerare','',14),(33,10,'Tour editor','',1),(34,10,'Tour editor','',3),(35,10,'Tour editor','',2),(36,10,'Tur redigerare','',14),(37,11,'Tour stop editor','',1),(38,11,'Tour stop editor','',3),(39,11,'Tour stop editor','',2),(40,11,'Tur stopp redigerare','',14),(41,12,'Site page editor','',1),(42,13,'Editor de Objetos','',1),(43,13,'Editeur de l\'objet','',2),(44,14,'Entity editor','',1),(45,14,'Editeur d\'entité','',2),(46,15,'Editor de Locais','',1),(47,15,'Editeur de lieu','',2),(48,16,'Procedure editor','',1),(49,16,'Editeur de procédure','',2),(50,17,'Editor de Coleção','',1),(51,17,'Editeur de collection','',2),(52,18,'Storage locations editor','',1),(53,18,'Editeur d\'emplacements de stockage','',2),(54,19,'Object lots editor','',1),(55,19,'Editeur de lots d\'objets','',2),(56,20,'Object representation editor','',1),(57,20,'Editeur de la représentation d\'objet','',2),(58,21,'Representation annotation editor','',1),(59,21,'Editeur de l\'annotation de la représentation','',2),(60,22,'UI Editor','',1),(61,23,'UI Screen Editor','',1),(62,24,'Pessoas','',1);
/*!40000 ALTER TABLE `ca_editor_ui_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:20:59
