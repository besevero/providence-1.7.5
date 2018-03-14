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
-- Table structure for table `ca_lists`
--

DROP TABLE IF EXISTS `ca_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ca_lists` (
  `list_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `list_code` varchar(100) NOT NULL,
  `is_system_list` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_hierarchical` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `use_as_vocabulary` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default_sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`list_id`),
  UNIQUE KEY `u_code` (`list_code`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ca_lists`
--

LOCK TABLES `ca_lists` WRITE;
/*!40000 ALTER TABLE `ca_lists` DISABLE KEYS */;
INSERT INTO `ca_lists` VALUES (1,'list_item_types',0,0,0,0,0),(2,'list_item_sources',0,1,0,0,0),(3,'list_item_label_types',0,1,0,0,0),(4,'set_types',0,1,0,0,0),(5,'set_presentation_types',0,1,0,0,0),(6,'set_item_is_primary',0,1,0,0,0),(7,'object_types',0,0,1,0,0),(8,'object_sources',0,1,0,0,0),(9,'object_statuses',0,0,0,0,0),(10,'object_deaccession_types',0,0,0,0,0),(11,'object_acq_types',0,0,0,0,0),(12,'object_label_types',0,0,0,0,0),(13,'workflow_statuses',0,0,0,0,0),(14,'access_statuses',0,0,0,0,0),(15,'object_circulation_statuses',0,1,0,0,0),(16,'object_lot_types',0,1,0,0,0),(17,'object_lot_sources',0,1,0,0,0),(18,'object_lot_statuses',0,0,0,0,0),(19,'object_lot_label_types',0,0,0,0,0),(20,'loan_types',0,0,0,0,0),(21,'loan_sources',0,1,0,0,0),(22,'movement_types',0,0,0,0,0),(23,'movement_sources',0,1,0,0,0),(24,'entity_types',0,1,0,0,0),(25,'entity_sources',0,1,0,0,0),(26,'entity_label_types',0,0,0,0,0),(27,'place_types',0,1,0,0,0),(28,'place_label_types',0,0,0,0,0),(29,'place_sources',0,1,0,0,0),(30,'occurrence_types',0,1,0,0,0),(31,'occurrence_label_types',0,0,0,0,0),(32,'occurrence_sources',0,1,0,0,0),(33,'collection_types',0,1,0,0,0),(34,'collection_sources',0,1,0,0,0),(35,'collection_label_types',0,0,0,0,0),(36,'storage_location_types',0,1,0,0,0),(37,'storage_location_sources',0,1,0,0,0),(38,'storage_location_label_types',0,0,0,0,0),(39,'object_representation_types',0,1,0,0,0),(40,'object_representation_sources',0,1,0,0,0),(41,'tour_types',0,1,0,0,0),(42,'tour_sources',0,1,0,0,0),(43,'tour_stop_types',0,1,0,0,0),(44,'aat_vocabulary',0,1,1,0,0),(45,'place_hierarchies',0,1,0,0,0),(46,'fivestar_rating',0,0,0,0,0),(47,'object_audit_result',0,0,0,0,0),(48,'object_audit_types',0,0,0,0,0),(49,'ownership_category',0,0,0,0,0),(50,'other_number_type',0,0,0,0,0),(51,'technique_types',0,0,0,0,0),(52,'techniqueType_types',0,0,0,0,0),(53,'right_type',0,0,0,0,0),(54,'access_category',0,0,0,0,0),(55,'audience_types',0,0,0,0,0),(56,'language_types',0,0,1,0,0),(57,'label_reason',0,0,0,0,0),(58,'object_display_status',0,0,0,0,0),(59,'content_event_types',0,0,0,0,0),(60,'content_object_types',0,0,0,0,0),(61,'content_other_types',0,0,0,0,0),(62,'valuation_type',0,0,0,0,0),(63,'status_types',0,0,0,0,0),(64,'audit_method_types',0,0,0,0,0),(65,'audit_types',0,0,0,0,0),(66,'assessment_method_types',0,0,0,0,0),(67,'assessment_reason_types',0,0,0,0,0),(68,'conservation_method_types',0,0,0,0,0),(69,'disposal_method_types',0,0,0,0,0),(70,'loaned_object_status_types',0,0,0,0,0),(71,'loss_damage_method_types',0,0,0,0,0),(72,'movement_method_types',0,0,0,0,0),(73,'entry_method_types',0,0,0,0,0),(74,'entry_reason_types',0,0,0,0,0),(75,'exit_method_types',0,0,0,0,0),(76,'process_method_types',0,0,0,0,0),(77,'use_method_types',0,0,0,0,0),(78,'address_types',0,0,0,0,0),(79,'date_association_types',0,0,0,0,0),(80,'date_certainty_types',0,0,0,0,0),(81,'location_types',0,0,0,0,0),(82,'org_function_types',0,0,0,0,0),(83,'org_group_types',0,0,0,0,0),(84,'peoples_linguistic_types',0,0,0,0,0),(85,'sex_types',0,0,0,0,0),(86,'style_types',0,0,0,0,0),(87,'place_feature_types',0,0,0,0,0),(88,'place_name_types',0,0,0,0,0),(89,'place_refno_types',0,0,0,0,0),(90,'record_types',0,0,0,0,0),(91,'reference_types',0,0,1,0,0),(92,'dimension_types',0,0,0,0,0),(93,'teste1',0,0,1,0,0),(95,'conceito',0,0,1,0,0),(96,'culturas',0,0,0,0,0),(97,'autores',0,0,0,0,0),(98,'estilo',0,0,0,0,0),(99,'cor',0,0,0,0,0),(100,'afinidadeCultural',0,0,0,0,0),(101,'tipoDeNome',0,0,0,0,0),(102,'genero',0,0,0,0,0),(103,'ocupacao',0,0,0,0,0),(104,'escolaEstilo',0,0,0,0,0),(105,'nacionalidade',0,0,0,0,0),(106,'atividadeAssociada',0,0,0,0,0);
/*!40000 ALTER TABLE `ca_lists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-08 22:21:50
