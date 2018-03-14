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
-- Table structure for table `ca_editor_ui_screen_labels`
--

DROP TABLE IF EXISTS `ca_editor_ui_screen_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_editor_ui_screen_labels` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screen_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `locale_id` smallint(6) NOT NULL,
  PRIMARY KEY (`label_id`),
  KEY `i_screen_id` (`screen_id`),
  KEY `i_locale_id` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_editor_ui_screen_labels`
--

LOCK TABLES `ca_editor_ui_screen_labels` WRITE;
/*!40000 ALTER TABLE `ca_editor_ui_screen_labels` DISABLE KEYS */;
INSERT INTO `ca_editor_ui_screen_labels` VALUES (1,2,'Basic info','',1),(2,2,'Basic info','',3),(3,2,'Informations basiques','',2),(4,2,'Grundläggande info','',14),(5,3,'Relationships','',1),(6,3,'Relationships','',3),(7,3,'Relations','',2),(8,3,'Relationer','',14),(9,5,'Basic info','',1),(10,5,'Basic info','',3),(11,5,'Informations basiques','',2),(12,5,'Grundläggande info','',14),(13,6,'Relationships','',1),(14,6,'Relationships','',3),(15,6,'Relations','',2),(16,6,'Relationer','',14),(17,8,'Basic info','',1),(18,8,'Basic info','',3),(19,8,'Informations basiques','',2),(20,8,'Grundläggande info','',14),(21,10,'Basic info','',1),(22,10,'Basic info','',3),(23,10,'Informations basiques','',2),(24,10,'Grundläggande info','',14),(25,11,'Alternate names','',1),(26,11,'Alternate names','',3),(27,11,'Noms alternatifs','',2),(28,11,'Alternativa namn','',14),(29,12,'Related list items','',1),(30,12,'Related list items','',3),(31,12,'Items liés à la liste','',2),(32,12,'Relaterade listobjekt','',14),(33,14,'Basic info','',1),(34,14,'Basic info','',3),(35,14,'Informations basiques','',2),(36,14,'Grundläggande info','',14),(37,16,'Basic info','',1),(38,16,'Information basique','',2),(39,17,'Items','',1),(40,17,'Items','',2),(41,19,'Basic info','',1),(42,19,'Information basique','',2),(43,21,'Basic info','',1),(44,21,'Basic info','',3),(45,21,'Informations basiques','',2),(46,21,'Grundläggande info','',14),(47,23,'Basic info','',1),(48,23,'Basic info','',3),(49,23,'Informations basiques','',2),(50,23,'Grundläggande info','',14),(51,24,'Display list','',1),(52,24,'Display list','',3),(53,24,'Liste','',2),(54,24,'Display lista','',14),(55,26,'Basic info','',1),(56,26,'Basic info','',3),(57,26,'Informations basiques','',2),(58,26,'Grundläggande info','',14),(59,27,'Relationships','',1),(60,27,'Relationships','',3),(61,27,'Relations','',2),(62,27,'Relationer','',14),(63,29,'Basic info','',1),(64,29,'Basic info','',3),(65,29,'Informations basiques','',2),(66,29,'Grundläggande info','',14),(67,30,'Relationships','',1),(68,30,'Relationships','',3),(69,30,'Relations','',2),(70,30,'Relationer','',14),(71,31,'Keywords','',1),(72,31,'Keywords','',3),(73,31,'Keywords','',2),(74,31,'Nyckelord','',14),(75,33,'Basic info','',1),(80,37,'Histórico do objeto','',1),(81,37,'Histoire de l\'objet','',2),(104,49,'Relacionamento','',1),(105,49,'Relations','',2),(112,54,'Informação básica','',1),(113,54,'Information basique','',2),(114,55,'Informação de contato','',1),(115,55,'Contact','',2),(116,56,'Informação Adicional','',1),(117,56,'Information complémentaire','',2),(118,57,'Relacionamentos','',1),(119,57,'Relations','',2),(124,61,'Informação Básica','',1),(125,61,'Information basique','',2),(134,67,'Basic info','',1),(135,67,'Information de base','',2),(136,68,'Relationships','',1),(137,68,'Relations','',2),(138,69,'Keywords','',1),(139,69,'Mots clés','',2),(140,70,'Links','',1),(141,70,'Liens','',2),(142,72,'Informação Básica','',1),(143,72,'Information basique','',2),(152,78,'Basic info','',1),(153,78,'Information basique','',2),(154,79,'Location','',1),(155,79,'Emplacement','',2),(156,80,'Contents','',1),(157,80,'Contenus','',2),(158,81,'Alternate names','',1),(159,81,'Noms alternatifs','',2),(160,83,'Basic info','',1),(161,83,'Information basique','',2),(164,85,'Objetos Relacionados','',1),(165,85,'Contenus','',2),(168,88,'Basic info','',1),(169,88,'Information basique','',2),(170,89,'Annotations','',1),(171,89,'Annotations','',2),(172,90,'Relationships','',1),(173,90,'Relations','',2),(174,91,'Alternate captions','',1),(175,91,'Titres alternatifs','',2),(176,93,'Basic info','',1),(177,93,'Information basique','',2),(178,94,'Keywords','',1),(179,94,'Mots clés','',2),(180,95,'Relationships','',1),(181,95,'Relations','',2),(182,96,'Alternate names','',1),(183,96,'Noms alternatifs','',2),(184,98,'Basic','',1),(185,100,'Basic','',1),(187,102,'Identificação','',1),(188,103,'Descrição','',1),(189,105,'Identificação','',1),(192,108,'Objetos Relacionados','',1);
/*!40000 ALTER TABLE `ca_editor_ui_screen_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:22:18
