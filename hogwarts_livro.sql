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
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `livro` (
  `idLivro` int(11) NOT NULL AUTO_INCREMENT,
  `nomeLivro` varchar(45) NOT NULL,
  `nomeAutor` varchar(45) NOT NULL,
  `idDisc` int(11) DEFAULT NULL,
  `idInst` int(11) NOT NULL,
  PRIMARY KEY (`idLivro`),
  KEY `idDisc` (`idDisc`),
  KEY `idInst` (`idInst`),
  CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`idDisc`) REFERENCES `disciplina` (`idDisc`),
  CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`idInst`) REFERENCES `instalacao` (`idInst`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'História da Magia','Batilda Bagshot',7,30),(2,'Guia de Pragas Domésticas','Gilderoy Lockhart',1,30),(3,'Como Dominar um Espírito Agourento','Gilderoy Lockhart',1,30),(4,'Como se Divertir com Vampiros','Gilderoy Lockhart',1,30),(5,'Férias com Bruxas Malvadas','Gilderoy Lockhart',1,30),(6,'Viagens com Trasgos','Gilderoy Lockhart',1,30),(7,'Excursões com Vampiros','Gilderoy Lockhart',1,30),(8,'Passeios com Lobisomens','Gilderoy Lockhart',1,30),(9,'Um Ano com o Yeti','Gilderoy Lockhart',1,30),(10,'Teoria da Magia','Adalberto Waffling',7,30),(11,'Transfiguração para Iniciantes e Curso Médio','Emerico Switch',3,30),(12,'Mil Ervas e Fungos Mágicos','Filida Spore',5,30),(13,'Bebidas e Poções Mágicas','Arsênio Jigger',4,30),(14,'Animais Fantásticos e Onde Habitam','Newt Scamander',14,30),(15,'As Forças das Trevas: Um Guia de Autoproteção','Quintino Trimble',1,30),(16,'Hogwarts: Uma História','Giovanni Ralissi',7,30),(17,'Esclarecendo o Futuro','Cassandra Vablastsky',10,30),(18,'Pragas e Contrapragas','Vindicto Viridiano',14,30),(19,'Livro Padrão de Feitiços (1ª até 7ª Série)','Miranda Goshawk',2,30),(20,'Guia de Transfiguração para Iniciantes','Emerico Switch',3,30),(21,'Quadribol Através dos Séculos','Kennilworthy Whisp',6,30),(22,'Estudos Avançados no Preparo de Poções','Libatius Borage',4,9);
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
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
