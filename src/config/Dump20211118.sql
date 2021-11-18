-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: appEditora
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.10.1

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
-- Table structure for table `Book`
--

DROP TABLE IF EXISTS `Book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Book` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(150) NOT NULL,
  `bookRelease` date NOT NULL,
  `ISBN` varchar(13) NOT NULL,
  `EAN` varchar(14) NOT NULL,
  `Photo` varchar(1000) NOT NULL,
  `Category_id` int DEFAULT NULL,
  `Bookbinding_id` int DEFAULT NULL,
  `Writer_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ISBN` (`ISBN`),
  UNIQUE KEY `EAN` (`EAN`),
  KEY `Category_id` (`Category_id`),
  KEY `Bookbinding_id` (`Bookbinding_id`),
  KEY `Writer_id` (`Writer_id`),
  CONSTRAINT `Book_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `Categories` (`ID`),
  CONSTRAINT `Book_ibfk_2` FOREIGN KEY (`Bookbinding_id`) REFERENCES `Bookbinding` (`ID`),
  CONSTRAINT `Book_ibfk_3` FOREIGN KEY (`Writer_id`) REFERENCES `Writer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Book`
--

LOCK TABLES `Book` WRITE;
/*!40000 ALTER TABLE `Book` DISABLE KEYS */;
INSERT INTO `Book` VALUES (3,'Memorial do Convento','2021-10-29','9789720034731','978-9720034731','bookJS.jpg',15,3,26),(8,'Memorial do Convento','2021-10-29','9789720034732','978-9720034732','bookJS.jpg',15,3,26),(10,'Memorial do Convento','2021-10-29','9789720034735','978-9720034735','bookJS.jpg',15,3,26),(12,'Convento','2021-10-29','9789720034729','978-9720034729','bookJS.jpg',15,3,26),(14,'Livro teste','2021-11-01','','978-9895670026','book4.png',2,1,26);
/*!40000 ALTER TABLE `Book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Bookbinding`
--

DROP TABLE IF EXISTS `Bookbinding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookbinding` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookbinding`
--

LOCK TABLES `Bookbinding` WRITE;
/*!40000 ALTER TABLE `Bookbinding` DISABLE KEYS */;
INSERT INTO `Bookbinding` VALUES (1,'Lombada Quadrada'),(2,'Wire-o'),(3,'Capa Mole'),(4,'Capa dura'),(5,'Cortonado');
/*!40000 ALTER TABLE `Bookbinding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'Biografias'),(2,'Contos'),(3,'Crónicas'),(4,'Ensaios'),(5,'Epístolas e Cartas'),(6,'Estória'),(7,'Ficção Científica'),(8,'Hístoria da Literatura'),(9,'Humor'),(10,'Leituras Orientadas'),(11,'Linguística e Filogia'),(12,'Literatura Fantásitica'),(13,'Memórias e Testemunhos'),(14,'Monografias'),(15,'Outras Formas Literárias'),(16,'Poesia'),(17,'Policial e Thriller'),(18,'Revistas Literárias'),(19,'Romance'),(20,'Teatro(Obra)'),(21,'Jovem Adulto');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Writer`
--

DROP TABLE IF EXISTS `Writer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Writer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(70) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Writer`
--

LOCK TABLES `Writer` WRITE;
/*!40000 ALTER TABLE `Writer` DISABLE KEYS */;
INSERT INTO `Writer` VALUES (1,'Pedro','Chagas Freitas'),(2,'Luís','de Camões'),(3,'Lídia','Jorge'),(4,'Abel','Botelho'),(5,'Adelaide','Batista'),(6,'Mario','Cunha'),(7,'Afonso','Albuquerque'),(8,'Afonso','Duarte'),(9,'Jonathan','Swift'),(10,'William','Congreve'),(11,'Laurence','Stern'),(12,'Oliver','Goldsmith'),(13,'Richard','Brinsley Sheridan'),(14,'Sheridan','Le Fanu'),(15,'W.B.','Yeats'),(16,'Oscar','Wilde'),(17,'Bram','Stoker'),(18,'George','Moore'),(19,'George','Bernard Shaw'),(20,'Sean','O’Casey'),(21,'James','Joyce'),(22,'Joyce','Carey'),(23,'Elizabeth','Bowen'),(24,'Molly','Keane'),(25,'Brendan','Behan'),(26,'José','Saramago');
/*!40000 ALTER TABLE `Writer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-18  0:24:18
