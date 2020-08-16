-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: workshop2
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
-- Current Database: `workshop2`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `workshop2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `workshop2`;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_pl_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'coderslab@coderslab.pl','$2a$10$PFO3OHHF2zTzahUgM/1PPurb82VZAYeDWHMcyvf7Uf9Yu/dFPEGLG');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_pl_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_pl_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hattie.pacocha@example.org','darby42','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(2,'hand.laron@example.com','kutch.angelita','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(3,'cortney.nicolas@example.org','gregorio52','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(4,'kayli.roberts@example.com','lhowell','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(5,'wmetz@example.net','craig.torp','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(6,'waters.mozelle@example.com','jean.moen','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(7,'senger.alanis@example.org','eloy.wisozk','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(8,'skilback@example.net','carolina.metz','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(9,'effertz.shayna@example.net','faustino24','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(10,'funk.abe@example.net','timothy30','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(11,'ernestine80@example.org','adrain67','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(12,'hmarks@example.com','kiara27','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(13,'tritchie@example.com','durgan.meghan','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(14,'kaya26@example.org','nathaniel69','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(15,'nicola58@example.com','cormier.colin','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(16,'kaycee55@example.com','keely83','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(17,'pablo75@example.net','jovan30','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(18,'rokuneva@example.org','hellen.haag','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(19,'albin.barrows@example.com','johnathan67','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(20,'brodriguez@example.net','louvenia.jones','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(21,'ybayer@example.com','dibbert.ona','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(22,'hamill.ulices@example.com','ecruickshank','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(23,'dana27@example.net','walton.beahan','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(24,'schamberger.mattie@example.com','roberts.haskell','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(25,'daphney68@example.org','dexter98','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(26,'drake40@example.net','edwina.auer','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(27,'turcotte.ella@example.org','taylor.bernier','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(28,'schuster.irwin@example.net','antonetta.kovacek','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(29,'esperanza.gulgowski@example.org','wellington66','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji'),(30,'kelly.wunsch@example.com','hammes.kane','$2a$10$ZljF3oYppXqD06nKyFgwTOhf0HtOwRwPEsPSiCZDunhLmJL9HZcji');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-16  7:56:06
