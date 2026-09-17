-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: cng_booking
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `aemail` varchar(100) NOT NULL,
  `apass` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('omkar@gmail.com',123),('krushna@gmail.com',1234),('durgesh@gmail.com',12345);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `cngkg` varchar(100) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `booking_ref` varchar(100) NOT NULL,
  `booking_time` time NOT NULL,
  `booking_date` date DEFAULT NULL,
  `pemail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('100','','','00:00:00',NULL,''),('10000','','','00:00:00',NULL,''),('100000','','','00:00:00',NULL,''),('10000','','','00:00:00',NULL,''),('10000','','','00:00:00',NULL,''),('100000','','','00:00:00',NULL,''),('100','','','00:00:00',NULL,''),('10000','','','00:00:00',NULL,''),('10000','','','00:00:00',NULL,''),('1000','omkar@gmail.com','','00:00:00',NULL,''),('10000','piyush@gmail.com','','00:00:00',NULL,''),('100','piyush@gmail.com','e92f0f17-b362-418b-b98a-2566a40c7ddd','17:33:59','2024-07-02',''),('100','piyush@gmail.com','d87d0529-b514-45c3-9eec-61e3eea16655','17:54:44','2024-07-02','ramesh@gmail.com'),('200','piyush@gmail.com','efedd12f-70d1-476f-921d-2681b6d17cc5','13:28:14','2024-07-03','omkar@gmail.com'),('10','om@gmail.com','7323fe23-6ad7-461e-9a99-fbfa3d3c6170','15:57:05','2024-07-03','omkar@gmail.com'),('10','piyush@gmail.com','812f923b-6a73-4942-bf16-9b73d2e63b41','13:46:12','2024-07-04','omkar@gmail.com'),('1','piyush@gmail.com','881d5486-f7e3-4c61-8cbe-633e8d5c422c','14:56:02','2024-07-04','ramesh@gmail.com'),('1','piyush@gmail.com','3df80c49-beb1-4747-8f34-1147a444ab50','15:10:04','2024-07-04','ramesh@gmail.com'),('10','piyush@gmail.com','c1cc55e4-3a1c-44ed-9208-6bd7ea6e40e6','10:19:00','2024-07-05','ramesh@gmail.com'),('10','piyush@gmail.com','d01367fb-770b-4d41-b307-0901488502c6','10:19:00','2024-07-05','ramesh@gmail.com'),('10','piyush@gmail.com','46c1e7f7-a101-4246-8579-3a81668ef91e','11:00:00','2024-07-05','ramesh@gmail.com'),('10','piyush@gmail.com','dont know','11:00:00','2024-07-05','ramesh@gmail.com'),('10','piyush@gmail.com','dont know','11:05:00','2024-07-05','ramesh@gmail.com'),('','piyush@gmail.com','c2463591-f7c5-4dcd-812e-0835de3afa25','00:00:00','0000-00-00',''),('','piyush@gmail.com','229fbe2e-f6b9-4636-9570-f4a31252278c','00:00:00','0000-00-00',''),('','piyush@gmail.com','9bdfc2e8-811a-40bb-b792-cbb455957681','00:00:00','0000-00-00',''),('','piyush@gmail.com','939202f3-77ee-45b4-8096-fc781feaf25e','00:00:00','0000-00-00',''),('','piyush@gmail.com','61461353-b0fa-4317-8f2f-340e2de9e919','00:00:00','0000-00-00',''),('','piyush@gmail.com','15c9e05f-f502-4688-9294-2699a77ed2ac','00:00:00','0000-00-00',''),('','piyush@gmail.com','2d9933af-c144-4d37-8a21-18480b88899c','00:00:00','0000-00-00',''),('','piyush@gmail.com','0e7e73b0-9aef-4668-859d-77894e09d38e','00:00:00','0000-00-00',''),('','piyush@gmail.com','b6310d87-9a34-413b-84e5-f729389c9985','00:00:00','0000-00-00',''),('','piyush@gmail.com','771b93f7-9f2f-4ad6-a872-1bc86e6446ba','00:00:00','0000-00-00',''),('','piyush@gmail.com','8c5ac973-0634-49a0-8f5d-ee2cc80a423a','00:00:00','0000-00-00',''),('','piyush@gmail.com','47148e9d-ba5a-4599-af97-34cc5c46bb27','00:00:00','0000-00-00',''),('','piyush@gmail.com','e83a267e-f42e-41ae-ae9b-ac5a2a9f91c1','00:00:00','0000-00-00',''),('10','piyush@gmail.com','dont know','12:04:00','2024-07-05','ramesh@gmail.com'),('10','durgesh@gamil.com','dont know','22:35:00','2024-07-05','om@gmail.com'),('10','piyush@gmail.com','dont know','22:43:00','2024-07-05','om@gmail.com'),('10','piyush@gmail.com','dont know','22:44:00','2024-07-05','om@gmail.com'),('12','piyush@gmail.com','12','14:49:00','2025-10-25','krushna1845@gmail.com');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cng_pump`
--

DROP TABLE IF EXISTS `cng_pump`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cng_pump` (
  `pname` varchar(100) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `pcity` varchar(100) NOT NULL,
  `ptaluka` varchar(100) NOT NULL,
  `pdistrict` varchar(100) NOT NULL,
  `opentime` varchar(100) NOT NULL,
  `closetime` varchar(100) NOT NULL,
  `pmob` varchar(100) NOT NULL,
  `lat` int(100) NOT NULL,
  `longg` int(100) NOT NULL,
  `ppass` int(100) NOT NULL,
  `cngkg` int(100) NOT NULL,
  `pemail` varchar(100) NOT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cng_pump`
--

LOCK TABLES `cng_pump` WRITE;
/*!40000 ALTER TABLE `cng_pump` DISABLE KEYS */;
INSERT INTO `cng_pump` VALUES ('Omkar','a1 om nager','nashik','Nashik ','nashik','10','12','9309148845',10023500,2000322220,123,100,'omkar@gmail.com',2),('Athrav','Plot no1 Rane nager','nashik','Nashik ','nashik','10','12','9304141145',1000000,2000000,123,100,'athrav@gmail.com',3),('om','Plot no1 ST colony','nashik','Nashik ','nashik','10','12','9309918845',1000000,2000000,123,110,'om@gmail.com',4);
/*!40000 ALTER TABLE `cng_pump` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `umob` varchar(100) NOT NULL,
  `upass` int(100) NOT NULL,
  `ucity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Piyush','piyush@gmail.com','9309918845',123,'pune'),('Piyush','piyush@gmail.com','9309918845',1234,'pune'),('om','om@gmail.com','8208428979',123,'pune'),('Durgesh','durgesh@gamil.com','39850205431',123,'nashik');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-17 16:24:04
