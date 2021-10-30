-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: practico_db
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'deportes'),(2,'interes general'),(3,'noticias');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_has_notas`
--

DROP TABLE IF EXISTS `categorias_has_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_has_notas` (
  `Categorias_id` int NOT NULL,
  `notas_id` int NOT NULL,
  PRIMARY KEY (`Categorias_id`,`notas_id`),
  KEY `fk_Categorias_has_notas_notas1_idx` (`notas_id`),
  KEY `fk_Categorias_has_notas_Categorias1_idx` (`Categorias_id`),
  CONSTRAINT `fk_Categorias_has_notas_Categorias1` FOREIGN KEY (`Categorias_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `fk_Categorias_has_notas_notas1` FOREIGN KEY (`notas_id`) REFERENCES `notas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_has_notas`
--

LOCK TABLES `categorias_has_notas` WRITE;
/*!40000 ALTER TABLE `categorias_has_notas` DISABLE KEYS */;
INSERT INTO `categorias_has_notas` VALUES (1,2),(1,3),(2,3);
/*!40000 ALTER TABLE `categorias_has_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Notas_usuario` text NOT NULL,
  `Titulo` varchar(60) NOT NULL,
  `Creada` datetime NOT NULL,
  `Modificada` datetime NOT NULL,
  `Eliminada` datetime NOT NULL,
  `Descripcion` varchar(100) NOT NULL,
  `Usuarios_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notas_Usuarios_idx` (`Usuarios_id`),
  CONSTRAINT `fk_notas_Usuarios` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Tenemos como misión el diseño, elaboración y administración de las políticas públicas del trabajo y empleo, promoción del trabajo digno y fiscalización en orden al fiel cumplimiento de la normativa interna e internacional en la materia','trabajo','2020-01-01 08:00:00','2020-01-08 09:00:00','2020-01-08 15:00:00','un dia de trabajo',1),(2,'La palabra turismo —según la OMT Organización Mundial del Turismo— comprende «las actividades que realizan las personas durante sus viajes y estancias en lugares distintos a su entorno habitual durante un período de tiempo inferior a un año, con fines de ocio, negocios u otros','turismo','2020-02-01 08:00:00','2020-02-05 10:00:00','2020-02-20 20:00:00','actividad',2),(3,'• 6 de noviembre: Las Vegas (PPV): Canelo Álvarez vs. Caleb Plant, 12 rounds, por los títulos peso súper mediano CMB/OMB/AMB de Álvarez y FIB de Plant','boxeo','2020-03-05 09:00:00','2020-03-09 14:00:00','2020-03-10 21:00:00','calendario de boxeo',3);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'omar','omar@hotmail.com','jaldin'),(2,'jose','jose@hotmail.com','lopez'),(3,'pedro','pedro@hotmail.com','paz');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'practico_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-30 19:13:10
