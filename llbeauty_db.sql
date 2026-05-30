-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: llbeauty_db
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (79,'2026-05-30 09:46:00.392814','admin@llbeauty.com','L.L. Beauty Admin','$2a$10$RejHPPWXrbaTwdBB.0MU0.WfIQmliVcdN3Cmwu5vvqVGkgX1M/qF6');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointment_date` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `time_slot` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `user_mobile` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `advance_paid` double DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `services` varchar(1000) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,'2026-05-28','2026-05-27 06:08:21.939780','Luxury Hair Spa','COMPLETED','10:00 AM',8,'9975149793','pooja ',100,'PAID','Luxury Hair Spa','LL-SLOT-6436'),(2,'2026-05-28','2026-05-27 08:02:46.567587','Hair Styling & Cut','PAYMENT_PENDING','10:00 AM',13,'8877996655','shradhha',100,'PENDING','Hair Styling & Cut,Luxury Hair Spa',NULL),(3,'2026-05-28','2026-05-27 08:24:59.237154','Hair Styling & Cut','PAYMENT_PENDING','10:00 AM',13,'8877996655','shradhha',100,'PENDING','Hair Styling & Cut,Luxury Hair Spa',NULL),(4,'2026-05-28','2026-05-27 08:35:24.762311','Hair Styling & Cut','PAYMENT_PENDING','10:00 AM',13,'8877996655','shradhha',100,'PENDING','Hair Styling & Cut',NULL),(5,'2026-05-28','2026-05-27 12:32:19.523429','Hair Styling & Cut','CONFIRMED','01:00 PM',9,'9096472249','pooja',100,'PAID','Hair Styling & Cut,Luxury Hair Spa','LL-SLOT-9326'),(6,'2026-05-29','2026-05-27 16:45:12.076164','Hair Styling & Cut','CONFIRMED','11:30 AM',9,'9096472249','pooja',100,'PAID','Hair Styling & Cut,Gold Glow Facial','LL-SLOT-9659'),(7,'2026-05-31','2026-05-28 05:45:27.332852','Luxury Hair Spa','PAYMENT_PENDING','07:00 AM',6,'9876543210','vaishnavi shingare',100,'PENDING','Luxury Hair Spa',NULL),(8,'2026-05-30','2026-05-28 06:01:41.728871','Luxury Hair Spa','CONFIRMED','05:00 PM',6,'9876543210','vaishnavi shingare',100,'PAID','Luxury Hair Spa','LL-SLOT-9161'),(9,'2026-05-29','2026-05-28 06:06:57.189414','Bridal Makeover','PAYMENT_PENDING','09:00 AM',6,'9876543210','vaishnavi shingare',100,'PENDING','Bridal Makeover',NULL),(10,'2026-05-29','2026-05-28 06:34:27.548745','Hair Styling & Cut','CONFIRMED','09:00 PM',6,'9876543210','vaishnavi shingare',100,'PAID','Hair Styling & Cut','LL-SLOT-7393'),(11,'2026-05-29','2026-05-28 06:46:15.372304','Hair Styling & Cut','PAYMENT_PENDING','01:00 PM',6,'9876543210','vaishnavi shingare',100,'PENDING','Hair Styling & Cut',NULL),(12,'2026-06-02','2026-05-28 06:51:19.480521','Hair Styling & Cut','CONFIRMED','05:00 PM',9,'9096472249','pooja',100,'PAID','Hair Styling & Cut,Luxury Hair Spa','LL-SLOT-9524'),(13,'2026-05-29','2026-05-28 06:51:54.733832','Hair Styling & Cut','PAYMENT_PENDING','11:00 AM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(14,'2026-05-29','2026-05-28 07:18:36.241221','Hair Styling & Cut','PAYMENT_PENDING','11:00 AM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut,Gold Glow Facial,Bridal Makeover',NULL),(15,'2026-05-29','2026-05-28 09:21:46.057906','Hair Styling & Cut','PAYMENT_PENDING','10:00 AM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(16,'2026-05-29','2026-05-28 09:37:38.687100','Hair Styling & Cut','PAYMENT_PENDING','10:00 AM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(17,'2026-05-29','2026-05-28 09:45:17.547709','Hair Styling & Cut','PAYMENT_PENDING','05:00 PM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(18,'2026-05-29','2026-05-28 09:50:14.557033','Hair Styling & Cut','PAYMENT_PENDING','04:00 PM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(19,'2026-05-29','2026-05-28 09:55:22.265429','Hair Styling & Cut','PAYMENT_PENDING','09:00 PM',9,'9096472249','pooja',100,'PENDING','Hair Styling & Cut',NULL),(20,'2026-05-29','2026-05-28 10:14:09.793928','Hair Styling & Cut','PAYMENT_PENDING','09:00 AM',14,'9898989898','Shruti',100,'PENDING','Hair Styling & Cut',NULL),(21,'2026-05-30','2026-05-28 20:06:31.875279','Hair Styling & Cut','PAYMENT_PENDING','07:00 PM',14,'9898989898','Shruti',100,'PENDING','Hair Styling & Cut',NULL),(22,'2026-06-02','2026-05-29 06:13:54.516422','Luxury Hair Spa','CONFIRMED','04:00 PM',14,'9898989898','Shruti',100,'PAID','Luxury Hair Spa','LL-SLOT-8830'),(23,'2026-06-02','2026-05-29 06:44:36.768454','Hair Styling & Cut','CONFIRMED','01:00 PM',15,'9322806345','pratvii',100,'PAID','Hair Styling & Cut,Luxury Hair Spa','LL-SLOT-8054'),(24,'2026-05-30','2026-05-29 07:27:32.918799','Hair Styling & Cut','PAYMENT_PENDING','05:00 PM',15,'9322806345','pratvii',100,'PENDING','Hair Styling & Cut',NULL);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise_leads`
--

DROP TABLE IF EXISTS `franchise_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchise_leads` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `budget` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `franchise_type` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `preferred_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_leads`
--

LOCK TABLES `franchise_leads` WRITE;
/*!40000 ALTER TABLE `franchise_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `franchise_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_history`
--

DROP TABLE IF EXISTS `membership_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime(6) NOT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `plan_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsm0g6hnrstu5briti90pxdtsq` (`user_id`),
  CONSTRAINT `FKsm0g6hnrstu5briti90pxdtsq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_history`
--

LOCK TABLES `membership_history` WRITE;
/*!40000 ALTER TABLE `membership_history` DISABLE KEYS */;
INSERT INTO `membership_history` VALUES (1,'2027-05-29 06:43:06.622921','pay_Sv5KIocA26Gj0n','Eva Gold Card',9999.00,'2026-05-29 06:43:06.622921','EXPIRED',15),(2,'2027-05-29 06:52:31.430326','pay_Sv5UDamNvU4dea','Eva Black Card',24999.00,'2026-05-29 06:52:31.430326','ACTIVE',15);
/*!40000 ALTER TABLE `membership_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_purchases`
--

DROP TABLE IF EXISTS `membership_purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_purchases` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_paid` double DEFAULT NULL,
  `purchase_date` datetime(6) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `membership_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjybu0kog9cr36br9ny793sss5` (`membership_id`),
  KEY `FKnj6n4f9owayr6woedspjtq9bn` (`user_id`),
  CONSTRAINT `FKjybu0kog9cr36br9ny793sss5` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`),
  CONSTRAINT `FKnj6n4f9owayr6woedspjtq9bn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_purchases`
--

LOCK TABLES `membership_purchases` WRITE;
/*!40000 ALTER TABLE `membership_purchases` DISABLE KEYS */;
INSERT INTO `membership_purchases` VALUES (1,11798.82,'2026-05-28 05:02:40.671441','order_Suf5N9K61lfC77',NULL,'PENDING',5,6),(2,11798.82,'2026-05-28 05:10:09.702546','order_SufDHKWJxs3uRP',NULL,'PENDING',5,6),(3,11798.82,'2026-05-28 05:11:54.317385','order_SufF7W4yY3JT8v',NULL,'PENDING',5,6),(4,11798.82,'2026-05-28 06:09:01.062349','order_SugDRqp2w6VzHY',NULL,'PENDING',5,6),(5,11798.82,'2026-05-28 06:09:01.062349','order_SugDRquazOQpyP',NULL,'PENDING',5,6),(6,3538.8199999999997,'2026-05-28 10:03:58.270497','order_SukDdexBOutvvk','pay_SukEmluKsxSavR','SUCCESS',4,14),(7,25960,'2026-05-28 10:10:59.754449','order_SukL3kdFY7R784',NULL,'PENDING',6,14),(8,8260,'2026-05-28 10:15:55.840051','order_SukQGy0ncrqtDb','pay_SukQa6wHK4ELFE','SUCCESS',5,14),(9,11798.82,'2026-05-29 06:42:08.591528','order_Sv5JYHW2GsqIjr','pay_Sv5KIocA26Gj0n','SUCCESS',5,15),(10,17700,'2026-05-29 06:45:36.426645','order_Sv5NDG80egHj1V',NULL,'PENDING',6,15),(11,17700,'2026-05-29 06:52:05.643365','order_Sv5U46MIs54Yko','pay_Sv5UDamNvU4dea','SUCCESS',6,15);
/*!40000 ALTER TABLE `membership_purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberships` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `benefits` text,
  `cashback_percent` double NOT NULL,
  `duration_days` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `welcome_credits` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
INSERT INTO `memberships` VALUES (4,'5% Discount\nEarly Access to Sales & Events\nExclusive Birthday Offers\nReward Points Earning\nStandard Member Support',0.05,365,'Eva Pink Card',2999,300),(5,'15% Discount\nFree Delivery on All Orders\nVIP Launch Access\nDouble Reward Points\nEvent Invitations',0.15,365,'Eva Gold Card',9999,1000),(6,'25% Discount\nConcierge Support\nLuxury Gifts on Signup\nTriple Reward Points\nVIP Lounge Access',0.25,365,'Eva Black Card',24999,2500);
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchants` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
INSERT INTO `merchants` VALUES (1,'+91 99999 88888','2026-05-24 19:00:28.500751','Aundh, Pune','L.L. Beauty Flagship Spa','ACTIVE'),(2,'+91 98888 77777','2026-05-24 19:00:28.506988','Koregaon Park, Pune','L.L. Beauty Lounge','ACTIVE');
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price_at_purchase` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  KEY `FKocimc7dtr037rh4ls4l95nlfi` (`product_id`),
  CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKocimc7dtr037rh4ls4l95nlfi` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,2499,1,8,1),(2,2499,1,9,1),(3,2499,1,10,1),(4,3499,1,11,4),(5,3499,1,12,4),(6,3499,1,13,4),(7,3499,1,14,4),(8,3499,1,15,4),(9,800,1,16,7),(10,4999,1,17,2),(11,4999,1,18,2),(12,4999,1,19,2),(13,4999,1,20,2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2026-05-27 06:05:50.072478','pay_upi_order_7sa0lut7','SUCCESS',2499,8),(2,'2026-05-27 06:07:20.979040','pay_upi_order_yydktf9i','SUCCESS',1299,8),(3,'2026-05-27 07:16:13.553858','pay_upi_order_fpwj0n8d','SUCCESS',8797,13),(4,'2026-05-27 10:17:47.041681','pay_upi_order_k8j4cc86','SUCCESS',4999,9),(5,'2026-05-27 16:22:43.738457','pay_upi_order_d6doojkp','SUCCESS',800,9),(6,'2026-05-27 16:47:57.966868','pay_upi_order_293kfcyc','SUCCESS',3749.25,9),(7,'2026-05-27 17:26:41.879632','pay_upi_order_f5ohk8c8','SUCCESS',2374.05,3),(8,'2026-05-28 04:37:21.350502','pay_upi_order_pvfjusqg','SUCCESS',2499,6),(9,'2026-05-28 05:03:57.049308',NULL,'PENDING',2948.82,6),(10,'2026-05-28 05:04:57.781189','pay_Suf8t8ybmQeqdU','SUCCESS',2948.82,6),(11,'2026-05-28 05:06:42.731657',NULL,'PENDING',4128.82,6),(12,'2026-05-28 05:06:56.989097',NULL,'PENDING',4128.82,6),(13,'2026-05-28 05:23:31.533230',NULL,'PENDING',3922.3790000000004,3),(14,'2026-05-28 05:23:53.904184',NULL,'PENDING',3922.3790000000004,3),(15,'2026-05-28 05:24:04.476327',NULL,'PENDING',3922.3790000000004,3),(16,'2026-05-28 10:14:45.999852',NULL,'PENDING',896.8,14),(17,'2026-05-28 10:19:36.853895',NULL,'PENDING',5013.996999999999,14),(18,'2026-05-29 05:14:55.392863','pay_Sv3qAYjlIucxzu','SUCCESS',5013.996999999999,14),(19,'2026-05-29 06:10:26.528297','pay_Sv4mLew6C0JwQc','SUCCESS',5013.996999999999,14),(20,'2026-05-29 07:04:07.603046',NULL,'PENDING',4424.115,15);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otps`
--

DROP TABLE IF EXISTS `otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `expires_at` datetime(6) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `used` bit(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otps`
--

LOCK TABLES `otps` WRITE;
/*!40000 ALTER TABLE `otps` DISABLE KEYS */;
INSERT INTO `otps` VALUES (2,'1234','2026-05-27 06:54:34.518698','9637825621',_binary '',''),(3,'1234','2026-05-27 07:21:05.987208','8877996655',_binary '',''),(9,'1234','2026-05-27 17:58:09.124459','9975149793',_binary '',''),(11,'1234','2026-05-28 05:32:30.298817','7776654433',_binary '',''),(12,'1234','2026-05-28 05:53:38.988727','9876543210',_binary '',''),(13,'1234','2026-05-28 07:00:44.496351','9096472249',_binary '',''),(19,'1234','2026-05-29 06:50:38.213593','9322806345',_binary '',''),(20,'1234','2026-05-29 10:39:51.975827','9898989898',_binary '',''),(21,'1234','2026-05-29 13:49:58.352591','8888888888',_binary '',''),(24,'907964','2026-05-30 08:35:22.550140',NULL,_binary '','kalyanibhawar465@gmail.com'),(25,'142351','2026-05-30 09:53:32.280597',NULL,_binary '','kalyanibhawar3@gmail.com');
/*!40000 ALTER TABLE `otps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `razorpay_signature` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj94hgy9v5fw1munb90tar2eje` (`user_id`),
  CONSTRAINT `FKj94hgy9v5fw1munb90tar2eje` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,11798.82,'2026-05-28 05:02:40.647986','RAZORPAY','MEMBERSHIP','order_Suf5N9K61lfC77',NULL,NULL,'PENDING',6),(2,2948.82,'2026-05-28 05:03:57.168797','RAZORPAY','ORDER','order_Suf6ihsJimUKyh',NULL,NULL,'PENDING',6),(3,2948.82,'2026-05-28 05:04:57.865752','RAZORPAY','ORDER','order_Suf7mxqw9aa8QP','pay_Suf8t8ybmQeqdU','4ca0e04f9484a6984009c37e7feccd1d27ebe6ae5fb4bba04421d2b00aa1f60d','SUCCESS',6),(4,4128.82,'2026-05-28 05:06:42.810897','RAZORPAY','ORDER','order_Suf9dW1j56mhfH',NULL,NULL,'PENDING',6),(5,4128.82,'2026-05-28 05:06:57.084672','RAZORPAY','ORDER','order_Suf9t50mW0WTG8',NULL,NULL,'PENDING',6),(6,11798.82,'2026-05-28 05:10:09.697556','RAZORPAY','MEMBERSHIP','order_SufDHKWJxs3uRP',NULL,NULL,'PENDING',6),(7,11798.82,'2026-05-28 05:11:54.303450','RAZORPAY','MEMBERSHIP','order_SufF7W4yY3JT8v',NULL,NULL,'PENDING',6),(8,3922.3790000000004,'2026-05-28 05:23:31.765482','RAZORPAY','ORDER','order_SufROpfVVfD8mm',NULL,NULL,'PENDING',3),(9,3922.3790000000004,'2026-05-28 05:23:54.271169','RAZORPAY','ORDER','order_SufRnLd2PlnwFu',NULL,NULL,'PENDING',3),(10,3922.3790000000004,'2026-05-28 05:24:04.567304','RAZORPAY','ORDER','order_SufRydmxickYne',NULL,NULL,'PENDING',3),(11,11798.82,'2026-05-28 06:09:01.033906','RAZORPAY','MEMBERSHIP','order_SugDRqp2w6VzHY',NULL,NULL,'PENDING',6),(12,11798.82,'2026-05-28 06:09:01.032703','RAZORPAY','MEMBERSHIP','order_SugDRquazOQpyP',NULL,NULL,'PENDING',6),(13,3538.8199999999997,'2026-05-28 10:03:58.246257','RAZORPAY','MEMBERSHIP','order_SukDdexBOutvvk','pay_SukEmluKsxSavR','81bcd1f26bd7b77c67d49b12fa7546ef0c7dfa99cd5d9b4b21067283b75a8279','SUCCESS',14),(14,25960,'2026-05-28 10:10:59.740109','RAZORPAY','MEMBERSHIP','order_SukL3kdFY7R784',NULL,NULL,'PENDING',14),(15,896.8,'2026-05-28 10:14:46.146501','RAZORPAY','ORDER','order_SukP2tTgr2OrUx',NULL,NULL,'PENDING',14),(16,8260,'2026-05-28 10:15:55.833048','RAZORPAY','MEMBERSHIP','order_SukQGy0ncrqtDb','pay_SukQa6wHK4ELFE','5e405cc4782b0803c587d1f4c1ef14c6b4f2339d159bf5457f07a9a7f7b786e6','SUCCESS',14),(17,5013.996999999999,'2026-05-28 10:19:36.941428','RAZORPAY','ORDER','order_SukUAJgc2MjugC',NULL,NULL,'PENDING',14),(18,100,'2026-05-28 20:06:33.909823','RAZORPAY','SALON_DEPOSIT','order_SuuUBJatBQfu06',NULL,NULL,'PENDING',14),(19,5013.996999999999,'2026-05-29 05:14:55.941138','RAZORPAY','ORDER','order_Sv3pQj5y16cfDb','pay_Sv3qAYjlIucxzu','fc804a0f9c6da60ea6258e330b949c3622bbd2b66b44bd711938ef367252aa8e','SUCCESS',14),(20,5013.996999999999,'2026-05-29 06:10:26.744920','RAZORPAY','ORDER','order_Sv4m4Rfr3JUPuK','pay_Sv4mLew6C0JwQc','3ab52b6b10111dac558de7a3c2f60844d9cac07c603057e662b5f066216c8350','SUCCESS',14),(21,100,'2026-05-29 06:13:54.732485','RAZORPAY','SALON_DEPOSIT','order_Sv4pjTsLGh3ZVK',NULL,NULL,'PENDING',14),(22,11798.82,'2026-05-29 06:42:08.567139','RAZORPAY','MEMBERSHIP','order_Sv5JYHW2GsqIjr','pay_Sv5KIocA26Gj0n','04e8e46b3633130e5de652f974bf4c551b2e0376baf3760b626cfc75c540541c','SUCCESS',15),(23,100,'2026-05-29 06:44:37.029911','RAZORPAY','SALON_DEPOSIT','order_Sv5MAOj5b6YiTJ',NULL,NULL,'PENDING',15),(24,17700,'2026-05-29 06:45:36.418657','RAZORPAY','MEMBERSHIP','order_Sv5NDG80egHj1V',NULL,NULL,'PENDING',15),(25,17700,'2026-05-29 06:52:05.630320','RAZORPAY','MEMBERSHIP','order_Sv5U46MIs54Yko','pay_Sv5UDamNvU4dea','eb1a786449da316cceb76811c7ca6f73795ad8b457d72a9e1126a31b4407889e','SUCCESS',15),(26,4424.115,'2026-05-29 07:04:07.817150','RAZORPAY','ORDER','order_Sv5gmOtdO1HN2Z',NULL,NULL,'PENDING',15),(27,100,'2026-05-29 07:27:33.076632','RAZORPAY','SALON_DEPOSIT','order_Sv65WIPdktiXi4',NULL,NULL,'PENDING',15);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Skincare','2026-05-23 05:31:29.422435','Advanced anti-aging serum with pure rose extract and gold particles.','/images/skincare.png','Rose Gold Elixir',2499,100),(2,'Perfumes','2026-05-23 05:31:29.442728','Exclusive oriental fragrance with deep oud, amber and musk notes.','/images/perfume.png','Oud Majestic',4999,50),(3,'Haircare','2026-05-23 05:31:29.450627','Salon-grade keratin formula for silky, frizz-free hair every day.','/images/haircare.png','Keratin Pro Shampoo',1299,150),(4,'Spa / Detox','2026-05-23 05:31:29.459188','Complete spa kit with essential oils, detox mask, and aromatherapy candles.','/images/spa.png','Luxury Detox Kit',3499,30),(7,'Skincare','2026-05-25 07:19:13.429453','Create a flawless makeup base with our premium beauty primer designed to smooth, hydrate, and perfect your skin instantly. Its lightweight, silky formula minimizes pores, controls excess oil, and helps makeup stay fresh for long hours without creasing or fading.','/uploads/products/1779693553389_images.jfif','Primer',800,5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qr_codes`
--

DROP TABLE IF EXISTS `qr_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qr_codes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `qr_data` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `merchant_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh5fv8mndmjgo3dhp89ukflnld` (`merchant_id`),
  CONSTRAINT `FKh5fv8mndmjgo3dhp89ukflnld` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qr_codes`
--

LOCK TABLES `qr_codes` WRITE;
/*!40000 ALTER TABLE `qr_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `qr_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon_info`
--

DROP TABLE IF EXISTS `salon_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` text,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `timings` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon_info`
--

LOCK TABLES `salon_info` WRITE;
/*!40000 ALTER TABLE `salon_info` DISABLE KEYS */;
INSERT INTO `salon_info` VALUES (1,'123, Beauty Lane, Near City Mall, Pune, Maharashtra - 411001','salon@llbeauty.com','+91 98765 43210','Our premium studio in Pune offers cutting-edge hair styling, skin treatments, and customized wellness therapies in a deeply relaxing luxury environment.','/uploads/salon/1779643850920_bridal.png','L.L. Beauty Salon','Main Flagship Branch','Mon - Sat: 07:00 AM - 10:00 PM (Sunday Closed)');
/*!40000 ALTER TABLE `salon_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salon_services`
--

DROP TABLE IF EXISTS `salon_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salon_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` text,
  `duration_minutes` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salon_services`
--

LOCK TABLES `salon_services` WRITE;
/*!40000 ALTER TABLE `salon_services` DISABLE KEYS */;
INSERT INTO `salon_services` VALUES (1,'Professional cut, shampoo, conditioning and blow-dry styling.',45,'/images/haircare.png','Hair Styling & Cut',899),(2,'Deep nourishment, repair treatment, and relaxing scalp massage.',60,'/images/haircare.png','Luxury Hair Spa',1499),(3,'Premium exfoliating facial with botanical extracts for instant radiance.',50,'/images/skincare.png','Gold Glow Facial',1999),(4,'Elite luxury bridal makeover including saree draping, hair, and makeup.',180,'/images/spa.png','Bridal Makeover',9999),(5,'Premium global hair coloring and highlights.',120,'/images/haircare.png','Hair Color',2999);
/*!40000 ALTER TABLE `salon_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_memberships`
--

DROP TABLE IF EXISTS `user_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_memberships` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime(6) NOT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `start_date` datetime(6) NOT NULL,
  `status` varchar(255) NOT NULL,
  `membership_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `referral_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd578eqokdbymythx3ihdde1n` (`membership_id`),
  KEY `FK3aftj3ypdb19itnsapcxykedv` (`user_id`),
  CONSTRAINT `FK3aftj3ypdb19itnsapcxykedv` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKd578eqokdbymythx3ihdde1n` FOREIGN KEY (`membership_id`) REFERENCES `memberships` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_memberships`
--

LOCK TABLES `user_memberships` WRITE;
/*!40000 ALTER TABLE `user_memberships` DISABLE KEYS */;
INSERT INTO `user_memberships` VALUES (8,'2027-05-27 16:40:13.541926','mock_payment_1779900013379','2026-05-27 16:40:13.541926','ACTIVE',6,9,NULL,NULL),(9,'2027-05-27 16:52:48.951539','mock_payment_1779900768848','2026-05-27 16:52:48.951539','ACTIVE',4,3,NULL,NULL),(10,'2027-05-28 10:05:19.342342','pay_SukEmluKsxSavR','2026-05-28 10:05:19.342342','UPGRADED',4,14,NULL,NULL),(11,'2027-05-28 10:16:35.417139','pay_SukQa6wHK4ELFE','2026-05-28 10:16:35.417139','ACTIVE',5,14,NULL,NULL),(12,'2027-05-29 06:43:06.622921','pay_Sv5KIocA26Gj0n','2026-05-29 06:43:06.622921','UPGRADED',5,15,NULL,NULL),(13,'2027-05-29 06:52:31.430326','pay_Sv5UDamNvU4dea','2026-05-29 06:52:31.430326','ACTIVE',6,15,NULL,NULL);
/*!40000 ALTER TABLE `user_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `wallet_balance` decimal(38,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2026-05-23 05:38:14.804879','kalyanivilasbhawar@gmail.com','9172051078','Kalyani Vilas Bhawar',NULL,2000.00),(2,'2026-05-23 05:43:38.674258','priti@gmail.com','9307897806','Priti Pansare',NULL,0.00),(3,'2026-05-23 10:10:45.701963','prachi@gmail.com','7776654433','prachi',NULL,418.70),(4,'2026-05-23 13:35:01.763267','nikita@gmail.com','8765432890','nikita',NULL,0.00),(5,'2026-05-23 19:08:43.606787','komal@gmail.com','8976543210','komal',NULL,0.00),(6,'2026-05-24 12:00:47.875710','vaishnavi@gmail.com','9876543210','vaishnavi shingare',NULL,0.00),(7,'2026-05-25 07:11:41.816104','shreya@gmail.com','8765432865','Shreya',NULL,0.00),(8,'2026-05-25 07:12:21.668730','pooja@gmail.com','9975149793','pooja ',NULL,0.00),(9,'2026-05-25 12:02:37.205431','pooja@gmail.com','9096472249','pooja',NULL,3337.31),(10,'2026-05-25 15:51:47.312915','priti@gmail.com','8787989800','priti',NULL,500.00),(11,'2026-05-26 11:57:58.702845','pranali@gmail.com','9988776655','pranali',NULL,0.00),(12,'2026-05-27 06:44:34.412902','shruti@gmail.com','9637825621','Shruti',NULL,0.00),(13,'2026-05-27 07:11:05.958065','shradhha@gmail.com','8877996655','shradhha',NULL,0.00),(14,'2026-05-28 10:03:41.739640','shruti@gmail.com','9898989898','Shruti',NULL,2704.20),(15,'2026-05-29 06:40:38.127598','pratvii@gmail.com','9322806345','pratvii',NULL,3400.00),(16,'2026-05-29 13:39:58.305078','trupti@gmail.com','8888888888','trupti',NULL,0.00),(17,'2026-05-30 08:02:37.502098','kalyanibhawar465@gmail.com','9172051078','Kalyani Bhawar',NULL,0.00),(18,'2026-05-30 08:03:42.304004','kalyanibhawar3@gmail.com','9172051078','Kalyani Vilas Bhawar',NULL,0.00);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_transactions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `razorpay_order_id` varchar(255) DEFAULT NULL,
  `razorpay_payment_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrtsa3qtjhd0rn4xb92na03vd` (`user_id`),
  CONSTRAINT `FKrtsa3qtjhd0rn4xb92na03vd` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_transactions`
--

LOCK TABLES `wallet_transactions` WRITE;
/*!40000 ALTER TABLE `wallet_transactions` DISABLE KEYS */;
INSERT INTO `wallet_transactions` VALUES (1,2000.00,'2026-05-27 06:05:50.108028','Redeemed for Order #1','DEBIT',8,NULL,NULL,NULL,NULL),(2,1500.00,'2026-05-27 10:17:47.109897','Redeemed for Order #4','DEBIT',9,NULL,NULL,NULL,NULL),(3,2500.00,'2026-05-27 16:40:13.812864','Welcome credit for Eva Black Card activation','CREDIT',9,NULL,NULL,NULL,NULL),(4,937.31,'2026-05-27 16:48:06.839372','Cashback for Order #6 (Eva Black Card)','CREDIT',9,NULL,NULL,NULL,NULL),(5,300.00,'2026-05-27 16:52:48.967889','Welcome credit for Eva Pink Card activation','CREDIT',3,NULL,NULL,NULL,NULL),(6,118.70,'2026-05-27 17:26:50.622423','Cashback for Order #7 (Eva Pink Card)','CREDIT',3,NULL,NULL,NULL,NULL),(7,100.00,NULL,'Secured advanced booking payment for Appointment #10','DEBIT',6,NULL,NULL,'2026-05-28 06:45:59.196364',NULL),(8,100.00,NULL,'Secured advanced booking payment for Appointment #12','DEBIT',9,NULL,NULL,'2026-05-28 06:51:32.707173',NULL),(9,300.00,NULL,'Welcome credit for Eva Pink Card activation','CREDIT',14,NULL,NULL,'2026-05-28 10:05:19.361345',NULL),(10,1000.00,NULL,'Welcome credit for Eva Gold Card activation','CREDIT',14,NULL,NULL,'2026-05-28 10:16:35.425128',NULL),(11,752.10,'2026-05-29 05:15:56.588859','Cashback for Order #18 (Eva Gold Card)','CREDIT',14,NULL,NULL,NULL,'GENERAL_CREDIT'),(12,752.10,'2026-05-29 06:11:02.201968','Cashback for Order #19 (Eva Gold Card)','CREDIT',14,NULL,NULL,NULL,'GENERAL_CREDIT'),(13,100.00,'2026-05-29 06:14:07.605550','Secured advanced booking payment for Appointment #22','DEBIT',14,NULL,NULL,NULL,'SALON_DEPOSIT'),(14,1000.00,'2026-05-29 06:43:06.667575','Welcome credit for Eva Gold Card activation','CREDIT',15,NULL,NULL,NULL,'MEMBERSHIP_WELCOME'),(15,100.00,'2026-05-29 06:44:46.162065','Secured advanced booking payment for Appointment #23','DEBIT',15,NULL,NULL,NULL,'SALON_DEPOSIT'),(16,2500.00,'2026-05-29 06:52:31.450338','Welcome credit for Eva Black Card activation','CREDIT',15,NULL,NULL,NULL,'MEMBERSHIP_WELCOME');
/*!40000 ALTER TABLE `wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-30 16:33:55
