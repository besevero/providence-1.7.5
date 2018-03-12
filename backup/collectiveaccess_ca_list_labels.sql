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
-- Table structure for table `ca_list_labels`
--

DROP TABLE IF EXISTS `ca_list_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_list_labels` (
  `label_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` smallint(5) unsigned NOT NULL,
  `locale_id` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `u_locale_id` (`list_id`,`locale_id`),
  KEY `fk_ca_list_labels_locale_id` (`locale_id`),
  KEY `i_list_id` (`list_id`),
  KEY `i_name` (`name`(128)),
  CONSTRAINT `fk_ca_list_labels_list_id` FOREIGN KEY (`list_id`) REFERENCES `ca_lists` (`list_id`),
  CONSTRAINT `fk_ca_list_labels_locale_id` FOREIGN KEY (`locale_id`) REFERENCES `ca_locales` (`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_list_labels`
--

LOCK TABLES `ca_list_labels` WRITE;
/*!40000 ALTER TABLE `ca_list_labels` DISABLE KEYS */;
INSERT INTO `ca_list_labels` VALUES (1,1,1,'List item types'),(2,1,3,'List item types'),(3,1,2,'Lister les types d\'item'),(4,1,14,'Posttypslista'),(5,2,1,'List item sources'),(6,2,3,'List item sources'),(7,3,1,'List item label types'),(8,3,3,'List item label types'),(9,3,2,'Types de libellés pour les éléments de liste'),(10,3,14,'Etikett till posttypslista'),(11,4,1,'Set types'),(12,4,3,'Set types'),(13,4,2,'Types d\'ensembles'),(14,4,14,'Grupperingstyper'),(15,5,1,'Set presentation types'),(16,5,3,'Set presentation types'),(17,5,2,'Définir des types de présentation'),(18,5,14,'Ställ in presentationstyper'),(19,6,1,'Set item primary status types'),(20,6,3,'Set item primary status types'),(21,6,2,'Défini les types de statut pour les items primaires'),(22,6,14,'Ställ in postens primära status typer'),(23,7,1,'Object Types'),(24,7,2,'Types d\'objets'),(25,8,1,'Object Source'),(26,8,2,'Sources d\'objet'),(27,9,1,'Object statuses'),(28,9,3,'Object statuses'),(29,9,2,'Status d\'objets'),(30,9,14,'Objekt status'),(31,10,1,'Object deaccession types'),(32,11,1,'Object acquisition types'),(33,11,3,'Object acquisition types'),(34,11,2,'Type d\'acquisitions d\'objets'),(35,11,14,'Objekt förvärvstyper'),(36,12,1,'Object label types'),(37,12,3,'Object label types'),(38,12,2,'Types de libellés d\'objet'),(39,12,14,'Objekt etikettyper'),(40,13,1,'Object workflow statuses'),(41,13,3,'Object workflow statuses'),(42,13,2,'Statuts du workflow objet'),(43,13,14,'Objekt arbetsflöde status'),(44,14,1,'Object access statuses'),(45,14,3,'Object access statuses'),(46,14,2,'Statuts d\'accès des objets'),(47,14,14,'Objektåtkomst status'),(48,15,1,'Object circulation statuses'),(49,16,1,'Object lot types'),(50,16,3,'Object lot types'),(51,16,2,'Types de lots d\'objets'),(52,16,14,'Objekt beslutstyper'),(53,17,1,'Object lot sources'),(54,17,3,'Object lot sources'),(55,18,1,'Object lot statuses'),(56,18,3,'Object lot statuses'),(57,18,2,'Statuts de lots d\'objets'),(58,18,14,'Objekt beslut status'),(59,19,1,'Object lot label type values'),(60,19,3,'Object lot label type values'),(61,19,2,'Valeurs de type de libellés pour les lots d\'objets'),(62,19,14,'Objekt beslut etikettyp värden'),(63,20,1,'Loan label type values'),(64,20,3,'Loan label type values'),(65,20,2,'Valeurs de type de libellé de prêt'),(66,20,14,'Lån etikettyp värden'),(67,21,1,'Loan sources'),(68,21,3,'Loan sources'),(69,22,1,'Movement type values'),(70,22,3,'Movement type values'),(71,22,2,'Valeurs de types de mouvement'),(72,22,14,'Förflyttningstyp värden'),(73,23,1,'Movement sources'),(74,23,3,'Movement sources'),(75,24,1,'Entity types'),(76,24,2,'Types d\'entités'),(77,25,1,'Entity sources'),(78,25,2,'Sources d\'entités'),(79,26,1,'Entity label types'),(80,26,3,'Entity label types'),(81,26,2,'Types de libellés d\'entité'),(82,26,14,'Person/organisation/folk etikettyper'),(83,27,1,'Place types'),(84,27,3,'Place types'),(85,27,2,'Types de lieux'),(86,27,14,'Plats typer'),(87,28,1,'Place label type values'),(88,28,3,'Place label type values'),(89,28,2,'Valeurs de type libellés de lieux'),(90,28,14,'Plats etikettyp värden'),(91,29,1,'Place sources'),(92,29,2,'Sources des lieux'),(93,30,1,'Occurrence types'),(94,30,2,'Types d\'occurences'),(95,31,1,'Occurrence label types'),(96,31,3,'Occurrence label types'),(97,31,2,'Types de libellés d\'occurences'),(98,31,14,'Förekomst etikettyper'),(99,32,1,'Occurrence sources'),(100,32,2,'Origines de l\'occurrence'),(101,33,1,'Collection types'),(102,33,2,'Types des collections'),(103,34,1,'Collection sources'),(104,34,2,'Origines de la collection'),(105,35,1,'Collection label types'),(106,35,3,'Collection label types'),(107,35,2,'Types de libellés de collection'),(108,35,14,'Samling etikettyper'),(109,36,1,'Storage location types'),(110,36,2,'Types d\'emplacement de stockage'),(111,37,1,'Storage location sources'),(112,37,3,'Storage location sources'),(113,38,1,'Storage location label type values'),(114,38,3,'Storage location label type values'),(115,38,2,'Valeurs de types de libellé d\'emplacements de stockage'),(116,38,14,'Lagringsplats etikettypen värden'),(117,39,1,'Object representation types'),(118,39,3,'Object representation types'),(119,39,2,'Types de représentation d\'objet'),(120,39,14,'Objekt representation typer'),(121,40,1,'Object representation sources'),(122,40,3,'Object representation sources'),(123,41,1,'Tour types'),(124,41,3,'Tour types'),(125,41,2,'Tour types'),(126,41,14,'Tur typer'),(127,42,1,'Tour sources'),(128,42,3,'Tour sources'),(129,43,1,'Tour stop types'),(130,43,3,'Tour stop types'),(131,43,2,'Tour stop types'),(132,43,14,'Tur stopp typer'),(133,44,1,'Art &amp; Architecture Thesaurus'),(134,44,2,'Thésaurus Art &amp; Architecture'),(135,45,1,'Place hierarchies'),(136,45,2,'Hiérarchies de lieux'),(137,46,1,'Five star rating'),(138,46,2,'Evaluation avec cinq étoiles'),(139,47,1,'Object Audit Result'),(140,47,2,'Résultat d\'audit d\'objet'),(141,48,1,'Object Audit Type'),(142,48,2,'Type d\'audit d\'objet'),(143,49,1,'Ownership category'),(144,49,2,'Catégorie de propriété'),(145,50,1,'Other number type'),(146,50,2,'Type d\'autre nombre'),(147,51,1,'Technique'),(148,51,2,'Technique'),(149,52,1,'Technique type'),(150,52,2,'Type de technique'),(151,53,1,'Right type'),(152,53,2,'Type de droit'),(153,54,1,'Access category'),(154,54,2,'Catégorie d\'accès'),(155,55,1,'Audience types'),(156,55,2,'Types d\'audience'),(157,56,1,'Language types'),(158,56,2,'Type de langue'),(159,57,1,'Label reason'),(160,57,2,'Raison du label'),(161,58,1,'Object display status'),(162,58,2,'Statut d\'affichage d\'objet'),(163,59,1,'Content - event type'),(164,59,2,'Contenu - type d\'événement'),(165,60,1,'Content - object type'),(166,60,2,'Contenu - type d\'objet'),(167,61,1,'Content - other type'),(168,61,2,'Contenu - autre type'),(169,62,1,'Object valuation type'),(170,62,2,'Type d\'estimation d\'objet'),(171,63,1,'Object valuation type'),(172,63,2,'Type d\'estimation d\'objet'),(173,64,1,'Audit method types'),(174,64,2,'Types de méthodes d\'audit'),(175,65,1,'Audit types'),(176,65,2,'Types d\'audit'),(177,66,1,'Assessment method types'),(178,66,2,'Types de méthode d\'évaluation'),(179,67,1,'Assessment reason types'),(180,67,2,'Types de raison d\'évaluation'),(181,68,1,'Conservation method types'),(182,68,2,'Types de méthodes de conservation'),(183,69,1,'Disposal method types'),(184,69,2,'Types de méthode de disposition'),(185,70,1,'Loaned object status types'),(186,70,2,'Types de statut d\'objets prêtés'),(187,71,1,'Loss/damage method types'),(188,71,2,'Types de méthode de perte/dommages'),(189,72,1,'Movement method types'),(190,72,2,'Types de méthode de mouvement'),(191,73,1,'Entry method types'),(192,73,2,'Types de méthodes d\'entrée'),(193,74,1,'Entry reason types'),(194,74,2,'Types de raison d\'entrée'),(195,75,1,'Exit method types'),(196,75,2,'Types de méthodes de sortie'),(197,76,1,'process method types'),(198,76,2,'Types de méthode de processus'),(199,77,1,'use method types'),(200,77,2,'Types de méthode d\'utilisation'),(201,78,1,'address types'),(202,78,2,'types d\'adresses'),(203,79,1,'date association types'),(204,79,2,'Types d\'association de dates'),(205,80,1,'date certainty types'),(206,80,2,'Types de certitudes de dates '),(207,81,1,'Location  types'),(208,81,2,'Types d\'emplacement'),(209,82,1,'Organisation function types'),(210,82,2,'Types de fonction d\'organisation'),(211,83,1,'Organisation group types'),(212,83,2,'Types de groupe d\'organisation'),(213,84,1,'People\'s linguistic types'),(214,84,2,'Types de langues'),(215,85,1,'sex types'),(216,85,2,'Sexe'),(217,86,1,'style types'),(218,86,2,'Types de style'),(219,87,1,'place feature types'),(220,87,2,'Types de fonction de lieu'),(221,88,1,'place name types'),(222,88,2,'Types de noms de lieux'),(223,89,1,'place reference number types'),(224,89,2,'Type de numéro de référence de lieu'),(225,90,1,'record types'),(226,90,2,'Types d\'enregistrements'),(227,91,1,'Reference types'),(228,91,2,'Types de référence'),(229,92,1,'dimension types'),(230,92,2,'Types de dimension'),(231,93,1,'teste'),(232,95,1,'Conceito'),(233,96,1,'Culturas'),(234,97,1,'Autores'),(235,98,1,'Estilo'),(236,99,1,'Cor'),(237,100,1,'Afinidade Cultural'),(238,101,1,'Tipo de nome'),(239,102,1,'Genêro'),(240,103,1,'Ocupação'),(241,104,1,'Escola/Estilo'),(242,105,1,'Nacionalidade'),(243,106,1,'Atividade associada');
/*!40000 ALTER TABLE `ca_list_labels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:07
