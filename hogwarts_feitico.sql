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
-- Table structure for table `feitico`
--

DROP TABLE IF EXISTS `feitico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feitico` (
  `idCont` int(11) NOT NULL,
  `descrFeit` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idCont`),
  CONSTRAINT `feitico_ibfk_1` FOREIGN KEY (`idCont`) REFERENCES `conteudo` (`idCont`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feitico`
--

LOCK TABLES `feitico` WRITE;
/*!40000 ALTER TABLE `feitico` DISABLE KEYS */;
INSERT INTO `feitico` VALUES (1,'Atinge o alvo instantaneamente, matando sem deixar rastros ou sinais visíveis.'),(2,'Tortura a vítima, causando-lhe profunda e aguda dor por todo o corpo.'),(3,'Permite que quem lançou o feitiço faça o que quiser com a pessoa enfeitiçada.'),(4,'Faz com que o alvo ouça um zumbido de conversa.'),(5,'Atrai um objeto, mesmo por longas distâncias '),(6,'Feitiço que conjura uma fonte ou jato de água da varinha de quem o lança.'),(7,'Usado para destrancar portas e janelas.'),(8,'Capaz de desobstruir as vias respiratórias do alvo, sendo ideal contra engasgos.'),(9,'Faz com que tinta invisível se torne visível.'),(10,'Conjura uma revoada de pequenos e pipilantes pássaros.'),(11,'Usado para lacrar/trancar portas e passagens.'),(12,'Causa uma explosão no oponente.'),(13,'Faz o oponente se confundir/iludir, acreditar em outra coisa, mudando seu comportamento habitual.'),(14,'Feitiço que irrita o olho da pessoa atingida, impedindo-a de enxergar.'),(15,'Escava buracos ou paredes com o intuito de abrir espaço entre o bruxo e o alvo.'),(16,'Cancela o efeito do Prior Incantato.'),(17,'Os dentes da vítima aumentam assustadoramente.'),(18,'Direciona uma explosão no oponente.'),(19,'Empurra alavancas, botões e objetos no geral.'),(20,'Usado para cortar coisas.'),(21,'Traz a pessoa à realidade quando está desmaiada.'),(22,'Aumenta o tamanho de algum animal ou pessoa.'),(23,'Cura/repara o dano causado a algo.'),(24,'Levanta e endireita o objeto alvo.'),(25,'Capaz de deixar o alvo inconsciente.'),(26,'Mantém o alvo inconsciente.'),(27,'Faz algum objeto desaparecer completamente.'),(28,'Conjura um animal branco-prateado capaz de afastar dementadores.'),(29,'Serve para tirar/desarmar a varinha (ou outro tipo de arma de ataque) da mão do inimigo atingido'),(30,'Usado para conjurar e arrumar ataduras.'),(31,'Feitiço que encerra os feitiços anteriormente proferidos.'),(32,'Duplica o objeto alvo.'),(33,'Converte o objeto alvo em uma superfície achatada.'),(34,'Torna algo à prova de água.'),(35,'Feitiço em que cordas são conjuradas e se amarram à pessoa atingida, prendendo a vítima.'),(36,'Levanta o oponente pelo tornozelo de cabeça para baixo.'),(37,'Prende as pernas da vítima, impedindo que elas andem.'),(38,'Capaz de criar um pequeno foco de luz na ponta da varinha, podendo ser utilizada como uma lanterna.'),(39,'Cancela um Feitiço Atmosférico mal realizado, fazendo a chuva cessar.'),(40,'Provoca um alerta quando alguém sem autorização entra em uma determinada área, enquanto estiver ativo.'),(41,'Usado para mover árvores.'),(42,'Conjura a Marca Negra no céu.'),(43,'Apaga a luz produzida pelo feitiço Lumus.'),(44,'Direciona um objeto ou indivíduo para atacar a vítima.'),(45,'Usado para conjurar um ramo de flores.'),(46,'Faz com que os braços e pernas da vítima se juntem ao corpo e a pessoa fica rígida como pedra, apesar de completamente consciente.'),(47,'Encantamento para transformar algum objeto em uma Chave de Portal.'),(48,'Faz com que a varinha atingida pelo feitiço mostre uma sombra do último feitiço realizado.'),(49,'Usado para repelir o feitiço lançado contra o próprio atacante.'),(50,'Reduz o tamanho do alvo, para deixa-lo em seu tamanho natural.'),(51,'Faz o bruxo atingido rir sem parar.'),(52,'Serve para se derrotar bichos-papões.Ao se deparar com uma criatura do tipo, esta deve se transformar em algo que assuste o bruxo que está enfrentando.'),(53,'Faz aparecer vários cortes ao longo de todo o corpo do adversário, que começa a sangrar muito.'),(54,'Conjura uma longa cobra que poderá atacar o oponente.'),(55,'Identifica os ingredientes de uma poção ou os encantamentos de um objeto.'),(56,'Faz o oponente dançar sem parar.'),(57,'Utilizado para aspirar algo.'),(58,'Transforma animais em cálices de água.'),(59,'Faz objetos levitarem.Feitiço bem simples ensinado no primeiro ano, é mais fácil de fazer quanto mais leve for o objeto.');
/*!40000 ALTER TABLE `feitico` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 10:49:09
