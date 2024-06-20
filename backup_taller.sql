/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: taller_vistas
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Temporary table structure for view `VReporteEstadosCancelados`
--

DROP TABLE IF EXISTS `VReporteEstadosCancelados`;
/*!50001 DROP VIEW IF EXISTS `VReporteEstadosCancelados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `VReporteEstadosCancelados` AS SELECT
 1 AS `id`,
  1 AS `nombre`,
  1 AS `status`,
  1 AS `perfil`,
  1 AS `ciudad`,
  1 AS `createAt`,
  1 AS `updateAt` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `VReporteProveedores`
--

DROP TABLE IF EXISTS `VReporteProveedores`;
/*!50001 DROP VIEW IF EXISTS `VReporteProveedores`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `VReporteProveedores` AS SELECT
 1 AS `id`,
  1 AS `nombre`,
  1 AS `status`,
  1 AS `perfil`,
  1 AS `ciudad`,
  1 AS `createAt`,
  1 AS `updateAt` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `perfil` enum('basico','estandar','critico') DEFAULT NULL,
  `ciudad` varchar(150) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES
(1,'My Empresa S.A',1,'basico','Chiriqui','2024-06-14 00:56:18','2024-06-14 00:56:18'),
(2,'Juan Perez LTC',2,'estandar','Darien','2024-06-14 00:56:18','2024-06-14 00:56:18'),
(3,'Melo',1,'basico','Panamá','2024-06-14 00:56:18','2024-06-14 00:56:18'),
(4,'Super Rey',3,'estandar','Chitre','2024-06-14 00:56:18','2024-06-14 00:56:18'),
(5,'Tecnologia S.A',1,'critico','Panamá','2024-06-14 00:56:18','2024-06-14 00:56:18'),
(6,'Price Smart',-1,'critico','P.Oeste','2024-06-14 01:21:11','2024-06-14 01:21:11'),
(7,'Machetazo',-1,'critico','Veraguas','2024-06-14 01:21:11','2024-06-14 01:21:11'),
(8,'Cinepolis',4,'critico','Veraguas','2024-06-14 01:25:06','2024-06-14 01:25:06');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `VReporteEstadosCancelados`
--

/*!50001 DROP VIEW IF EXISTS `VReporteEstadosCancelados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VReporteEstadosCancelados` AS select `proveedor`.`id` AS `id`,`proveedor`.`nombre` AS `nombre`,`proveedor`.`status` AS `status`,`proveedor`.`perfil` AS `perfil`,`proveedor`.`ciudad` AS `ciudad`,`proveedor`.`createAt` AS `createAt`,`proveedor`.`updateAt` AS `updateAt` from `proveedor` where `proveedor`.`status` in (2,3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `VReporteProveedores`
--

/*!50001 DROP VIEW IF EXISTS `VReporteProveedores`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `VReporteProveedores` AS select `proveedor`.`id` AS `id`,`proveedor`.`nombre` AS `nombre`,`proveedor`.`status` AS `status`,`proveedor`.`perfil` AS `perfil`,`proveedor`.`ciudad` AS `ciudad`,`proveedor`.`createAt` AS `createAt`,`proveedor`.`updateAt` AS `updateAt` from `proveedor` */;
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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-14  1:56:06
