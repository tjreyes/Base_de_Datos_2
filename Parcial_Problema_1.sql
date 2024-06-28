/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Parcial_Parte_1
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `codigoPostal` varchar(15) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `empleadoAtiende` int(11) DEFAULT NULL,
  `limiteCredito` double DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `codigodeverificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `codigodeverificacion` (`codigodeverificacion`),
  KEY `empleadoAtiende` (`empleadoAtiende`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`empleadoAtiende`) REFERENCES `empleados` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES
(1010,'TechWave Solutions','Gonzalez','Rafael','546823197','Unter den Linden 10 10117 Berlín','Berlin','Departamento 161','99001','Alemania',10,109000000,1,'Ab63'),
(2020,'Boston Dynamics','Posada','Jorge','335429687','25 Beacon Street Boston, MA 02108','Boston','Departamento 427','44002','USA',22,203000000,0,'lk54'),
(3030,'Lockheed Martin','Ortiz','David','944521173','123 Bethesda Avenue Bethesda, MD 20814','Bethesda','Departamento 133','70103','USA',39,30500000,0,'bs14'),
(4040,'Samsung','Guerrero','Vladimir','656523104','45 Gangnam-daero Seúl, Corea del Sur','Seul','Departamento 401','50504','Corea del Sur',43,400700000,1,'Cs78'),
(5050,'Cisco','De la Cruz','Jose','754001239','123 Main Street San José, CA 95112','San Jose','Departamento 953','42005','USA',55,5000000,1,'uS95');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesordenes`
--

DROP TABLE IF EXISTS `detallesordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallesordenes` (
  `id_orden` int(11) NOT NULL,
  `id_producto` varchar(15) NOT NULL,
  `cantidadPedida` int(11) DEFAULT NULL,
  `valorUnitario` double DEFAULT NULL,
  `ordenEntrega` int(6) DEFAULT NULL,
  `entregada` tinyint(1) DEFAULT NULL,
  `codigoFiscal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_orden`,`id_producto`),
  UNIQUE KEY `codigoFiscal` (`codigoFiscal`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detallesordenes_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`),
  CONSTRAINT `detallesordenes_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesordenes`
--

LOCK TABLES `detallesordenes` WRITE;
/*!40000 ALTER TABLE `detallesordenes` DISABLE KEYS */;
INSERT INTO `detallesordenes` VALUES
(1115,'PR19',10000,1500,17,1,'RUE78945'),
(2246,'PR23',25000,2000,20,0,'RUE14752'),
(3399,'PR30',360000,380,36,0,'RUE05524'),
(4723,'PR46',405000,46,40,1,'RUE03245'),
(5001,'PR52',5000000,50,54,0,'RUE14024');
/*!40000 ALTER TABLE `detallesordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `documento` int(11) NOT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_oficina` varchar(10) DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `trabajandoActualmente` tinyint(1) DEFAULT NULL,
  `nombredeusuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`documento`),
  UNIQUE KEY `nombredeusuario` (`nombredeusuario`),
  KEY `id_oficina` (`id_oficina`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES
(10,'Reyes','Ashley','Ext23','ashley.reyes@gmail.com','OF17',1,'Jefa de Ventas',1,'york23'),
(22,'Padilla','Suzette','Ext14','suzette.padilla@gmail.com','OF26',2,'Jefa de TI',1,'suu14'),
(39,'Medina','Mijal','Ext13','mijal.medina@gmail.com','OF37',3,'Jefa de Marketing',1,'MiM057'),
(43,'Campos','Alex','Ext40','alex.campos@gmail.com','OF44',4,'Jefe de Bodega',1,'CaL40'),
(55,'Rodrigues','Raul','Ext59','raul.rodrigues@gmail.com','OF50',5,'Jefe de Recursos Humanos',1,'RR595');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasproductos`
--

DROP TABLE IF EXISTS `lineasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineasproductos` (
  `id_lineaProducto` int(5) NOT NULL,
  `nombreLinea` varchar(50) DEFAULT NULL,
  `textoDescripcion` varchar(4000) DEFAULT NULL,
  `htmlDescripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `activa` tinyint(1) DEFAULT NULL,
  `numerodelinea` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lineaProducto`),
  UNIQUE KEY `numerodelinea` (`numerodelinea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasproductos`
--

LOCK TABLES `lineasproductos` WRITE;
/*!40000 ALTER TABLE `lineasproductos` DISABLE KEYS */;
INSERT INTO `lineasproductos` VALUES
(156,'Línea Targetas Graficas','Se arman tarjetas graficas','N.C','Tarjetas.jpg',1,16),
(200,'Línea Micro-Procesadores','Se juntan los componentes de los microprocesadores','N.C','M-p.jpg',1,23),
(333,'Línea Ensamblaje','Se ensamblan Armas y componentes para veiculos y aeronaves','N.C','ensamblaje.jpg',0,31),
(414,'Línea Baterias','Armado de baterias de litio','N.C','Baterias.jpg',0,44),
(573,'Línea Routers','Se juntan las piezas para armar routers','N.C','routers.jpg',1,52);
/*!40000 ALTER TABLE `lineasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oficinas` (
  `id_oficina` varchar(10) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigoPostal` varchar(15) DEFAULT NULL,
  `continente` varchar(10) DEFAULT NULL,
  `activa` tinyint(1) DEFAULT NULL,
  `contraseñaOficina` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_oficina`),
  UNIQUE KEY `contraseñaOficina` (`contraseñaOficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES
('OF17','Nueva York','55548789','123 5th Ave, New York, NY 10010, USA','Departamento 451','USA','47001','America',1,'usA432'),
('OF26','Oslo','9871124321','Karl Johans gate 22, 0159 Oslo, Norway','Departamento 297','Noruega','78902','Europa',1,'osl789'),
('OF37','Toronto','190357463','100 Queen St W, Toronto, ON M5H 2N2, Canada','Departamento 320','Canada','48603','America',0,'Cad203'),
('OF44','Miami','345685237','1601 Collins Ave, Miami Beach, FL 33139, USA','Departamento 467','USA','40005','America',0,'MaI746'),
('OF50','Tokio','435964782','Sumida City, Tokyo 131-0045, Japan','Departamento 547','Japon','04565','Asia',1,'TKj575');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `fechaRecibido` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `activas` tinyint(1) DEFAULT NULL,
  `codigodeverificacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  UNIQUE KEY `codigodeverificacion` (`codigodeverificacion`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES
(1115,'2018-04-01','2025-11-10','2024-08-08','Completado','Se completo a tiempo',1010,0,'xdg78'),
(2246,'2020-10-30','2026-06-19','2025-02-03','En proceso','Todo va segun lo planeado',2020,1,'poj56'),
(3399,'2019-03-21','2030-03-01','2029-01-18','En proceso','acidente menor enla zona de ensamblaje',3030,1,'edt40'),
(4723,'2020-07-11','2024-09-15','2023-04-23','Completado','la entrega se retraso un mes por la lluvia',4040,0,'axp04'),
(5001,'2022-12-01','2028-10-12','2027-03-09','En proceso','Se necesitan mas antenas',5050,1,'hgy67');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id_cliente` int(11) NOT NULL,
  `numeroFactura` varchar(50) NOT NULL,
  `fechaPago` date DEFAULT NULL,
  `totalPago` double DEFAULT NULL,
  `completado` tinyint(1) DEFAULT NULL,
  `numerodefactura` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`,`numeroFactura`),
  UNIQUE KEY `numerodefactura` (`numerodefactura`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES
(1010,'F181','2020-09-15',150000000,1,'Y6453'),
(2020,'F352','2020-12-25',500000000,1,'X5203'),
(3030,'F243','2021-03-13',136800000,1,'B7563'),
(4040,'F694','2023-07-05',2070000,1,'T1045'),
(5050,'F895','2023-08-01',250000000,1,'Z0867');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` varchar(15) NOT NULL,
  `nombreProducto` varchar(70) DEFAULT NULL,
  `id_lineaProducto` int(5) DEFAULT NULL,
  `escala` varchar(10) DEFAULT NULL,
  `cantidad` int(6) DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `MSRP` double DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `codigodebarras` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `codigodebarras` (`codigodebarras`),
  KEY `id_lineaProducto` (`id_lineaProducto`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_lineaProducto`) REFERENCES `lineasproductos` (`id_lineaProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES
('PR19','Tarjeta Grafica',156,'1:1',10000,1500,1550,1,'569960'),
('PR23','Micro-Procesador',200,'1:1',25000,2000,2500,1,'1456230'),
('PR30','Antenas para avion',333,'1:1',360000,380,400,1,'3678940'),
('PR46','Baterias de litio',414,'1:1',405000,46,50,1,'2178360'),
('PR52','Routers',573,'1:1',5000000,50,70,1,'1436980');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-06-27 23:16:50
