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
-- Table structure for table `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conteudo` (
  `idCont` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCont` varchar(45) NOT NULL,
  `idDisc` int(11) NOT NULL,
  PRIMARY KEY (`idCont`,`idDisc`),
  KEY `idDisc` (`idDisc`),
  CONSTRAINT `conteudo_ibfk_1` FOREIGN KEY (`idDisc`) REFERENCES `disciplina` (`idDisc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'Avada Kedavra',1),(2,'Crucio',1),(3,'Imperio',1),(4,'Abaffiato',2),(5,'Accio',2),(6,'Aguamenti',2),(7,'Alorromora',2),(8,'Anapneo',2),(9,'Aparecium',2),(10,'Avis',3),(11,'Colloportus',2),(12,'Confringo',2),(13,'Confundo',2),(14,'Conjunctivitus',2),(15,'Defodio',2),(16,'Deletrius',2),(17,'Densaugeo',2),(18,'Deprimo',2),(19,'Depulso',2),(20,'Diffindo',2),(21,'Enervate',2),(22,'Engorgio',2),(23,'Episkey',2),(24,'Erecto',2),(25,'Estupefaça',1),(26,'Estupore',2),(27,'Evanesco',2),(28,'Expecto Patronum',1),(29,'Expelliarmus',1),(30,'Férula',2),(31,'Finite Incantatem',2),(32,'Geminio',2),(33,'Glisseo',3),(34,'Impervius',2),(35,'Incarcerous',2),(36,'Levicorpus',2),(37,'Locomotor Mortis',2),(38,'Lumus',1),(39,'Meteolojinx Recanto',2),(40,'Miadura',2),(41,'Mobiliarbus',2),(42,'Morsmordre',2),(43,'Nox',1),(44,'Oppugno',2),(45,'Orchideous',2),(46,'Petrificus Totalus',2),(47,'Portus',3),(48,'Prior Incantato',2),(49,'Protego',1),(50,'Reducio',2),(51,'Rictusempra',2),(52,'Ridikulus',1),(53,'Sectumsempra',1),(54,'Serpensortia',1),(55,'Specialis Revelio',2),(56,'Tarantallegra',2),(57,'Tergeo',2),(58,'Vera Verto',3),(59,'Vingardium Leviosa',2),(60,'Amortentia',4),(61,'Antídoto para amor',4),(62,'Felix Felicis',4),(63,'Poção do Morto-Vivo',4),(64,'Poção Polissuco',4),(65,'Veritaserum',4),(66,'Poção Wiggenweld',4),(67,'Acromântula',13),(68,'Augurey',13),(69,'Amasso',13),(70,'Ararambóia',13),(71,'Arpéu',13),(72,'Bandinho',13),(73,'Barretes Vermelhos',1),(74,'Basilisco',13),(75,'Besouro da Melancolia',13),(76,'Bezerro Apaixonado',13),(77,'Bicórnio',13),(78,'Briba',13),(79,'Bicho-Papão',1),(80,'Bufadores de Chifres Enrugado',13),(81,'Carangueijo de Fogo',13),(82,'Cava-Charco',13),(83,'Cavalo-do-lago',13),(84,'Cavalo Alado',13),(85,'Centauros',13),(86,'Chizácaro',13),(87,'Ciclope',13),(88,'Claberto',13),(89,'Clauricorne',13),(90,'Cocatrice',13),(91,'Cinzal',13),(92,'Crupe',13),(93,'Diabretes da Cornualha',1),(94,'Dilátex',13),(95,'Dragão',13),(96,'Barriga-de Ferro Ucraniano',13),(97,'Chifre Longo Romeno',13),(98,'Dente-de-Víbora Peruano',13),(99,'Dragão Noruêgues',13),(100,'Dragão-leão',13),(101,'Dedo-duro',13),(102,'Doxys',13),(103,'Duendes',13),(104,'Goblins',13),(105,'Elfos-domésticos',13),(106,'Erklings',13),(107,'Erumpente',13),(108,'Explosivins',13),(109,'Fantasmas',13),(110,'Fênix',13),(111,'Fofo',13),(112,'Gira-gira',13),(113,'Gnomos',13),(114,'Grindylows',1),(115,'Hinkypunk',13),(116,'Hipogrifo',13),(117,'Kappa',13),(118,'Lobisomem',1),(119,'Nundu',13),(120,'Olho-de-Opala',13),(121,'Quimera',13),(122,'Romanian Longhorn',13),(123,'Seminviso',13),(124,'Sereianos',13),(125,'Tolete',13),(126,'Tronquilho',13),(127,'Ukranian Ironbelly',13),(128,'Veela',13),(129,'Venemous tentácula',13),(130,'Abóbora',5),(131,'Acônito',5),(132,'Acônito lapelo',5),(133,'Acônito licoctono',5),(134,'Alfeneiro',5),(135,'Ameixa Dirigível',5),(136,'Ameixeira',5),(137,'Arbusto tremulante',5),(138,'Arbustos Autofertilizantes',5),(139,'Arbustos autofertilizantes',5),(140,'Artemísia',5),(141,'Azevinho',5),(142,'Begônia',5),(143,'Beladona',5),(144,'Bocas-de-guincho',5),(145,'Bordo',5),(146,'Botão-de-prata',5),(147,'Bubotúberas',5),(148,'Bulbos saltado',5),(149,'Bétula',5),(150,'Carvalho',5),(151,'Casca de Wiggentree',5),(152,'Castanheira',5),(153,'Cerejeira',5),(154,'Cocleária',5),(155,'Descurainia',5),(156,'Diafanina',5),(157,'Ditamno',5),(158,'Faia',5),(159,'Feijões luzidios',5),(160,'Figueiras cáusticas da Abissínia',5),(161,'Flores sombrinha',5),(162,'Folhas de aliquente',5),(163,'Freixo',5),(164,'Gerânio dentado',5),(165,'Guelricho',5),(166,'Heléboro',5),(167,'Hemeróbio',5),(168,'Infusão de losna',5),(169,'Jacarandá',5),(170,'Ligústica',5),(171,'Malva',5),(172,'Mandrágoras',5),(173,'Menta',5),(174,'Mimbulus Mimbletonia',5),(175,'Mogno',5),(176,'Moly',5),(177,'Narcisos',5),(178,'Nogueira',5),(179,'Olmo',5),(180,'Pilriteiro',5),(181,'Pinhão descascado',5),(182,'Raiz de asfódelo em pó',5),(183,'Raiz de gengibre',5),(184,'Raiz de valeriana',5),(185,'Raiz-de-cuia',5),(186,'Raizes de margarida',5),(187,'Repolho Chinês Glutão',5),(188,'Repolhos',5),(189,'Sabugueiro',5),(190,'Salgueiro',5),(191,'Salgueiro Lutador',5),(192,'Sanguinária',5),(193,'Sementes de tentáculos venenosos',5),(194,'Suco de romã',5),(195,'Teixo',5),(196,'Tentáculo Venenoso',5),(197,'Urtigas secas',5),(198,'Vagem soporífera',5),(199,'Vagens rosadas',5),(200,'Videira',5),(201,'Visgo do Diabo',5),(202,'Wiggentree',5),(203,'Ébano',5);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
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
