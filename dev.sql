-- MySQL dump 10.13  Distrib 9.1.0, for macos14.7 (x86_64)
--
-- Host: localhost    Database: mst_bnarshi_pan_ror_development
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `active_storage_attachments`
--

DROP TABLE IF EXISTS `active_storage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_attachments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `record_type` varchar(255) NOT NULL,
  `record_id` bigint NOT NULL,
  `blob_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_attachments_uniqueness` (`record_type`,`record_id`,`name`,`blob_id`),
  KEY `index_active_storage_attachments_on_blob_id` (`blob_id`),
  CONSTRAINT `fk_rails_c3b3935057` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_attachments`
--

LOCK TABLES `active_storage_attachments` WRITE;
/*!40000 ALTER TABLE `active_storage_attachments` DISABLE KEYS */;
INSERT INTO `active_storage_attachments` VALUES (2,'image','Gallery',2,2,'2025-03-05 18:10:15.298915'),(3,'image','Gallery',3,3,'2025-03-05 18:10:22.867253'),(4,'image','Gallery',4,4,'2025-03-05 18:10:31.351986'),(5,'image','Gallery',5,5,'2025-03-05 18:10:42.333430'),(6,'image','Gallery',6,6,'2025-03-05 18:10:57.514994'),(7,'image','Gallery',8,7,'2025-03-05 18:11:28.996626'),(8,'image','Gallery',9,8,'2025-03-05 18:11:44.798058'),(9,'image','Blog',1,9,'2025-03-05 18:35:40.380508'),(10,'image','Blog',2,10,'2025-03-05 18:37:35.912397'),(11,'image','Gallery',10,11,'2025-03-05 18:39:24.858969'),(12,'image','Gallery',12,12,'2025-03-05 18:39:37.210622'),(13,'image','Gallery',15,13,'2025-03-05 18:42:14.239822'),(14,'image','Gallery',16,14,'2025-03-05 18:47:19.281877'),(15,'image','Gallery',17,15,'2025-03-05 18:47:51.617798'),(16,'image','Blog',3,16,'2025-03-05 18:50:40.056490'),(17,'image','PanOutlate',3,17,'2025-03-06 17:55:11.154124'),(18,'image','PanOutlate',2,18,'2025-03-06 17:56:56.426602'),(19,'image','PanOutlate',1,19,'2025-03-06 17:57:15.849475'),(20,'image','Product',1,20,'2025-03-06 18:03:45.687024'),(21,'image','Product',2,21,'2025-03-06 18:04:32.450401'),(22,'image','Product',3,22,'2025-03-06 18:05:05.788189'),(23,'image','Product',4,23,'2025-03-06 18:05:33.113288'),(24,'image','FranchiseBenefit',1,24,'2025-03-06 18:20:03.818706'),(25,'image','FranchiseBenefit',2,25,'2025-03-06 18:21:55.437382'),(26,'image','FranchiseBenefit',3,26,'2025-03-06 18:23:50.122442'),(27,'image','FranchiseBenefit',4,27,'2025-03-06 18:43:24.284685'),(28,'image','FranchiseBenefit',5,28,'2025-03-06 18:46:13.845524'),(29,'image','FranchiseBenefit',6,29,'2025-03-06 18:47:30.127031'),(30,'image','Event',1,30,'2025-03-06 18:49:33.969349'),(31,'image','Event',2,31,'2025-03-06 18:50:43.551974');
/*!40000 ALTER TABLE `active_storage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_blobs`
--

DROP TABLE IF EXISTS `active_storage_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_blobs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `metadata` text,
  `service_name` varchar(255) NOT NULL,
  `byte_size` bigint NOT NULL,
  `checksum` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_blobs_on_key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_blobs`
--

LOCK TABLES `active_storage_blobs` WRITE;
/*!40000 ALTER TABLE `active_storage_blobs` DISABLE KEYS */;
INSERT INTO `active_storage_blobs` VALUES (2,'7jfc8gc23tcdayo55t0kxmbk4phe','428083448_409409768150323_3120423383687219516_n (1).webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',106606,'xEvH4tD1DKlLELcQKpG4hA==','2025-03-05 18:10:15.295383'),(3,'ey3k4oirvx0a0biy2hl7u4dq0yac','413815573_748066440682986_5162788613831263548_n-1536x1152.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',109854,'OK7Dp+qNT6ojptwNan7NCg==','2025-03-05 18:10:22.864875'),(4,'u515ceeb3cr713bv9yqjey57g55q','WhatsApp-Image-2023-09-16-at-1.34.51-PM.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',123466,'nbTcLK2q2yu0dZJ6H0bw4g==','2025-03-05 18:10:31.348633'),(5,'j4ww7xcovyvkwz8810i1f1gcanp9','428083448_409409768150323_3120423383687219516_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',106606,'xEvH4tD1DKlLELcQKpG4hA==','2025-03-05 18:10:42.329375'),(6,'jkg5pmu5lt7v7ro3mkxl86oidqug','434462619_2693757347472060_3472137985210572021_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',71582,'n9s9PxscGDOab6JFWeG6tQ==','2025-03-05 18:10:57.512413'),(7,'ysxvdq7ub9uiw51knoeom4jl44ka','436314133_1842566082929143_2921935283055815871_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',255246,'tPprwFsAe/FokghssHru3w==','2025-03-05 18:11:28.993812'),(8,'pmhws6u9kcinps4nvzrt4wih69c9','WhatsApp-Image-2023-09-16-at-1.34.59-PM-1.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',126254,'6427rFFop4A1qlR+xstidQ==','2025-03-05 18:11:44.795550'),(9,'80xsqcm58q1bjrmit5g48l1b05st','newmap.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',82008,'PrVGDuZjypBLQD/Zzy28BA==','2025-03-05 18:35:40.376722'),(10,'bvegs4ncdc92spj7t1c7glf0qqsv','newmap.jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',82008,'PrVGDuZjypBLQD/Zzy28BA==','2025-03-05 18:37:35.909692'),(11,'eeg8gqj6o4iqx6xg72gs5sjlzxdc','WhatsApp-Image-2023-09-16-at-1.35.00-PM.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',166202,'Ze9fL9AAY6wHLvWFJ1ENhA==','2025-03-05 18:39:24.856415'),(12,'jts43cqith0kfdaz63rkn3fjwnyv','434550019_429078996161577_6140626665427179346_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',171502,'LFJDfOUtGdxeRvlvX/IrJg==','2025-03-05 18:39:37.207931'),(13,'dl22u8q9huizb5sy8lkukvka9mts','414485441_356776043661504_7755487243782747600_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',60992,'mWnM6sYt30sJcoTBTIZv1g==','2025-03-05 18:42:14.237222'),(14,'xcgta7s9eab9qf765yq56z9i22zf','IMG-20230614-WA0060.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',91116,'A9NjBeO5i9OPkVAlEiH/Vw==','2025-03-05 18:47:19.279211'),(15,'l2fcxx0wjche9ep8ugi79w99wfkh','450530680_1193883735292896_8530064462735542121_n.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',153148,'PK/4AEBEc7PHdXIefeBfvA==','2025-03-05 18:47:51.613362'),(16,'b5x1vxoay504i6akl0ek3y1e7oxv','newmap (1).jpg','image/jpeg','{\"identified\":true,\"analyzed\":true}','local',82008,'PrVGDuZjypBLQD/Zzy28BA==','2025-03-05 18:50:40.053893'),(17,'47kyo89dik7thbotqf5t9obrt944','600x485image.png','image/png','{\"identified\":true,\"analyzed\":true}','local',622753,'ntvRc4AYqcyfadftCKVElg==','2025-03-06 17:55:11.142588'),(18,'1gsfoismtnslx8aev15styv7so1h','600x485image2.png','image/png','{\"identified\":true,\"analyzed\":true}','local',732712,'VEGzsOqrYDWWUhk+yRFKqg==','2025-03-06 17:56:56.423025'),(19,'o6cregh997t6h57k8gkrb4eqhura','600x485image3.png','image/png','{\"identified\":true,\"analyzed\":true}','local',884646,'t8KznvzHD0oyjiEg+Qzv5Q==','2025-03-06 17:57:15.847122'),(20,'9bby7s00zb05tkycsclhvhdz9nie','Rajwadi-paan.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',7142,'uGj+ZxVTmxarLho3mzvnCw==','2025-03-06 18:03:45.684518'),(21,'jcpglm6v53qebtunyww5ynwse9b5','Laddo-Paan.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',7844,'tUI3TKVTgiAc5UmDFfg87g==','2025-03-06 18:04:32.448061'),(22,'81sewwgqcic917jo0hilj6un8lty','Chocolate-Paan.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',5460,'kj4f3cSGsywqULejYUbjUQ==','2025-03-06 18:05:05.784127'),(23,'15p730qlwj8j0pmehpoj9t2qnch8','Fire-Paan.webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',5288,'6vOgyNoSvYjh05zA+Tr57w==','2025-03-06 18:05:33.110729'),(24,'2hgm36jv8ibz1gkzwpydr67hdgda','1dealnew.png','image/png','{\"identified\":true,\"analyzed\":true}','local',177931,'1yLP9MaWXKI21HDPm7IYlw==','2025-03-06 18:20:03.815879'),(25,'zcsf8gnvbxjhdu03xst0sw5p6d3k','staffnew.png','image/png','{\"identified\":true,\"analyzed\":true}','local',204323,'Ez+mCbQ6p2jqFxQPPz3aRQ==','2025-03-06 18:21:55.434486'),(26,'tfol12kxie95r6hf1qgrzg462mek','612x433nitin.png','image/png','{\"identified\":true,\"analyzed\":true}','local',574082,'+1xLRMhiebNs5bPU9b4X8w==','2025-03-06 18:23:50.119791'),(27,'x2lz7bgz096cwqdqmfc6d5udelz0','612x433imgnew4.png','image/png','{\"identified\":true,\"analyzed\":true}','local',688208,'BbdwmkwYaxTQCmxwMFliZA==','2025-03-06 18:43:24.281948'),(28,'grwgvgbpx1eejry4hvdmkg5nb806','612x433imagenew1.png','image/png','{\"identified\":true,\"analyzed\":true}','local',664974,'YPqs5YzrTDs6m6pd/GBUiA==','2025-03-06 18:46:13.843466'),(29,'ui0bwa6wljomxe2viifalee5iblr','612x433imagenew2.png','image/png','{\"identified\":true,\"analyzed\":true}','local',719983,'M4yJQTba4yAMs1x8vZ7yrQ==','2025-03-06 18:47:30.124675'),(30,'kd25z9fl3hawkto3hnb40qsrbulm','birthday-celebration-1 (1).webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',84940,'q3T4narq23zucYDpTTwvjA==','2025-03-06 18:49:33.966527'),(31,'grt6corlbrkisng5xs1ba20rhimj','birthday-celebration-1 (1).webp','image/webp','{\"identified\":true,\"analyzed\":true}','local',84940,'q3T4narq23zucYDpTTwvjA==','2025-03-06 18:50:43.549193');
/*!40000 ALTER TABLE `active_storage_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_storage_variant_records`
--

DROP TABLE IF EXISTS `active_storage_variant_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_storage_variant_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blob_id` bigint NOT NULL,
  `variation_digest` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_active_storage_variant_records_uniqueness` (`blob_id`,`variation_digest`),
  CONSTRAINT `fk_rails_993965df05` FOREIGN KEY (`blob_id`) REFERENCES `active_storage_blobs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_storage_variant_records`
--

LOCK TABLES `active_storage_variant_records` WRITE;
/*!40000 ALTER TABLE `active_storage_variant_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_storage_variant_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2025-03-02 15:39:06.813682','2025-03-02 15:39:06.813687');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` text,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Paan Aroma offers a variety of premium Banarasi paans and snacks, with over 200 outlets across India. It combines traditional flavors with innovative offerings, presenting a great investment opportunity in the growing food sector.','LIFELEAF FAMILY PAAN CAFE PRIVATE LIMITED',NULL,'2025-03-05 18:35:40.351824','2025-03-05 18:35:40.447685'),(2,'Banarasi Paan Cafe offers a distinctive franchise opportunity, blending traditional Banarasi paan with a modern café ambiance. With a unique concept, strong brand presence, and growing demand, it’s an ideal investment for','Flavours/ Nawab-e-paan',NULL,'2025-03-05 18:37:35.892977','2025-03-05 18:37:35.966443'),(3,'Banarasi Paan Cafe offers a distinctive franchise opportunity, blending traditional Banarasi paan with a modern café ambiance. With a unique concept, strong brand presence, and growing demand, it’s an ideal investment for','Banarasi Paan Cafe',NULL,'2025-03-05 18:50:40.034899','2025-03-05 18:50:40.234276');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Noida','2025-03-02 16:01:17.003565','2025-03-02 16:01:17.003565'),(2,'Ghaziyabad','2025-03-02 16:37:30.829299','2025-03-02 16:37:30.829299');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,NULL,'Paan Festival 2025','Venue: Paan Paradise, Mumbai\r\n\r\nJoin us for an evening of exotic paan flavors, live music, and cultural performances!','2025-03-06 18:49:33.950572','2025-03-06 18:49:34.017061'),(2,NULL,'Exclusive Paan Tasting','Venue: Royal Paan Lounge, Delhi\r\n\r\nDiscover 10+ varieties of paan with expert guidance and pairings.','2025-03-06 18:50:43.538767','2025-03-06 18:50:43.600237');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'How do I start my first food franchise?','To start a food franchise it is this potential to create a prototype, define a profit channel, develop a marketing plan, and follow the standard rules of franchisors (brand).','2025-03-05 17:11:52.823132','2025-03-05 17:11:52.823132'),(2,'How does a food franchise differ from starting an independent restaurant?','An independent restaurant requires higher cost with high risk whereas a food franchise is a lower-risk option that is flexible and ensures success.','2025-03-05 17:12:24.617265','2025-03-05 17:12:24.617265'),(3,'Do I need previous experience in the food industry to open a franchise?','No, to open a franchise business, prior experience and knowledge is not required. However, if you already know the ins and outs of the business, then you have an extra edge.','2025-03-05 17:13:02.777112','2025-03-05 17:13:02.777112'),(4,'What are the legal requirements for starting a franchise business?','GST Registration, Registered Firm Name, Shop Agreement, and Licences like FSSAI and Trade License are among the legal requirements for a franchise. However, One Bite will guide you in navigating these legal implications.','2025-03-05 17:14:03.900450','2025-03-05 17:14:03.900450'),(5,'Who handles the marketing and advertising for the franchise?','Both franchises and franchisees are responsible for handling the marketing and Advertising for franchises to maintain consistent customer satisfaction.','2025-03-05 17:14:41.759323','2025-03-05 17:14:41.759323');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchise_benefits`
--

DROP TABLE IF EXISTS `franchise_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchise_benefits` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `discription` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchise_benefits`
--

LOCK TABLES `franchise_benefits` WRITE;
/*!40000 ALTER TABLE `franchise_benefits` DISABLE KEYS */;
INSERT INTO `franchise_benefits` VALUES (1,'#.1 Feature','Very Economic Investment with Good Returns.',NULL,'2025-03-06 18:20:03.805374','2025-03-06 18:20:03.873682'),(2,'#.2 Feature','Trained staff support for complete Two months and would be sending after also depending on the requirement.',NULL,'2025-03-06 18:21:55.421059','2025-03-06 18:21:55.485951'),(3,'#.3 Feature','We are Giving more than 100 Tempting & Delicious varieties in our menu.',NULL,'2025-03-06 18:23:50.110040','2025-03-06 18:23:50.166217'),(4,'#.4 Feature','Very Economic Investment with Good Returns.',NULL,'2025-03-06 18:43:24.272878','2025-03-06 18:43:24.327165'),(5,'#.5 Feature','We send the Surveyors to visit the properties short listed by you and will let you know the best as per our Brand\'s requirement.',NULL,'2025-03-06 18:46:13.830612','2025-03-06 18:46:13.995275'),(6,'#.6 Feature','Pocket friendly menu to lure customers, Burgers staring from 31 and Pizzas starting from 61..',NULL,'2025-03-06 18:47:30.111687','2025-03-06 18:47:30.273183');
/*!40000 ALTER TABLE `franchise_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendly_id_slugs`
--

DROP TABLE IF EXISTS `friendly_id_slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friendly_id_slugs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `sluggable_id` int NOT NULL,
  `sluggable_type` varchar(50) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope` (`slug`(70),`sluggable_type`,`scope`(70)),
  KEY `index_friendly_id_slugs_on_sluggable_type_and_sluggable_id` (`sluggable_type`,`sluggable_id`),
  KEY `index_friendly_id_slugs_on_slug_and_sluggable_type` (`slug`(140),`sluggable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendly_id_slugs`
--

LOCK TABLES `friendly_id_slugs` WRITE;
/*!40000 ALTER TABLE `friendly_id_slugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendly_id_slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (2,NULL,'2025-03-05 18:10:15.275145','2025-03-05 18:10:15.371622'),(3,NULL,'2025-03-05 18:10:22.855075','2025-03-05 18:10:22.901401'),(4,NULL,'2025-03-05 18:10:31.338774','2025-03-05 18:10:31.388116'),(5,NULL,'2025-03-05 18:10:42.316915','2025-03-05 18:10:42.383290'),(6,NULL,'2025-03-05 18:10:57.502787','2025-03-05 18:10:57.570175'),(8,NULL,'2025-03-05 18:11:28.983603','2025-03-05 18:11:29.135295'),(9,NULL,'2025-03-05 18:11:44.786351','2025-03-05 18:11:44.834715'),(10,NULL,'2025-03-05 18:39:24.845408','2025-03-05 18:39:24.924915'),(12,NULL,'2025-03-05 18:39:37.192320','2025-03-05 18:39:37.382837'),(15,NULL,'2025-03-05 18:42:14.222682','2025-03-05 18:42:14.290175'),(16,NULL,'2025-03-05 18:47:19.268605','2025-03-05 18:47:19.326730'),(17,NULL,'2025-03-05 18:47:51.600465','2025-03-05 18:47:51.683406');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pan_outlates`
--

DROP TABLE IF EXISTS `pan_outlates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pan_outlates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `space` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pan_outlates`
--

LOCK TABLES `pan_outlates` WRITE;
/*!40000 ALTER TABLE `pan_outlates` DISABLE KEYS */;
INSERT INTO `pan_outlates` VALUES (1,NULL,NULL,'2025-03-03 18:13:15.783452','2025-03-06 17:57:15.991140','70 - 80 SQFT','#.1 MINI CAFE MODEL'),(2,NULL,NULL,'2025-03-03 18:14:47.492556','2025-03-06 17:56:56.474695','100-150 SQFT','#.2 STAND-ALONE'),(3,NULL,NULL,'2025-03-03 18:16:18.228637','2025-03-06 17:55:11.218866','200-250 SQFT','#.3 PREMIUM MODEL');
/*!40000 ALTER TABLE `pan_outlates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Rajwadi Paan',NULL,'Mouth-watering paans with delicious fillings and exotic toppings. Have a bite of the once favourite paans of the royals.','2025-03-02 17:34:31.120686','2025-03-06 18:03:45.836161'),(2,'Laddu Paan',NULL,'Take a bite and feel the rich taste of imported dry fruits with our Laddu Paans.','2025-03-03 18:08:54.489804','2025-03-06 18:04:32.484317'),(3,'Chocolate Paan',NULL,'Fresh paans dipped in dense chocolate to give you a twin flavour. This is that one recipe everyone adores.','2025-03-03 18:10:07.235300','2025-03-06 18:05:05.871097'),(4,'Fire Paan',NULL,'Delectable paans with a customized filling and a burning flame as the topping. The Fire Paan is one of our most innovative recipes.','2025-03-03 18:10:51.786788','2025-03-06 18:05:33.274224');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20250302153535'),('20250302153618'),('20250302153812'),('20250302153849'),('20250302163609'),('20250302163954'),('20250302172124'),('20250302172446'),('20250303173436'),('20250303173853'),('20250304165711'),('20250304165813'),('20250304165930'),('20250304171339'),('20250304174251'),('20250307171033'),('20250307171120');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_states_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Bihar','2025-03-02 17:29:03.658420','2025-03-02 17:29:03.658420',NULL),(2,'Uttar Pradesh','2025-03-02 17:30:30.803459','2025-03-02 17:30:30.803459',NULL),(3,'Arunachal Pradesh','2025-03-03 17:57:50.716063','2025-03-03 17:57:50.716063',NULL),(4,'Assam','2025-03-03 17:58:11.763695','2025-03-03 17:58:11.763695',NULL),(5,'Chhattisgarh','2025-03-03 17:58:41.959962','2025-03-03 17:58:41.959962',NULL),(6,'Goa','2025-03-03 17:58:53.871582','2025-03-03 17:58:53.871582',NULL),(7,'Gujarat','2025-03-03 17:59:09.020923','2025-03-03 17:59:09.020923',NULL),(8,'Haryana','2025-03-03 17:59:23.909125','2025-03-03 17:59:23.909125',NULL),(9,'Himachal Pradesh','2025-03-03 18:03:05.868569','2025-03-03 18:03:05.868569',NULL),(10,'Jharkhand','2025-03-03 18:03:16.624816','2025-03-03 18:03:16.624816',NULL),(11,'Karnataka','2025-03-03 18:03:27.885293','2025-03-03 18:03:27.885293',NULL),(12,'Madhya Pradesh','2025-03-03 18:03:50.261808','2025-03-03 18:03:50.261808',NULL),(13,'Maharashtra','2025-03-03 18:04:01.900883','2025-03-03 18:04:01.900883',NULL),(14,'Manipur','2025-03-03 18:04:37.410978','2025-03-03 18:04:37.410978',NULL),(15,'Mizoram','2025-03-03 18:04:52.933196','2025-03-03 18:04:52.933196',NULL),(16,'Nagaland','2025-03-03 18:05:03.526216','2025-03-03 18:05:03.526216',NULL),(17,'Odisha','2025-03-03 18:05:14.409622','2025-03-03 18:05:14.409622',NULL),(18,'Punjab','2025-03-03 18:05:23.733826','2025-03-03 18:05:23.733826',NULL),(19,'Rajasthan','2025-03-03 18:05:37.654247','2025-03-03 18:05:37.654247',NULL),(20,'Sikkim','2025-03-03 18:05:46.221491','2025-03-03 18:05:46.221491',NULL),(21,'Telangana','2025-03-03 18:05:55.625211','2025-03-03 18:05:55.625211',NULL),(22,'Tripura','2025-03-03 18:06:06.683672','2025-03-03 18:06:06.683672',NULL),(23,'Uttar Pradesh','2025-03-03 18:06:17.248235','2025-03-03 18:06:17.248235',NULL),(24,'Uttarakhand','2025-03-03 18:06:26.277828','2025-03-03 18:06:26.277828',NULL),(25,'West Bengal','2025-03-03 18:06:39.784333','2025-03-07 17:56:11.930995','paan-franchies-west-bengal');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `titles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `discription` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `contact` varchar(255) DEFAULT NULL,
  `pan_outlate_id` bigint NOT NULL,
  `state_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_pan_outlate_id` (`pan_outlate_id`),
  KEY `index_users_on_state_id` (`state_id`),
  CONSTRAINT `fk_rails_606ec65343` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  CONSTRAINT `fk_rails_761d3d6400` FOREIGN KEY (`pan_outlate_id`) REFERENCES `pan_outlates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,'chiragt095@gmail.com','test','9074511942',2,12,'2025-03-03 18:20:36.992421','2025-03-03 18:20:36.992421'),(2,'test','chirag@gmail.com','ghhjgjhghjghjghjhgjgjjhg','1234567890',2,12,'2025-03-03 18:41:36.351048','2025-03-03 18:41:36.351048');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youtubes`
--

DROP TABLE IF EXISTS `youtubes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `youtubes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `url` text,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youtubes`
--

LOCK TABLES `youtubes` WRITE;
/*!40000 ALTER TABLE `youtubes` DISABLE KEYS */;
INSERT INTO `youtubes` VALUES (1,'https://www.youtube.com/embed/-b88-78BpMs','2025-03-03 18:19:55.088413','2025-03-05 17:48:19.766431'),(2,'https://www.youtube.com/embed/4GFpmrYHsYY','2025-03-05 17:48:56.001228','2025-03-05 17:48:56.001228'),(3,'https://www.youtube.com/embed/w1jZBSu14A0','2025-03-05 17:49:28.632675','2025-03-05 17:49:28.632675'),(4,'https://www.youtube.com/embed/7SVJLSVyYgw','2025-03-05 17:51:53.361456','2025-03-05 17:51:53.361456'),(5,'https://www.youtube.com/embed/7SVJLSVyYgw','2025-03-05 17:52:06.120754','2025-03-05 17:52:06.120754'),(6,'https://www.youtube.com/embed/7SVJLSVyYgw','2025-03-05 17:52:13.619210','2025-03-05 17:52:13.619210');
/*!40000 ALTER TABLE `youtubes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08  1:44:51