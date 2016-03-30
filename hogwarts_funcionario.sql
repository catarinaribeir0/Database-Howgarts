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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `idFunc` int(11) NOT NULL AUTO_INCREMENT,
  `nomeFunc` varchar(45) NOT NULL,
  `idEsc` int(11) NOT NULL,
  `idInst` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFunc`),
  KEY `idEsc` (`idEsc`),
  KEY `idInst` (`idInst`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idEsc`) REFERENCES `escola` (`idEsc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`idInst`) REFERENCES `instalacao` (`idInst`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Alastor \"Mad-Eye\" Moody',1,NULL),(2,'Albus Dumbledore',1,42),(3,'Professor Binns',1,34),(4,'Dolores Umbridge',1,26),(5,'Filius Flitwick',1,46),(6,'Gilderoy Lockhart',1,26),(7,'Wilhelmina Grubbly-Plank',1,NULL),(8,'Mme.Rolanda Hooch',1,NULL),(9,'Horace Slughorn',1,NULL),(10,'Silvanus Kettleburn',1,NULL),(11,'Minerva McGonagall',1,20),(12,'Pomona Sprout',1,NULL),(13,'Quirinus Quirrell',1,NULL),(14,'Remus Lupin',1,NULL),(15,'Rubeus Hagrid',1,1),(16,'Severus Snape',1,NULL),(17,'Sybill Trelawney',1,47),(18,'Aurora Sinistra',1,NULL),(19,'Septima Vector',1,NULL),(20,'Argus Filch',1,10),(21,'Armando Dippet',1,NULL),(22,'Elfos Domésticos',1,13),(23,'Madame Pince',1,30),(24,'Ogg',1,NULL),(25,'Charity Burbage',1,NULL),(26,'Bathsheba Babbling',1,NULL);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 10:49:08
