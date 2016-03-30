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
-- Table structure for table `instalacao`
--

DROP TABLE IF EXISTS `instalacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instalacao` (
  `idInst` int(11) NOT NULL AUTO_INCREMENT,
  `nomeLocal` varchar(45) NOT NULL,
  `idEsc` int(11) NOT NULL,
  PRIMARY KEY (`idInst`),
  KEY `idEsc` (`idEsc`),
  CONSTRAINT `instalacao_ibfk_1` FOREIGN KEY (`idEsc`) REFERENCES `escola` (`idEsc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instalacao`
--

LOCK TABLES `instalacao` WRITE;
/*!40000 ALTER TABLE `instalacao` DISABLE KEYS */;
INSERT INTO `instalacao` VALUES (1,'Cabana de Hagrid',1),(2,'Campo de Quadribol',1),(3,'Floresta Proibida',1),(4,'Salgueiro Lutador',1),(5,'Portões de Hogwarts',1),(6,'Picadeiro dos Hipogrifos',1),(7,'Estufas de Herbologia',1),(8,'Campo de Voo',1),(9,'Sala de Poções',1),(10,'Sala do Filch',1),(11,'Sala Comunal da Sonserina',1),(12,'Sala Comunal de Lufa-Lufa',1),(13,'Cozinhas',1),(14,'Reservatório de poções',1),(15,'Câmara Secreta',1),(16,'Saguão de entrada',1),(17,'Salão Principal',1),(18,'História da Magia',1),(19,'Sala de Transfiguração',1),(20,'Sala da Professora Minerva McGonagall',1),(21,'Sala de Estudo dos Trouxas',1),(22,'Ala Hospitalar',1),(23,'Banheiro feminino',1),(24,'Entrada para a Câmara Secreta',1),(25,'Banheiro masculino',1),(26,'Sala de Defesa Contra as Artes Das Trevas',1),(27,'Sala dos Troféus',1),(28,'Sala Proibida',1),(29,'Sala de Feitiços',1),(30,'Biblioteca',1),(31,'Ala Hospitalar',1),(32,'Torre do Relógio',1),(33,'Sessão Restrita da Biblioteca',1),(34,'Sala do Professor Binns',1),(35,'Banheiro dos Monitores',1),(36,'Topo da Torre do Relógio',1),(37,'Entrada para a sala Comunal da Corvinal',1),(38,'Torre da sala Comunal da Corvinal',1),(39,'Sala de Runas Antigas',1),(40,'Sala de Aritmância',1),(41,'Sala Comunal da Grifinória',1),(42,'Entrada para o gabinete do Diretor',1),(43,'Sala Precisa',1),(44,'Sala de Adivinhação',1),(45,'Torre de Astronomia',1),(46,'Sala do Professor Flitwick',1),(47,'Sala da Professora Trelawney',1);
/*!40000 ALTER TABLE `instalacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 10:49:07
