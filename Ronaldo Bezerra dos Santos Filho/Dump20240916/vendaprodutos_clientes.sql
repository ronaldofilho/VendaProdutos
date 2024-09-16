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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `NOME` varchar(250) NOT NULL,
  `CIDADE` varchar(250) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `CODIGO` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('Ana Souza','São Paulo','SP',1),('Carlos Silva','Rio de Janeiro','RJ',2),('Mariana Oliveira','Belo Horizonte','MG',3),('Pedro Almeida','Porto Alegre','RS',4),('Juliana Costa','Curitiba','PR',5),('Roberto Lima','Fortaleza','CE',6),('Fernanda Santos','Recife','PE',7),('Lucas Martins','Manaus','AM',8),('Aline Pereira','Salvador','BA',9),('Gabriel Rocha','Brasília','DF',10),('Paula Fernandes','Vitória','ES',11),('Eduardo Silva','São Luís','MA',12),('Claudia Rocha','Campo Grande','MS',13),('Marcelo Cardoso','João Pessoa','PB',14),('Simone Almeida','Aracaju','SE',15),('Renato Gonçalves','Natal','RN',16),('Tatiane Martins','Teresina','PI',17),('Fernando Lima','Cuiabá','MT',18),('Camila Lima','Maceió','AL',19),('Ricardo Santos','Belém','PA',20),('Julio César','São José dos Campos','SP',21),('Rafaela Vieira','Uberlândia','MG',22),('Tiago Almeida','Goiânia','GO',23),('Nathalia Costa','Blumenau','SC',24),('Jorge Santos','São Bernardo do Campo','SP',25);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
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
