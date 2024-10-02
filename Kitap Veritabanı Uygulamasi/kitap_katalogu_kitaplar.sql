-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: kitap_katalogu
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `kitaplar`
--

DROP TABLE IF EXISTS `kitaplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kitaplar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kitap_adi` varchar(255) NOT NULL,
  `yazar` varchar(255) NOT NULL,
  `yayin_tarihi` date DEFAULT NULL,
  `tur` varchar(100) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kitaplar`
--

LOCK TABLES `kitaplar` WRITE;
/*!40000 ALTER TABLE `kitaplar` DISABLE KEYS */;
INSERT INTO `kitaplar` VALUES (2,'Dünyalar Savaşı','H.G.Wells','2017-05-12','Bilimkurgu','123-232-5445-32'),(3,'Zaman Makinesi','H.G.Wells','2017-04-18','Bilimkurgu','343-4543-12-21'),(4,'Karanlığın Sol Eli','Ursula K. Le Guin','2013-05-26','Bilimkurgu','654-23-123-65'),(5,'Sonsuzluğun Sonu','Isaac Asimov','2015-11-21','Bilimkurgu','123-43-65-7686'),(6,'Geleceğin Yazarları 1','L. Ron Hubbard','2008-04-06','Bilimkurgu','6545-232-123-34'),(7,'Otonom','Annalee Newitz','2022-12-27','Bilimkurgu','765-322-653-675-32'),(8,'Gece Kuşları','George R. R. Martin','2018-05-09','Bilimkurgu','876-456-344-98'),(9,'Dünyaya Orman Denir','Ursula K. Le Guin','2013-10-16','Bilimkurgu','534-765-878-34'),(10,'Yüksek Şatodaki Adam','Philip K. Dick','2020-11-21','Bilimkurgu','675-453-768-31');
/*!40000 ALTER TABLE `kitaplar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 15:17:30
