-- MySQL dump 10.13  Distrib 8.1.0, for Linux (aarch64)
--
-- Host: localhost    Database: fortris
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `balance` int NOT NULL,
  `availableBalance` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (6,'account_one','cat_one','tag_one',13,13),(7,'account_two','cat_two','tag_two',14,14);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accountdetail`
--

DROP TABLE IF EXISTS `accountdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accountdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `debit` int NOT NULL,
  `credit` int NOT NULL,
  `balance` int NOT NULL,
  `account_id` int NOT NULL,
  `confirmation_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accountdetail`
--

LOCK TABLES `accountdetail` WRITE;
/*!40000 ALTER TABLE `accountdetail` DISABLE KEYS */;
INSERT INTO `accountdetail` VALUES (2460,'bbbbbbafV6PT','setlement','payment received',2,0,2,6,'2023-10-31 08:20:52'),(2461,'bbbbbb6VPq6X','setlement','payment received',2,0,2,7,'2023-10-31 08:21:03'),(2462,'bbbbbbnDjtaj','setlement','payment received',2,0,4,7,'2023-10-31 08:21:03'),(2463,'bbbbbbsbSQT5','setlement','payment received',2,0,4,6,'2023-10-31 08:21:08'),(2464,'bbbbbb1pZvGj','setlement','payment received',0,1,3,7,'2023-10-31 08:21:08'),(2465,'bbbbbbMxNnRy','setlement','payment received',2,0,5,7,'2023-10-31 08:21:13'),(2466,'bbbbbbm7LFnh','setlement','payment received',2,0,6,6,'2023-10-31 08:21:13'),(2467,'bbbbbbRBcg9n','setlement','payment received',2,0,7,7,'2023-10-31 08:21:18'),(2468,'bbbbbbttroRu','setlement','payment received',0,1,6,7,'2023-10-31 08:21:18'),(2469,'bbbbbbaeZtGT','setlement','payment received',2,0,8,7,'2023-10-31 08:21:23'),(2470,'bbbbbbKEMkqg','setlement','payment received',2,0,8,6,'2023-10-31 08:21:23'),(2471,'bbbbbbFEROT2','setlement','payment received',2,0,10,7,'2023-10-31 08:21:28'),(2472,'bbbbbbf6jm0K','setlement','payment received',2,0,10,6,'2023-10-31 08:21:28'),(2473,'bbbbbbftfgKF','setlement','payment received',0,1,9,6,'2023-10-31 08:21:33'),(2474,'bbbbbbvBmxS7','setlement','payment received',2,0,12,7,'2023-10-31 08:21:33'),(2475,'bbbbbbFBEWLS','setlement','payment received',2,0,14,7,'2023-10-31 08:21:38'),(2476,'bbbbbbVvtcYk','setlement','payment received',0,1,8,6,'2023-10-31 08:21:38'),(2477,'bbbbbbmrOJo5','setlement','payment received',2,0,16,7,'2023-10-31 08:21:43'),(2478,'bbbbbb6ce5xd','setlement','payment received',2,0,10,6,'2023-10-31 08:21:43'),(2479,'bbbbbbLv26MF','setlement','payment received',2,0,12,6,'2023-10-31 08:21:48'),(2480,'bbbbbbXsTQal','setlement','payment received',2,0,18,7,'2023-10-31 08:21:48'),(2481,'bbbbbbxCi7rn','setlement','payment received',2,0,14,6,'2023-10-31 08:21:53'),(2482,'bbbbbbf9xwTd','setlement','payment received',0,1,13,6,'2023-10-31 08:21:53'),(2483,'bbbbbbJeDVcB','setlement','payment received',2,0,20,7,'2023-10-31 08:21:58'),(2484,'bbbbbbHuP0Nj','setlement','payment received',2,0,15,6,'2023-10-31 08:21:58');
/*!40000 ALTER TABLE `accountdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-31  7:42:44
