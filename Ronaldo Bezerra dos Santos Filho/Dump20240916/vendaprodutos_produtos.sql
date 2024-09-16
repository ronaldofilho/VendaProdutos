-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vendaprodutos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `CODIGO` bigint(20) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(250) NOT NULL,
  `PRECOVENDA` double NOT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Cadeira de Escritório',299.9),(2,'Mesa de Jantar',799.9),(3,'Estante para Livros',459.9),(4,'Sofá de 3 Lugares',1299.9),(5,'Armário de Cozinha',699.9),(6,'Cama Queen Size',1199.9),(7,'Frigideira Antiaderente',89.9),(8,'Liquidificador',159.9),(9,'Micro-ondas',349.9),(10,'Fogão de 4 Bocas',699.9),(11,'Máquina de Lavar Roupa',1399.9),(12,'Televisão LED 43\"',1299.9),(13,'Cafeteira Elétrica',129.9),(14,'Aspirador de Pó',249.9),(15,'Secador de Cabelos',89.9),(16,'Escova de Dentes Elétrica',119.9),(17,'Smartphone',1499.9),(18,'Notebook',3299.9),(19,'Mouse Sem Fio',59.9),(20,'Teclado Mecânico',199.9),(21,'Impressora Multifuncional',399.9),(22,'Cadeira Gamer',899.9),(23,'Mesa de Computador',329.9),(24,'Luminária de Mesa',69.9),(25,'Relógio de Pulso',199.9),(26,'Óculos de Sol',159.9),(27,'Tênis Esportivo',299.9),(28,'Jaqueta de Couro',499.9),(29,'Cinto de Couro',79.9),(30,'Bolsa de Mão',129.9),(31,'Carteira de Couro',89.9),(32,'Relógio Inteligente',499.9),(33,'Fones de Ouvido Bluetooth',169.9);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-16 17:10:27
