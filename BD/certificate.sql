-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: certificates
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificate` (
  `Cer_id` tinyint NOT NULL AUTO_INCREMENT,
  `Cer_title` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `Cer_issued` date NOT NULL,
  `Cer_link` varchar(200) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`Cer_id`),
  UNIQUE KEY `Cer_id_UNIQUE` (`Cer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (18,' Universidad Desarrollo Web 2021 - FrontEnd Web Developer','2021-08-29','https://www.udemy.com/certificate/UC-a2c38963-56bc-4f27-a32f-c7781a7d65e1/'),(19,'Python y Flask. Desarrollo web y APIS tipo REST con Flask','2021-07-14','https://www.udemy.com/certificate/UC-37843777-8504-4659-a19b-43f96253cc9d/'),(21,' SQL: Creación de Bases de Datos (De cero a profesional)','2021-11-22','https://www.udemy.com/certificate/UC-a7211696-6fd5-4e1a-908c-ea276b393b16/'),(23,'Desarrollo Web Fullstack - Codo a codo','2021-12-13','/'),(24,'Habilidades blandas - Accenture ','2021-10-10','/static/img/certificado_02.jpg'),(30,'Lanús construye fúturo x Mumuki','2021-07-23','/static/img/certificates/certificado_01.png');
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 15:56:55
