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
-- Temporary view structure for view `feitico_descricao`
--

DROP TABLE IF EXISTS `feitico_descricao`;
/*!50001 DROP VIEW IF EXISTS `feitico_descricao`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `feitico_descricao` AS SELECT 
 1 AS `Feitico`,
 1 AS `Descricao`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `casa_alunos`
--

DROP TABLE IF EXISTS `casa_alunos`;
/*!50001 DROP VIEW IF EXISTS `casa_alunos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `casa_alunos` AS SELECT 
 1 AS `Aluno`,
 1 AS `Casa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `quadro_aulas`
--

DROP TABLE IF EXISTS `quadro_aulas`;
/*!50001 DROP VIEW IF EXISTS `quadro_aulas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `quadro_aulas` AS SELECT 
 1 AS `Disciplina`,
 1 AS `Professor`,
 1 AS `Local`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `feitico_descricao`
--

/*!50001 DROP VIEW IF EXISTS `feitico_descricao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leodecavalcante`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `feitico_descricao` AS select `c`.`nomeCont` AS `Feitico`,`f`.`descrFeit` AS `Descricao` from (`conteudo` `c` join `feitico` `f`) where (`c`.`idCont` = `f`.`idCont`) order by `c`.`nomeCont` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `casa_alunos`
--

/*!50001 DROP VIEW IF EXISTS `casa_alunos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leodecavalcante`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `casa_alunos` AS select `a`.`nomeAluno` AS `Aluno`,`c`.`nomeCasa` AS `Casa` from (`aluno` `a` join `casa` `c`) where (`a`.`idCasa` = `c`.`idCasa`) order by `a`.`nomeAluno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `quadro_aulas`
--

/*!50001 DROP VIEW IF EXISTS `quadro_aulas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`leodecavalcante`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `quadro_aulas` AS select `d`.`nomeDisc` AS `Disciplina`,`f`.`nomeFunc` AS `Professor`,`i`.`nomeLocal` AS `Local` from (((`disciplina` `d` join `funcionario` `f`) join `professor` `p`) join `instalacao` `i`) where ((`f`.`idFunc` = `p`.`idFunc`) and (`p`.`idDisc` = `d`.`idDisc`) and (`d`.`idInst` = `i`.`idInst`)) order by `d`.`nomeDisc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 10:49:10
