CREATE DATABASE  IF NOT EXISTS `hntsport` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hntsport`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hntsport
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pass` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (12,'123','tuan123','70 Nguyễn An Ninh,Tương Mai,Hà Nội','Tuanboqx@gmail.com','Lê Anh Tuấn','0398968946'),(13,'123','nui123','Bắc Ninh','Nui@gmail.com','Trần Đức Núi','0979104025'),(14,'123','tuan1234','Hà Nội','Tuan212464@huce.edu.vn','Lê Anh Tuấn','0398968946');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` bigint DEFAULT NULL,
  `andress` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (7,530000,'70 Nguyễn An Ninh,Hà Nội','2023-07-01 04:52:17.063000','Lê Anh Tuấn','Tuanboqx@gmail.com','','Ship code','0398968946','3'),(8,430000,'70 Nguyễn An Ninh,Hà Nội','2023-07-01 09:45:48.643000','Lê Anh Tuấn','Tuanboqx@gmail.com','','Ship code','0398968946','1'),(9,530000,'521 Trương Định,Hà Nội','2023-07-01 10:51:33.301000','Trần Đức Núi','Nui@gmail.com','','Ship code','0979104025','3'),(10,180000,'521 Trương Định','2023-07-01 10:58:30.027000','Trần Đức Núi','Nui@gmail.com','','Ship code','0979104025','1'),(11,580000,'Hà Nội','2023-07-01 14:03:49.528000','Lê Anh Tuấn','Tuan212464@huce.edu.vn','','Ship code','0398968946','1'),(12,230000,'70 Nguyễn An Ninh,Tương Mai,Hà Nội','2023-07-01 14:17:25.941000','Lê Anh Tuấn','Tuanboqx@gmail.com','','Ship code','0398968946','0'),(13,230000,'Hà Nội','2023-07-01 14:24:50.043000','Lê Anh Tuấn','Tuan212464@huce.edu.vn','','Ship code','0398968946','0'),(14,180000,'Hà Nội','2023-07-01 16:02:08.278000','Lê Anh Tuấn','Tuan212464@huce.edu.vn','','Ship code','0398968946','0');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `billid` bigint DEFAULT NULL,
  `product_detail_id` bigint DEFAULT NULL,
  `quantify` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (10,7,63,1),(11,7,87,2),(12,8,38,1),(13,8,47,1),(14,9,72,2),(15,9,42,1),(16,10,72,1),(17,10,42,0),(18,11,24,2),(19,11,67,1),(20,12,17,1),(21,13,17,1),(22,14,67,1);
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_code` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oglj99tro9covt7h4fli0k969` (`category_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'ABD','Áo đá bóng '),(3,'GBD','Giày đá bóng '),(4,'ATT','Áo thể thao'),(5,'GTT','Giày thể thao'),(6,'PKTT','Phụ kiện thể thao');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_product` (
  `category_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  UNIQUE KEY `UK_a3fu50r1ffabepxw94y19s10s` (`product_id`),
  KEY `FKfr6rjc04htbtc3xas2b9xmq7r` (`category_id`),
  CONSTRAINT `FK8lxtcgpbo1ukpg0wfrxexpwks` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKfr6rjc04htbtc3xas2b9xmq7r` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `andress` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Thanh Hóa','Tuanboqx@gmail.com','Lê Anh Tuấn','0398968946');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `quantify` bigint NOT NULL,
  `size` varchar(255) NOT NULL,
  `product_code` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKclc71634r2d1wfceyswl26kls` (`product_code`),
  CONSTRAINT `FKclc71634r2d1wfceyswl26kls` FOREIGN KEY (`product_code`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (17,'https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1,'S',1),(18,'https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1,'M',1),(19,'https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1,'L',1),(20,'https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1,'XL',1),(21,'https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1,'2XL',1),(22,'https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1,'S',10),(23,'https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1,'M',10),(24,'https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1,'L',10),(25,'https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1,'XL',10),(26,'https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1,'2XL',10),(27,'https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1,'S',11),(28,'https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1,'M',11),(29,'https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1,'L',11),(30,'https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1,'XL',11),(31,'https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1,'2XL',11),(32,'https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1,'S',12),(33,'https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1,'M',12),(34,'https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1,'L',12),(35,'https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1,'XL',12),(36,'https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1,'2XL',12),(37,'https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1,'S',13),(38,'https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1,'M',13),(39,'https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1,'L',13),(40,'https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1,'XL',13),(41,'https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1,'2XL',13),(42,'https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1,'S',14),(43,'https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1,'M',14),(44,'https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1,'L',14),(45,'https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1,'XL',14),(46,'https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1,'2XL',14),(47,'https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1,'S',15),(48,'https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1,'M',15),(49,'https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1,'L',15),(50,'https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1,'XL',15),(51,'https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1,'2XL',15),(52,'https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1,'S',16),(53,'https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1,'M',16),(54,'https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1,'L',16),(55,'https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1,'XL',16),(56,'https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1,'2XL',16),(57,'https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1,'S',17),(58,'https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1,'M',17),(59,'https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1,'L',17),(60,'https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1,'XL',17),(61,'https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1,'2XL',17),(62,'https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1,'S',18),(63,'https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1,'M',18),(64,'https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1,'L',18),(65,'https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1,'XL',18),(66,'https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1,'2XL',18),(67,'https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1,'S',19),(68,'https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1,'M',19),(69,'https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1,'L',19),(70,'https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1,'XL',19),(71,'https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1,'2XL',19),(72,'https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1,'S',20),(73,'https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1,'M',20),(74,'https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1,'L',20),(75,'https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1,'XL',20),(76,'https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1,'2XL',20),(77,'https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1,'S',21),(78,'https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1,'M',21),(79,'https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1,'L',21),(80,'https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1,'XL',21),(81,'https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1,'2XL',21),(82,'https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1,'S',22),(83,'https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1,'M',22),(84,'https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1,'L',22),(85,'https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1,'XL',22),(86,'https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1,'2XL',22),(87,'https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1,'S',23),(88,'https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1,'M',23),(89,'https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1,'L',23),(90,'https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1,'XL',23),(91,'https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1,'2XL',23),(92,'https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1,'S',24),(93,'https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1,'M',24),(94,'https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1,'L',24),(95,'https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1,'XL',24),(96,'https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1,'2XL',24),(97,'https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1,'S',25),(98,'https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1,'M',25),(99,'https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1,'L',25),(100,'https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1,'XL',25),(101,'https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1,'2XL',25),(102,'https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1,'S',26),(103,'https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1,'M',26),(104,'https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1,'L',26),(105,'https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1,'XL',26),(106,'https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1,'2XL',26),(107,'https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1,'S',27),(108,'https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1,'M',27),(109,'https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1,'L',27),(110,'https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1,'XL',27),(111,'https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1,'2XL',27),(112,'https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1,'S',28),(113,'https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1,'M',28),(114,'https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1,'L',28),(115,'https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1,'XL',28),(116,'https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1,'2XL',28),(117,'https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1,'S',29),(118,'https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1,'M',29),(119,'https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1,'L',29),(120,'https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1,'XL',29),(121,'https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1,'2XL',29),(122,'https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1,'S',30),(123,'https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1,'M',30),(124,'https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1,'L',30),(125,'https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1,'XL',30),(126,'https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1,'2XL',30),(127,'https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1,'S',31),(128,'https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1,'M',31),(129,'https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1,'L',31),(130,'https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1,'XL',31),(131,'https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1,'2XL',31),(132,'https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1,'S',32),(133,'https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1,'M',32),(134,'https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1,'L',32),(135,'https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1,'XL',32),(136,'https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1,'2XL',32),(137,'https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1,'S',33),(138,'https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1,'M',33),(139,'https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1,'L',33),(140,'https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1,'XL',33),(141,'https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1,'2XL',33),(142,'https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1,'S',34),(143,'https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1,'M',34),(144,'https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1,'L',34),(145,'https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1,'XL',34),(146,'https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1,'2XL',34),(147,'https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1,'S',35),(148,'https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1,'M',35),(149,'https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1,'L',35),(150,'https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1,'XL',35),(151,'https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1,'2XL',35),(152,'https://product.hstatic.net/200000583897/product/z3791340206088_9d7346ebc0cf0f0594e3f73ab31924c3_869a7a937a9a4e57b199b6dd92cfec20_1024x1024.jpg',1,'S',36),(153,'https://product.hstatic.net/200000583897/product/z3791340206088_9d7346ebc0cf0f0594e3f73ab31924c3_869a7a937a9a4e57b199b6dd92cfec20_1024x1024.jpg',1,'M',36),(154,'https://product.hstatic.net/200000583897/product/z3791340206088_9d7346ebc0cf0f0594e3f73ab31924c3_869a7a937a9a4e57b199b6dd92cfec20_1024x1024.jpg',1,'L',36),(155,'https://product.hstatic.net/200000583897/product/z3791340206088_9d7346ebc0cf0f0594e3f73ab31924c3_869a7a937a9a4e57b199b6dd92cfec20_1024x1024.jpg',1,'XL',36),(156,'https://product.hstatic.net/200000583897/product/z3791340206088_9d7346ebc0cf0f0594e3f73ab31924c3_869a7a937a9a4e57b199b6dd92cfec20_1024x1024.jpg',1,'2XL',36),(157,'https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1,'S',37),(158,'https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1,'M',37),(159,'https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1,'L',37),(160,'https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1,'XL',37),(161,'https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1,'2XL',37),(162,'https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1,'S',38),(163,'https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1,'M',38),(164,'https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1,'L',38),(165,'https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1,'XL',38),(166,'https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1,'2XL',38),(167,'https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1,'S',39),(168,'https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1,'M',39),(169,'https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1,'L',39),(170,'https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1,'XL',39),(171,'https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1,'2XL',39),(172,'https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1,'S',40),(173,'https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1,'M',40),(174,'https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1,'L',40),(175,'https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1,'XL',40),(176,'https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1,'2XL',40),(177,'https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1,'S',41),(178,'https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1,'M',41),(179,'https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1,'L',41),(180,'https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1,'XL',41),(181,'https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1,'2XL',41),(182,'https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1,'S',42),(183,'https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1,'M',42),(184,'https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1,'L',42),(185,'https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1,'XL',42),(186,'https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1,'2XL',42),(187,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1,'39',63),(188,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1,'40',63),(189,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1,'41',63),(190,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1,'42',63),(191,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1,'43',63),(192,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1,'39',64),(193,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1,'40',64),(194,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1,'41',64),(195,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1,'42',64),(196,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1,'43',64),(197,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1,'39',65),(198,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1,'40',65),(199,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1,'41',65),(200,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1,'42',65),(201,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1,'43',65),(202,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1,'39',66),(203,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1,'40',66),(204,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1,'41',66),(205,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1,'42',66),(206,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1,'43',66),(207,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1,'39',67),(208,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1,'40',67),(209,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1,'41',67),(210,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1,'42',67),(211,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1,'43',67),(212,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1,'39',68),(213,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1,'40',68),(214,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1,'41',68),(215,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1,'42',68),(216,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1,'43',68),(217,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1,'39',69),(218,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1,'40',69),(219,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1,'41',69),(220,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1,'42',69),(221,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1,'43',69),(222,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1,'39',70),(223,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1,'40',70),(224,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1,'41',70),(225,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1,'42',70),(226,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1,'43',70),(227,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1,'39',71),(228,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1,'40',71),(229,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1,'41',71),(230,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1,'42',71),(231,'https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1,'43',71),(232,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1,'39',72),(233,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1,'40',72),(234,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1,'41',72),(235,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1,'42',72),(236,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1,'43',72),(237,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1,'39',73),(238,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1,'40',73),(239,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1,'41',73),(240,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1,'42',73),(241,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1,'43',73),(242,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1,'39',74),(243,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1,'40',74),(244,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1,'41',74),(245,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1,'42',74),(246,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1,'43',74),(247,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1,'39',75),(248,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1,'40',75),(249,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1,'41',75),(250,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1,'42',75),(251,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1,'43',75),(252,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1,'39',76),(253,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1,'40',76),(254,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1,'41',76),(255,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1,'42',76),(256,'https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1,'43',76);
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` bigint NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1cf90etcu98x1e6n9aks3tel3` (`category_id`),
  CONSTRAINT `FK1cf90etcu98x1e6n9aks3tel3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Puma','Hàng chính hãng',200000,1,'MCH','Áo CLB Man City Sân Nhà','https://cdn-amz.woka.io/images/I/613Gh3chCIL._SR476,476_.jpg',1),(10,'Puma','Hàng chính hãng',200000,1,'MCA','Áo CLB Man City Sân Khách','https://cdn-amz.woka.io/images/I/513xm5T8oPL._SR476,476_.jpg',1),(11,'Adidas','Hàng chính hãng',200000,1,'MUH','Áo CLB Man United Sân Nhà','https://cdn-amz.woka.io/images/I/618MOC+mJOL._SR476,476_.jpg',1),(12,'Adidas','Hàng chính hãng',200000,1,'MU','Áo CLB Man United Sân Khách','https://cdn-amz.woka.io/images/I/51YnmiFfQuL._SR476,476_.jpg',1),(13,'Puma','Hàng chính hãng',200000,1,'ACR','Áo Bóng ĐÁ AC Milan sọc đỏ 2022-2023','https://cdn-amz.woka.io/images/I/71sWSGOsKrL._SR476,476_.jpg',1),(14,'Adidas','Hàng chính hãng ',200000,1,'BAY','Áo Bóng Đá Bayern Munich Đỏ Sân Nhà 2022-2023','https://cdn-amz.woka.io/images/I/61TUidzxiEL._SR476,476_.jpg',1),(15,'Nike','Hàng chính hãng',200000,1,'CHE','Áo Bóng Đá Chelsea 2022-2023','https://cdn-amz.woka.io/images/I/71YukeMskeL._SR476,476_.jpg',1),(16,'Nike','Hàng chính hãng',200000,1,'BAR','Áo Bóng Đá Barcelona  Sân Khách Ngắn Tay Mùa Giải 2022-2023','https://cdn-amz.woka.io/images/I/41nupBkAaIL._SR476,476_.jpg',1),(17,'Adidas','Hàng chính hãng',200000,1,'ARN','Áo Bóng Đá CLB Arsenal đỏ mùa giải 2021-2022','https://cdn-amz.woka.io/images/I/61Fnf4qe0PL._SR476,476_.jpg',1),(18,'Nike','Hàng chính hãng',200000,1,'TOT','Áo Bóng Đá Đội Tottenham 2022-2023','https://cdn-amz.woka.io/images/I/51mCphefhBS._SR476,476_.jpg',1),(19,'Riki','Hàng chính hãng',150000,4,'RKD','Áo Bóng Đá không Logo Riki Fabric Mamor Đen','https://product.hstatic.net/200000583897/product/z3754738342429_cee84047480c67d4653e1ae22b2fa03e_78b93ebb0a11459590968ffd50f86aed_1024x1024.jpg',1),(20,'Riki','Hàng chính hãng',150000,4,'RKH','Áo Bóng Đá không Logo Riki Fabric Mamor Hồng','https://product.hstatic.net/200000583897/product/z3754738326664_a1db000398ed1a0c5ff980b681327b60_7f8b7629c5a84a6ca465cc7b3255d1bf_1024x1024.jpg',1),(21,'Riki','Hàng chính hãng',150000,4,'RKT','Áo Bóng Đá không Logo Riki Fabric Mamor Tím','https://product.hstatic.net/200000583897/product/z3754738305067_ad75aefc481321ad1b24687f8e4789f7_d33c027720c8441db013c50245055367_1024x1024.jpg',1),(22,'Riki','Hàng chính hãng',150000,4,'RKW','Áo Bóng Đá không Logo Riki Fabric Mamor Trắng','https://product.hstatic.net/200000583897/product/z3754738292921_fa94508d1cb620e138b2ec8c7af47413_7b5c0b3a94f3456ca6021916f5e81a12_1024x1024.jpg',1),(23,'Riki','Hàng chính hãng',150000,4,'RKXB','Áo Bóng Đá không Logo Riki Fabric Mamor Xanh Bích','https://product.hstatic.net/200000583897/product/z3754738304010_34af14e96ee2043e7e0fd24e49f7b1d9_7616f29607b84f3392543f497f927188_1024x1024.jpg',1),(24,'Riki','Hàng chính hãng',150000,4,'RKY','Áo Bóng Đá không Logo Riki Fabric Mamor Yamaha','https://product.hstatic.net/200000583897/product/z3754738296868_a5e6e7afa4943bf9c0c21e151dff9664_dc61886c55d9430b8ff8d40e8a602b4c_1024x1024.jpg',1),(25,'Bulbal','Hàng chính hãng',160000,4,'BBC','Áo Không Logo bulbal Raifo Cam','https://product.hstatic.net/200000583897/product/cam_1__5ac6b409833d45b583ddf139f2d3fa3a_1024x1024.jpg',1),(26,'Bulbal','Hàng chính hãng',160000,4,'BBD','Áo Không Logo bulbal Raifo Đen','https://product.hstatic.net/200000583897/product/den_0a5765d1b53c43fe9f49ab71b06267c5_1024x1024.jpg',1),(27,'Bulbal','Hàng chính hãng',160000,4,'BBH','Áo Không Logo bulbal Raifo Hồng','https://product.hstatic.net/200000583897/product/hong_1__e18781cedc7747fdabb6d99b127e91b4_1024x1024.jpg',1),(28,'Bulbal','Hàng chính hãng',160000,4,'BBT','Áo Không Logo bulbal Raifo Trắng','https://product.hstatic.net/200000583897/product/trang_df0f6590092143268448f9bde850028d_1024x1024.jpg',1),(29,'Bulbal','Hàng chính hãng',160000,4,'BBX','Áo Không Logo bulbal Raifo Xanh','https://product.hstatic.net/200000583897/product/xanh_2__e1267d05f922468bb9e99cd02a99a83c_1024x1024.jpg',1),(30,'Bulbal','Hàng chính hãng',160000,4,'BBXN','Áo Không Logo bulbal Raifo Xanh Nhớt','https://product.hstatic.net/200000583897/product/xanh_nhot_40f7c16846e348c898ae86e32c874d8a_1024x1024.jpg',1),(31,'Bulbal','Hàng chính hãng',160000,4,'BBSVD','Áo Không Logo bulbal strivend V1 đỏ','https://product.hstatic.net/200000583897/product/z3678865062541_d7b2b1474afad37405b25bd9cb9ed7bb_afcef5ab66c54e4594f68c86acfee9a2_1024x1024.jpg',1),(32,'Bulbal','Hàng chính hãng',160000,4,'BBSVV','Áo Không Logo bulbal strivend V1 vàng','https://product.hstatic.net/200000583897/product/z3678865069824_5ed94692e29d8285158b4563487ba923_4eeb9899285347dca26150cc5fba1542_1024x1024.jpg',1),(33,'Adidas','Hàng chính hãng',180000,1,'ENGK','Áo Bóng Đá Anh World Cup Sân Khách 2022-2023','https://cdn-amz.woka.io/images/I/81Qwd4Tox0L._SR476,476_.jpg',1),(34,'Adidas','Hàng chính hãng',180000,1,'ENGH','Áo Bóng Đá Uruguay World Cup Sân Nhà 2022-2023','https://cdn-amz.woka.io/images/I/61hCx+SJC5L._SR476,476_.jpg',1),(35,'Adidas','Hàng chính hãng',180000,1,'AGR','Áo Bóng Đá Argentina World Cup Sân Nhà 2022','https://cdn-amz.woka.io/images/I/51MBon-HIPL._SR476,476_.jpg',1),(36,'Nike','Hàng chính hãng',200000,1,'POL','Áo Bóng Đá Bồ Đào Nha World Cup Sân Nhà 2022-2023','https://cdn-amz.woka.io/images/I/61yDsV1DHzL._SR476,476_.jpg',1),(37,'Nike','Hàng chính hãng',200000,1,'BRA','Áo Bóng Đá Senegal World Cup Sân Nhà 2022-2023','https://cdn-amz.woka.io/images/I/51NBZzdkRLL._SR476,476_.jpg',1),(38,'Adidas','Hàng chính hãng',180000,1,'GER','Áo Bóng Đá Đội Đức 2022-2023','https://cdn-amz.woka.io/images/I/41u8mx7L-4L._SR476,476_.jpg',1),(39,'Puma','Hàng chính hãng',200000,1,'ITA','Áo Bóng Đá Đội Italia 2022-2023','https://cdn-amz.woka.io/images/I/51yxGDJlxjL._SR476,476_.jpg',1),(40,'Nike','Hàng chính hãng',200000,1,'HAL','Áo Bóng Đá Đội Tuyển Mexico world cup sân khách 2022-2023','https://cdn-amz.woka.io/images/I/61ZyUAtb4zL._SR476,476_.jpg',1),(41,'Adidas','Hàng chính hãng',180000,1,'JPA','Áo Bóng Đá Đội Tuyển Nhật Bản world cup sân nhà 2022-2023','https://cdn-amz.woka.io/images/I/71O6AfCrnJL._SR476,476_.jpg',1),(42,'Nike','Hàng chính hãng',200000,1,'FRA','Áo Bóng Đá Đội Tuyển Tây Ban Nha World Cup Sân Nhà 2022-2023','https://cdn-amz.woka.io/images/I/41WlI6jau5L._SR476,476_.jpg',1),(43,'Wika','Hàng chính hãng',220000,6,'WKPD','Balo đựng Đồ Bóng Đá Wika Pro 01 Đen','https://product.hstatic.net/200000583897/product/3_bad4f31f792f4a028f781347a931b48d_1024x1024.jpg',1),(44,'Wika','Hàng chính hãng',200000,6,'WKD','Balo đựng Đồ Bóng Đá Wika Pro 02 Đỏ','https://product.hstatic.net/200000583897/product/42541474e1a010fe49b1_f90de4161f0646d29df664191024b1d4_1024x1024.jpg',1),(45,'Wika','Hàng chính hãng',200000,6,'WKX','Balo đựng Đồ Bóng Đá Wika Pro 02 Xám','https://product.hstatic.net/200000583897/product/2_c641a2ee6de34a0a8705727721065960_1024x1024.jpg',1),(46,'Wika','Hàng chính hãng',200000,6,'WKPX','Balo đựng Đồ Bóng Đá Wika Pro 02 Xanh','https://product.hstatic.net/200000583897/product/10b53d8bc85f3901604e_bddb34e41a3c4d168065fce766eae5f1_1024x1024.jpg',1),(47,'Wika','Hàng chính hãng',40000,6,'BWKD','Bọc ống đồng ( rờ te ) Wika chính hãng màu đen','https://product.hstatic.net/200000583897/product/24e301ca94d65c8805c7_402ba285307d437eb7000894816cfb90_1024x1024.jpg',1),(48,'Wika','Hàng chính hãng',40000,6,'BWD','Bọc ống đồng ( rờ te ) Wika chính hãng màu đỏ','https://product.hstatic.net/200000583897/product/b6f8107985654d3b1474_549d840dfa6e46aaaefd227d35cb8782_1024x1024.jpg',1),(49,'Wika','Hàng chính hãng',40000,6,'BWKX','Bọc ống đồng ( rờ te ) Wika chính hãng màu xanh','https://product.hstatic.net/200000583897/product/445eb8ed2cf1e4afbde0_95963e3ab35c481fa30b4e90424affc3_1024x1024.jpg',1),(50,'Wika','Hàng chính hãng',40000,6,'BWKV','Bọc ống đồng ( rờ te ) Wika chính hãng màu vàng','https://product.hstatic.net/200000583897/product/0c0f4fe0dafc12a24bed_53269bb39bb6472e951e1ceeaf2ddff6_1024x1024.jpg',1),(51,'Động lực','Hàng chính hãng',220000,6,'BDL1','Bóng Động Lực 3.127 Size 4 chính hãng','https://product.hstatic.net/200000583897/product/5793fba9894d42131b5c_66b899c0f4984be1899d9534ab9cf66c_1024x1024.jpg',1),(52,'Động lực','Hàng chính hãng',250000,6,'BDL2','Bóng Động Lực UHV 3.05 Size 5 chính hãng','https://product.hstatic.net/200000583897/product/7e9fbff4ca10014e5801_fb05112680864d85a0f46692a24e7b10_1024x1024.jpg',1),(53,'H3','Hàng chính hãng',500000,6,'GHD','Găng tay thủ môn H3 Ro Ro đen','https://product.hstatic.net/200000583897/product/7a1e7a32a60854560d19_8aff8d110c9942d7be7ea17a397598b2_1024x1024.jpg',1),(54,'H3','Hàng chính hãng',500000,6,'GHV','Găng tay thủ môn H3 Ro Ro đen chuối','https://product.hstatic.net/200000583897/product/c6c42de8f1d2038c5ac3_ccc007d12fdd4bae8797f3a19ce7d53d_1024x1024.jpg',1),(55,'H3','Hàng chính hãng',500000,6,'GHR','Găng tay thủ môn H3 Ro Ro đỏ','https://product.hstatic.net/200000583897/product/8422e50d3937cb699226_79f6411c6a844ec791631b03928cabb8_1024x1024.jpg',1),(56,'H3','Hàng chính hãng',500000,6,'GHT','Găng tay thủ môn H3 Ro Ro trắng','https://product.hstatic.net/200000583897/product/1_43182859106843c29ba6c59d29e16dc1_1024x1024.jpg',1),(57,'H3','Hàng chính hãng',500000,6,'GHX','Găng tay thủ môn H3 Ro Ro xanh','https://product.hstatic.net/200000583897/product/95555a798643741d2d52_725381d0eb4948bca981e7b53cb236bb_1024x1024.jpg',1),(58,'Động lực','Hàng chính hãng',300000,6,'DLUCV','Quả bóng đá Động Lực UCV 3.147 Seagame','https://product.hstatic.net/200000583897/product/6176cb08f4b834e66da9_6e4d23cc2590467fb870a09571375852_1024x1024.jpg',1),(59,'Động lực','Hàng chính hãng',820000,6,'DLSG31','Quả bóng đá Seagame 31 Động Lực 2.05','https://product.hstatic.net/200000583897/product/z3402455022758_a1d4d2e79241044b01fcc62c3110cb7b_cc6b7c09bd5c4ce4b1c5b4669d6a1829_1024x1024.jpg',1),(60,'Động lực','Hàng chính hãng',1930000,6,'DLSG','Quả bóng đá Seagame 31 Động Lực 2.07','https://product.hstatic.net/200000583897/product/z3402455006343_9db3fd5eae4a779b1308118b4ec2c6ad_442f2f40c81c44f2956973104a2b302e_1024x1024.jpg',1),(61,'Wika','Hàng chính hãng',25000,6,'TWKR','Tất Thể Thao Dệt Kim Wika đỏ','https://product.hstatic.net/200000583897/product/ochure-template_a7090331157045ef9c2c6a247e48568d_1024x1024.jpg',1),(62,'Wika','Hàng chính hãng',25000,6,'TWKX','Tất Thể Thao Dệt Kim Wika xanh','https://product.hstatic.net/200000583897/product/149873-abstract-red-and-white-business-brochure-template_bdfae5fb59df487bac7fbc4b85cdede3_1024x1024.jpg',1),(63,'CT','Hàng chính hãng',150000,3,'CTXD','Giầy Bóng Đá phủi CT3 xanh dương','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3953.jpg',1),(64,'CT','Hàng chính hãng',150000,3,'CTXN','Giầy Bóng Đá phủi CT3 xanh ngọc','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3946.jpg',1),(65,'CT','Hàng chính hãng',150000,3,'CTTSV','Giầy Bóng Đá phủi CT3 trắng sọc vàng','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3901.jpg',1),(66,'CT','Hàng chính hãng',150000,3,'CTTSB','Giầy Bóng Đá phủi CT3 trắng sọc bạc','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3932.jpg',1),(67,'CT','Hàng chính hãng',150000,3,'CTTSX','Giầy Bóng Đá phủi CT3 trắng sọc xanh','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3918.jpg',1),(68,'CT','Hàng chính hãng',150000,3,'CTTSD','Giầy Bóng Đá phủi CT3 trắng sọc đen','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3910.jpg',1),(69,'CT','Hàng chính hãng',150000,3,'CTTD','Giầy Bóng Đá phủi CT3 Đen','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3891.jpg',1),(70,'CT','Hàng chính hãng',150000,3,'CTV','Giầy Bóng Đá phủi CT3 Chuối','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3883.jpg',1),(71,'CT','Hàng chính hãng',150000,3,'CTR','Giầy Bóng Đá phủi CT3 Đỏ','https://iweb.tatthanh.com.vn/pic/12/thumb/large/product/QMV_3963.jpg',1),(72,'Kamito','Hàng chính hãng',790000,5,'KMXD','GIÀY THUNDER BIRD SPORT XANH DƯƠNG','https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-xanh-ngoc.jpg',1),(73,'Kamito','Hàng chính hãng',790000,5,'KMT','GIÀY THUNDER BIRD SPORT TRẮNG','https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-trang.jpg',1),(74,'Kamito','Hàng chính hãng',790000,5,'KMD','GIÀY THUNDER BIRD SPORT ĐEN','https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-den.jpg',1),(75,'Kamito','Hàng chính hãng',790000,5,'KMC','GIÀY THUNDER BIRD SPORT CAM','https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-cam.jpg',1),(76,'Kamito','Hàng chính hãng',790000,5,'KMD','GIÀY THUNDER BIRD SPORT ĐỎ','https://minhhaisport.vn/wp-content/uploads/2022/09/Giay-thunder-bird-mau-do.jpg',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 13:55:14
