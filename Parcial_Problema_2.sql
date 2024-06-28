/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Pentesting
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
-- Table structure for table `Autenticacion`
--

DROP TABLE IF EXISTS `Autenticacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Autenticacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `agente_usuario` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  UNIQUE KEY `token` (`token`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `Autenticacion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Autenticacion`
--

LOCK TABLES `Autenticacion` WRITE;
/*!40000 ALTER TABLE `Autenticacion` DISABLE KEYS */;
INSERT INTO `Autenticacion` VALUES
(1,'user1','pass123','Laptop1','token_user1',NULL),
(2,'user2','pass456','Mobile2','token_user2',NULL),
(3,'user3','pass789','Desktop3','token_user3',NULL),
(4,'user4','passabc','Tablet4','token_user4',NULL),
(5,'user5','passxyz','Mobile5','token_user5',NULL),
(6,'user6','pass456','Laptop6','token_user6',NULL),
(7,'user7','passabc','Desktop7','token_user7',NULL),
(8,'user8','pass123','Mobile8','token_user8',NULL),
(9,'user9','pass789','Laptop9','token_user9',NULL),
(10,'user10','passxyz','Tablet10','token_user10',NULL);
/*!40000 ALTER TABLE `Autenticacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pagos`
--

DROP TABLE IF EXISTS `Pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_compania` varchar(255) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `apellido_cliente` varchar(255) NOT NULL,
  `numero_vat` varchar(20) NOT NULL,
  `direccion_pago` varchar(255) DEFAULT NULL,
  `ciudad_pago` varchar(255) DEFAULT NULL,
  `codigo_postal_pago` varchar(20) DEFAULT NULL,
  `pais_pago` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `Pagos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pagos`
--

LOCK TABLES `Pagos` WRITE;
/*!40000 ALTER TABLE `Pagos` DISABLE KEYS */;
INSERT INTO `Pagos` VALUES
(1,'Company1','Alice','Johnson','VAT123','PaymentAddress1','New York','12345','United States',NULL),
(2,'Company2','Bob','Williams','VAT456','PaymentAddress2','Los Angeles','67890','United States',NULL),
(3,'Company3','Charlie','Brown','VAT789','PaymentAddress3','London','23456','United Kingdom',NULL),
(4,'Company4','David','Miller','VAT012','PaymentAddress4','Paris','78901','France',NULL),
(5,'Company5','Eva','Davis','VAT345','PaymentAddress5','Sydney','34567','Australia',NULL),
(6,'Company6','Frank','Johnson','VAT678','PaymentAddress6','Toronto','89012','Canada',NULL),
(7,'Company7','Grace','Taylor','VAT901','PaymentAddress7','Berlin','45678','Germany',NULL),
(8,'Company8','Henry','Smith','VAT234','PaymentAddress8','Tokyo','01234','Japan',NULL),
(9,'Company9','Ivy','Martin','VAT567','PaymentAddress9','Mumbai','56789','India',NULL),
(10,'Company10','Jack','White','VAT890','PaymentAddress10','Beijing','98765','China',NULL),
(11,'Company1','Alice','Johnson','VAT123','PaymentAddress1','New York','12345','United States',NULL),
(12,'Company2','Bob','Williams','VAT456','PaymentAddress2','Los Angeles','67890','United States',NULL),
(13,'Company3','Charlie','Brown','VAT789','PaymentAddress3','London','23456','United Kingdom',NULL),
(14,'Company4','David','Miller','VAT012','PaymentAddress4','Paris','78901','France',NULL),
(15,'Company5','Eva','Davis','VAT345','PaymentAddress5','Sydney','34567','Australia',NULL),
(16,'Company6','Frank','Johnson','VAT678','PaymentAddress6','Toronto','89012','Canada',NULL),
(17,'Company7','Grace','Taylor','VAT901','PaymentAddress7','Berlin','45678','Germany',NULL),
(18,'Company8','Henry','Smith','VAT234','PaymentAddress8','Tokyo','01234','Japan',NULL),
(19,'Company9','Ivy','Martin','VAT567','PaymentAddress9','Mumbai','56789','India',NULL),
(20,'Company10','Jack','White','VAT890','PaymentAddress10','Beijing','98765','China',NULL);
/*!40000 ALTER TABLE `Pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TiposPruebas`
--

DROP TABLE IF EXISTS `TiposPruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TiposPruebas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `referencia` (`referencia`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TiposPruebas`
--

LOCK TABLES `TiposPruebas` WRITE;
/*!40000 ALTER TABLE `TiposPruebas` DISABLE KEYS */;
INSERT INTO `TiposPruebas` VALUES
(21,'REF1','Penetración de Red','Prueba de seguridad en red','2024-02-29','Activo'),
(22,'REF2','Aplicaciones Web','Prueba de seguridad web','2024-02-29','Activo'),
(23,'REF3','Aplicaciones Móviles','Prueba de seguridad móvil','2024-02-29','Activo'),
(24,'REF4','Sistemas Operativos','Prueba de seguridad de sistemas operativos','2024-02-29','Activo'),
(25,'REF5','Wi-Fi','Prueba de seguridad Wi-Fi','2024-02-29','Activo'),
(26,'REF6','Seguridad Física','Prueba de seguridad física','2024-02-29','Activo'),
(27,'REF7','Ingeniería Social','Prueba de ingeniería social','2024-02-29','Activo'),
(28,'REF8','Seguridad en la Nube','Prueba de seguridad en la nube','2024-02-29','Activo'),
(29,'REF9','Seguridad de Hardware','Prueba de seguridad de hardware','2024-02-29','Activo'),
(30,'REF10','Análisis de Código Fuente','Prueba de análisis de código fuente','2024-02-29','Activo');
/*!40000 ALTER TABLE `TiposPruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `estado_civil` varchar(20) DEFAULT NULL,
  `tipo_empresa` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `tipo_prueba_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  UNIQUE KEY `token` (`token`),
  KEY `tipo_prueba_id` (`tipo_prueba_id`),
  CONSTRAINT `Usuarios_ibfk_1` FOREIGN KEY (`tipo_prueba_id`) REFERENCES `TiposPruebas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES
(1,'Alice','Johnson','alice_j','token_user3','pass789','New York','Female','Married','Privada','123 Main St',NULL),
(2,'Bob','Williams','bob_w','token_user4','passabc','Los Angeles','Male','Single','Publica','456 Oak St',NULL),
(3,'Charlie','Brown','charlie_b','token_user5','passxyz','London','Male','Single','Privada','789 Pine St',NULL),
(4,'David','Miller','david_m','token_user6','pass456','Paris','Male','Married','Publica','101 Elm St',NULL),
(5,'Eva','Davis','eva_d','token_user7','passabc','Sydney','Female','Single','Privada','202 Cedar St',NULL),
(6,'Frank','Johnson','frank_j','token_user8','pass123','Toronto','Male','Married','Publica','303 Maple St',NULL),
(7,'Grace','Taylor','grace_t','token_user9','pass789','Berlin','Female','Single','Privada','404 Birch St',NULL),
(8,'Henry','Smith','henry_s','token_user10','passxyz','Tokyo','Male','Married','Publica','505 Walnut St',NULL),
(9,'Ivy','Martin','ivy_m','token_user11','pass123','Mumbai','Female','Single','Privada','606 Pine St',NULL),
(10,'Jack','White','jack_w','token_user12','passabc','Beijing','Male','Married','Publica','707 Oak St',NULL);
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-27 23:23:24
