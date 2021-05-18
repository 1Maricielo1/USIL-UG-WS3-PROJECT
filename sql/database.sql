/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Insaw
 * Created: 15 may. 2021
 */

-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.5.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `claveautor` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`claveautor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (2010,'Gabriel García Márquez'),(2011,'Johann Wolfgang von Goethe'),(2012,'Nikolai Gogol'),(2013,'Giovanni Boccaccio'),(2014,'	Jorge Luis Borges'),(2015,'Emily Brontë'),(2016,'Albert Camus'),(2017,'Paul Celan'),(2018,'Louis-Ferdinand Céline'),(2019,'Miguel de Cervantes');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `claveeditorial` smallint(6) NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`claveeditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'Editorial animal de invierno ',' Santa Anita ','987867645'),(2,'Caja Negra ',' La Victoria ','956784637'),(3,'Colmena Editores ',' La Molina ','945672341'),(4,'Editorial Ambar ',' Santa Anita ','945678364'),(5,'Editorial Futura ',' Ate ','94671423'),(6,'Editorial Macro ',' Surco ','95679087'),(7,'Editorial Maria Trinidad ',' Comas ','9836784'),(8,'Editorial gato viejo ',' Callao ','96389471'),(9,'Editorial Pesopluma ','  Miraflores ','987387645'),(10,'La travesía editora ',' San Isidro ','984890645');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escrito_por`
--

DROP TABLE IF EXISTS `escrito_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escrito_por` (
  `clavelibro` int(11) NOT NULL,
  `claveautor` int(11) NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `claveautor` (`claveautor`),
  CONSTRAINT `escrito_por_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `escrito_por_ibfk_2` FOREIGN KEY (`claveautor`) REFERENCES `autor` (`claveautor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escrito_por`
--

LOCK TABLES `escrito_por` WRITE;
/*!40000 ALTER TABLE `escrito_por` DISABLE KEYS */;
INSERT INTO `escrito_por` VALUES (1011,2010),(1012,2011),(1013,2012),(1014,2013),(1015,2014),(1016,2015),(1017,2016),(1018,2017),(1019,2018),(1020,2019);
/*!40000 ALTER TABLE `escrito_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `clavelibro` int(11) NOT NULL,
  `titulo` varchar(70) DEFAULT NULL,
  `idioma` varchar(15) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `formato` varchar(15) DEFAULT NULL,
  `claveeditorial` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`clavelibro`),
  KEY `claveeditorial` (`claveeditorial`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`claveeditorial`) REFERENCES `editorial` (`claveeditorial`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1011,'Cien años de soledad ',' ingles ',20,'EPUB',1),(1012,'Fausto ',' español ',15,'MOBI',2),(1013,'Almas muertas ',' español ',11,'FISICO',3),(1014,'Decamerón ',' ingles ',30,'FISICO',4),(1015,'Ficciones ',' ingles ',13,'FISICO',5),(1016,'Cumbres Borrascosas ',' español ',27,'FISICO',6),(1017,'El extranjero ',' español ',24,'FISICO',7),(1018,'Poemas ',' español ',21,'FISICO',8),(1019,'Viaje al fin de la noche ','  español ',25,'PDF',9),(1020,'Don Quijote de la Mancha ',' ingles ',35,'CBR',10);
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `clavesocio` int(11) DEFAULT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  KEY `clavesocio` (`clavesocio`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`clavesocio`) REFERENCES `socio` (`clavesocio`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (3011,'2021-10-24','2021-10-24'),(3012,'2021-10-24','2021-11-24'),(3013,'2021-10-14','2021-11-14'),(3014,'2021-11-13','2021-12-13'),(3015,'2021-11-12','2021-12-12'),(3016,'2021-09-05','2021-10-05'),(3017,'2021-08-09','2021-09-09'),(3018,'2021-09-27','2021-10-27'),(3019,'2021-10-12','2021-11-12'),(3020,'2021-11-11','2021-12-11');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socio` (
  `clavesocio` int(11) NOT NULL,
  `nombre` varchar(70) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `categoria` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`clavesocio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (3011,'Eduardo Lopez ',' Ate Vitarte ','987385738','A1'),(3012,'Angel Mejía',' Surco ','987678294','A2'),(3013,'Joel Cardenas','Huaycan','987674372','B1'),(3014,'Omar Echevarria ','San Juan de Miraflores','93578294','B3'),(3015,'Efrain Gomez ','San Juan de Lurigancho','987397494','C1'),(3016,'Luis Romero ','Puente Piedra','983678294','A1'),(3017,'Edmundo Meza ','Ancon','989847394','C2'),(3018,'Piero Guerrero ','Miraflores','988973655','B1'),(3019,'Emanuel Vilchez','Santa Anita','987937456','B3'),(3020,'Samuel Lopez ','La Molina','984677894','A1');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tema`
--

DROP TABLE IF EXISTS `tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tema` (
  `clavetema` smallint(6) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`clavetema`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tema`
--

LOCK TABLES `tema` WRITE;
/*!40000 ALTER TABLE `tema` DISABLE KEYS */;
INSERT INTO `tema` VALUES (8010,'La soledad'),(8011,'Tragedia'),(8012,'Ambicion'),(8013,'Aventura'),(8014,'Drama'),(8015,'Venganza'),(8016,'Aventura'),(8017,'Romance'),(8018,'Aventura'),(8019,'Imaginacion');
/*!40000 ALTER TABLE `tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trata_sobre`
--

DROP TABLE IF EXISTS `trata_sobre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trata_sobre` (
  `clavelibro` int(11) NOT NULL,
  `clavetema` smallint(6) NOT NULL,
  KEY `clavelibro` (`clavelibro`),
  KEY `clavetema` (`clavetema`),
  CONSTRAINT `trata_sobre_ibfk_1` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `trata_sobre_ibfk_2` FOREIGN KEY (`clavetema`) REFERENCES `tema` (`clavetema`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trata_sobre`
--

LOCK TABLES `trata_sobre` WRITE;
/*!40000 ALTER TABLE `trata_sobre` DISABLE KEYS */;
INSERT INTO `trata_sobre` VALUES (1011,8010),(1012,8011),(1013,8012),(1014,8013),(1015,8014),(1016,8015),(1017,8016),(1018,8017),(1019,8018),(1020,8019);
/*!40000 ALTER TABLE `trata_sobre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-17 20:08:56