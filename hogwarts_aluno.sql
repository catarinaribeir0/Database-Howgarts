-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: hogwarts
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL AUTO_INCREMENT,
  `nomeAluno` varchar(100) NOT NULL,
  `idCasa` int(11) NOT NULL,
  PRIMARY KEY (`idAluno`),
  KEY `idCasa` (`idCasa`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`idCasa`) REFERENCES `casa` (`idCasa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Alícia Spinnet',1),(2,'André Kirke',1),(3,'Angelina Johnson',1),(4,'Cátia Bell',1),(5,'Cólin Creevey',1),(6,'Córmaco McLaggen',1),(7,'Demelza Robins',1),(8,'Dênis Creevey',1),(9,'Dino Thomas',1),(10,'Evan Abercrombie',1),(11,'Fred Weasley',1),(12,'Gina Weasley',1),(13,'Godofredo Hooper',1),(14,'Harry Potter',1),(15,'Hermione Granger',1),(16,'Jaquito Peakes',1),(17,'Jorge Weasley',1),(18,'Lilá Brown',1),(19,'Lino Jordan',1),(20,'Neville Longbottom',1),(21,'Natália McDonald',1),(22,'Olívio Wood',1),(23,'Parvati Patil',1),(24,'Percy Weasley',1),(25,'Romilda Vane',1),(26,'Rony Weasley',1),(27,'Simas Finnigan',1),(28,'Cho Chang',2),(29,'Luna Lovegood',2),(30,'Marieta Edgecombe',2),(31,'Miguel Corner',2),(32,'Padma Patil',2),(33,'Penélope Clearwater',2),(34,'Rogério Davies',2),(35,'Marcos Belby',2),(36,'Ana Abbott',3),(37,'Cadwallader',3),(38,'Cedrico Diggory',3),(39,'Eleanora Branstone',3),(40,'Ernesto Macmillan',3),(41,'Justino Finch-Fletchley',3),(42,'Owen Cauldwell',3),(43,'Stebbins',3),(44,'Summers',3),(45,'Susana Bones',3),(46,'Zacarias Smith',3),(47,'Blásio Zabini',4),(48,'Bole',4),(49,'Dafne Greengrass',4),(50,'Derrick',4),(51,'Draco Malfoy',4),(52,'Emília Bulstrode',4),(53,'Fineus Nigellus',4),(54,'Gregório Goyle',4),(55,'Harper',4),(56,'Mafalda',4),(57,'Marcos Flint',4),(58,'Milo Bletchley',4),(59,'Montague',4),(60,'Pansy Parkinson',4),(61,'Régulo Black',4),(62,'Teodoro Nott',4),(63,'Terencio Higgs',4),(64,'Vicente Crabbe',4),(65,'Walden MacNair',4);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 10:49:05
