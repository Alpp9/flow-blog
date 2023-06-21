-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: flow_demo
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'dpJ6ZKWhbmSO8YVTPX2HOym9iUANwnc8',1,'2023-04-20 01:01:03','2023-04-20 01:01:03','2023-04-20 01:01:03'),(2,1,'U2eo1vjNkJVnaJKE03oqBSpXyC9XDDd7',1,'2023-04-20 01:04:59','2023-04-20 01:04:59','2023-04-20 01:04:59'),(3,1,'Bkp6BzKSyCZosdtwWyEC5hNAXKwXqwvA',1,'2023-04-20 01:09:53','2023-04-20 01:09:53','2023-04-20 01:09:53'),(4,1,'6iSFbwgEYnSCkusyUrST5e3lAbrCzZEM',1,'2023-04-20 14:41:57','2023-04-20 14:41:57','2023-04-20 14:41:57'),(5,1,'1evub20ubtBcjo3D7c1f8gwRGAbEJyc3',1,'2023-05-05 14:43:11','2023-05-05 14:43:11','2023-05-05 14:43:11'),(6,1,'lFHfAjHGOqkQgnD8wVlpNyXdCImTmqq0',1,'2023-05-05 14:54:14','2023-05-05 14:54:14','2023-05-05 14:54:14'),(7,1,'zOqLk3sDAzYQJNOfCiZUjLrOK82ytrYK',1,'2023-05-05 14:54:57','2023-05-05 14:54:57','2023-05-05 14:54:57'),(8,1,'147YHhguzHh2ZcGiHixcHkTe1Q3doi73',1,'2023-05-05 14:56:52','2023-05-05 14:56:52','2023-05-05 14:56:52'),(9,1,'uPM1wHHQotzbvKOGMqWAjyBJgr0KcsyM',1,'2023-05-05 15:01:35','2023-05-05 15:01:35','2023-05-05 15:01:35'),(10,1,'KonqiURzx9AZa5SfGePZZvjX6JSlXwrn',1,'2023-05-05 15:02:49','2023-05-05 15:02:49','2023-05-05 15:02:49'),(11,1,'IDcH5tK7HKOcMgijSlem8v0WaTt7ZIhl',1,'2023-05-05 15:22:04','2023-05-05 15:22:04','2023-05-05 15:22:04'),(12,1,'BYGHPu7ZFuYAnfgQgdPx6iGVUoVDi1Xw',1,'2023-05-05 15:28:19','2023-05-05 15:28:19','2023-05-05 15:28:19');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (1,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-05-05 14:14:50','2023-05-05 14:14:50'),(2,1,'of the system','[]','logged out','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',1,1,'System Admin','info','2023-05-05 14:46:06','2023-05-05 14:46:06'),(3,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-05-05 14:46:52','2023-05-05 14:46:52'),(4,1,'of the system','[]','logged out','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',1,1,'System Admin','info','2023-05-05 14:47:01','2023-05-05 14:47:01'),(5,1,'to the system',NULL,'logged in','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36','172.31.0.1',0,1,'System Admin','info','2023-05-05 15:14:14','2023-05-05 15:14:14');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_likes`
--

DROP TABLE IF EXISTS `bb_comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  KEY `bb_comment_likes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_likes`
--

LOCK TABLES `bb_comment_likes` WRITE;
/*!40000 ALTER TABLE `bb_comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_recommends`
--

DROP TABLE IF EXISTS `bb_comment_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_recommends` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bb_comment_recommends_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_recommends`
--

LOCK TABLES `bb_comment_recommends` WRITE;
/*!40000 ALTER TABLE `bb_comment_recommends` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comment_users`
--

DROP TABLE IF EXISTS `bb_comment_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comment_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `avatar_id` int unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bb_comment_users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comment_users`
--

LOCK TABLES `bb_comment_users` WRITE;
/*!40000 ALTER TABLE `bb_comment_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `bb_comment_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bb_comments`
--

DROP TABLE IF EXISTS `bb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bb_comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int NOT NULL DEFAULT '0',
  `reply_count` int NOT NULL DEFAULT '0',
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bb_comments`
--

LOCK TABLES `bb_comments` WRITE;
/*!40000 ALTER TABLE `bb_comments` DISABLE KEYS */;
INSERT INTO `bb_comments` VALUES (1,'WOULD always get into that beautiful garden--how IS that to be Involved in this affair, He trusts.',1,'Botble\\Blog\\Models\\Post','249.72.222.224',9,'published',0,1,0,'2023-04-07 13:11:50','2023-05-05 15:22:15'),(2,'Alice as he fumbled over the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the jury-box,\'.',1,'Botble\\Blog\\Models\\Post','191.153.39.112',6,'published',0,0,0,'2023-04-17 23:03:52','2023-05-05 15:22:15'),(3,'You see the Hatter grumbled: \'you shouldn\'t have put it to half-past one as long as I do,\' said.',1,'Botble\\Blog\\Models\\Post','203.87.96.92',2,'published',0,1,0,'2023-04-18 03:03:14','2023-05-05 15:22:15'),(4,'Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked at Alice, as she was walking.',1,'Botble\\Blog\\Models\\Post','48.35.95.111',7,'published',0,0,0,'2023-04-20 23:39:38','2023-05-05 15:22:15'),(5,'Rabbit noticed Alice, as she went on, \'that they\'d let Dinah stop in the direction it pointed to.',1,'Botble\\Blog\\Models\\Post','198.54.168.12',6,'published',0,0,0,'2023-04-12 13:55:31','2023-05-05 15:22:15'),(6,'Here the other side of the gloves, and she hurried out of the e--e--evening, Beautiful, beautiful.',1,'Botble\\Blog\\Models\\Post','184.128.175.249',9,'published',0,0,0,'2023-04-12 14:59:29','2023-05-05 15:22:15'),(7,'Imagine her surprise, when the White Rabbit: it was sneezing and howling alternately without a.',1,'Botble\\Blog\\Models\\Post','2.98.180.192',9,'published',0,0,3,'2023-04-23 07:53:17','2023-05-05 15:22:15'),(8,'Gryphon, and, taking Alice by the end of the Shark, But, when the White Rabbit interrupted.',1,'Botble\\Blog\\Models\\Post','100.74.1.185',2,'published',0,0,1,'2023-04-29 01:42:13','2023-05-05 15:22:15'),(9,'King, with an air of great relief. \'Now at OURS they had to run back into the garden door. Poor.',2,'Botble\\Blog\\Models\\Post','32.213.42.32',9,'published',0,0,0,'2023-04-10 05:06:58','2023-05-05 15:22:15'),(10,'William and offer him the crown. William\'s conduct at first she thought it would be like, but it.',2,'Botble\\Blog\\Models\\Post','23.44.105.130',5,'published',0,0,0,'2023-04-15 11:27:10','2023-05-05 15:22:15'),(11,'Alice had no idea what you\'re doing!\' cried Alice, jumping up in her hand, and a large piece out.',2,'Botble\\Blog\\Models\\Post','105.244.8.77',9,'published',0,1,0,'2023-04-11 22:52:08','2023-05-05 15:22:15'),(12,'I fancied that kind of rule, \'and vinegar that makes them sour--and camomile that makes them.',2,'Botble\\Blog\\Models\\Post','68.200.244.22',3,'published',0,0,0,'2023-04-14 16:32:11','2023-05-05 15:22:15'),(13,'Alice remained looking thoughtfully at the bottom of the way I want to stay with it as a partner!\'.',2,'Botble\\Blog\\Models\\Post','28.81.221.78',5,'published',0,1,0,'2023-04-10 15:20:53','2023-05-05 15:22:15'),(14,'Adventures, till she had succeeded in getting its body tucked away, comfortably enough, under her.',2,'Botble\\Blog\\Models\\Post','255.244.9.153',8,'published',0,0,0,'2023-04-19 10:40:35','2023-05-05 15:22:15'),(15,'Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know I do!\' said Alice aloud, addressing.',2,'Botble\\Blog\\Models\\Post','190.156.22.62',2,'published',0,0,11,'2023-04-29 23:24:51','2023-05-05 15:22:15'),(16,'Where CAN I have done just as if she was small enough to drive one crazy!\' The Footman seemed to.',2,'Botble\\Blog\\Models\\Post','34.80.121.176',8,'published',0,0,13,'2023-04-28 08:30:19','2023-05-05 15:22:15'),(17,'The baby grunted again, and Alice guessed who it was, and, as the rest of my life.\' \'You are old,\'.',3,'Botble\\Blog\\Models\\Post','219.45.139.240',4,'published',0,0,0,'2023-05-03 12:01:30','2023-05-05 15:22:15'),(18,'And yet I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat.',3,'Botble\\Blog\\Models\\Post','222.93.55.40',10,'published',0,0,0,'2023-04-08 09:15:56','2023-05-05 15:22:15'),(19,'Still she went round the court with a round face, and large eyes full of the sense, and the.',3,'Botble\\Blog\\Models\\Post','241.143.95.96',10,'published',0,1,0,'2023-05-05 12:27:21','2023-05-05 15:22:16'),(20,'Gryphon, \'that they WOULD not remember ever having seen such a thing. After a time there were no.',3,'Botble\\Blog\\Models\\Post','14.2.49.233',8,'published',0,1,0,'2023-05-04 14:13:42','2023-05-05 15:22:16'),(21,'Majesty,\' said the Hatter. He had been all the unjust things--\' when his eye chanced to fall a.',3,'Botble\\Blog\\Models\\Post','154.65.174.102',3,'published',0,0,0,'2023-04-30 19:17:59','2023-05-05 15:22:15'),(22,'King. \'Then it doesn\'t mind.\' The table was a treacle-well.\' \'There\'s no sort of circle, (\'the.',3,'Botble\\Blog\\Models\\Post','4.129.125.181',2,'published',0,0,0,'2023-04-23 21:55:56','2023-05-05 15:22:15'),(23,'I was, I shouldn\'t want YOURS: I don\'t like it, yer honour, at all, as the door with his head!\' or.',3,'Botble\\Blog\\Models\\Post','200.225.124.25',3,'published',0,0,19,'2023-05-03 11:33:30','2023-05-05 15:22:16'),(24,'Alice after it, and then I\'ll tell you how it was as long as it didn\'t much matter which way she.',3,'Botble\\Blog\\Models\\Post','171.191.183.126',8,'published',0,0,20,'2023-04-30 16:14:26','2023-05-05 15:22:16');
/*!40000 ALTER TABLE `bb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(2,'Lifestyle',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(3,'Travel Tips',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(4,'Healthy',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(5,'Travel Tips',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(6,'Hotel',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13'),(7,'Nature',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2023-05-05 15:22:13','2023-05-05 15:22:13');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Phong cách sống',NULL),('vi',2,'Sức khỏe',NULL),('vi',3,'Món ngon',NULL),('vi',4,'Sách',NULL),('vi',5,'Mẹo du lịch',NULL),('vi',6,'Khách sạn',NULL),('vi',7,'Thiên nhiên',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Prof. Abe McGlynn MD','pattie26@example.net','1-312-337-1653','376 Bartell Lodge\nKulasview, PA 99485-4136','Maxime aut non sit ullam quibusdam.','Reprehenderit laudantium aspernatur iste consequatur magni quo doloribus. Sed earum aperiam nihil velit. Adipisci aliquam non et non ullam quis est rem. Consectetur enim rem illo corrupti ullam. Quidem esse eos quis rerum rerum. Nemo sed quaerat placeat. Accusamus tempora aut quod. Tenetur et velit sapiente ut architecto quidem possimus. Fuga amet harum possimus sunt ratione doloremque non dolor. Similique nisi sed rerum qui in aliquam. Nesciunt maiores autem et voluptatem debitis repudiandae.','read','2023-05-05 15:28:21','2023-05-05 15:28:21'),(2,'Fleta Auer MD','xhyatt@example.org','1-878-568-1715','7991 Aiden Oval\nLuettgenchester, GA 44366','Molestiae sit in iste possimus hic.','Tempora beatae consequuntur expedita id eaque voluptas nihil. Magni doloribus dignissimos magnam omnis qui. Possimus reiciendis suscipit sit aut. Maxime dolorum optio quae ea eligendi. Itaque non esse ex voluptatem. Exercitationem aperiam laborum mollitia at vel. Tenetur exercitationem est et ratione fugit aliquam voluptatem. Hic suscipit molestiae voluptate corrupti quo. Vero velit autem illum corrupti ut. Nesciunt animi soluta voluptatem quia dolores.','read','2023-05-05 15:28:21','2023-05-05 15:28:21'),(3,'Ana Sanford','bartoletti.lucinda@example.net','1-702-340-5032','64549 Joshua Junction Apt. 691\nBotsfordborough, MI 57283-4506','Quod dolorem ad hic id nihil explicabo dicta.','Sint quo quia corrupti repellat. Reprehenderit sed quas et excepturi sunt sed. Quia qui ex minus reprehenderit et. Suscipit optio sit aut laboriosam voluptatem est quas. Nesciunt laboriosam inventore nulla nulla voluptatem officiis illum soluta. Ducimus repellat pariatur fugit ipsum. Aut earum ratione placeat sint deleniti amet modi. Ducimus qui voluptatum tempore deleniti. Voluptas dolorem impedit quia blanditiis rerum a.','unread','2023-05-05 15:28:21','2023-05-05 15:28:21'),(4,'Mrs. Dawn Wunsch','bstanton@example.org','+18489402098','586 Mabel Lock Apt. 642\nNelleberg, NY 09549-7774','Molestiae blanditiis atque ea quia.','Nam ut nam quis aperiam veniam nemo quia. Perspiciatis dolores repudiandae quae. Autem alias deserunt ut quis reprehenderit. Sapiente qui provident optio doloremque. Laborum quo qui voluptates assumenda mollitia. Numquam ad et voluptas ut. Enim harum itaque explicabo et ad. Velit consequatur laboriosam pariatur non ad consequuntur est. Reprehenderit praesentium id et inventore laudantium. Omnis officia veritatis aspernatur qui aliquam molestiae perspiciatis.','read','2023-05-05 15:28:21','2023-05-05 15:28:21'),(5,'Ms. Madelyn McCullough','von.moshe@example.com','+1-763-547-7074','5310 Purdy Streets Apt. 310\nDeliamouth, WA 76247-9190','Et minus sint quia rem.','Sunt incidunt eaque repellat ut nam maiores aut. Id vel culpa alias error. Consequatur sunt laboriosam et fuga. Odit sint soluta soluta distinctio ab. Nisi quibusdam ut tenetur facere at tempore voluptas nisi. Ullam numquam dolorem reiciendis aut deserunt assumenda ipsum. Accusamus similique aliquam deserunt. Est non ipsa quo aut consectetur qui ducimus.','unread','2023-05-05 15:28:21','2023-05-05 15:28:21'),(6,'Griffin Collins','stokes.amara@example.org','(779) 412-0714','3033 Cremin Mount Apt. 351\nSouth Mylestown, AR 48439','Nihil velit laborum consequatur minus et.','Dolore a omnis aspernatur molestias corporis harum et. Officiis ea ducimus placeat. Est maxime eligendi sint dignissimos voluptatem et numquam et. Eos aut earum perspiciatis et nemo. Excepturi qui molestias et dolores odio omnis. Possimus veritatis quaerat at vel sint incidunt expedita suscipit. Reiciendis saepe praesentium quasi saepe architecto. Laboriosam qui et nostrum sapiente veniam non dicta. Et facilis temporibus eum animi alias similique aliquid.','unread','2023-05-05 15:28:21','2023-05-05 15:28:21'),(7,'Mireille Yundt II','gerson63@example.com','+17048859629','9423 Brakus Harbors Suite 488\nWillburgh, IL 29337-9608','Qui inventore excepturi vitae rerum animi nobis.','Asperiores facere veritatis accusantium. Qui vel quis quibusdam iure. Animi quos est explicabo accusamus. Optio assumenda quaerat quaerat ut. Ad nobis nam suscipit perspiciatis cumque vel. A id ea maxime voluptas et repellat odit. Quibusdam omnis non optio amet vel. Et ea voluptas ad ex ut. Et quia illum deleniti dicta. Totam quia ducimus quod tempora accusamus fugiat. Quas commodi est sed omnis quis veniam. Quo suscipit eum omnis tempora aperiam.','unread','2023-05-05 15:28:21','2023-05-05 15:28:21'),(8,'Mrs. Delta Murphy DDS','horacio.wintheiser@example.org','+17348782006','16348 Darius Island\nNew Bartholome, KY 99077','Nemo unde debitis iste repudiandae.','In nostrum alias dolores. Quas quas aut vitae. Officiis dolores culpa quasi voluptatem. Sapiente sunt occaecati nihil magnam laudantium ab. Sed modi qui quae esse maxime ullam est consequatur. Ut aut corrupti porro aut eligendi est quis voluptate. Sunt expedita blanditiis repudiandae excepturi sit vel. Dolor quidem consequatur est ex voluptatem ut. Deleniti sequi ut ut incidunt molestias aliquam aut. Et incidunt et exercitationem deserunt veniam odit id.','read','2023-05-05 15:28:21','2023-05-05 15:28:21'),(9,'Benjamin Marquardt','janessa88@example.org','+1-319-736-1376','43937 Jaskolski Branch Apt. 205\nVincenzaborough, NJ 98752','Aperiam corporis maiores exercitationem aut.','Possimus veniam dolor velit recusandae. Laborum esse quo autem ut eum magni et. Magnam animi pariatur autem aut sed atque itaque itaque. Nemo natus error porro officiis. Pariatur iure pariatur modi hic officiis non. Tenetur sequi eligendi aperiam omnis in deserunt aliquid. Asperiores consequuntur voluptas sed ab ea. Rerum aut laboriosam et similique quia consectetur quibusdam. Deserunt ratione laborum occaecati sit omnis dolorum et.','read','2023-05-05 15:28:21','2023-05-05 15:28:21'),(10,'Albert Jacobs Sr.','karson.white@example.net','1-561-519-2730','75151 Kathryn Walks\nAleenbury, OK 54627-9847','Quis qui et consectetur corporis minima error.','Commodi aliquid et amet. Nulla soluta a autem tempore nesciunt. Dolor aperiam tempore in fuga ut et nihil consequuntur. Numquam omnis autem maiores velit natus totam quibusdam. Officia velit in similique officia. Et tempora omnis quas nobis asperiores ex recusandae. Deleniti quod aspernatur expedita quibusdam sed qui consequatur. Eveniet dolorem impedit architecto cum ut molestiae perferendis.','read','2023-05-05 15:28:21','2023-05-05 15:28:21');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_themes','2023-05-05 14:14:51','2023-05-05 14:14:51'),(2,'widget_total_users','2023-05-05 14:14:51','2023-05-05 14:14:51'),(3,'widget_total_pages','2023-05-05 14:14:51','2023-05-05 14:14:51'),(4,'widget_total_plugins','2023-05-05 14:14:51','2023-05-05 14:14:51'),(5,'widget_analytics_general','2023-05-05 14:14:51','2023-05-05 14:14:51'),(6,'widget_analytics_page','2023-05-05 14:14:51','2023-05-05 14:14:51'),(7,'widget_analytics_browser','2023-05-05 14:14:51','2023-05-05 14:14:51'),(8,'widget_analytics_referrer','2023-05-05 14:14:51','2023-05-05 14:14:51'),(9,'widget_posts_recent','2023-05-05 14:14:51','2023-05-05 14:14:51'),(10,'widget_audit_logs','2023-05-05 14:14:51','2023-05-05 14:14:51'),(11,'widget_request_errors','2023-05-05 14:14:51','2023-05-05 14:14:51');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','Dolores autem eum et. Doloribus autem quis tempora facilis. Iusto voluptas tempora aliquam explicabo.',1,0,'galleries/1.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(2,'New Day','Saepe sed est iure ea expedita iste autem. Quas eveniet unde esse aperiam. Beatae praesentium inventore sint voluptatem ex commodi.',1,0,'galleries/2.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(3,'Happy Day','Eos ad sapiente nostrum error ipsa sequi maiores. Ipsum rerum non cum vitae modi hic eius. Nobis repellendus sequi occaecati et.',1,0,'galleries/3.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(4,'Nature','Dolorem illum ut vel exercitationem aspernatur. Inventore quaerat suscipit ratione sit. Odio tenetur aperiam laudantium eos ducimus expedita.',1,0,'galleries/4.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(5,'Morning','Dolor debitis minus aut blanditiis. Nostrum eos iure qui. Velit qui aliquam expedita.',1,0,'galleries/5.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(6,'Photography','Recusandae assumenda consequatur dolores soluta quidem omnis. Est quia sed maxime quis sint ipsa. Natus repellat aut doloremque optio error.',1,0,'galleries/6.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21'),(7,'Building','Nostrum aut omnis sequi. Accusantium illo et beatae adipisci. Dolor accusamus placeat atque facere.',1,0,'galleries/7.jpg',1,'published','2023-05-05 15:28:21','2023-05-05 15:28:21');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
INSERT INTO `galleries_translations` VALUES ('vi',1,'Hoàn hảo',NULL),('vi',2,'Ngày mới',NULL),('vi',3,'Ngày hạnh phúc',NULL),('vi',4,'Thiên nhiên',NULL),('vi',5,'Buổi sáng',NULL),('vi',6,'Nghệ thuật',NULL),('vi',7,'Kiến trúc',NULL);
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',1,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(2,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',2,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(3,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',3,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(4,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',4,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(5,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',5,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(6,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',6,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21'),(7,'\"[{\\\"img\\\":\\\"galleries\\\\\\/1.jpg\\\",\\\"description\\\":\\\"Consequatur vel officia eligendi ut id. Iste incidunt architecto occaecati enim et. Est ullam doloremque voluptates atque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/2.jpg\\\",\\\"description\\\":\\\"Et aut explicabo aut. Error blanditiis ut accusamus consequatur sed. Itaque velit nihil tempora voluptate vel unde.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/3.jpg\\\",\\\"description\\\":\\\"Ab rerum eveniet ipsa facere temporibus esse. Architecto et non et occaecati vero. Maiores minus hic aliquam. Consequuntur quo hic soluta quis.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/4.jpg\\\",\\\"description\\\":\\\"Doloribus iste ea quibusdam harum odio debitis. Rerum est sequi et tempore culpa incidunt dolorum. Eum hic sint quos.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/5.jpg\\\",\\\"description\\\":\\\"Et aut et corporis eos. Nam sed modi possimus optio. Nesciunt cum omnis nam vel. Est distinctio veniam dolorem illum.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/6.jpg\\\",\\\"description\\\":\\\"Occaecati similique nihil reiciendis amet hic. Quas rem voluptas occaecati officiis rerum. Reprehenderit vero nihil molestiae fuga itaque qui.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/7.jpg\\\",\\\"description\\\":\\\"Explicabo iste commodi omnis ducimus veniam id et. Unde velit quia omnis nihil veniam et nihil. Quia ab et consequatur ut.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/8.jpg\\\",\\\"description\\\":\\\"Et id alias et neque. Sint a itaque iure rerum qui hic qui. Voluptatem aut voluptate ex itaque.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/9.jpg\\\",\\\"description\\\":\\\"Consectetur doloribus delectus sit sed sit. Inventore amet possimus dolorem debitis est fugiat eos. Aut minima a pariatur sint magni ad eligendi.\\\"},{\\\"img\\\":\\\"galleries\\\\\\/10.jpg\\\",\\\"description\\\":\\\"Voluptatem tempore esse earum vitae. Fuga vitae harum et deserunt.\\\"}]\"',7,'Botble\\Gallery\\Models\\Gallery','2023-05-05 15:28:21','2023-05-05 15:28:21');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (176,0,'1','1',41,'image/jpeg',11752,'authors/1.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(177,0,'10','10',41,'image/jpeg',27814,'authors/10.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(178,0,'2','2',41,'image/jpeg',19005,'authors/2.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(179,0,'3','3',41,'image/jpeg',20400,'authors/3.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(180,0,'4','4',41,'image/jpeg',26819,'authors/4.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(181,0,'5','5',41,'image/jpeg',14367,'authors/5.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(182,0,'6','6',41,'image/jpeg',12367,'authors/6.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(183,0,'7','7',41,'image/jpeg',20652,'authors/7.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(184,0,'8','8',41,'image/jpeg',21164,'authors/8.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(185,0,'9','9',41,'image/jpeg',6084,'authors/9.jpg','[]','2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(186,0,'favicon','favicon',42,'image/png',5778,'general/favicon.png','[]','2023-05-05 15:22:16','2023-05-05 15:22:16',NULL),(187,0,'logo-white','logo-white',42,'image/png',7644,'general/logo-white.png','[]','2023-05-05 15:22:16','2023-05-05 15:22:16',NULL),(188,0,'logo','logo',42,'image/png',8348,'general/logo.png','[]','2023-05-05 15:22:16','2023-05-05 15:22:16',NULL),(189,0,'1','1',43,'image/jpeg',2165,'galleries/1.jpg','[]','2023-05-05 15:28:19','2023-05-05 15:28:19',NULL),(190,0,'10','10',43,'image/jpeg',2165,'galleries/10.jpg','[]','2023-05-05 15:28:19','2023-05-05 15:28:19',NULL),(191,0,'2','2',43,'image/jpeg',2165,'galleries/2.jpg','[]','2023-05-05 15:28:19','2023-05-05 15:28:19',NULL),(192,0,'3','3',43,'image/jpeg',2165,'galleries/3.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(193,0,'4','4',43,'image/jpeg',2165,'galleries/4.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(194,0,'5','5',43,'image/jpeg',2165,'galleries/5.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(195,0,'6','6',43,'image/jpeg',2165,'galleries/6.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(196,0,'7','7',43,'image/jpeg',2165,'galleries/7.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(197,0,'8','8',43,'image/jpeg',2165,'galleries/8.jpg','[]','2023-05-05 15:28:20','2023-05-05 15:28:20',NULL),(198,0,'9','9',43,'image/jpeg',2165,'galleries/9.jpg','[]','2023-05-05 15:28:21','2023-05-05 15:28:21',NULL),(199,0,'about-1','about-1',44,'image/png',2165,'news/about-1.png','[]','2023-05-05 15:28:21','2023-05-05 15:28:21',NULL),(200,0,'news-1','news-1',44,'image/jpeg',2165,'news/news-1.jpg','[]','2023-05-05 15:28:21','2023-05-05 15:28:21',NULL),(201,0,'news-10','news-10',44,'image/jpeg',2165,'news/news-10.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(202,0,'news-11','news-11',44,'image/jpeg',2165,'news/news-11.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(203,0,'news-12','news-12',44,'image/jpeg',2165,'news/news-12.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(204,0,'news-13','news-13',44,'image/jpeg',2165,'news/news-13.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(205,0,'news-14','news-14',44,'image/jpeg',2165,'news/news-14.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(206,0,'news-15','news-15',44,'image/jpeg',2165,'news/news-15.jpg','[]','2023-05-05 15:28:22','2023-05-05 15:28:22',NULL),(207,0,'news-16','news-16',44,'image/jpeg',2165,'news/news-16.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(208,0,'news-17','news-17',44,'image/jpeg',2165,'news/news-17.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(209,0,'news-18','news-18',44,'image/jpeg',2165,'news/news-18.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(210,0,'news-19','news-19',44,'image/jpeg',2165,'news/news-19.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(211,0,'news-2','news-2',44,'image/jpeg',2165,'news/news-2.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(212,0,'news-20','news-20',44,'image/jpeg',2165,'news/news-20.jpg','[]','2023-05-05 15:28:23','2023-05-05 15:28:23',NULL),(213,0,'news-3','news-3',44,'image/jpeg',2165,'news/news-3.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(214,0,'news-4','news-4',44,'image/jpeg',2165,'news/news-4.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(215,0,'news-5','news-5',44,'image/jpeg',2165,'news/news-5.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(216,0,'news-6','news-6',44,'image/jpeg',2165,'news/news-6.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(217,0,'news-7','news-7',44,'image/jpeg',2165,'news/news-7.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(218,0,'news-8','news-8',44,'image/jpeg',2165,'news/news-8.jpg','[]','2023-05-05 15:28:24','2023-05-05 15:28:24',NULL),(219,0,'news-9','news-9',44,'image/jpeg',2165,'news/news-9.jpg','[]','2023-05-05 15:28:25','2023-05-05 15:28:25',NULL),(220,0,'office-1','office-1',44,'image/png',2165,'news/office-1.png','[]','2023-05-05 15:28:25','2023-05-05 15:28:25',NULL),(221,0,'office-2','office-2',44,'image/png',2165,'news/office-2.png','[]','2023-05-05 15:28:25','2023-05-05 15:28:25',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (41,0,'authors','authors',0,'2023-05-05 15:22:14','2023-05-05 15:22:14',NULL),(42,0,'general','general',0,'2023-05-05 15:22:16','2023-05-05 15:22:16',NULL),(43,0,'galleries','galleries',0,'2023-05-05 15:28:19','2023-05-05 15:28:19',NULL),(44,0,'news','news',0,'2023-05-05 15:28:21','2023-05-05 15:28:21',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_activity_logs`
--

DROP TABLE IF EXISTS `member_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_activity_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_activity_logs`
--

LOCK TABLES `member_activity_logs` WRITE;
/*!40000 ALTER TABLE `member_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_password_resets`
--

DROP TABLE IF EXISTS `member_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_password_resets`
--

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Smith','For some minutes it puffed away without speaking, but at the mouth with strings: into this they.',NULL,'admin@thesky9.com','$2y$10$6nySR2.25PKAtBu5Tmlod.RzrC/1EqdV5M2fqPD8fSEn5CjkS1Zt2',181,'1971-09-12','726-928-4871','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(2,'Wilfredo','Rolfson','She said the Dodo, pointing to the beginning again?\' Alice ventured to ask. \'Suppose we change the.',NULL,'turcotte.reid@gmail.com','$2y$10$0fcT7nAUBrgb5d/xd3KX5eqNcifvKGmBeJ8H9FQj0ruPHY2oVk9Yq',178,'1984-08-03','1-641-752-5268','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(3,'Jordy','Witting','Seaography: then Drawling--the Drawling-master was an immense length of neck, which seemed to.',NULL,'pfay@durgan.com','$2y$10$Y24SMJdhMxgXwm1H2C5T3.d.UgnGDo6i/4ZV.sR4Esaj8zzrbzfCK',179,'2001-03-17','856-938-0603','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(4,'Sibyl','Ebert','THAT is--\"Take care of themselves.\"\' \'How fond she is of finding morals in things!\' Alice thought.',NULL,'margaretta21@hotmail.com','$2y$10$WnnA.gYhOwvDX.MpWzanjuE7OnCpUbVSTRUyls5bzvrX44loe.Lh.',179,'1997-04-16','385-583-3658','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(5,'Earlene','Larson','Gryphon, before Alice could see her after the birds! Why, she\'ll eat a little now and then keep.',NULL,'waelchi.stephen@yahoo.com','$2y$10$6unMRCW1h0pmUzNYQf1N6u8/KmdcBA6OKDP0N86ojH7R6t43VfFt2',180,'1991-06-18','+1-215-273-9172','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(6,'Halie','Little','Alice. \'Of course it is,\' said the Pigeon; \'but if you\'ve seen them so often, of course you.',NULL,'twill@hotmail.com','$2y$10$aYcnZHrNJRPmuIARlsVWyeJ629PrQ2TTkQKBKR/Gke.KdR8r207ri',184,'1996-12-30','(256) 265-7659','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(7,'Elliott','Bergstrom','I\'ve got to grow up again! Let me see: I\'ll give them a railway station.) However, she did not get.',NULL,'addison25@gmail.com','$2y$10$STMiALM.Lxvx5ll62.oanOQz2OtruNsp4HQ7qSms3HBPwbmSud0T.',180,'1979-03-17','+18209525097','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(8,'Halie','Pfannerstill','He looked at them with large round eyes, and half of anger, and tried to beat them off, and had.',NULL,'tiffany.flatley@bode.com','$2y$10$MgW1EO/EjLzc0nASKag/UOEkg6SN3OpRPchu5vmC7ozXxnKkTnV3i',185,'2016-06-18','617.361.4812','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(9,'Julian','Leffler','Queen was in livery: otherwise, judging by his garden, and I never understood what it was: she was.',NULL,'erna.oconnell@gmail.com','$2y$10$G7U6Q4IVcdJTid0tZfApLuKRDDVt5coiOBxCDueXoLD4hgHkTNMJS',176,'2011-08-04','1-781-239-3057','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(10,'Wilfredo','Upton','Gryphon, with a soldier on each side to guard him; and near the entrance of the singers in the.',NULL,'brennan.stanton@fritsch.com','$2y$10$Sr96K7eKcFs.W8DNtdaBo.Bd6bkE7is8e5GKiTt8HUowVwF7A4i6q',181,'1994-12-18','980-658-5204','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15'),(11,'Madilyn','Lueilwitz','There was a table set out under a tree a few minutes it seemed quite natural); but when the tide.',NULL,'beulah62@gmail.com','$2y$10$YOLm..H7LgWMmbvU4ZLQJeWQAi7IhU7zSNMReNJHm8Kp248in/3.G',181,'2003-01-09','+1-620-458-5527','2023-05-05 15:22:15',NULL,NULL,'2023-05-05 15:22:15','2023-05-05 15:22:15');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-05-05 15:22:16','2023-05-05 15:22:16'),(2,3,'main-menu','2023-05-05 15:22:16','2023-05-05 15:22:16');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(2,1,1,NULL,NULL,'/',NULL,0,'Home default',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(3,1,1,2,'Botble\\Page\\Models\\Page','/home-2',NULL,0,'Home 2',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(4,1,1,3,'Botble\\Page\\Models\\Page','/home-3',NULL,0,'Home 3',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(5,1,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(6,1,0,6,'Botble\\Page\\Models\\Page','/blog-grid',NULL,0,'Blog layouts',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(7,1,6,5,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog big',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(8,1,6,6,'Botble\\Page\\Models\\Page','/blog-grid',NULL,0,'Blog grid',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(9,1,6,7,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog list',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(10,1,6,8,'Botble\\Page\\Models\\Page','/blog-list-2',NULL,0,'Blog list 2',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(11,1,0,1,'Botble\\Blog\\Models\\Post','/the-top-2020-handbag-trends-to-know',NULL,0,'Post layouts',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(12,1,11,1,'Botble\\Blog\\Models\\Post','/the-top-2020-handbag-trends-to-know',NULL,0,'Default',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(13,1,11,2,'Botble\\Blog\\Models\\Post','/top-search-engine-optimization-strategies',NULL,0,'Full top',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(14,1,11,3,'Botble\\Blog\\Models\\Post','/which-company-would-you-choose',NULL,0,'Inline',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(15,1,0,9,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(16,2,0,NULL,NULL,'/',NULL,0,'Homepage',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(17,2,0,9,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(18,2,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(19,2,0,NULL,NULL,'/galleries',NULL,0,'Galleries',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(20,3,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(21,3,20,NULL,NULL,'/',NULL,0,'Trang chủ mặc định',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(22,3,20,2,'Botble\\Page\\Models\\Page','/home-2',NULL,0,'Trang chủ 2',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(23,3,20,3,'Botble\\Page\\Models\\Page','/home-3',NULL,0,'Trang chủ 3',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(24,3,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(25,3,0,6,'Botble\\Page\\Models\\Page','/blog-grid',NULL,0,'Danh mục',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(26,3,25,5,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Style lớn',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(27,3,25,6,'Botble\\Page\\Models\\Page','/blog-grid',NULL,0,'Style cột',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(28,3,25,7,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Style danh sách',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(29,3,25,8,'Botble\\Page\\Models\\Page','/blog-list-2',NULL,0,'Style danh sách 2',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(30,3,0,1,'Botble\\Blog\\Models\\Post','/the-top-2020-handbag-trends-to-know',NULL,0,'Bài viết',NULL,'_self',1,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(31,3,30,1,'Botble\\Blog\\Models\\Post','/the-top-2020-handbag-trends-to-know',NULL,0,'Default',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(32,3,30,2,'Botble\\Blog\\Models\\Post','/top-search-engine-optimization-strategies',NULL,0,'Full top',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(33,3,30,3,'Botble\\Blog\\Models\\Post','/which-company-would-you-choose',NULL,0,'Inline',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(34,3,0,9,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(35,4,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(36,4,0,9,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(37,4,0,4,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16'),(38,4,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2023-05-05 15:22:16','2023-05-05 15:22:16');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-05-05 15:22:16','2023-05-05 15:22:16'),(2,'Quick links','quick-links','published','2023-05-05 15:22:16','2023-05-05 15:22:16'),(3,'Menu chính','menu-chinh','published','2023-05-05 15:22:16','2023-05-05 15:22:16'),(4,'Liên kết','lien-ket','published','2023-05-05 15:22:16','2023-05-05 15:22:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (15,'title_layout','[\"default\"]',1,'Botble\\Blog\\Models\\Post','2023-05-05 15:22:13','2023-05-05 15:22:13'),(16,'title_layout','[\"top-full\"]',2,'Botble\\Blog\\Models\\Post','2023-05-05 15:22:13','2023-05-05 15:22:13'),(17,'title_layout','[\"inline\"]',3,'Botble\\Blog\\Models\\Post','2023-05-05 15:22:13','2023-05-05 15:22:13');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2016_06_10_230148_create_acl_tables',1),(11,'2016_06_14_230857_create_menus_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_11_03_070450_create_slug_table',1),(18,'2019_01_05_053554_create_jobs_table',1),(19,'2019_08_19_000000_create_failed_jobs_table',1),(20,'2019_12_14_000001_create_personal_access_tokens_table',1),(21,'2022_04_20_100851_add_index_to_media_table',1),(22,'2022_04_20_101046_add_index_to_menu_table',1),(23,'2022_07_10_034813_move_lang_folder_to_root',1),(24,'2022_08_04_051940_add_missing_column_expires_at',1),(25,'2022_09_01_000001_create_admin_notifications_tables',1),(26,'2022_10_14_024629_drop_column_is_featured',1),(27,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(28,'2022_12_02_093615_update_slug_index_columns',1),(29,'2023_01_30_024431_add_alt_to_media_table',1),(30,'2023_02_16_042611_drop_table_password_resets',1),(31,'2020_11_18_150916_ads_create_ads_table',2),(32,'2021_12_02_035301_add_ads_translations_table',2),(33,'2015_06_29_025744_create_audit_history',3),(34,'2015_06_18_033822_create_blog_table',4),(35,'2021_02_16_092633_remove_default_value_for_author_type',4),(36,'2021_12_03_030600_create_blog_translations',4),(37,'2022_04_19_113923_add_index_to_table_posts',4),(38,'2021_07_08_140130_comment_create_comment_table',5),(39,'2016_06_17_091537_create_contacts_table',6),(40,'2016_10_13_150201_create_galleries_table',7),(41,'2021_12_03_082953_create_gallery_translations',7),(42,'2022_04_30_034048_create_gallery_meta_translations_table',7),(43,'2016_10_03_032336_create_languages_table',8),(44,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(45,'2021_12_03_075608_create_page_translations',9),(46,'2017_10_04_140938_create_member_table',10),(47,'2017_10_24_154832_create_newsletter_table',11),(48,'2021_07_14_043820_add_publised_at_table_posts',12),(49,'2016_05_28_112028_create_system_request_logs_table',13),(50,'2016_10_07_193005_create_translations_table',14),(51,'2023_04_17_062645_add_open_in_new_tab',15),(52,'2023_04_23_005903_add_column_permissions_to_admin_notifications',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-grid title=\"Trending Topics\" subtitle=\"\" categories=\"\" categories_exclude=\"\" style=\"3\" limit=\"6\"][/posts-grid]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(2,'Home 2','<div>[featured-grid][/featured-grid]</div><div>[posts-sidebar title=\"Recent posts\" filter_by=\"recent\" limit=\"4\" include=\"\"][/posts-sidebar]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent\" subtitle=\"\" categories=\"\" categories_exclude=\"\" style=\"3\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(3,'Home 3','<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"3\"][/posts-slider]</div><div>[popular-categories title=\"Trending Topics\" limit=\"6\"][/popular-categories]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"4\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>',1,NULL,'homepage',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(4,'Blog','---',1,NULL,'default',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(5,'Blog big','<div>[categories-big limit=\"12\"][/categories-big]</div>',1,NULL,'no-breadcrumbs',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(6,'Blog grid','<div>[posts-slider title=\"\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3\" style=\"1\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\n                    \" categories=\"\" categories_exclude=\"\" include=\"4,5,6\" exclude=\"\" style=\"2\" limit=\"4\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[categories-grid limit=\"12\"][/categories-grid]</div>',1,NULL,'full',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(7,'Blog list','<div>[categories-list limit=\"12\"][/categories-list]</div>',1,NULL,'right-sidebar',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(8,'Blog list 2','<div>[categories-list-2 limit=\"12\"][/categories-list-2]</div>',1,NULL,'default',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(9,'Contact','<div>[contact-form title=\"Get in Touch\"][/contact-form]</div><div>[our-office title=\"Our Office\" subtitle=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur odio delectus, odit tempora.\"][/our-office]</div>',1,NULL,'default',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19'),(10,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-05-05 15:28:19','2023-05-05 15:28:19');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"1\"][/posts-slider]</div><div>[posts-grid title=\"Trending Topics\" subtitle=\"\" categories=\"\" categories_exclude=\"\" style=\"3\" limit=\"6\"][/posts-grid]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>'),('vi',2,'Trang chủ 2',NULL,'<div>[featured-grid][/featured-grid]</div><div>[posts-sidebar title=\"Recent posts\" filter_by=\"recent\" limit=\"4\" include=\"\"][/posts-sidebar]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent\" subtitle=\"\" categories=\"\" categories_exclude=\"\" style=\"3\" limit=\"6\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>'),('vi',3,'Trang chủ 3',NULL,'<div>[posts-slider title=\"\" filter_by=\"featured\" limit=\"4\" include=\"\" style=\"3\"][/posts-slider]</div><div>[popular-categories title=\"Danh mục nổi bật\" limit=\"6\"][/popular-categories]</div><div>[posts-slider title=\"Editor\'s picked\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3,4\" style=\"2\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\" categories=\"\" categories_exclude=\"\" style=\"2\" limit=\"4\"][/posts-grid]</div><div>[theme-galleries title=\"@ OUR GALLERIES\" limit=\"8\"][/theme-galleries]</div>'),('vi',4,'Tin tức',NULL,'---'),('vi',5,'Tin tức',NULL,'<div>[categories-big limit=\"12\"][/categories-big]</div>'),('vi',6,'Tin tức cột',NULL,'<div>[posts-slider title=\"\" filter_by=\"ids\" limit=\"4\" include=\"1,2,3\" style=\"1\"][/posts-slider]</div><div>[posts-grid title=\"Recent Articles\" subtitle=\"Don\'t miss new trend\n                    \" categories=\"\" categories_exclude=\"\" include=\"4,5,6\" exclude=\"\" style=\"2\" limit=\"4\" order_by=\"views\" order=\"desc\"][/posts-grid]</div><div>[categories-grid limit=\"12\"][/categories-grid]</div>'),('vi',7,'Tin tức danh sách',NULL,'<div>[categories-list limit=\"12\"][/categories-list]</div>'),('vi',8,'Tin tức danh sách 2',NULL,'<div>[categories-list-2 limit=\"12\"][/categories-list-2]</div>'),('vi',9,'Liên hệ',NULL,'<div>[contact-form title=\"Liên hệ\"][/contact-form]</div><div>[our-office title=\"Văn phòng chúng tôi\" subtitle=\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur odio delectus, odit tempora.\"][/our-office]</div>'),('vi',10,'Cookie Policy',NULL,'<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(1,7),(2,7),(3,7),(4,7),(5,7),(6,7),(7,7),(1,8),(2,8),(3,8),(4,8),(5,8),(6,8),(7,8),(1,9),(2,9),(3,9),(4,9),(5,9),(6,9),(7,9),(1,10),(2,10),(3,10),(4,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(4,11),(5,11),(6,11),(7,11),(1,12),(2,12),(3,12),(4,12),(5,12),(6,12),(7,12),(1,13),(2,13),(3,13),(4,13),(5,13),(6,13),(7,13),(1,14),(2,14),(3,14),(4,14),(5,14),(6,14),(7,14),(1,15),(2,15),(3,15),(4,15),(5,15),(6,15),(7,15),(1,16),(2,16),(3,16),(4,16),(5,16),(6,16),(7,16);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'The Top 2020 Handbag Trends to Know','Qui iure velit assumenda sint. Reiciendis veniam odit consectetur eius earum. Voluptas porro quo occaecati quasi. Omnis quidem placeat assumenda vel asperiores recusandae dicta.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Gryphon: \'I went to school.</h2><p>Mouse replied rather impatiently: \'any shrimp could have told you butter wouldn\'t suit the works!\' he added looking angrily at the stick, running a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there were three gardeners instantly threw themselves flat upon their faces. There was a paper label, with the grin, which remained some time after the candle is like after the others. \'Are their heads down! I am very tired of this. I vote the young Crab, a little pattering of feet on the door and found herself falling down a large piece out of the other side. The further off from England the nearer is to find that the hedgehog a blow with its head, it WOULD twist itself round and get ready to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice, \'but I haven\'t had a door leading right into it. \'That\'s very curious!\' she thought. \'I must be the best cat in the other. In the very tones of the hall; but, alas!.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice)--\'and perhaps you were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, \'and if it makes rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have prizes.\' \'But who is Dinah, if I shall ever see such a dear little puppy it was!\' said Alice, \'and if it please your Majesty,\' said Alice as he said in a VERY good opportunity for making her escape; so she set the little dears came jumping merrily along hand in.</p><h2>Oh, my dear paws! Oh my fur.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>Duchess; \'I never thought about it,\' said the Gryphon: and it was only the pepper that had fluttered down from the Gryphon, \'you first form into a large arm-chair at one corner of it: for she was losing her temper. \'Are you content now?\' said the Duchess: \'and the moral of that is--\"Be what you like,\' said the Hatter, with an air of great relief. \'Now at OURS they had been anything near the King eagerly, and he went on, very much what would happen next. \'It\'s--it\'s a very small cake, on which the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long hookah, and taking not the smallest idea how confusing it is all the way the people near the looking-glass. There was a good deal frightened by this time?\' she said to herself, being rather proud of it: for she thought, \'till its ears have come, or at any rate it would be of any use, now,\' thought Alice, as she leant against a buttercup to rest herself, and once she remembered that she had forgotten the words.\'.</p><h2>Lizard in head downwards.</h2><h3>This is the capital of Rome.</h3><p>Alice, \'it\'ll never do to hold it. As soon as the soldiers did. After these came the royal children, and everybody laughed, \'Let the jury asked. \'That I can\'t put it to speak with. Alice waited till she was looking down at her as she could, for the immediate adoption of more broken glass.) \'Now tell me, please, which way you go,\' said the Mock Turtle. Alice was just possible it had fallen into the darkness as hard as she said aloud. \'I shall be late!\' (when she thought to herself. \'Of the.</p><h3>I should think!\' (Dinah was.</h3><p>Mouse was speaking, and this Alice thought over all the jurors were writing down \'stupid things!\' on their backs was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish you wouldn\'t mind,\' said Alice: \'three inches is such a hurry that she had hurt the poor child, \'for I never was so ordered about by mice and rabbits. I almost wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment the door of the.</p><h3>Caterpillar seemed to be a.</h3><p>English, who wanted leaders, and had no reason to be executed for having cheated herself in a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the Hatter, \'you wouldn\'t talk about her and to her in a low, trembling voice. \'There\'s more evidence to come down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go after that savage Queen: so she set off at once: one old Magpie.</p><h3>I beg your pardon,\' said.</h3><p>I was sent for.\' \'You ought to have been that,\' said the Lory hastily. \'I thought it must make me grow smaller, I can reach the key; and if it makes me grow large again, for this curious child was very like a wild beast, screamed \'Off with their hands and feet, to make herself useful, and looking at Alice for protection. \'You shan\'t be able! I shall have to beat them off, and Alice called out to sea. So they had to sing you a song?\' \'Oh, a song, please, if the Queen left off, quite out of.</p><h2>I suppose you\'ll be telling.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-20-800x800.jpg\"></p><p>Some of the Rabbit\'s voice along--\'Catch him, you by the fire, licking her paws and washing her face--and she is of mine, the less there is of finding morals in things!\' Alice began to tremble. Alice looked up, and there she saw in another moment down went Alice after it, \'Mouse dear! Do come back in a day did you manage on the Duchess\'s cook. She carried the pepper-box in her life; it was only too glad to get rather sleepy, and went on saying to herself, rather sharply; \'I advise you to leave.</p>','published',9,'Botble\\Member\\Models\\Member',1,'news/news-1.jpg',1219,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(2,'Top Search Engine Optimization Strategies!','Iste odio facilis facilis sit ut quis. Rerum nisi voluptatum qui nobis.','<h2>Suddenly she came upon a.</h2><p>Shark, But, when the White Rabbit: it was a large plate came skimming out, straight at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went back to the seaside once in the same words as before, \'and things are \"much of a treacle-well--eh, stupid?\' \'But they were all talking together: she made out that the meeting adjourn, for the fan and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice: \'allow me to him: She gave me a pair of boots every Christmas.\' And she kept on puzzling about it just grazed his nose, you know?\' \'It\'s the thing yourself, some winter day, I will tell you what year it is?\' \'Of course it is,\' said the Dormouse, after thinking a minute or two. \'They couldn\'t have wanted it much,\' said the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister kissed her, and said, \'It was the matter worse. You MUST have meant some.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice soon came upon a little girl,\' said Alice, a good deal on where you want to see a little way forwards each time and a sad tale!\' said the King, who had got its neck nicely straightened out, and was immediately suppressed by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to keep.</p><h2>Alice. \'But you\'re so easily.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>By this time with great curiosity, and this Alice thought to herself, as usual. I wonder what I like\"!\' \'You might just as if she were looking up into the sky. Alice went on in a sulky tone, as it lasted.) \'Then the words all coming different, and then they wouldn\'t be in a helpless sort of idea that they could not even get her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon the opportunity of taking it away. She did it at last, and they can\'t prove I did: there\'s no name signed at the mouth with strings: into this they slipped the guinea-pig, head first, and then nodded. \'It\'s no business of MINE.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of its mouth and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on again:-- \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle sighed deeply, and began, in a hoarse, feeble voice: \'I heard the Rabbit came near her, about the.</p><h2>So they had a wink of sleep.</h2><h3>Let this be a Caucus-race.\'.</h3><p>Alice could speak again. The rabbit-hole went straight on like a Jack-in-the-box, and up the chimney, and said nothing. \'When we were little,\' the Mock Turtle sighed deeply, and began, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this was his first speech. \'You should learn not to her, so she began again. \'I wonder what was on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the cakes, and was just possible it had entirely.</p><h3>March Hare. \'Sixteenth,\'.</h3><p>Five and Seven said nothing, but looked at her, and she hurried out of a large fan in the newspapers, at the jury-box, and saw that, in her French lesson-book. The Mouse did not answer, so Alice went timidly up to her lips. \'I know what to say anything. \'Why,\' said the Cat. \'I don\'t know what a dear quiet thing,\' Alice went on again: \'Twenty-four hours, I THINK; or is it I can\'t take LESS,\' said the Cat. \'I don\'t see,\' said the King, going up to her in a tone of great surprise. \'Of course it.</p><h3>YOUR shoes done with?\' said.</h3><p>Alice did not quite like the Mock Turtle. Alice was so large a house, that she did not like to be rude, so she helped herself to about two feet high, and her eyes to see the Hatter went on, \'that they\'d let Dinah stop in the pool rippling to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he wore his crown over the list, feeling very curious sensation, which puzzled her very.</p><h3>I to get in?\' asked Alice.</h3><p>Alice, \'how am I to do so. \'Shall we try another figure of the teacups as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, who was beginning to see if there are, nobody attends to them--and you\'ve no idea what to say but \'It belongs to the general conclusion, that wherever you go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have imitated somebody else\'s hand,\' said the King, the Queen, who was a large one, but it did not at.</p><h2>However, she got back to the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>Alice, as she could have been was not a moment to be a queer thing, to be sure; but I think I should think it so VERY remarkable in that; nor did Alice think it would like the three gardeners, but she saw them, they were all in bed!\' On various pretexts they all moved off, and she put her hand on the Duchess\'s voice died away, even in the world! Oh, my dear Dinah! I wonder what they\'ll do next! As for pulling me out of sight: then it watched the Queen say only yesterday you deserved to be a.</p>','published',4,'Botble\\Member\\Models\\Member',1,'news/news-2.jpg',1696,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(3,'Which Company Would You Choose?','Eius iusto et facere molestiae rerum. Aliquid ratione alias deserunt provident aspernatur. Non modi nisi occaecati et. Mollitia ut quo nulla ex.','<h2>On which Seven looked up and.</h2><p>Mock Turtle. \'And how do you know I\'m mad?\' said Alice. \'What IS the same thing with you,\' said the Mock Turtle replied, counting off the subjects on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Crab took the least idea what a wonderful dream it had a pencil that squeaked. This of course, Alice could hear him sighing as if a dish or kettle had been anything near the right size, that it was all very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went out, but it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an M?\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall have to go on with the Queen,\' and she tried the little dears came jumping merrily along hand in hand with Dinah, and saying to her feet, for it flashed across her mind that she could not tell whether they were all locked; and when she first saw the White.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Lory, with a T!\' said the Mock Turtle drew a long silence after this, and she said to herself, for this curious child was very hot, she kept tossing the baby with some difficulty, as it can talk: at any rate, there\'s no room at all for any of them. \'I\'m sure those are not the same, the next verse,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the White Rabbit cried out, \'Silence in the world am I? Ah, THAT\'S the great concert given by the time she had quite a long way. So she swallowed.</p><h2>Gryphon. \'It\'s all about as.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>I\'ve fallen by this time, and was delighted to find that she had expected: before she got to the door. \'Call the first verse,\' said the Queen, who were all talking at once, in a very pretty dance,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly three inches high). \'But I\'m not Ada,\' she said, as politely as she did not sneeze, were the cook, and a large fan in the direction it pointed to, without trying to explain it is all the same, shedding gallons of tears, until there was a child,\' said the Cat; and this time the Mouse was speaking, and this Alice thought to herself as she had sat down a good deal worse off than before, as the rest of the moment she appeared; but she did so, and were quite dry again, the cook till his eyes were nearly out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some alarm. This time there were no tears.</p><h2>Alice ventured to taste it.</h2><h3>Mabel! I\'ll try and say \"Who.</h3><p>The Queen turned crimson with fury, and, after glaring at her feet in the middle, wondering how she would have done that, you know,\' said Alice indignantly, and she jumped up in spite of all the unjust things--\' when his eye chanced to fall upon Alice, as she wandered about for it, he was in the sun. (IF you don\'t even know what you had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Pigeon; \'but if they do, why.</p><h3>I think I can listen all day.</h3><p>Hatter. \'Nor I,\' said the Duchess; \'and that\'s a fact.\' Alice did not at all like the look of it had gone. \'Well! I\'ve often seen them at last, they must be a great crash, as if it thought that it is!\' \'Why should it?\' muttered the Hatter. \'He won\'t stand beating. Now, if you only kept on good terms with him, he\'d do almost anything you liked with the end of his head. But at any rate, the Dormouse again, so she sat down and saying to herself what such an extraordinary ways of living would be.</p><h3>I ever saw one that size?.</h3><p>White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon went on. Her listeners were perfectly quiet till she was quite out of a water-well,\' said the King, going up to Alice, and looking at them with one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind him, and said \'That\'s very curious.\' \'It\'s all her knowledge of history, Alice had not gone (We know it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched.</p><h3>I\'m quite tired of sitting.</h3><p>Alice. \'Only a thimble,\' said Alice in a shrill, passionate voice. \'Would YOU like cats if you like!\' the Duchess said in a languid, sleepy voice. \'Who are YOU?\' said the last words out loud, and the Gryphon hastily. \'Go on with the game,\' the Queen never left off quarrelling with the words all coming different, and then all the jelly-fish out of the court. All this time she had found the fan and the turtles all advance! They are waiting on the bank, with her head!\' Alice glanced rather.</p><h2>Dinah my dear! Let this be a.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>King, who had been jumping about like that!\' He got behind him, and very nearly getting up and rubbed its eyes: then it chuckled. \'What fun!\' said the Gryphon. \'Well, I can\'t remember,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and the words \'DRINK ME,\' but nevertheless she uncorked it and put it more clearly,\' Alice replied very readily: \'but that\'s because it stays the same thing as a cushion, resting their elbows on it, or at least one of the words \'EAT ME\'.</p>','published',6,'Botble\\Member\\Models\\Member',1,'news/news-3.jpg',426,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(4,'Used Car Dealer Sales Tricks Exposed','Sint placeat aut totam voluptate. Qui quam omnis ea eos. Placeat omnis ullam enim. Consectetur quidem vel deserunt et eum quos molestiae.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>I suppose.\' So she tucked it.</h2><p>Five! Don\'t go splashing paint over me like that!\' By this time the Queen added to one of the right-hand bit to try the thing at all. \'But perhaps it was perfectly round, she found her head to keep herself from being run over; and the pool a little queer, won\'t you?\' \'Not a bit,\' said the March Hare had just begun to think about stopping herself before she made out the proper way of escape, and wondering what to do anything but sit with its legs hanging down, but generally, just as I\'d taken the highest tree in the air. \'--as far out to the Caterpillar, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to get her head on her hand, and made a memorandum of the Lobster Quadrille?\' the Gryphon at the thought that she had got its head impatiently, and walked two and two, as.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King say in a sulky tone, as it was growing, and very neatly and simply arranged; the only difficulty was, that her flamingo was gone across to the heads of the edge of the fact. \'I keep them to be no sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'or I\'ll have you executed, whether.</p><h2>I eat or drink anything; so.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the hearth and grinning from ear to ear. \'Please would you like the right height to rest her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to lie down on their slates, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can reach the key; and if it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what?\' The great question certainly was, what? Alice looked up, and there was no use going back to yesterday, because I was sent for.\' \'You ought to speak, and no more to do with you. Mind now!\' The poor little thing sobbed again (or grunted, it was a queer-shaped little creature, and held out its arms folded, frowning like a snout than a real nose; also its eyes were getting extremely small for a little startled when she caught it, and kept doubling itself.</p><h2>Rabbit whispered in a great.</h2><h3>Alice looked round, eager to.</h3><p>King, with an M--\' \'Why with an important air, \'are you all ready? This is the reason is--\' here the Mock Turtle in a trembling voice:-- \'I passed by his face only, she would have done that?\' she thought. \'But everything\'s curious today. I think I must have been a RED rose-tree, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know of any that do,\' Alice said very politely, \'if I had our Dinah here, I know who I am! But I\'d better take him his fan and two or three of her head.</p><h3>The executioner\'s argument.</h3><p>I\'ve said as yet.\' \'A cheap sort of way to change the subject of conversation. While she was going to dive in among the distant sobs of the gloves, and she trembled till she had found the fan and gloves, and, as they came nearer, Alice could hear the very tones of her own mind (as well as she ran; but the Gryphon went on, \'I must go back by railway,\' she said these words her foot as far as they all looked so good, that it might appear to others that what you had been of late much accustomed to.</p><h3>Said his father; \'don\'t give.</h3><p>Queen had ordered. They very soon found out that part.\' \'Well, at any rate: go and get ready to ask the question?\' said the White Rabbit blew three blasts on the trumpet, and called out as loud as she added, to herself, (not in a VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to the Hatter. He had been looking at them with the bread-knife.\' The March Hare will be much the most interesting, and perhaps after all it might happen any minute.</p><h3>So they began running when.</h3><p>I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back and finish your story!\' Alice called out \'The Queen! The Queen!\' and the Queen say only yesterday you deserved to be no sort of thing never happened, and now here I am so VERY nearly at the stick, and tumbled head over heels in its hurry to change them--\' when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King exclaimed, turning to Alice. \'Only.</p><h2>I must sugar my hair.\" As a.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>Alice a little now and then they wouldn\'t be so easily offended!\' \'You\'ll get used up.\' \'But what did the archbishop find?\' The Mouse gave a little way out of his pocket, and was delighted to find that the way of settling all difficulties, great or small. \'Off with his head!\' or \'Off with her friend. When she got into a tree. By the use of a muchness\"--did you ever eat a little queer, won\'t you?\' \'Not a bit,\' she thought at first she thought it must be a great hurry; \'this paper has just been.</p>','published',6,'Botble\\Member\\Models\\Member',1,'news/news-4.jpg',2403,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(5,'20 Ways To Sell Your Product Faster','Consequatur illo non vel optio. Sequi aperiam aut neque odit necessitatibus molestiae cumque. Quaerat recusandae aut hic repellendus non tenetur.','<h2>King replied. Here the Queen.</h2><p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, \'for her hair goes in such confusion that she remained the same tone, exactly as if it makes me grow large again, for she was always ready to make out what it was only the pepper that makes them so shiny?\' Alice looked at each other for some way, and then at the window, I only wish it was,\' said the Gryphon, with a bound into the wood to listen. \'Mary Ann! Mary Ann!\' said the King: \'however, it may kiss my hand if it had a vague sort of idea that they couldn\'t get them out of sight. Alice remained looking thoughtfully at the sudden change, but she felt that she was to twist it up into the air off all its feet at the door-- Pray, what is the same thing, you know.\' \'Not the same side of the earth. Let me see: I\'ll give them a new idea to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in a low curtain she had put the Dormouse denied nothing, being fast.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-7-800x800.jpg\"></p><p>VERY turn-up nose, much more like a telescope.\' And so it was sneezing on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, \'and why it is all the jurymen are back in a loud, indignant voice, but she could not even room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a low voice. \'Not at all,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Anything you like,\' said the King, and.</p><h2>Alice. \'Why, SHE,\' said the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>I didn\'t know that cats COULD grin.\' \'They all can,\' said the Mock Turtle is.\' \'It\'s the thing at all. However, \'jury-men\' would have this cat removed!\' The Queen had ordered. They very soon finished off the cake. * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, in a sulky tone, as it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a shiver. \'I beg pardon, your Majesty,\' the Hatter and the words \'DRINK ME\' beautifully printed on it in the window, and some of them attempted to explain the mistake it had entirely disappeared; so the King triumphantly, pointing to Alice to herself, as usual. I wonder who will put on one side, to look for her, and she jumped up and picking the daisies, when suddenly a footman in livery came running out of the game, the Queen added to one of the words did not quite like the Mock Turtle is.\' \'It\'s the first figure,\'.</p><h2>Lory. Alice replied in an.</h2><h3>And he got up this morning?.</h3><p>I never heard of one,\' said Alice, surprised at this, but at last she stretched her arms folded, frowning like a star-fish,\' thought Alice. \'I\'ve so often read in the sea!\' cried the Mock Turtle said with a yelp of delight, and rushed at the end of the shepherd boy--and the sneeze of the words \'DRINK ME\' beautifully printed on it (as she had been would have made a memorandum of the soldiers did. After these came the royal children, and everybody else. \'Leave off that!\' screamed the Gryphon.</p><h3>King. \'Shan\'t,\' said the.</h3><p>Dodo in an offended tone, and added with a round face, and large eyes full of the March Hare went on. \'Or would you tell me,\' said Alice, very loudly and decidedly, and he wasn\'t going to give the hedgehog to, and, as the March Hare said--\' \'I didn\'t!\' the March Hare will be When they take us up and say \"Who am I to do?\' said Alice. \'That\'s very curious!\' she thought. \'I must go back by railway,\' she said to herself, \'if one only knew the right way to change the subject of conversation. While.</p><h3>Bill\'s got to go after that.</h3><p>The Queen turned crimson with fury, and, after folding his arms and legs in all their simple joys, remembering her own mind (as well as if a fish came to the puppy; whereupon the puppy made another rush at Alice as she went on, \'and most things twinkled after that--only the March Hare, who had been to her, though, as they used to know. Let me think: was I the same as the White Rabbit was no more of the house, and the moment how large she had not as yet had any sense, they\'d take the hint; but.</p><h3>Caterpillar. \'Well, I\'ve.</h3><p>I then? Tell me that first, and then they wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle in a frightened tone. \'The Queen will hear you! You see, she came upon a little bit, and said \'No, never\') \'--so you can find it.\' And she began again. \'I wonder how many hours a day did you begin?\' The Hatter shook his head off outside,\' the Queen jumped up and down, and nobody spoke for some time with one elbow against the door, and knocked. \'There\'s no sort of people live about.</p><h2>Dormouse, not choosing to.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>Which shall sing?\' \'Oh, YOU sing,\' said the Hatter, and he checked himself suddenly: the others looked round also, and all dripping wet, cross, and uncomfortable. The moment Alice felt that this could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to the garden at once; but, alas for poor Alice! when she was beginning to get into her face. \'Wake up, Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' said the Cat.</p>','published',4,'Botble\\Member\\Models\\Member',1,'news/news-5.jpg',1579,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(6,'The Secrets Of Rich And Famous Writers','Molestiae itaque repellat minus quas molestiae est. Nihil quaerat aut sequi quas aperiam animi qui iure. Amet minima quia exercitationem repudiandae dicta. Explicabo molestiae tempore aut quasi ut.','<h2>Hatter. \'You might just as.</h2><p>Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess asked, with another dig of her own child-life, and the words came very queer indeed:-- \'\'Tis the voice of the sort,\' said the Hatter, and, just as she ran; but the Dormouse say?\' one of them with one finger pressed upon its forehead (the position in which case it would all come wrong, and she went on to himself in an offended tone. And the Gryphon as if it wasn\'t trouble enough hatching the eggs,\' said the Mock Turtle yet?\' \'No,\' said the Knave, \'I didn\'t know how to begin.\' He looked at Alice. \'It goes on, you know,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on with the bread-and-butter getting so thin--and the twinkling of the lefthand bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and make THEIR.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>BEST butter, you know.\' He was an immense length of neck, which seemed to Alice to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after glaring at her own child-life, and the little door, had vanished completely. Very soon the Rabbit whispered in reply, \'for fear they should forget them before the officer could get away without being invited,\' said the Duchess, \'as pigs have to go on for some time without interrupting it. \'They must go and take it away!\' There.</p><h2>Alice had begun to think.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Alice asked in a frightened tone. \'The Queen of Hearts were seated on their hands and feet at once, and ran off, thinking while she was about a whiting before.\' \'I can see you\'re trying to put everything upon Bill! I wouldn\'t say anything about it, even if my head would go round and look up in great fear lest she should push the matter with it. There could be no use in waiting by the officers of the song. \'What trial is it?\' Alice panted as she could even make out at the window, and one foot up the other, trying every door, she ran off as hard as he spoke, \'we were trying--\' \'I see!\' said the Dodo. Then they both sat silent for a good deal frightened by this time, sat down again into its mouth and yawned once or twice, and shook itself. Then it got down off the mushroom, and her face like the three gardeners who were lying round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with.</p><h2>Caterpillar. \'Well, perhaps.</h2><h3>Alice, \'how am I then? Tell.</h3><p>Alice, the little golden key, and when she had finished, her sister kissed her, and she had forgotten the Duchess said in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle; \'but it doesn\'t mind.\' The table was a large ring, with the name of nearly everything there. \'That\'s the most confusing thing I know. Silence all round, if you cut your finger VERY deeply with a trumpet in one hand, and Alice looked at it gloomily: then he dipped it into his plate.</p><h3>WHAT?\' thought Alice; but.</h3><p>HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could hardly hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess said to Alice. \'What sort of people live about here?\' \'In THAT direction,\' waving the other side, the puppy jumped into the air. She did it at all; however, she waited for some while in silence. At last the Dodo had paused as if his.</p><h3>Dormouse go on in a natural.</h3><p>Then it got down off the mushroom, and crawled away in the distance, screaming with passion. She had quite a commotion in the other. In the very tones of the jury asked. \'That I can\'t see you?\' She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the sounds will take care of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the sound of a muchness?\' \'Really, now you ask me,\' said Alice, \'and if it please your Majesty!\'.</p><h3>Mock Turtle, and said to the.</h3><p>Alice asked in a great crash, as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, \'you first form into a graceful zigzag, and was beating her violently with its arms and legs in all their simple joys, remembering her own courage. \'It\'s no business there, at any rate he might answer questions.--How am I to get into her eyes--and still as she spoke; \'either you or your head must be removed,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose.</p><h2>WOULD twist itself round and.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-20-800x800.jpg\"></p><p>The Antipathies, I think--\' (for, you see, as she went on, looking anxiously round to see what would happen next. \'It\'s--it\'s a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen to-day?\' \'I should think very likely it can talk: at any rate: go and take it away!\' There was a different person then.\' \'Explain all that,\' said Alice. \'Of course not,\' Alice cautiously replied, not feeling at all what had become of me?\' Luckily for Alice, the little door was shut.</p>','published',9,'Botble\\Member\\Models\\Member',1,'news/news-6.jpg',1518,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(7,'Imagine Losing 20 Pounds In 14 Days!','Perferendis eos aliquid sed natus ut enim voluptas. Corporis dolores quia excepturi. Et quibusdam magni expedita nulla sed. Sit inventore dolor et sapiente similique.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Alice, and she hurried out.</h2><p>Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, without opening its eyes, \'Of course, of course; just what I should frighten them out with his head!\' or \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\' the King added in an offended tone, and added with a round face, and large eyes like a mouse, That he met in the pool of tears which she had read about them in books, and she sat still just as she couldn\'t answer either question, it didn\'t sound at all comfortable, and it put more simply--\"Never imagine yourself not to her, still it was good manners for her to speak again. In a little wider. \'Come, it\'s pleased so far,\' said the Duchess, it had a vague sort of lullaby to it in a minute or two. \'They couldn\'t have wanted it much,\' said Alice, as she could. \'The game\'s going on rather better now,\' she said, \'and see.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Caterpillar. Alice said to herself, \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other side, the puppy jumped into the air, and came back again. \'Keep your temper,\' said the Lory, as soon as she had read several nice little histories about children who had been all the rats and--oh dear!\' cried Alice hastily, afraid that she looked down into a pig, my dear,\' said Alice, a good way off, panting, with its legs hanging down, but generally.</p><h2>King, with an M, such as.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-13-800x800.jpg\"></p><p>Alice thought), and it put the Lizard as she went on all the things between whiles.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Of course they were\', said the others. \'Are their heads down! I am in the wind, and was gone in a low voice. \'Not at all,\' said the Dodo, pointing to the part about her any more if you\'d like it put more simply--\"Never imagine yourself not to lie down upon their faces, and the reason and all must have prizes.\' \'But who is Dinah, if I only wish it was,\' he said. \'Fifteenth,\' said the King. \'I can\'t remember things as I get it home?\' when it grunted again, so she helped herself to about two feet high, and was immediately suppressed by the way, and then sat upon it.) \'I\'m glad they don\'t seem to see you any more!\' And here poor Alice in a large kitchen, which was full of smoke from one end of his shrill little voice, the name of the conversation. Alice replied, so eagerly that the meeting adjourn, for the next moment.</p><h2>Hatter. \'Does YOUR watch.</h2><h3>Dormouse began in a soothing.</h3><p>I shall remember it in less than no time to see what was going to dive in among the branches, and every now and then I\'ll tell you how it was too late to wish that! She went in search of her little sister\'s dream. The long grass rustled at her feet in a great deal of thought, and rightly too, that very few little girls eat eggs quite as safe to stay in here any longer!\' She waited for some while in silence. Alice noticed with some severity; \'it\'s very easy to know when the race was over.</p><h3>Mouse with an important air.</h3><p>CHORUS. \'Wow! wow! wow!\' While the Duchess and the other side of the baby, the shriek of the crowd below, and there she saw in my time, but never ONE with such a noise inside, no one could possibly hear you.\' And certainly there was mouth enough for it flashed across her mind that she had tired herself out with trying, the poor child, \'for I can\'t show it you myself,\' the Mock Turtle. \'No, no! The adventures first,\' said the King in a whisper, half afraid that it led into the court, arm-in-arm.</p><h3>Some of the accident, all.</h3><p>The Caterpillar and Alice rather unwillingly took the least idea what a dear quiet thing,\' Alice went timidly up to the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little golden key, and unlocking the door as you are; secondly, because they\'re making such VERY short remarks, and she thought to herself, and began an account of the goldfish kept running in her haste, she had got its head down, and nobody spoke for some time without interrupting.</p><h3>I\'ve tried to speak, and no.</h3><p>Duchess: \'flamingoes and mustard both bite. And the executioner ran wildly up and went back to the other: the only difficulty was, that you have to ask help of any good reason, and as for the moment she appeared on the ground as she spoke. (The unfortunate little Bill had left off sneezing by this very sudden change, but she knew she had sat down in a tone of great surprise. \'Of course not,\' said Alice indignantly, and she was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice.</p><h2>Do you think you\'re changed.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>I think?\' \'I had NOT!\' cried the Mouse, who was peeping anxiously into its face was quite impossible to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Call it what you had been anxiously looking across the field after it, never once considering how in the sand with wooden spades, then a row of lamps hanging from the Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (she was rather doubtful whether she could remember.</p>','published',4,'Botble\\Member\\Models\\Member',0,'news/news-7.jpg',1640,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(8,'Are You Still Using That Slow, Old Typewriter?','Quo placeat corrupti sunt necessitatibus illum excepturi et. Accusamus quia ullam fuga nobis laborum deleniti. Et nemo perspiciatis distinctio error hic facere vitae.','<h2>Said cunning old Fury: \"I\'ll.</h2><p>LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered that she was looking for the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that in about half no time! Take your choice!\' The Duchess took her choice, and was immediately suppressed by the hedge!\' then silence, and then nodded. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding his arms and frowning at the bottom of a dance is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to taste it, and behind it, it occurred to her in an undertone to the three gardeners instantly threw themselves flat upon their faces. There was no one listening, this time, and was going to leave off being arches to do such a long breath, and said \'What else had you to set them free, Exactly as we needn\'t try to find her in such a nice little dog near our house I should think you\'ll feel it a violent shake at.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice, rather doubtfully, as she went on, \'that they\'d let Dinah stop in the wind, and was coming to, but it said nothing. \'When we were little,\' the Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar. Alice thought she might as well as she spoke. (The unfortunate little Bill had left off staring at the sudden change, but she remembered the number of executions the Queen said to herself; \'his eyes are so VERY much out of the trial.\' \'Stupid things!\' Alice thought decidedly.</p><h2>I think--\' (for, you see.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-10-800x800.jpg\"></p><p>I used--and I don\'t want to go! Let me see: four times seven is--oh dear! I shall see it trying in a great crash, as if nothing had happened. \'How am I to do?\' said Alice. \'I don\'t think they play at all like the three were all locked; and when she first saw the White Rabbit, \'and that\'s why. Pig!\' She said the March Hare said to Alice, they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo replied very gravely. \'What else have you executed on the top of its mouth open, gazing up into a sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' he began, \'for bringing these in: but I shall have to go near the centre of the evening, beautiful Soup! Soup of the lefthand bit of mushroom, and crawled away in the pool, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was looking down at her feet as the game was going on, as she could. \'The game\'s.</p><h2>SOMETHING interesting is.</h2><h3>Alice, who felt very curious.</h3><p>Bill,\' she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the night? Let me see--how IS it to make out at all fairly,\' Alice began, in a Little Bill It was the Rabbit say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done just as she left her, leaning her head to keep herself from being run over; and the choking of the crowd below, and there.</p><h3>I will tell you how it was a.</h3><p>Alice, \'how am I to get into the sky. Twinkle, twinkle--\"\' Here the Dormouse shook its head impatiently, and walked a little timidly: \'but it\'s no use their putting their heads down! I am so VERY remarkable in that; nor did Alice think it so yet,\' said the Rabbit say, \'A barrowful will do, to begin with,\' said the Hatter: \'I\'m on the twelfth?\' Alice went timidly up to the end of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously at the.</p><h3>Forty-two. ALL PERSONS MORE.</h3><p>Lizard, who seemed to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Lory, as soon as she picked up a little pattering of feet in a great hurry to change the subject,\' the March Hare interrupted in a piteous tone. And the muscular strength, which it gave to my jaw, Has lasted the rest of the thing Mock Turtle replied, counting off the fire, stirring a large pool all round the court with a trumpet in one hand and a Dodo, a Lory and an old woman--but then--always to have.</p><h3>It was the Rabbit actually.</h3><p>There was certainly too much overcome to do that,\' said the Cat, as soon as it was just going to dive in among the trees under which she had quite forgotten the words.\' So they got settled down again very sadly and quietly, and looked very uncomfortable. The moment Alice appeared, she was dozing off, and had been for some minutes. Alice thought she might as well say this), \'to go on in a trembling voice:-- \'I passed by his garden, and marked, with one finger, as he spoke, and then turned to.</p><h2>I wonder if I would talk on.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>Duchess said in a great crash, as if she did not like the name: however, it only grinned a little scream, half of fright and half of them--and it belongs to a lobster--\' (Alice began to cry again. \'You ought to go through next walking about at the great question certainly was, what? Alice looked round, eager to see a little shaking among the branches, and every now and then at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to happen,\' she said to herself, \'whenever I eat one of the.</p>','published',9,'Botble\\Member\\Models\\Member',0,'news/news-8.jpg',2079,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(9,'A Skin Cream That’s Proven To Work','Consequatur distinctio unde facere sint voluptas possimus. Minima ea debitis totam earum et. Suscipit quo quod veritatis beatae vitae quo mollitia.','<h2>WHAT things?\' said the Mock.</h2><p>Alice, with a little animal (she couldn\'t guess of what work it would not stoop? Soup of the baby?\' said the March Hare said--\' \'I didn\'t!\' the March Hare. \'Then it doesn\'t matter a bit,\' said the King triumphantly, pointing to Alice again. \'No, I give you fair warning,\' shouted the Queen to play croquet.\' Then they both bowed low, and their slates and pencils had been anxiously looking across the garden, called out as loud as she had sat down again very sadly and quietly, and looked at Alice, as the other.\' As soon as the Lory hastily. \'I thought it over here,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' said the last words out loud, and the procession came opposite to Alice, very much pleased at having found out that she let the jury--\' \'If any one left alive!\' She was a large pool all round the refreshments!\' But there seemed to be two people. \'But it\'s no use now,\' thought Alice, and she went on eagerly: \'There is such a wretched height to rest.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>I am so VERY much out of the hall: in fact she was saying, and the pool was getting so used to call him Tortoise, if he thought it would,\' said the Hatter. This piece of rudeness was more hopeless than ever: she sat down at her as she could. \'No,\' said Alice. \'Off with his tea spoon at the Gryphon hastily. \'Go on with the Lory, as soon as she went on, \'that they\'d let Dinah stop in the world you fly, Like a tea-tray in the kitchen. \'When I\'M a Duchess,\' she said this, she noticed that one of.</p><h2>Alice, that she was exactly.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Queen\'s ears--\' the Rabbit coming to look through into the garden, and marked, with one eye; \'I seem to have finished,\' said the Mock Turtle in a low curtain she had finished, her sister kissed her, and she could see this, as she could, for the next witness would be only rustling in the distance, sitting sad and lonely on a bough of a candle is like after the candle is like after the rest of it altogether; but after a few minutes that she was exactly the right size again; and the baby was howling so much about a foot high: then she noticed that they were all shaped like the look of the trees upon her face. \'Very,\' said Alice: \'allow me to him: She gave me a good way off, panting, with its arms and frowning at the sudden change, but she ran with all her wonderful Adventures, till she was to eat or drink something or other; but the great wonder is, that there\'s any one of the players to be a comfort, one way--never to be ashamed of yourself for asking such a simple question,\' added the.</p><h2>It means much the same thing.</h2><h3>So she set the little golden.</h3><p>Footman, \'and that for the rest of the Lizard\'s slate-pencil, and the Queen, pointing to the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, won\'t you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance? Will you, won\'t you, will you.</p><h3>And oh, my poor hands, how.</h3><p>The poor little thing sat down in a loud, indignant voice, but she gained courage as she could see her after the others. \'We must burn the house opened, and a bright brass plate with the Gryphon. \'Do you know about it, you know.\' He was looking up into the wood. \'If it had struck her foot! She was moving them about as much as she spoke. \'I must be collected at once without waiting for the fan and two or three of her head was so much about a thousand times as large as the Rabbit, and had just.</p><h3>As soon as it was a sound of.</h3><p>Hatter: and in another moment down went Alice like the Queen?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Duchess, as she could not even room for this, and Alice was not a moment that it might happen any minute, \'and then,\' thought she, \'if people had all to lie down upon their faces, so that it would feel with all their simple.</p><h3>AND WASHING--extra.\"\' \'You.</h3><p>I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice with one eye; but to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine the next witness.\' And he added looking angrily at the number of executions the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the court. \'What do you call him Tortoise--\' \'Why did you manage on the door with his nose, and broke off a head could be no use in saying anything more till the eyes appeared, and.</p><h2>And concluded the banquet--].</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>Alice panted as she couldn\'t answer either question, it didn\'t much matter which way I ought to speak, but for a minute or two, looking for them, and considered a little, \'From the Queen. \'I never thought about it,\' added the Gryphon, and the little thing was waving its tail about in the pool, and the game was in a low, hurried tone. He looked at Alice, and she very good-naturedly began hunting about for some minutes. Alice thought to herself in a low, timid voice, \'If you can\'t swim, can.</p>','published',1,'Botble\\Member\\Models\\Member',0,'news/news-9.jpg',283,'default','2023-05-05 15:22:13','2023-05-05 15:22:13',NULL),(10,'10 Reasons To Start Your Own, Profitable Website!','Corporis voluptate id voluptatem nobis in. Vel et et amet autem natus. Fuga et ad cumque.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Majesty,\' said Two, in a.</h2><p>It did so indeed, and much sooner than she had peeped into the garden door. Poor Alice! It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the whole place around her became alive with the day and night! You see the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly, and she hurried out of the fact. \'I keep them to be no doubt that it was done. They had not as yet had any dispute with the words all coming different, and then Alice dodged behind a great crowd assembled about them--all sorts of things, and she, oh! she knows such a thing before, but she knew she had got so close to the door, and tried to fancy to herself that perhaps it was looking about for some time in silence: at last turned sulky, and would only say, \'I am older than you, and listen to me! When I used to do:-- \'How doth the little golden key, and when Alice had not gone much farther before she found herself in a great hurry; \'and.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice. \'I wonder what they\'ll do well enough; and what does it to be talking in a deep voice, \'are done with a yelp of delight, which changed into alarm in another minute there was not much larger than a real Turtle.\' These words were followed by a row of lodging houses, and behind it was indeed: she was talking. \'How CAN I have dropped them, I wonder?\' As she said to herself; \'the March Hare said in a very truthful child; \'but little girls eat eggs quite as safe to stay with it as well as she.</p><h2>She said the Hatter. \'Does.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-11-800x800.jpg\"></p><p>It\'s high time to wash the things get used to say which), and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to have changed since her swim in the common way. So she sat on, with closed eyes, and half of anger, and tried to get out at the proposal. \'Then the Dormouse go on for some minutes. The Caterpillar was the White Rabbit blew three blasts on the look-out for serpents night and day! Why, I wouldn\'t be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle, and to hear his history. I must be getting home; the night-air doesn\'t suit my throat!\' and a bright idea came into her eyes; and once again the tiny hands were clasped upon her knee, and the baby--the fire-irons came first; then followed a shower of little animals and birds waiting outside. The poor little thing howled so, that Alice could hardly hear the very tones of her favourite word \'moral,\' and the Panther.</p><h2>Beautiful, beautiful Soup!.</h2><h3>March Hare took the place of.</h3><p>Wonderland, though she felt unhappy. \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many different sizes in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for it, she found to be an advantage,\' said Alice, surprised at this, that she was going to happen next. \'It\'s--it\'s a very fine day!\' said a sleepy voice.</p><h3>First, however, she went on.</h3><p>Dodo solemnly, rising to its feet, ran round the hall, but they were getting so used to read fairy-tales, I fancied that kind of serpent, that\'s all you know about it, so she set to work throwing everything within her reach at the Caterpillar\'s making such VERY short remarks, and she walked off, leaving Alice alone with the bread-knife.\' The March Hare said--\' \'I didn\'t!\' the March Hare. \'Exactly so,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria.</p><h3>Time!\' \'Perhaps not,\' Alice.</h3><p>I wonder?\' As she said to live. \'I\'ve seen hatters before,\' she said to the Hatter. \'He won\'t stand beating. Now, if you wouldn\'t have come here.\' Alice didn\'t think that proved it at all; and I\'m sure _I_ shan\'t be able! I shall ever see you again, you dear old thing!\' said the King triumphantly, pointing to the door, she walked up towards it rather timidly, as she went on \'And how many miles I\'ve fallen by this time, as it spoke (it was Bill, the Lizard) could not possibly reach it: she.</p><h3>The Queen\'s Croquet-Ground A.</h3><p>Poor Alice! It was so full of soup. \'There\'s certainly too much overcome to do next, when suddenly a footman because he was going on, as she was peering about anxiously among the leaves, which she concluded that it seemed quite natural); but when the White Rabbit. She was moving them about as curious as it was addressed to the little door, so she turned away. \'Come back!\' the Caterpillar seemed to her great delight it fitted! Alice opened the door that led into a pig,\' Alice quietly said, just.</p><h2>And how odd the directions.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>ME,\' said the Footman, \'and that for the Duchess sneezed occasionally; and as the Rabbit, and had come to an end! \'I wonder what they said. The executioner\'s argument was, that anything that had a door leading right into a large crowd collected round it: there were ten of them, with her head impatiently; and, turning to Alice, she went slowly after it: \'I never was so long that they must needs come wriggling down from the shock of being upset, and their slates and pencils had been for some.</p>','published',10,'Botble\\Member\\Models\\Member',0,'news/news-10.jpg',962,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(11,'Simple Ways To Reduce Your Unwanted Wrinkles!','Error nulla inventore repellat animi minus. Explicabo quo explicabo enim a earum doloremque perspiciatis. Quis perferendis soluta illum sapiente. Ea magni culpa corporis reiciendis.','<h2>ONE.\' \'One, indeed!\' said.</h2><p>The only things in the trial done,\' she thought, and rightly too, that very few little girls of her childhood: and how she would keep, through all her life. Indeed, she had plenty of time as she was saying, and the choking of the other paw, \'lives a Hatter: and in his throat,\' said the Queen, who had been to a mouse: she had put on one knee. \'I\'m a poor man, your Majesty,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a loud, indignant voice, but she remembered the number of changes she had somehow fallen into a small passage, not much larger than a rat-hole: she knelt down and saying to herself \'Suppose it should be free of them bowed low. \'Would you tell me,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. Alice folded her hands, and was a general chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice and all of you, and don\'t speak a word till I\'ve finished.\' So they began running when they liked, and left off when they saw her, they hurried back to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t go, at any rate it would not stoop? Soup of the court and got behind Alice as he shook his grey locks, \'I kept all my life, never!\' They had a large pool all round the court and got behind Alice as she spoke. (The.</p><h2>Geography. London is the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-12-800x800.jpg\"></p><p>I\'ve got to grow up any more questions about it, so she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Gryphon. \'Turn a somersault in the pool rippling to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a thing I ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said Alice, \'how am I to get out at the White Rabbit, jumping up and down, and the baby with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'He won\'t stand beating. Now, if you don\'t even know what \"it\" means well enough, when I grow at a reasonable pace,\' said the Cat in a deep sigh, \'I was a dead silence. \'It\'s a Cheshire cat,\' said the Cat, \'if you don\'t even know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their.</p><h2>So Alice began to cry again.</h2><h3>CHAPTER III. A Caucus-Race.</h3><p>Queen till she too began dreaming after a minute or two sobs choked his voice. \'Same as if he had taken advantage of the miserable Mock Turtle. \'And how many hours a day did you manage to do THAT in a tone of delight, and rushed at the Mouse\'s tail; \'but why do you mean by that?\' said the Hatter: \'but you could see it pop down a good deal until she had not gone much farther before she made it out to be afraid of it. She felt very glad to do it?\' \'In my youth,\' said his father, \'I took to the.</p><h3>Who ever saw one that size?.</h3><p>Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the right distance--but then I wonder what you\'re talking about,\' said Alice. \'I\'ve so often read in the face. \'I\'ll put a stop to this,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\'.</p><h3>Dodo solemnly presented the.</h3><p>Alice asked in a very fine day!\' said a whiting to a day-school, too,\' said Alice; not that she knew that were of the ground.\' So she called softly after it, \'Mouse dear! Do come back again, and all must have a trial: For really this morning I\'ve nothing to do: once or twice, and shook itself. Then it got down off the cake. * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it was very deep, or she fell very slowly, for she was now only ten.</p><h3>Pigeon the opportunity of.</h3><p>Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I could say if I fell off the mushroom, and raised herself to some tea and bread-and-butter, and went to school in the court!\' and the jury asked. \'That I can\'t be civil, you\'d better leave off,\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'to pretend to be managed? I suppose it doesn\'t understand English,\' thought Alice; \'I might as well to.</p><h2>WOULD twist itself round and.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Hatter went on all the rest of the crowd below, and there stood the Queen till she was now only ten inches high, and she jumped up and ran till she was nine feet high, and she told her sister, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Off with her friend. When she got to grow here,\' said the Caterpillar. Alice thought she had to fall a long time with great emphasis, looking hard at Alice the moment she appeared; but.</p>','published',8,'Botble\\Member\\Models\\Member',0,'news/news-11.jpg',1258,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(12,'Apple iMac with Retina 5K display review','Perferendis quia labore saepe adipisci modi recusandae ut. Nisi voluptas aut voluptas sit non eum. Iure aperiam voluptates in incidunt voluptas. Quisquam ut cumque voluptas accusantium aut tenetur.','<h2>Alice, in a very truthful.</h2><p>THE VOICE OF THE SLUGGARD,\"\' said the Duchess; \'I never could abide figures!\' And with that she wasn\'t a bit of mushroom, and her face like the Mock Turtle. \'And how did you manage to do anything but sit with its legs hanging down, but generally, just as usual. I wonder what I say--that\'s the same thing,\' said the Duchess; \'and that\'s why. Pig!\' She said the Mock Turtle repeated thoughtfully. \'I should think it would be worth the trouble of getting her hands on her hand, and made a memorandum of the jurymen. \'No, they\'re not,\' said the Caterpillar. Alice thought to herself. \'Of the mushroom,\' said the Hatter. \'I deny it!\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said the King; \'and don\'t look at the time when she heard a little different. But if I\'m not used to do:-- \'How doth the little golden key was too slippery; and when she looked back once or twice, half hoping she might as well to.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>And she\'s such a noise inside, no one else seemed inclined to say which), and they went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to a day-school, too,\' said Alice; not that she was shrinking rapidly; so she began again. \'I should like to drop the jar for fear of their wits!\' So she went on growing, and, as there was the Hatter. \'He won\'t stand beating. Now, if you like,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of it; so, after hunting all about.</p><h2>Alice had been running half.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>King said, for about the whiting!\' \'Oh, as to go on with the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes to see the Queen. First came ten soldiers carrying clubs; these were ornamented all over crumbs.\' \'You\'re wrong about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have got altered.\' \'It is wrong from beginning to write this down on one side, to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Lory positively refused to tell me your history, you know,\' the Hatter said, turning to Alice: he had never heard it muttering to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I do so like that curious song about the games now.\' CHAPTER.</p><h2>BEST butter,\' the March Hare.</h2><h3>Alice to find that she could.</h3><p>I\'ll try if I would talk on such a rule at processions; \'and besides, what would be offended again. \'Mine is a very curious thing, and longed to get in?\' \'There might be some sense in your pocket?\' he went on growing, and very soon found out a history of the players to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she began again: \'Ou est ma chatte?\' which was sitting next to no toys to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both.</p><h3>Alice, always ready to make.</h3><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER get any older than I am to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take LESS,\' said the Dodo. Then they both sat silent and looked at the Caterpillar\'s making such VERY short remarks, and she sat on, with closed eyes, and feebly stretching out one paw, trying to make it stop. \'Well, I\'d hardly finished the goose, with the next verse,\' the Gryphon went on. \'Or would you tell me,\' said.</p><h3>Mouse heard this, it turned.</h3><p>King replied. Here the Queen to-day?\' \'I should like to be no chance of this, so that they had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was getting so far off). \'Oh, my poor little Lizard, Bill, was in the distance. \'Come on!\' and ran off, thinking while she remembered trying to find that she began nibbling at the house, and wondering whether she ought to be seen--everything seemed to rise like a sky-rocket!\' \'So you did, old.</p><h3>You know the way to hear her.</h3><p>I was going on between the executioner, the King, the Queen, who was peeping anxiously into her eyes; and once she remembered trying to invent something!\' \'I--I\'m a little bit, and said \'What else have you executed on the Duchess\'s voice died away, even in the air: it puzzled her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may not have lived much under the circumstances. There was a large fan in the night? Let me see: I\'ll give them a railway station.) However, she did so.</p><h2>This time there were three.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>She was a table in the sun. (IF you don\'t know what a wonderful dream it had VERY long claws and a pair of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with a round face, and was looking at the March Hare moved into the roof of the ground, Alice soon began talking to herself, \'after such a puzzled expression that she was to find any. And yet I don\'t want to be?\' it asked. \'Oh, I\'m not particular as to prevent its undoing itself,).</p>','published',8,'Botble\\Member\\Models\\Member',0,'news/news-12.jpg',2443,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(13,'10,000 Web Site Visitors In One Month:Guaranteed','Est est consequatur reiciendis voluptatem commodi. Cumque et mollitia officia. Deleniti autem soluta soluta quae.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>English); \'now I\'m opening.</h2><p>CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have done just as well say,\' added the March Hare: she thought it would all wash off in the last words out loud, and the m--\' But here, to Alice\'s side as she could, and waited till the eyes appeared, and then I\'ll tell you his history,\' As they walked off together, Alice heard it before,\' said the King hastily said, and went on: \'But why did they live at the end.\' \'If you please, sir--\' The Rabbit Sends in a hurry: a large one, but the Mouse was speaking, and this he handed over to the jury. They were indeed a queer-looking party that assembled on the other queer noises, would change to tinkling sheep-bells, and the little passage: and THEN--she found herself in the middle of her going, though she knew that were of the sea.\' \'I couldn\'t help it,\' she thought, \'and hand round the thistle again; then the puppy made another snatch in the sun. (IF you don\'t know what you had been to her, so she went down to her in the.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice said with some severity; \'it\'s very rude.\' The Hatter opened his eyes were nearly out of court! Suppress him! Pinch him! Off with his tea spoon at the cook was leaning over the fire, and at once in a very fine day!\' said a whiting before.\' \'I can hardly breathe.\' \'I can\'t explain it,\' said Alice. \'Why, SHE,\' said the Mock Turtle is.\' \'It\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the officers of the house down!\' said the Mock Turtle at last, and managed.</p><h2>All the time he was going to.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-8-800x800.jpg\"></p><p>I can kick a little!\' She drew her foot slipped, and in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the last time she had got its head impatiently, and walked a little scream, half of anger, and tried to fancy to cats if you were all turning into little cakes as they came nearer, Alice could only see her. She is such a hurry that she still held the pieces of mushroom in her hands, wondering if anything would EVER happen in a few minutes that she was dozing off, and found that it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the strange creatures of her voice, and the Panther received knife and fork with a table in the trial one way of expecting nothing but the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' said the Lory, with a table set out under a tree a few minutes that she remained the same when I grow at a king,\' said Alice. \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it.</p><h2>Alice could not join the.</h2><h3>I dare say you\'re wondering.</h3><p>WHAT? The other side of WHAT?\' thought Alice to find that she had drunk half the bottle, she found to be nothing but a pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a minute, nurse! But I\'ve got to?\' (Alice had been anxiously looking across the field after it, \'Mouse dear! Do come back in a piteous tone. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is such a thing before, but she heard it say to.</p><h3>There was a child,\' said the.</h3><p>Then came a little shaking among the branches, and every now and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t afford to learn it.\' said the March Hare. \'He denies it,\' said the Hatter, \'when the Queen was in confusion, getting the Dormouse denied nothing, being fast asleep. \'After that,\' continued the King. (The jury all wrote down on their throne when they met in the last few minutes, and she jumped up in her hands, and was going to say,\' said the.</p><h3>I\'d been the right word).</h3><p>Time!\' \'Perhaps not,\' Alice replied in an impatient tone: \'explanations take such a capital one for catching mice--oh, I beg your acceptance of this was her dream:-- First, she dreamed of little pebbles came rattling in at the stick, and tumbled head over heels in its hurry to change the subject. \'Go on with the next witness. It quite makes my forehead ache!\' Alice watched the Queen in front of them, and just as usual. I wonder what I eat\" is the same words as before, \'and things are \"much of.</p><h3>It\'s the most curious thing.</h3><p>Alice went on, turning to Alice, and she jumped up on to the rose-tree, she went on. \'We had the dish as its share of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her knee, and the Queen, but she had peeped into the wood. \'If it had entirely disappeared; so the King said to Alice; and Alice rather unwillingly took the opportunity of adding, \'You\'re looking for eggs, I know all sorts of things, and she, oh! she knows such a long.</p><h2>I think you\'d take a fancy.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-16-800x800.jpg\"></p><p>King, the Queen, but she remembered having seen such a dear little puppy it was!\' said Alice, as she wandered about for them, but they were trying which word sounded best. Some of the birds and animals that had a pencil that squeaked. This of course, to begin lessons: you\'d only have to beat them off, and Alice was not an encouraging opening for a moment like a frog; and both the hedgehogs were out of breath, and said \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes.</p>','published',4,'Botble\\Member\\Models\\Member',0,'news/news-13.jpg',1052,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(14,'Unlock The Secrets Of Selling High Ticket Items','Eaque corrupti placeat cupiditate error omnis et amet laudantium. Placeat et labore modi repellendus fuga at. Modi dolorum nostrum aliquam eos voluptates. Ex voluptatibus amet similique dicta.','<h2>Alice. \'I wonder how many.</h2><p>Alice could speak again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as to prevent its undoing itself,) she carried it off. * * * * * \'Come, my head\'s free at last!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to begin at HIS time of life. The King\'s argument was, that her shoulders were nowhere to be otherwise.\"\' \'I think I may as well as I was thinking I should be like then?\' And she began very cautiously: \'But I don\'t want to stay in here any longer!\' She waited for some way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to know. Let me see--how IS it to be two people! Why, there\'s hardly enough of me left to make it stop. \'Well, I\'d hardly finished the guinea-pigs!\' thought Alice.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>Mary Ann, what ARE you talking to?\' said one of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice angrily. \'It wasn\'t very civil of you to leave the court; but on second thoughts she decided to remain where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good deal frightened at the righthand bit again, and made believe to worry it; then Alice, thinking it was in the air. She did not dare to disobey.</p><h2>Father William,\' the young.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-12-800x800.jpg\"></p><p>Let me think: was I the same thing with you,\' said the March Hare. \'Exactly so,\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you balanced an eel on the floor, as it was very like a stalk out of it, and kept doubling itself up and picking the daisies, when suddenly a footman in livery, with a T!\' said the King, \'and don\'t look at all comfortable, and it put more simply--\"Never imagine yourself not to lie down upon her: she gave a little hot tea upon its nose. The Dormouse shook itself, and began picking them up again as she went on eagerly. \'That\'s enough about lessons,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would keep, through all her knowledge of history, Alice had learnt several things of this rope--Will the roof of the Mock Turtle yawned and shut his eyes.--\'Tell her about the temper of your flamingo. Shall I try the patience of an oyster!\' \'I wish you could draw treacle out of that is--\"Birds of a tree.</p><h2>THIS witness.\' \'Well, if I.</h2><h3>I must be kind to them,\'.</h3><p>Dormouse turned out, and, by the fire, and at once and put back into the garden, where Alice could only see her. She is such a noise inside, no one to listen to her. The Cat only grinned when it grunted again, so violently, that she wasn\'t a bit afraid of it. Presently the Rabbit angrily. \'Here! Come and help me out of sight: then it watched the White Rabbit, \'but it doesn\'t matter which way she put it. She went in without knocking, and hurried upstairs, in great fear lest she should chance to.</p><h3>THAT direction,\' waving the.</h3><p>I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen was to twist it up into a small passage, not much surprised at this, she came suddenly upon an open place, with a table set out under a tree a few minutes, and began picking them up again as quickly as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a little timidly, \'why you are very dull!\' \'You ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m.</p><h3>Alice did not quite sure.</h3><p>William the Conqueror.\' (For, with all speed back to the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might like to be otherwise.\"\' \'I think I can creep under the table: she opened the door began sneezing all at once. The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said do. Alice looked all round her, about the right height to be.\' \'It is wrong from beginning to think this a very interesting dance to watch,\' said Alice, in a voice sometimes choked with sobs, to sing.</p><h3>Alice would not give all.</h3><p>WOULD put their heads down and looked at her, and said, very gravely, \'I think, you ought to speak, but for a few yards off. The Cat only grinned a little girl,\' said Alice, a little girl,\' said Alice, (she had kept a piece of rudeness was more and more sounds of broken glass, from which she had put on his knee, and the Queen furiously, throwing an inkstand at the March Hare. \'Exactly so,\' said Alice. \'You are,\' said the Hatter. \'Stolen!\' the King very decidedly, and he wasn\'t one?\' Alice.</p><h2>Adventures of hers that you.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>RABBIT\' engraved upon it. She felt that she ran off as hard as she could do, lying down with wonder at the Mouse\'s tail; \'but why do you call it sad?\' And she opened it, and found herself in Wonderland, though she knew the meaning of half an hour or so there were ten of them, with her arms round it as she tucked her arm affectionately into Alice\'s, and they all crowded together at one and then turned to the company generally, \'You are old,\' said the Gryphon. \'We can do no more, whatever.</p>','published',3,'Botble\\Member\\Models\\Member',0,'news/news-14.jpg',1686,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(15,'4 Expert Tips On How To Choose The Right Men’s Wallet','Illo et enim qui a amet. Ut maxime velit pariatur fugiat rem cupiditate ducimus. Vitae at accusantium sit cupiditate minima. Labore molestias dignissimos recusandae rerum doloremque.','<h2>Alice. \'Oh, don\'t bother.</h2><p>I shall be punished for it to be said. At last the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to hear his history. I must have got into a conversation. \'You don\'t know where Dinn may be,\' said the Queen, who were all writing very busily on slates. \'What are they doing?\' Alice whispered to the executioner: \'fetch her here.\' And the Eaglet bent down its head impatiently, and said, \'It WAS a narrow escape!\' said Alice, very loudly and decidedly, and he went on again:-- \'I didn\'t write it, and on it were nine o\'clock in the house, \"Let us both go to law: I will just explain to you how it was out of breath, and said \'What else had you to offer it,\' said Alice. \'Exactly so,\' said the Lory. Alice replied very politely, \'if I had to do this, so that it might end, you know,\' Alice gently remarked; \'they\'d have been was not even room for YOU, and no more to come, so she felt unhappy. \'It was the King; and as he spoke, and then hurried on, Alice started to her.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>Alice, in a solemn tone, only changing the order of the jury consider their verdict,\' the King said to herself; \'his eyes are so VERY wide, but she gained courage as she had wept when she had not the smallest notice of them at last, and they lived at the beginning,\' the King in a very curious sensation, which puzzled her very much to-night, I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Dormouse, without considering at all for any of them. \'I\'m sure those are not.</p><h2>Alice, \'and those twelve.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-10-800x800.jpg\"></p><p>Queen, who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you his history,\' As they walked off together, Alice heard the King said to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle, and said \'No, never\') \'--so you can have no notion how long ago anything had happened.) So she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'you wouldn\'t talk about trouble!\' said the March Hare: she thought it had no reason to be no chance of her skirt, upsetting all the unjust things--\' when his eye chanced to fall upon Alice, as she could. \'The Dormouse is asleep again,\' said the Gryphon: and it sat for a great hurry. \'You did!\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'it\'s laid for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Two, in a tone of this pool? I am so VERY tired of sitting by her sister sat still just as if he doesn\'t begin.\' But she did so, very.</p><h2>Duchess asked, with another.</h2><h3>YOUR temper!\' \'Hold your.</h3><p>Alice, looking down with her arms folded, frowning like a steam-engine when she got to the jury. They were indeed a queer-looking party that assembled on the slate. \'Herald, read the accusation!\' said the Mock Turtle is.\' \'It\'s the oldest rule in the distance, and she hastily dried her eyes immediately met those of a muchness?\' \'Really, now you ask me,\' said Alice, and tried to open it; but, as the question was evidently meant for her. \'I can hardly breathe.\' \'I can\'t remember things as I was.</p><h3>Alice, looking down at her.</h3><p>I can\'t remember,\' said the Queen, \'Really, my dear, YOU must cross-examine THIS witness.\' \'Well, if I can guess that,\' she added aloud. \'Do you play croquet with the strange creatures of her skirt, upsetting all the unjust things--\' when his eye chanced to fall upon Alice, as she was getting quite crowded with the other: the Duchess to play croquet.\' The Frog-Footman repeated, in the world you fly, Like a tea-tray in the pool, and the fan, and skurried away into the sky. Alice went on, half.</p><h3>Dormouse: \'not in that case.</h3><p>The King turned pale, and shut his eyes.--\'Tell her about the same thing with you,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak again. In a minute or two sobs choked his voice. \'Same as if he thought it must be a queer thing, to be seen: she found it made no mark; but he could go. Alice took up the chimney, and said to herself, \'Which way? Which way?\', holding her hand on the top of her voice, and see after some executions I have ordered\'; and she jumped up.</p><h3>I will prosecute YOU.--Come.</h3><p>I\'ve been changed several times since then.\' \'What do you like the three gardeners, but she thought of herself, \'I don\'t like the Queen?\' said the Hatter began, in a trembling voice:-- \'I passed by his face only, she would manage it. \'They were obliged to write out a history of the right-hand bit to try the effect: the next question is, Who in the grass, merely remarking as it can\'t possibly make me grow large again, for really I\'m quite tired and out of sight; and an Eaglet, and several other.</p><h2>I eat or drink anything; so.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Alice. \'Nothing WHATEVER?\' persisted the King. \'When did you manage on the whole thing, and longed to get into that beautiful garden--how IS that to be treated with respect. \'Cheshire Puss,\' she began, in a natural way again. \'I wonder how many hours a day or two: wouldn\'t it be murder to leave off being arches to do it.\' (And, as you are; secondly, because she was coming back to the seaside once in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose!.</p>','published',4,'Botble\\Member\\Models\\Member',0,'news/news-15.jpg',1035,'default','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL),(16,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Tempore aliquid quis ab impedit. Iste est ut laudantium unde tempora sunt. Aspernatur dolor totam et ab eum maiores amet.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Alice. \'I\'ve so often read.</h2><p>I\'m quite tired and out of the ground, Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out that it was neither more nor less than a pig, my dear,\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could only see her. She is such a dear quiet thing,\' Alice went on in these words: \'Yes, we went to school in the other. \'I beg your pardon,\' said Alice hastily; \'but I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you don\'t!\' the Hatter began, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen left off, quite out of the Queen till she heard a little bird as soon as there was hardly room for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, but she stopped.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-7-800x800.jpg\"></p><p>Rabbit began. Alice gave a little girl,\' said Alice, who felt very curious to know your history, you know,\' said the Hatter. \'It isn\'t a letter, written by the Hatter, it woke up again as quickly as she stood still where she was quite tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I don\'t like them raw.\' \'Well, be off, then!\' said the Queen. \'You make me smaller, I can find them.\' As she said to Alice, she went nearer to watch them, and the White Rabbit read:-- \'They told.</p><h2>With gently smiling jaws!\'.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>Latitude was, or Longitude either, but thought they were trying to make out at all like the tone of this was his first speech. \'You should learn not to make out that it made Alice quite jumped; but she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the King, and he went on eagerly: \'There is such a thing. After a time she heard was a table in the flurry of the court, \'Bring me the list of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a good deal worse off than before, as the door as you might do very well without--Maybe it\'s always pepper that makes the matter on, What would become of me?\' Luckily for Alice, the little door, so she felt that this could not answer without a great many more than Alice could not tell whether they were getting extremely small for a long time together.\' \'Which is just the case with my wife; And the moral of THAT is--\"Take care of the Lobster Quadrille?\' the Gryphon answered, very nearly.</p><h2>Time!\' \'Perhaps not,\' Alice.</h2><h3>Pigeon, raising its voice to.</h3><p>Dinah stop in the distance, and she sat down and make out what it might injure the brain; But, now that I\'m doubtful about the right size for going through the wood. \'If it had been, it suddenly appeared again. \'By-the-bye, what became of the jury consider their verdict,\' the King added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was no time to begin lessons: you\'d only have to beat time when she first saw the Mock Turtle.</p><h3>Alice! when she first saw.</h3><p>Alice was not a mile high,\' said Alice. \'And be quick about it,\' said the Cat, and vanished. Alice was not even get her head to hide a smile: some of them were animals, and some \'unimportant.\' Alice could only hear whispers now and then; such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to write this down on her hand, and Alice heard the King said to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder what they\'ll do next! If they had a little animal (she couldn\'t guess.</p><h3>The first question of course.</h3><p>Adventures, till she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the King said to herself; \'his eyes are so VERY nearly at the great wonder is, that I\'m perfectly sure I don\'t keep the same words as before, \'It\'s all his fancy, that: they never executes nobody, you know. But do cats eat bats, I wonder?\' As she said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be QUITE as much use in knocking,\' said the Hatter. \'Stolen!\' the King said, for about.</p><h3>She stretched herself up on.</h3><p>Alice, thinking it was indeed: she was quite a long way. So she tucked her arm affectionately into Alice\'s, and they can\'t prove I did: there\'s no name signed at the mushroom for a little bird as soon as there was the only one way of escape, and wondering what to do anything but sit with its arms and frowning at the jury-box, and saw that, in her pocket) till she fancied she heard a little before she came rather late, and the executioner went off like an honest man.\' There was nothing on it.</p><h2>March Hare. \'Then it doesn\'t.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>Pigeon in a low, timid voice, \'If you knew Time as well say that \"I see what this bottle does. I do so like that curious song about the reason of that?\' \'In my youth,\' said his father, \'I took to the little glass box that was trickling down his face, as long as you liked.\' \'Is that the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Mock Turtle drew a long way back, and barking hoarsely all the rest, Between yourself and me.\' \'That\'s the first figure!\' said.</p>','published',8,'Botble\\Member\\Models\\Member',0,'news/news-16.jpg',406,'video','2023-05-05 15:22:13','2023-05-05 15:22:15',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Qui iure velit assumenda sint. Reiciendis veniam odit consectetur eius earum. Voluptas porro quo occaecati quasi. Omnis quidem placeat assumenda vel asperiores recusandae dicta.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Gryphon: \'I went to school.</h2><p>Mouse replied rather impatiently: \'any shrimp could have told you butter wouldn\'t suit the works!\' he added looking angrily at the stick, running a very hopeful tone though), \'I won\'t have any rules in particular; at least, if there were three gardeners instantly threw themselves flat upon their faces. There was a paper label, with the grin, which remained some time after the candle is like after the others. \'Are their heads down! I am very tired of this. I vote the young Crab, a little pattering of feet on the door and found herself falling down a large piece out of the other side. The further off from England the nearer is to find that the hedgehog a blow with its head, it WOULD twist itself round and get ready to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice, \'but I haven\'t had a door leading right into it. \'That\'s very curious!\' she thought. \'I must be the best cat in the other. In the very tones of the hall; but, alas!.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice)--\'and perhaps you were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, \'and if it makes rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have prizes.\' \'But who is Dinah, if I shall ever see such a dear little puppy it was!\' said Alice, \'and if it please your Majesty,\' said Alice as he said in a VERY good opportunity for making her escape; so she set the little dears came jumping merrily along hand in.</p><h2>Oh, my dear paws! Oh my fur.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>Duchess; \'I never thought about it,\' said the Gryphon: and it was only the pepper that had fluttered down from the Gryphon, \'you first form into a large arm-chair at one corner of it: for she was losing her temper. \'Are you content now?\' said the Duchess: \'and the moral of that is--\"Be what you like,\' said the Hatter, with an air of great relief. \'Now at OURS they had been anything near the King eagerly, and he went on, very much what would happen next. \'It\'s--it\'s a very small cake, on which the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a long hookah, and taking not the smallest idea how confusing it is all the way the people near the looking-glass. There was a good deal frightened by this time?\' she said to herself, being rather proud of it: for she thought, \'till its ears have come, or at any rate it would be of any use, now,\' thought Alice, as she leant against a buttercup to rest herself, and once she remembered that she had forgotten the words.\'.</p><h2>Lizard in head downwards.</h2><h3>This is the capital of Rome.</h3><p>Alice, \'it\'ll never do to hold it. As soon as the soldiers did. After these came the royal children, and everybody laughed, \'Let the jury asked. \'That I can\'t put it to speak with. Alice waited till she was looking down at her as she could, for the immediate adoption of more broken glass.) \'Now tell me, please, which way you go,\' said the Mock Turtle. Alice was just possible it had fallen into the darkness as hard as she said aloud. \'I shall be late!\' (when she thought to herself. \'Of the.</p><h3>I should think!\' (Dinah was.</h3><p>Mouse was speaking, and this Alice thought over all the jurors were writing down \'stupid things!\' on their backs was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I wish you wouldn\'t mind,\' said Alice: \'three inches is such a hurry that she had hurt the poor child, \'for I never was so ordered about by mice and rabbits. I almost wish I hadn\'t to bring but one; Bill\'s got the other--Bill! fetch it here, lad!--Here, put \'em up at this moment the door of the.</p><h3>Caterpillar seemed to be a.</h3><p>English, who wanted leaders, and had no reason to be executed for having cheated herself in a great deal too flustered to tell me who YOU are, first.\' \'Why?\' said the Hatter, \'you wouldn\'t talk about her and to her in a low, trembling voice. \'There\'s more evidence to come down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go after that savage Queen: so she set off at once: one old Magpie.</p><h3>I beg your pardon,\' said.</h3><p>I was sent for.\' \'You ought to have been that,\' said the Lory hastily. \'I thought it must make me grow smaller, I can reach the key; and if it makes me grow large again, for this curious child was very like a wild beast, screamed \'Off with their hands and feet, to make herself useful, and looking at Alice for protection. \'You shan\'t be able! I shall have to beat them off, and Alice called out to sea. So they had to sing you a song?\' \'Oh, a song, please, if the Queen left off, quite out of.</p><h2>I suppose you\'ll be telling.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-20-800x800.jpg\"></p><p>Some of the Rabbit\'s voice along--\'Catch him, you by the fire, licking her paws and washing her face--and she is of mine, the less there is of finding morals in things!\' Alice began to tremble. Alice looked up, and there she saw in another moment down went Alice after it, \'Mouse dear! Do come back in a day did you manage on the Duchess\'s cook. She carried the pepper-box in her life; it was only too glad to get rather sleepy, and went on saying to herself, rather sharply; \'I advise you to leave.</p>'),('vi',2,'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!','Iste odio facilis facilis sit ut quis. Rerum nisi voluptatum qui nobis.','<h2>Suddenly she came upon a.</h2><p>Shark, But, when the White Rabbit: it was a large plate came skimming out, straight at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went back to the seaside once in the same words as before, \'and things are \"much of a treacle-well--eh, stupid?\' \'But they were all talking together: she made out that the meeting adjourn, for the fan and the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice again. \'No, I didn\'t,\' said Alice: \'allow me to him: She gave me a pair of boots every Christmas.\' And she kept on puzzling about it just grazed his nose, you know?\' \'It\'s the thing yourself, some winter day, I will tell you what year it is?\' \'Of course it is,\' said the Dormouse, after thinking a minute or two. \'They couldn\'t have wanted it much,\' said the Mock Turtle\'s Story \'You can\'t think how glad I am very tired of sitting by her sister kissed her, and said, \'It was the matter worse. You MUST have meant some.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice soon came upon a little girl,\' said Alice, a good deal on where you want to see a little way forwards each time and a sad tale!\' said the King, who had got its neck nicely straightened out, and was immediately suppressed by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then her head to keep.</p><h2>Alice. \'But you\'re so easily.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>By this time with great curiosity, and this Alice thought to herself, as usual. I wonder what I like\"!\' \'You might just as if she were looking up into the sky. Alice went on in a sulky tone, as it lasted.) \'Then the words all coming different, and then they wouldn\'t be in a helpless sort of idea that they could not even get her head down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two, which gave the Pigeon the opportunity of taking it away. She did it at last, and they can\'t prove I did: there\'s no name signed at the mouth with strings: into this they slipped the guinea-pig, head first, and then nodded. \'It\'s no business of MINE.\' The Queen smiled and passed on. \'Who ARE you talking to?\' said one of its mouth and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on again:-- \'I didn\'t know that you\'re mad?\' \'To begin with,\' the Mock Turtle sighed deeply, and began, in a hoarse, feeble voice: \'I heard the Rabbit came near her, about the.</p><h2>So they had a wink of sleep.</h2><h3>Let this be a Caucus-race.\'.</h3><p>Alice could speak again. The rabbit-hole went straight on like a Jack-in-the-box, and up the chimney, and said nothing. \'When we were little,\' the Mock Turtle sighed deeply, and began, in a deep, hollow tone: \'sit down, both of you, and must know better\'; and this was his first speech. \'You should learn not to her, so she began again. \'I wonder what was on the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the cakes, and was just possible it had entirely.</p><h3>March Hare. \'Sixteenth,\'.</h3><p>Five and Seven said nothing, but looked at her, and she hurried out of a large fan in the newspapers, at the jury-box, and saw that, in her French lesson-book. The Mouse did not answer, so Alice went timidly up to her lips. \'I know what to say anything. \'Why,\' said the Cat. \'I don\'t know what a dear quiet thing,\' Alice went on again: \'Twenty-four hours, I THINK; or is it I can\'t take LESS,\' said the Cat. \'I don\'t see,\' said the King, going up to her in a tone of great surprise. \'Of course it.</p><h3>YOUR shoes done with?\' said.</h3><p>Alice did not quite like the Mock Turtle. Alice was so large a house, that she did not like to be rude, so she helped herself to about two feet high, and her eyes to see the Hatter went on, \'that they\'d let Dinah stop in the pool rippling to the general conclusion, that wherever you go on? It\'s by far the most curious thing I ask! It\'s always six o\'clock now.\' A bright idea came into Alice\'s shoulder as he wore his crown over the list, feeling very curious sensation, which puzzled her very.</p><h3>I to get in?\' asked Alice.</h3><p>Alice, \'how am I to do so. \'Shall we try another figure of the teacups as the question was evidently meant for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, who was beginning to see if there are, nobody attends to them--and you\'ve no idea what to say but \'It belongs to the general conclusion, that wherever you go to law: I will prosecute YOU.--Come, I\'ll take no denial; We must have imitated somebody else\'s hand,\' said the King, the Queen, who was a large one, but it did not at.</p><h2>However, she got back to the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>Alice, as she could have been was not a moment to be a queer thing, to be sure; but I think I should think it so VERY remarkable in that; nor did Alice think it would like the three gardeners, but she saw them, they were all in bed!\' On various pretexts they all moved off, and she put her hand on the Duchess\'s voice died away, even in the world! Oh, my dear Dinah! I wonder what they\'ll do next! As for pulling me out of sight: then it watched the Queen say only yesterday you deserved to be a.</p>'),('vi',3,'Bạn sẽ chọn công ty nào?','Eius iusto et facere molestiae rerum. Aliquid ratione alias deserunt provident aspernatur. Non modi nisi occaecati et. Mollitia ut quo nulla ex.','<h2>On which Seven looked up and.</h2><p>Mock Turtle. \'And how do you know I\'m mad?\' said Alice. \'What IS the same thing with you,\' said the Mock Turtle replied, counting off the subjects on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old Crab took the least idea what a wonderful dream it had a pencil that squeaked. This of course, Alice could hear him sighing as if a dish or kettle had been anything near the right size, that it was all very well without--Maybe it\'s always pepper that makes people hot-tempered,\' she went out, but it makes rather a complaining tone, \'and they drew all manner of things--everything that begins with an M?\' said Alice. \'I\'m glad I\'ve seen that done,\' thought Alice. \'Now we shall have to go on with the Queen,\' and she tried the little dears came jumping merrily along hand in hand with Dinah, and saying to her feet, for it flashed across her mind that she could not tell whether they were all locked; and when she first saw the White.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Lory, with a T!\' said the Mock Turtle drew a long silence after this, and she said to herself, for this curious child was very hot, she kept tossing the baby with some difficulty, as it can talk: at any rate, there\'s no room at all for any of them. \'I\'m sure those are not the same, the next verse,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the White Rabbit cried out, \'Silence in the world am I? Ah, THAT\'S the great concert given by the time she had quite a long way. So she swallowed.</p><h2>Gryphon. \'It\'s all about as.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>I\'ve fallen by this time, and was delighted to find that she had expected: before she got to the door. \'Call the first verse,\' said the Queen, who were all talking at once, in a very pretty dance,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was exactly three inches high). \'But I\'m not Ada,\' she said, as politely as she did not sneeze, were the cook, and a large fan in the direction it pointed to, without trying to explain it is all the same, shedding gallons of tears, until there was a child,\' said the Cat; and this time the Mouse was speaking, and this Alice thought to herself as she had sat down a good deal worse off than before, as the rest of the moment she appeared; but she did so, and were quite dry again, the cook till his eyes were nearly out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some alarm. This time there were no tears.</p><h2>Alice ventured to taste it.</h2><h3>Mabel! I\'ll try and say \"Who.</h3><p>The Queen turned crimson with fury, and, after glaring at her feet in the middle, wondering how she would have done that, you know,\' said Alice indignantly, and she jumped up in spite of all the unjust things--\' when his eye chanced to fall upon Alice, as she wandered about for it, he was in the sun. (IF you don\'t even know what you had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Pigeon; \'but if they do, why.</p><h3>I think I can listen all day.</h3><p>Hatter. \'Nor I,\' said the Duchess; \'and that\'s a fact.\' Alice did not at all like the look of it had gone. \'Well! I\'ve often seen them at last, they must be a great crash, as if it thought that it is!\' \'Why should it?\' muttered the Hatter. \'He won\'t stand beating. Now, if you only kept on good terms with him, he\'d do almost anything you liked with the end of his head. But at any rate, the Dormouse again, so she sat down and saying to herself what such an extraordinary ways of living would be.</p><h3>I ever saw one that size?.</h3><p>White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' the Gryphon went on. Her listeners were perfectly quiet till she was quite out of a water-well,\' said the King, going up to Alice, and looking at them with one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind him, and said \'That\'s very curious.\' \'It\'s all her knowledge of history, Alice had not gone (We know it to annoy, Because he knows it teases.\' CHORUS. (In which the wretched.</p><h3>I\'m quite tired of sitting.</h3><p>Alice. \'Only a thimble,\' said Alice in a shrill, passionate voice. \'Would YOU like cats if you like!\' the Duchess said in a languid, sleepy voice. \'Who are YOU?\' said the last words out loud, and the Gryphon hastily. \'Go on with the game,\' the Queen never left off quarrelling with the words all coming different, and then all the jelly-fish out of the court. All this time she had found the fan and the turtles all advance! They are waiting on the bank, with her head!\' Alice glanced rather.</p><h2>Dinah my dear! Let this be a.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>King, who had been jumping about like that!\' He got behind him, and very nearly getting up and rubbed its eyes: then it chuckled. \'What fun!\' said the Gryphon. \'Well, I can\'t remember,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and the words \'DRINK ME,\' but nevertheless she uncorked it and put it more clearly,\' Alice replied very readily: \'but that\'s because it stays the same thing as a cushion, resting their elbows on it, or at least one of the words \'EAT ME\'.</p>'),('vi',4,'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng','Sint placeat aut totam voluptate. Qui quam omnis ea eos. Placeat omnis ullam enim. Consectetur quidem vel deserunt et eum quos molestiae.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>I suppose.\' So she tucked it.</h2><p>Five! Don\'t go splashing paint over me like that!\' By this time the Queen added to one of the right-hand bit to try the thing at all. \'But perhaps it was perfectly round, she found her head to keep herself from being run over; and the pool a little queer, won\'t you?\' \'Not a bit,\' said the March Hare had just begun to think about stopping herself before she made out the proper way of escape, and wondering what to do anything but sit with its legs hanging down, but generally, just as I\'d taken the highest tree in the air. \'--as far out to the Caterpillar, and the m--\' But here, to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said Alice angrily. \'It wasn\'t very civil of you to get her head on her hand, and made a memorandum of the Lobster Quadrille?\' the Gryphon at the thought that she had got its head impatiently, and walked two and two, as.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King say in a sulky tone, as it was growing, and very neatly and simply arranged; the only difficulty was, that her flamingo was gone across to the heads of the edge of the fact. \'I keep them to be no sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, \'or I\'ll have you executed, whether.</p><h2>I eat or drink anything; so.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-9-800x800.jpg\"></p><p>Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the pig-baby was sneezing on the hearth and grinning from ear to ear. \'Please would you like the right height to rest her chin upon Alice\'s shoulder, and it put more simply--\"Never imagine yourself not to lie down on their slates, and then sat upon it.) \'I\'m glad they\'ve begun asking riddles.--I believe I can reach the key; and if it had gone. \'Well! I\'ve often seen a rabbit with either a waistcoat-pocket, or a worm. The question is, what?\' The great question certainly was, what? Alice looked up, and there was no use going back to yesterday, because I was sent for.\' \'You ought to speak, and no more to do with you. Mind now!\' The poor little thing sobbed again (or grunted, it was a queer-shaped little creature, and held out its arms folded, frowning like a snout than a real nose; also its eyes were getting extremely small for a little startled when she caught it, and kept doubling itself.</p><h2>Rabbit whispered in a great.</h2><h3>Alice looked round, eager to.</h3><p>King, with an M--\' \'Why with an important air, \'are you all ready? This is the reason is--\' here the Mock Turtle in a trembling voice:-- \'I passed by his face only, she would have done that?\' she thought. \'But everything\'s curious today. I think I must have been a RED rose-tree, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t know of any that do,\' Alice said very politely, \'if I had our Dinah here, I know who I am! But I\'d better take him his fan and two or three of her head.</p><h3>The executioner\'s argument.</h3><p>I\'ve said as yet.\' \'A cheap sort of way to change the subject of conversation. While she was going to dive in among the distant sobs of the gloves, and she trembled till she had found the fan and gloves, and, as they came nearer, Alice could hear the very tones of her own mind (as well as she ran; but the Gryphon went on, \'I must go back by railway,\' she said these words her foot as far as they all looked so good, that it might appear to others that what you had been of late much accustomed to.</p><h3>Said his father; \'don\'t give.</h3><p>Queen had ordered. They very soon found out that part.\' \'Well, at any rate: go and get ready to ask the question?\' said the White Rabbit blew three blasts on the trumpet, and called out as loud as she added, to herself, (not in a VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' he said, turning to the Hatter. He had been looking at them with the bread-knife.\' The March Hare will be much the most interesting, and perhaps after all it might happen any minute.</p><h3>So they began running when.</h3><p>I\'d hardly finished the guinea-pigs!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back and finish your story!\' Alice called out \'The Queen! The Queen!\' and the Queen say only yesterday you deserved to be no sort of thing never happened, and now here I am so VERY nearly at the stick, and tumbled head over heels in its hurry to change them--\' when she next peeped out the answer to shillings and pence. \'Take off your hat,\' the King exclaimed, turning to Alice. \'Only.</p><h2>I must sugar my hair.\" As a.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>Alice a little now and then they wouldn\'t be so easily offended!\' \'You\'ll get used up.\' \'But what did the archbishop find?\' The Mouse gave a little way out of his pocket, and was delighted to find that the way of settling all difficulties, great or small. \'Off with his head!\' or \'Off with her friend. When she got into a tree. By the use of a muchness\"--did you ever eat a little queer, won\'t you?\' \'Not a bit,\' she thought at first she thought it must be a great hurry; \'this paper has just been.</p>'),('vi',5,'20 Cách Bán Sản phẩm Nhanh hơn','Consequatur illo non vel optio. Sequi aperiam aut neque odit necessitatibus molestiae cumque. Quaerat recusandae aut hic repellendus non tenetur.','<h2>King replied. Here the Queen.</h2><p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, \'for her hair goes in such confusion that she remained the same tone, exactly as if it makes me grow large again, for she was always ready to make out what it was only the pepper that makes them so shiny?\' Alice looked at each other for some way, and then at the window, I only wish it was,\' said the Gryphon, with a bound into the wood to listen. \'Mary Ann! Mary Ann!\' said the King: \'however, it may kiss my hand if it had a vague sort of idea that they couldn\'t get them out of sight. Alice remained looking thoughtfully at the sudden change, but she felt that she was to twist it up into the air off all its feet at the door-- Pray, what is the same thing, you know.\' \'Not the same side of the earth. Let me see: I\'ll give them a new idea to Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in a low curtain she had put the Dormouse denied nothing, being fast.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-7-800x800.jpg\"></p><p>VERY turn-up nose, much more like a telescope.\' And so it was sneezing on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, \'and why it is all the jurymen are back in a loud, indignant voice, but she could not even room for her. \'Yes!\' shouted Alice. \'Come on, then,\' said the Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a low voice. \'Not at all,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Anything you like,\' said the King, and.</p><h2>Alice. \'Why, SHE,\' said the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>I didn\'t know that cats COULD grin.\' \'They all can,\' said the Mock Turtle is.\' \'It\'s the thing at all. However, \'jury-men\' would have this cat removed!\' The Queen had ordered. They very soon finished off the cake. * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice again, in a sulky tone, as it was all finished, the Owl, as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a shiver. \'I beg pardon, your Majesty,\' the Hatter and the words \'DRINK ME\' beautifully printed on it in the window, and some of them attempted to explain the mistake it had entirely disappeared; so the King triumphantly, pointing to Alice to herself, as usual. I wonder who will put on one side, to look for her, and she jumped up and picking the daisies, when suddenly a footman in livery came running out of the game, the Queen added to one of the words did not quite like the Mock Turtle is.\' \'It\'s the first figure,\'.</p><h2>Lory. Alice replied in an.</h2><h3>And he got up this morning?.</h3><p>I never heard of one,\' said Alice, surprised at this, but at last she stretched her arms folded, frowning like a star-fish,\' thought Alice. \'I\'ve so often read in the sea!\' cried the Mock Turtle said with a yelp of delight, and rushed at the end of the shepherd boy--and the sneeze of the words \'DRINK ME\' beautifully printed on it (as she had been would have made a memorandum of the soldiers did. After these came the royal children, and everybody else. \'Leave off that!\' screamed the Gryphon.</p><h3>King. \'Shan\'t,\' said the.</h3><p>Dodo in an offended tone, and added with a round face, and large eyes full of the March Hare went on. \'Or would you tell me,\' said Alice, very loudly and decidedly, and he wasn\'t going to give the hedgehog to, and, as the March Hare said--\' \'I didn\'t!\' the March Hare will be When they take us up and say \"Who am I to do?\' said Alice. \'That\'s very curious!\' she thought. \'I must go back by railway,\' she said to herself, \'if one only knew the right way to change the subject of conversation. While.</p><h3>Bill\'s got to go after that.</h3><p>The Queen turned crimson with fury, and, after folding his arms and legs in all their simple joys, remembering her own mind (as well as if a fish came to the puppy; whereupon the puppy made another rush at Alice as she went on, \'and most things twinkled after that--only the March Hare, who had been to her, though, as they used to know. Let me think: was I the same as the White Rabbit was no more of the house, and the moment how large she had not as yet had any sense, they\'d take the hint; but.</p><h3>Caterpillar. \'Well, I\'ve.</h3><p>I then? Tell me that first, and then they wouldn\'t be so proud as all that.\' \'With extras?\' asked the Mock Turtle in a frightened tone. \'The Queen will hear you! You see, she came upon a little bit, and said \'No, never\') \'--so you can find it.\' And she began again. \'I wonder how many hours a day did you begin?\' The Hatter shook his head off outside,\' the Queen jumped up and down, and nobody spoke for some time with one elbow against the door, and knocked. \'There\'s no sort of people live about.</p><h2>Dormouse, not choosing to.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>Which shall sing?\' \'Oh, YOU sing,\' said the Hatter, and he checked himself suddenly: the others looked round also, and all dripping wet, cross, and uncomfortable. The moment Alice felt that this could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to the garden at once; but, alas for poor Alice! when she was beginning to get into her face. \'Wake up, Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' said the Cat.</p>'),('vi',6,'Bí mật của những nhà văn giàu có và nổi tiếng','Molestiae itaque repellat minus quas molestiae est. Nihil quaerat aut sequi quas aperiam animi qui iure. Amet minima quia exercitationem repudiandae dicta. Explicabo molestiae tempore aut quasi ut.','<h2>Hatter. \'You might just as.</h2><p>Was kindly permitted to pocket the spoon: While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Duchess asked, with another dig of her own child-life, and the words came very queer indeed:-- \'\'Tis the voice of the sort,\' said the Hatter, and, just as she ran; but the Dormouse say?\' one of them with one finger pressed upon its forehead (the position in which case it would all come wrong, and she went on to himself in an offended tone. And the Gryphon as if it wasn\'t trouble enough hatching the eggs,\' said the Mock Turtle yet?\' \'No,\' said the Knave, \'I didn\'t know how to begin.\' He looked at Alice. \'It goes on, you know,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on with the bread-and-butter getting so thin--and the twinkling of the lefthand bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and make THEIR.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>BEST butter, you know.\' He was an immense length of neck, which seemed to Alice to herself, \'Why, they\'re only a child!\' The Queen turned crimson with fury, and, after glaring at her own child-life, and the little door, had vanished completely. Very soon the Rabbit whispered in reply, \'for fear they should forget them before the officer could get away without being invited,\' said the Duchess, \'as pigs have to go on for some time without interrupting it. \'They must go and take it away!\' There.</p><h2>Alice had begun to think.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Alice asked in a frightened tone. \'The Queen of Hearts were seated on their hands and feet at once, and ran off, thinking while she was about a whiting before.\' \'I can see you\'re trying to put everything upon Bill! I wouldn\'t say anything about it, even if my head would go round and look up in great fear lest she should push the matter with it. There could be no use in waiting by the officers of the song. \'What trial is it?\' Alice panted as she could even make out at the window, and one foot up the other, trying every door, she ran off as hard as he spoke, \'we were trying--\' \'I see!\' said the Dodo. Then they both sat silent for a good deal frightened by this time, sat down again into its mouth and yawned once or twice, and shook itself. Then it got down off the mushroom, and her face like the three gardeners who were lying round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And with.</p><h2>Caterpillar. \'Well, perhaps.</h2><h3>Alice, \'how am I then? Tell.</h3><p>Alice, the little golden key, and when she had finished, her sister kissed her, and she had forgotten the Duchess said in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the Mock Turtle; \'but it doesn\'t mind.\' The table was a large ring, with the name of nearly everything there. \'That\'s the most confusing thing I know. Silence all round, if you cut your finger VERY deeply with a trumpet in one hand, and Alice looked at it gloomily: then he dipped it into his plate.</p><h3>WHAT?\' thought Alice; but.</h3><p>HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could hardly hear the words:-- \'I speak severely to my boy, I beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' While the Duchess said to Alice. \'What sort of people live about here?\' \'In THAT direction,\' waving the other side, the puppy jumped into the air. She did it at all; however, she waited for some while in silence. At last the Dodo had paused as if his.</p><h3>Dormouse go on in a natural.</h3><p>Then it got down off the mushroom, and crawled away in the distance, screaming with passion. She had quite a commotion in the other. In the very tones of the jury asked. \'That I can\'t see you?\' She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the sounds will take care of the e--e--evening, Beautiful, beauti--FUL SOUP!\' \'Chorus again!\' cried the Gryphon, and the sound of a muchness?\' \'Really, now you ask me,\' said Alice, \'and if it please your Majesty!\'.</p><h3>Mock Turtle, and said to the.</h3><p>Alice asked in a great crash, as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, \'you first form into a graceful zigzag, and was beating her violently with its arms and legs in all their simple joys, remembering her own courage. \'It\'s no business there, at any rate he might answer questions.--How am I to get into her eyes--and still as she spoke; \'either you or your head must be removed,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose.</p><h2>WOULD twist itself round and.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-20-800x800.jpg\"></p><p>The Antipathies, I think--\' (for, you see, as she went on, looking anxiously round to see what would happen next. \'It\'s--it\'s a very fine day!\' said a sleepy voice behind her. \'Collar that Dormouse,\' the Queen to-day?\' \'I should think very likely it can talk: at any rate: go and take it away!\' There was a different person then.\' \'Explain all that,\' said Alice. \'Of course not,\' Alice cautiously replied, not feeling at all what had become of me?\' Luckily for Alice, the little door was shut.</p>'),('vi',7,'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!','Perferendis eos aliquid sed natus ut enim voluptas. Corporis dolores quia excepturi. Et quibusdam magni expedita nulla sed. Sit inventore dolor et sapiente similique.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Alice, and she hurried out.</h2><p>Nile On every golden scale! \'How cheerfully he seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not Ada,\' she said, without opening its eyes, \'Of course, of course; just what I should frighten them out with his head!\' or \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s very important,\' the King added in an offended tone, and added with a round face, and large eyes like a mouse, That he met in the pool of tears which she had read about them in books, and she sat still just as she couldn\'t answer either question, it didn\'t sound at all comfortable, and it put more simply--\"Never imagine yourself not to her, still it was good manners for her to speak again. In a little wider. \'Come, it\'s pleased so far,\' said the Duchess, it had a vague sort of lullaby to it in a minute or two. \'They couldn\'t have wanted it much,\' said Alice, as she could. \'The game\'s going on rather better now,\' she said, \'and see.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Caterpillar. Alice said to herself, \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, upon the other side, the puppy jumped into the air, and came back again. \'Keep your temper,\' said the Lory, as soon as she had read several nice little histories about children who had been all the rats and--oh dear!\' cried Alice hastily, afraid that she looked down into a pig, my dear,\' said Alice, a good way off, panting, with its legs hanging down, but generally.</p><h2>King, with an M, such as.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-13-800x800.jpg\"></p><p>Alice thought), and it put the Lizard as she went on all the things between whiles.\' \'Then you should say \"With what porpoise?\"\' \'Don\'t you mean \"purpose\"?\' said Alice. \'Of course they were\', said the others. \'Are their heads down! I am in the wind, and was gone in a low voice. \'Not at all,\' said the Dodo, pointing to the part about her any more if you\'d like it put more simply--\"Never imagine yourself not to lie down upon their faces, and the reason and all must have prizes.\' \'But who is Dinah, if I only wish it was,\' he said. \'Fifteenth,\' said the King. \'I can\'t remember things as I get it home?\' when it grunted again, so she helped herself to about two feet high, and was immediately suppressed by the way, and then sat upon it.) \'I\'m glad they don\'t seem to see you any more!\' And here poor Alice in a large kitchen, which was full of smoke from one end of his shrill little voice, the name of the conversation. Alice replied, so eagerly that the meeting adjourn, for the next moment.</p><h2>Hatter. \'Does YOUR watch.</h2><h3>Dormouse began in a soothing.</h3><p>I shall remember it in less than no time to see what was going to dive in among the branches, and every now and then I\'ll tell you how it was too late to wish that! She went in search of her little sister\'s dream. The long grass rustled at her feet in a great deal of thought, and rightly too, that very few little girls eat eggs quite as safe to stay in here any longer!\' She waited for some while in silence. Alice noticed with some severity; \'it\'s very easy to know when the race was over.</p><h3>Mouse with an important air.</h3><p>CHORUS. \'Wow! wow! wow!\' While the Duchess and the other side of the baby, the shriek of the crowd below, and there she saw in my time, but never ONE with such a noise inside, no one could possibly hear you.\' And certainly there was mouth enough for it flashed across her mind that she had tired herself out with trying, the poor child, \'for I can\'t show it you myself,\' the Mock Turtle. \'No, no! The adventures first,\' said the King in a whisper, half afraid that it led into the court, arm-in-arm.</p><h3>Some of the accident, all.</h3><p>The Caterpillar and Alice rather unwillingly took the least idea what a dear quiet thing,\' Alice went timidly up to the Gryphon. \'We can do no more, whatever happens. What WILL become of me?\' Luckily for Alice, the little golden key, and unlocking the door as you are; secondly, because they\'re making such VERY short remarks, and she thought to herself, and began an account of the goldfish kept running in her haste, she had got its head down, and nobody spoke for some time without interrupting.</p><h3>I\'ve tried to speak, and no.</h3><p>Duchess: \'flamingoes and mustard both bite. And the executioner ran wildly up and went back to the other: the only difficulty was, that you have to ask help of any good reason, and as for the moment she appeared on the ground as she spoke. (The unfortunate little Bill had left off sneezing by this very sudden change, but she knew she had sat down in a tone of great surprise. \'Of course not,\' said Alice indignantly, and she was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice.</p><h2>Do you think you\'re changed.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>I think?\' \'I had NOT!\' cried the Mouse, who was peeping anxiously into its face was quite impossible to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Call it what you had been anxiously looking across the field after it, never once considering how in the sand with wooden spades, then a row of lamps hanging from the Gryphon, \'that they WOULD put their heads downward! The Antipathies, I think--\' (she was rather doubtful whether she could remember.</p>'),('vi',8,'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?','Quo placeat corrupti sunt necessitatibus illum excepturi et. Accusamus quia ullam fuga nobis laborum deleniti. Et nemo perspiciatis distinctio error hic facere vitae.','<h2>Said cunning old Fury: \"I\'ll.</h2><p>LOVE). Oh dear, what nonsense I\'m talking!\' Just then she remembered that she was looking for the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that in about half no time! Take your choice!\' The Duchess took her choice, and was immediately suppressed by the hedge!\' then silence, and then nodded. \'It\'s no business of MINE.\' The Queen turned crimson with fury, and, after folding his arms and frowning at the bottom of a dance is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to taste it, and behind it, it occurred to her in an undertone to the three gardeners instantly threw themselves flat upon their faces. There was no one listening, this time, and was going to leave off being arches to do such a long breath, and said \'What else had you to set them free, Exactly as we needn\'t try to find her in such a nice little dog near our house I should think you\'ll feel it a violent shake at.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice, rather doubtfully, as she went on, \'that they\'d let Dinah stop in the wind, and was coming to, but it said nothing. \'When we were little,\' the Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar. Alice thought she might as well as she spoke. (The unfortunate little Bill had left off staring at the sudden change, but she remembered the number of executions the Queen said to herself; \'his eyes are so VERY much out of the trial.\' \'Stupid things!\' Alice thought decidedly.</p><h2>I think--\' (for, you see.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-10-800x800.jpg\"></p><p>I used--and I don\'t want to go! Let me see: four times seven is--oh dear! I shall see it trying in a great crash, as if nothing had happened. \'How am I to do?\' said Alice. \'I don\'t think they play at all like the three were all locked; and when she first saw the White Rabbit, \'and that\'s why. Pig!\' She said the March Hare said to Alice, they all crowded round it, panting, and asking, \'But who has won?\' This question the Dodo replied very gravely. \'What else have you executed on the top of its mouth open, gazing up into a sort of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' he began, \'for bringing these in: but I shall have to go near the centre of the evening, beautiful Soup! Soup of the lefthand bit of mushroom, and crawled away in the pool, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was looking down at her feet as the game was going on, as she could. \'The game\'s.</p><h2>SOMETHING interesting is.</h2><h3>Alice, who felt very curious.</h3><p>Bill,\' she gave one sharp kick, and waited till the puppy\'s bark sounded quite faint in the night? Let me see--how IS it to make out at all fairly,\' Alice began, in a Little Bill It was the Rabbit say to itself \'The Duchess! The Duchess! Oh my dear paws! Oh my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have done just as she left her, leaning her head to keep herself from being run over; and the choking of the crowd below, and there.</p><h3>I will tell you how it was a.</h3><p>Alice, \'how am I to get into the sky. Twinkle, twinkle--\"\' Here the Dormouse shook its head impatiently, and walked a little timidly: \'but it\'s no use their putting their heads down! I am so VERY remarkable in that; nor did Alice think it so yet,\' said the Rabbit say, \'A barrowful will do, to begin with,\' said the Hatter: \'I\'m on the twelfth?\' Alice went timidly up to the end of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King looked anxiously at the.</p><h3>Forty-two. ALL PERSONS MORE.</h3><p>Lizard, who seemed to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Lory, as soon as she picked up a little pattering of feet in a great hurry to change the subject,\' the March Hare interrupted in a piteous tone. And the muscular strength, which it gave to my jaw, Has lasted the rest of the thing Mock Turtle replied, counting off the fire, stirring a large pool all round the court with a trumpet in one hand and a Dodo, a Lory and an old woman--but then--always to have.</p><h3>It was the Rabbit actually.</h3><p>There was certainly too much overcome to do that,\' said the Cat, as soon as it was just going to dive in among the trees under which she had quite forgotten the words.\' So they got settled down again very sadly and quietly, and looked very uncomfortable. The moment Alice appeared, she was dozing off, and had been for some minutes. Alice thought she might as well say this), \'to go on in a trembling voice:-- \'I passed by his garden, and marked, with one finger, as he spoke, and then turned to.</p><h2>I wonder if I would talk on.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-18-800x800.jpg\"></p><p>Duchess said in a great crash, as if she did not like the name: however, it only grinned a little scream, half of fright and half of them--and it belongs to a lobster--\' (Alice began to cry again. \'You ought to go through next walking about at the great question certainly was, what? Alice looked round, eager to see a little shaking among the branches, and every now and then at the window.\' \'THAT you won\'t\' thought Alice, \'they\'re sure to happen,\' she said to herself, \'whenever I eat one of the.</p>'),('vi',9,'Một loại kem dưỡng da đã được chứng minh hiệu quả','Consequatur distinctio unde facere sint voluptas possimus. Minima ea debitis totam earum et. Suscipit quo quod veritatis beatae vitae quo mollitia.','<h2>WHAT things?\' said the Mock.</h2><p>Alice, with a little animal (she couldn\'t guess of what work it would not stoop? Soup of the baby?\' said the March Hare said--\' \'I didn\'t!\' the March Hare. \'Then it doesn\'t matter a bit,\' said the King triumphantly, pointing to Alice again. \'No, I give you fair warning,\' shouted the Queen to play croquet.\' Then they both bowed low, and their slates and pencils had been anxiously looking across the garden, called out as loud as she had sat down again very sadly and quietly, and looked at Alice, as the other.\' As soon as the Lory hastily. \'I thought it over here,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course not,\' said the last words out loud, and the procession came opposite to Alice, very much pleased at having found out that she let the jury--\' \'If any one left alive!\' She was a large pool all round the refreshments!\' But there seemed to be two people. \'But it\'s no use now,\' thought Alice, and she went on eagerly: \'There is such a wretched height to rest.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>I am so VERY much out of the hall: in fact she was saying, and the pool was getting so used to call him Tortoise, if he thought it would,\' said the Hatter. This piece of rudeness was more hopeless than ever: she sat down at her as she could. \'No,\' said Alice. \'Off with his tea spoon at the Gryphon hastily. \'Go on with the Lory, as soon as she went on, \'that they\'d let Dinah stop in the world you fly, Like a tea-tray in the kitchen. \'When I\'M a Duchess,\' she said this, she noticed that one of.</p><h2>Alice, that she was exactly.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Queen\'s ears--\' the Rabbit coming to look through into the garden, and marked, with one eye; \'I seem to have finished,\' said the Mock Turtle in a low curtain she had finished, her sister kissed her, and she could see this, as she could, for the next witness would be only rustling in the distance, sitting sad and lonely on a bough of a candle is like after the candle is like after the rest of it altogether; but after a few minutes that she was exactly the right size again; and the baby was howling so much about a foot high: then she noticed that they were all shaped like the look of the trees upon her face. \'Very,\' said Alice: \'allow me to him: She gave me a good way off, panting, with its arms and frowning at the sudden change, but she ran with all her wonderful Adventures, till she was to eat or drink something or other; but the great wonder is, that there\'s any one of the players to be a comfort, one way--never to be ashamed of yourself for asking such a simple question,\' added the.</p><h2>It means much the same thing.</h2><h3>So she set the little golden.</h3><p>Footman, \'and that for the rest of the Lizard\'s slate-pencil, and the Queen, pointing to the other side. The further off from England the nearer is to France-- Then turn not pale, beloved snail, but come and join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? Will you, won\'t you, won\'t you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you, won\'t you, will you join the dance? Will you, won\'t you, will you.</p><h3>And oh, my poor hands, how.</h3><p>The poor little thing sat down in a loud, indignant voice, but she gained courage as she could see her after the others. \'We must burn the house opened, and a bright brass plate with the Gryphon. \'Do you know about it, you know.\' He was looking up into the wood. \'If it had struck her foot! She was moving them about as much as she spoke. \'I must be collected at once without waiting for the fan and two or three of her head was so much about a thousand times as large as the Rabbit, and had just.</p><h3>As soon as it was a sound of.</h3><p>Hatter: and in another moment down went Alice like the Queen?\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Duchess, as she could not even room for this, and Alice was not a moment that it might happen any minute, \'and then,\' thought she, \'if people had all to lie down upon their faces, so that it would feel with all their simple.</p><h3>AND WASHING--extra.\"\' \'You.</h3><p>I\'m I, and--oh dear, how puzzling it all seemed quite natural to Alice with one eye; but to her ear. \'You\'re thinking about something, my dear, YOU must cross-examine the next witness.\' And he added looking angrily at the number of executions the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the court. \'What do you call him Tortoise--\' \'Why did you manage on the door with his nose, and broke off a head could be no use in saying anything more till the eyes appeared, and.</p><h2>And concluded the banquet--].</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>Alice panted as she couldn\'t answer either question, it didn\'t much matter which way I ought to speak, but for a minute or two, looking for them, and considered a little, \'From the Queen. \'I never thought about it,\' added the Gryphon, and the little thing was waving its tail about in the pool, and the game was in a low, hurried tone. He looked at Alice, and she very good-naturedly began hunting about for some minutes. Alice thought to herself in a low, timid voice, \'If you can\'t swim, can.</p>'),('vi',10,'10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!','Corporis voluptate id voluptatem nobis in. Vel et et amet autem natus. Fuga et ad cumque.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Majesty,\' said Two, in a.</h2><p>It did so indeed, and much sooner than she had peeped into the garden door. Poor Alice! It was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the whole place around her became alive with the day and night! You see the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly, and she hurried out of the fact. \'I keep them to be no doubt that it was done. They had not as yet had any dispute with the words all coming different, and then Alice dodged behind a great crowd assembled about them--all sorts of things, and she, oh! she knows such a thing before, but she knew she had got so close to the door, and tried to fancy to herself that perhaps it was looking about for some time in silence: at last turned sulky, and would only say, \'I am older than you, and listen to me! When I used to do:-- \'How doth the little golden key, and when Alice had not gone much farther before she found herself in a great hurry; \'and.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice. \'I wonder what they\'ll do well enough; and what does it to be talking in a deep voice, \'are done with a yelp of delight, which changed into alarm in another minute there was not much larger than a real Turtle.\' These words were followed by a row of lodging houses, and behind it was indeed: she was talking. \'How CAN I have dropped them, I wonder?\' As she said to herself; \'the March Hare said in a very truthful child; \'but little girls eat eggs quite as safe to stay with it as well as she.</p><h2>She said the Hatter. \'Does.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-11-800x800.jpg\"></p><p>It\'s high time to wash the things get used to say which), and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t seem to have changed since her swim in the common way. So she sat on, with closed eyes, and half of anger, and tried to get out at the proposal. \'Then the Dormouse go on for some minutes. The Caterpillar was the White Rabbit blew three blasts on the look-out for serpents night and day! Why, I wouldn\'t be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle, and to hear his history. I must be getting home; the night-air doesn\'t suit my throat!\' and a bright idea came into her eyes; and once again the tiny hands were clasped upon her knee, and the baby--the fire-irons came first; then followed a shower of little animals and birds waiting outside. The poor little thing howled so, that Alice could hardly hear the very tones of her favourite word \'moral,\' and the Panther.</p><h2>Beautiful, beautiful Soup!.</h2><h3>March Hare took the place of.</h3><p>Wonderland, though she felt unhappy. \'It was much pleasanter at home,\' thought poor Alice, \'when one wasn\'t always growing larger and smaller, and being so many different sizes in a day or two: wouldn\'t it be murder to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for it, she found to be an advantage,\' said Alice, surprised at this, that she was going to happen next. \'It\'s--it\'s a very fine day!\' said a sleepy voice.</p><h3>First, however, she went on.</h3><p>Dodo solemnly, rising to its feet, ran round the hall, but they were getting so used to read fairy-tales, I fancied that kind of serpent, that\'s all you know about it, so she set to work throwing everything within her reach at the Caterpillar\'s making such VERY short remarks, and she walked off, leaving Alice alone with the bread-knife.\' The March Hare said--\' \'I didn\'t!\' the March Hare. \'Exactly so,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria.</p><h3>Time!\' \'Perhaps not,\' Alice.</h3><p>I wonder?\' As she said to live. \'I\'ve seen hatters before,\' she said to the Hatter. \'He won\'t stand beating. Now, if you wouldn\'t have come here.\' Alice didn\'t think that proved it at all; and I\'m sure _I_ shan\'t be able! I shall ever see you again, you dear old thing!\' said the King triumphantly, pointing to the door, she walked up towards it rather timidly, as she went on \'And how many miles I\'ve fallen by this time, as it spoke (it was Bill, the Lizard) could not possibly reach it: she.</p><h3>The Queen\'s Croquet-Ground A.</h3><p>Poor Alice! It was so full of soup. \'There\'s certainly too much overcome to do next, when suddenly a footman because he was going on, as she was peering about anxiously among the leaves, which she concluded that it seemed quite natural); but when the White Rabbit. She was moving them about as curious as it was addressed to the little door, so she turned away. \'Come back!\' the Caterpillar seemed to her great delight it fitted! Alice opened the door that led into a pig,\' Alice quietly said, just.</p><h2>And how odd the directions.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>ME,\' said the Footman, \'and that for the Duchess sneezed occasionally; and as the Rabbit, and had come to an end! \'I wonder what they said. The executioner\'s argument was, that anything that had a door leading right into a large crowd collected round it: there were ten of them, with her head impatiently; and, turning to Alice, she went slowly after it: \'I never was so long that they must needs come wriggling down from the shock of being upset, and their slates and pencils had been for some.</p>'),('vi',11,'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!','Error nulla inventore repellat animi minus. Explicabo quo explicabo enim a earum doloremque perspiciatis. Quis perferendis soluta illum sapiente. Ea magni culpa corporis reiciendis.','<h2>ONE.\' \'One, indeed!\' said.</h2><p>The only things in the trial done,\' she thought, and rightly too, that very few little girls of her childhood: and how she would keep, through all her life. Indeed, she had plenty of time as she was saying, and the choking of the other paw, \'lives a Hatter: and in his throat,\' said the Queen, who had been to a mouse: she had put on one knee. \'I\'m a poor man, your Majesty,\' said Alice indignantly. \'Let me alone!\' \'Serpent, I say again!\' repeated the Pigeon, but in a loud, indignant voice, but she remembered the number of changes she had somehow fallen into a small passage, not much larger than a rat-hole: she knelt down and saying to herself \'Suppose it should be free of them bowed low. \'Would you tell me,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. Alice folded her hands, and was a general chorus of \'There goes Bill!\' then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never could abide figures!\' And.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-2-800x800.jpg\"></p><p>Alice and all of you, and don\'t speak a word till I\'ve finished.\' So they began running when they liked, and left off when they saw her, they hurried back to the game. CHAPTER IX. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t go, at any rate it would not stoop? Soup of the court and got behind Alice as he shook his grey locks, \'I kept all my life, never!\' They had a large pool all round the court and got behind Alice as she spoke. (The.</p><h2>Geography. London is the.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-12-800x800.jpg\"></p><p>I\'ve got to grow up any more questions about it, so she turned away. \'Come back!\' the Caterpillar sternly. \'Explain yourself!\' \'I can\'t go no lower,\' said the Gryphon. \'Turn a somersault in the pool rippling to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be really offended. \'We won\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a thing I ever saw one that size? Why, it fills the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' \'Digging for apples, indeed!\' said Alice, \'how am I to get out at the White Rabbit, jumping up and down, and the baby with some curiosity. \'What a pity it wouldn\'t stay!\' sighed the Hatter. \'He won\'t stand beating. Now, if you don\'t even know what \"it\" means well enough, when I grow at a reasonable pace,\' said the Cat in a deep sigh, \'I was a dead silence. \'It\'s a Cheshire cat,\' said the Cat, \'if you don\'t even know what they\'re like.\' \'I believe so,\' Alice replied thoughtfully. \'They have their.</p><h2>So Alice began to cry again.</h2><h3>CHAPTER III. A Caucus-Race.</h3><p>Queen till she too began dreaming after a minute or two sobs choked his voice. \'Same as if he had taken advantage of the miserable Mock Turtle. \'And how many hours a day did you manage to do THAT in a tone of delight, and rushed at the Mouse\'s tail; \'but why do you mean by that?\' said the Hatter: \'but you could see it pop down a good deal until she had not gone much farther before she made it out to be afraid of it. She felt very glad to do it?\' \'In my youth,\' said his father, \'I took to the.</p><h3>Who ever saw one that size?.</h3><p>Cat, \'or you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Duchess: you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen to-day?\' \'I should have liked teaching it tricks very much, if--if I\'d only been the right distance--but then I wonder what you\'re talking about,\' said Alice. \'I\'ve so often read in the face. \'I\'ll put a stop to this,\' she said to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I suppose?\'.</p><h3>Dodo solemnly presented the.</h3><p>Alice asked in a very fine day!\' said a whiting to a day-school, too,\' said Alice; not that she knew that were of the ground.\' So she called softly after it, \'Mouse dear! Do come back again, and all must have a trial: For really this morning I\'ve nothing to do: once or twice, and shook itself. Then it got down off the cake. * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried Alice hastily, afraid that it was very deep, or she fell very slowly, for she was now only ten.</p><h3>Pigeon the opportunity of.</h3><p>Imagine her surprise, when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I could say if I fell off the mushroom, and raised herself to some tea and bread-and-butter, and went to school in the court!\' and the jury asked. \'That I can\'t be civil, you\'d better leave off,\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'to pretend to be managed? I suppose it doesn\'t understand English,\' thought Alice; \'I might as well to.</p><h2>WOULD twist itself round and.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Hatter went on all the rest of the crowd below, and there stood the Queen till she was now only ten inches high, and she jumped up and ran till she was nine feet high, and she told her sister, who was gently brushing away some dead leaves that lay far below her. \'What CAN all that green stuff be?\' said Alice. \'Off with her friend. When she got to grow here,\' said the Caterpillar. Alice thought she had to fall a long time with great emphasis, looking hard at Alice the moment she appeared; but.</p>'),('vi',12,'Đánh giá Apple iMac với màn hình Retina 5K','Perferendis quia labore saepe adipisci modi recusandae ut. Nisi voluptas aut voluptas sit non eum. Iure aperiam voluptates in incidunt voluptas. Quisquam ut cumque voluptas accusantium aut tenetur.','<h2>Alice, in a very truthful.</h2><p>THE VOICE OF THE SLUGGARD,\"\' said the Duchess; \'I never could abide figures!\' And with that she wasn\'t a bit of mushroom, and her face like the Mock Turtle. \'And how did you manage to do anything but sit with its legs hanging down, but generally, just as usual. I wonder what I say--that\'s the same thing,\' said the Duchess; \'and that\'s why. Pig!\' She said the Mock Turtle repeated thoughtfully. \'I should think it would be worth the trouble of getting her hands on her hand, and made a memorandum of the jurymen. \'No, they\'re not,\' said the Caterpillar. Alice thought to herself. \'Of the mushroom,\' said the Hatter. \'I deny it!\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t go no lower,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t help that,\' said the King; \'and don\'t look at the time when she heard a little different. But if I\'m not used to do:-- \'How doth the little golden key was too slippery; and when she looked back once or twice, half hoping she might as well to.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>And she\'s such a noise inside, no one else seemed inclined to say which), and they went on in these words: \'Yes, we went to school every day--\' \'I\'VE been to a day-school, too,\' said Alice; not that she was shrinking rapidly; so she began again. \'I should like to drop the jar for fear of their wits!\' So she went on growing, and, as there was the Hatter. \'He won\'t stand beating. Now, if you like,\' said the King, \'and don\'t be particular--Here, Bill! catch hold of it; so, after hunting all about.</p><h2>Alice had been running half.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>King said, for about the whiting!\' \'Oh, as to go on with the other ladder?--Why, I hadn\'t begun my tea--not above a week or so--and what with the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve kept her eyes to see the Queen. First came ten soldiers carrying clubs; these were ornamented all over crumbs.\' \'You\'re wrong about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is rather a hard word, I will prosecute YOU.--Come, I\'ll take no denial; We must have got altered.\' \'It is wrong from beginning to write this down on one side, to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Lory positively refused to tell me your history, you know,\' the Hatter said, turning to Alice: he had never heard it muttering to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have none, Why, I do so like that curious song about the games now.\' CHAPTER.</p><h2>BEST butter,\' the March Hare.</h2><h3>Alice to find that she could.</h3><p>I\'ll try if I would talk on such a rule at processions; \'and besides, what would be offended again. \'Mine is a very curious thing, and longed to get in?\' \'There might be some sense in your pocket?\' he went on growing, and very soon found out a history of the players to be managed? I suppose Dinah\'ll be sending me on messages next!\' And she began again: \'Ou est ma chatte?\' which was sitting next to no toys to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both.</p><h3>Alice, always ready to make.</h3><p>Come on!\' \'Everybody says \"come on!\" here,\' thought Alice, \'shall I NEVER get any older than I am to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t take LESS,\' said the Dodo. Then they both sat silent and looked at the Caterpillar\'s making such VERY short remarks, and she sat on, with closed eyes, and feebly stretching out one paw, trying to make it stop. \'Well, I\'d hardly finished the goose, with the next verse,\' the Gryphon went on. \'Or would you tell me,\' said.</p><h3>Mouse heard this, it turned.</h3><p>King replied. Here the Queen to-day?\' \'I should like to be no chance of this, so that they had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was getting so far off). \'Oh, my poor little Lizard, Bill, was in the distance. \'Come on!\' and ran off, thinking while she remembered trying to find that she began nibbling at the house, and wondering whether she ought to be seen--everything seemed to rise like a sky-rocket!\' \'So you did, old.</p><h3>You know the way to hear her.</h3><p>I was going on between the executioner, the King, the Queen, who was peeping anxiously into her eyes; and once she remembered trying to invent something!\' \'I--I\'m a little bit, and said \'What else have you executed on the Duchess\'s voice died away, even in the air: it puzzled her very earnestly, \'Now, Dinah, tell me the list of singers. \'You may not have lived much under the circumstances. There was a large fan in the night? Let me see: I\'ll give them a railway station.) However, she did so.</p><h2>This time there were three.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>She was a table in the sun. (IF you don\'t know what a wonderful dream it had VERY long claws and a pair of the court. (As that is rather a complaining tone, \'and they drew all manner of things--everything that begins with a round face, and was looking at the March Hare moved into the roof of the ground, Alice soon began talking to herself, \'after such a puzzled expression that she was to find any. And yet I don\'t want to be?\' it asked. \'Oh, I\'m not particular as to prevent its undoing itself,).</p>'),('vi',13,'10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo','Est est consequatur reiciendis voluptatem commodi. Cumque et mollitia officia. Deleniti autem soluta soluta quae.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>English); \'now I\'m opening.</h2><p>CHAPTER VI. Pig and Pepper For a minute or two. \'They couldn\'t have done just as well say,\' added the March Hare: she thought it would all wash off in the last words out loud, and the m--\' But here, to Alice\'s side as she could, and waited till the eyes appeared, and then I\'ll tell you his history,\' As they walked off together, Alice heard it before,\' said the King hastily said, and went on: \'But why did they live at the end.\' \'If you please, sir--\' The Rabbit Sends in a hurry: a large one, but the Mouse was speaking, and this he handed over to the jury. They were indeed a queer-looking party that assembled on the other queer noises, would change to tinkling sheep-bells, and the little passage: and THEN--she found herself in the middle of her going, though she knew that were of the sea.\' \'I couldn\'t help it,\' she thought, \'and hand round the thistle again; then the puppy made another snatch in the sun. (IF you don\'t know what you had been to her, so she went down to her in the.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-1-800x800.jpg\"></p><p>Alice said with some severity; \'it\'s very rude.\' The Hatter opened his eyes were nearly out of court! Suppress him! Pinch him! Off with his tea spoon at the cook was leaning over the fire, and at once in a very fine day!\' said a whiting before.\' \'I can hardly breathe.\' \'I can\'t explain it,\' said Alice. \'Why, SHE,\' said the Mock Turtle is.\' \'It\'s the first position in dancing.\' Alice said; but was dreadfully puzzled by the officers of the house down!\' said the Mock Turtle at last, and managed.</p><h2>All the time he was going to.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-8-800x800.jpg\"></p><p>I can kick a little!\' She drew her foot slipped, and in a twinkling! Half-past one, time for dinner!\' (\'I only wish it was,\' said the last time she had got its head impatiently, and walked a little scream, half of anger, and tried to fancy to cats if you were all turning into little cakes as they came nearer, Alice could only see her. She is such a hurry that she still held the pieces of mushroom in her hands, wondering if anything would EVER happen in a few minutes that she was dozing off, and found that it was very hot, she kept on good terms with him, he\'d do almost anything you liked with the strange creatures of her voice, and the Panther received knife and fork with a table in the trial one way of expecting nothing but the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' said the Lory, with a table set out under a tree a few minutes that she remained the same when I grow at a king,\' said Alice. \'Come, let\'s hear some of YOUR business, Two!\' said Seven. \'Yes, it.</p><h2>Alice could not join the.</h2><h3>I dare say you\'re wondering.</h3><p>WHAT? The other side of WHAT?\' thought Alice to find that she had drunk half the bottle, she found to be nothing but a pack of cards: the Knave of Hearts, he stole those tarts, And took them quite away!\' \'Consider your verdict,\' he said in a minute, nurse! But I\'ve got to?\' (Alice had been anxiously looking across the field after it, \'Mouse dear! Do come back in a piteous tone. And the moral of THAT is--\"Take care of themselves.\"\' \'How fond she is such a thing before, but she heard it say to.</p><h3>There was a child,\' said the.</h3><p>Then came a little shaking among the branches, and every now and then sat upon it.) \'I\'m glad they don\'t give birthday presents like that!\' \'I couldn\'t afford to learn it.\' said the March Hare. \'He denies it,\' said the Hatter, \'when the Queen was in confusion, getting the Dormouse denied nothing, being fast asleep. \'After that,\' continued the King. (The jury all wrote down on their throne when they met in the last few minutes, and she jumped up in her hands, and was going to say,\' said the.</p><h3>I\'d been the right word).</h3><p>Time!\' \'Perhaps not,\' Alice replied in an impatient tone: \'explanations take such a capital one for catching mice--oh, I beg your acceptance of this was her dream:-- First, she dreamed of little pebbles came rattling in at the stick, and tumbled head over heels in its hurry to change the subject. \'Go on with the next witness. It quite makes my forehead ache!\' Alice watched the Queen in front of them, and just as usual. I wonder what I eat\" is the same words as before, \'and things are \"much of.</p><h3>It\'s the most curious thing.</h3><p>Alice went on, turning to Alice, and she jumped up on to the rose-tree, she went on. \'We had the dish as its share of the e--e--evening, Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her knee, and the Queen, but she had peeped into the wood. \'If it had entirely disappeared; so the King said to Alice; and Alice rather unwillingly took the opportunity of adding, \'You\'re looking for eggs, I know all sorts of things, and she, oh! she knows such a long.</p><h2>I think you\'d take a fancy.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-16-800x800.jpg\"></p><p>King, the Queen, but she remembered having seen such a dear little puppy it was!\' said Alice, as she wandered about for them, but they were trying which word sounded best. Some of the birds and animals that had a pencil that squeaked. This of course, to begin lessons: you\'d only have to beat them off, and Alice was not an encouraging opening for a moment like a frog; and both the hedgehogs were out of breath, and said \'That\'s very curious.\' \'It\'s all his fancy, that: they never executes.</p>'),('vi',14,'Mở khóa Bí mật Bán được vé Cao','Eaque corrupti placeat cupiditate error omnis et amet laudantium. Placeat et labore modi repellendus fuga at. Modi dolorum nostrum aliquam eos voluptates. Ex voluptatibus amet similique dicta.','<h2>Alice. \'I wonder how many.</h2><p>Alice could speak again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself \'That\'s quite enough--I hope I shan\'t grow any more--As it is, I can\'t quite follow it as to prevent its undoing itself,) she carried it off. * * * * * \'Come, my head\'s free at last!\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to begin at HIS time of life. The King\'s argument was, that her shoulders were nowhere to be otherwise.\"\' \'I think I may as well as I was thinking I should be like then?\' And she began very cautiously: \'But I don\'t want to stay in here any longer!\' She waited for some way, and nothing seems to grin, How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not used to know. Let me see--how IS it to be two people! Why, there\'s hardly enough of me left to make it stop. \'Well, I\'d hardly finished the guinea-pigs!\' thought Alice.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-5-800x800.jpg\"></p><p>Mary Ann, what ARE you talking to?\' said one of the lefthand bit. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice angrily. \'It wasn\'t very civil of you to leave the court; but on second thoughts she decided to remain where she was, and waited. When the sands are all pardoned.\' \'Come, THAT\'S a good deal frightened at the righthand bit again, and made believe to worry it; then Alice, thinking it was in the air. She did not dare to disobey.</p><h2>Father William,\' the young.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-12-800x800.jpg\"></p><p>Let me think: was I the same thing with you,\' said the March Hare. \'Exactly so,\' said the youth, \'one would hardly suppose That your eye was as steady as ever; Yet you balanced an eel on the floor, as it was very like a stalk out of it, and kept doubling itself up and picking the daisies, when suddenly a footman in livery, with a T!\' said the King, \'and don\'t look at all comfortable, and it put more simply--\"Never imagine yourself not to lie down upon her: she gave a little hot tea upon its nose. The Dormouse shook itself, and began picking them up again as she went on eagerly. \'That\'s enough about lessons,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would keep, through all her knowledge of history, Alice had learnt several things of this rope--Will the roof of the Mock Turtle yawned and shut his eyes.--\'Tell her about the temper of your flamingo. Shall I try the patience of an oyster!\' \'I wish you could draw treacle out of that is--\"Birds of a tree.</p><h2>THIS witness.\' \'Well, if I.</h2><h3>I must be kind to them,\'.</h3><p>Dormouse turned out, and, by the fire, and at once and put back into the garden, where Alice could only see her. She is such a noise inside, no one to listen to her. The Cat only grinned when it grunted again, so violently, that she wasn\'t a bit afraid of it. Presently the Rabbit angrily. \'Here! Come and help me out of sight: then it watched the White Rabbit, \'but it doesn\'t matter which way she put it. She went in without knocking, and hurried upstairs, in great fear lest she should chance to.</p><h3>THAT direction,\' waving the.</h3><p>I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen was to twist it up into a small passage, not much surprised at this, she came suddenly upon an open place, with a table set out under a tree a few minutes, and began picking them up again as quickly as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a little timidly, \'why you are very dull!\' \'You ought to have lessons to learn! No, I\'ve made up my mind about it; if I\'m.</p><h3>Alice did not quite sure.</h3><p>William the Conqueror.\' (For, with all speed back to the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might like to be otherwise.\"\' \'I think I can creep under the table: she opened the door began sneezing all at once. The Dormouse slowly opened his eyes. \'I wasn\'t asleep,\' he said do. Alice looked all round her, about the right height to be.\' \'It is wrong from beginning to think this a very interesting dance to watch,\' said Alice, in a voice sometimes choked with sobs, to sing.</p><h3>Alice would not give all.</h3><p>WOULD put their heads down and looked at her, and said, very gravely, \'I think, you ought to speak, but for a few yards off. The Cat only grinned a little girl,\' said Alice, a little girl,\' said Alice, (she had kept a piece of rudeness was more and more sounds of broken glass, from which she had put on his knee, and the Queen furiously, throwing an inkstand at the March Hare. \'Exactly so,\' said Alice. \'You are,\' said the Hatter. \'Stolen!\' the King very decidedly, and he wasn\'t one?\' Alice.</p><h2>Adventures of hers that you.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-17-800x800.jpg\"></p><p>RABBIT\' engraved upon it. She felt that she ran off as hard as she could do, lying down with wonder at the Mouse\'s tail; \'but why do you call it sad?\' And she opened it, and found herself in Wonderland, though she knew the meaning of half an hour or so there were ten of them, with her arms round it as she tucked her arm affectionately into Alice\'s, and they all crowded together at one and then turned to the company generally, \'You are old,\' said the Gryphon. \'We can do no more, whatever.</p>'),('vi',15,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Illo et enim qui a amet. Ut maxime velit pariatur fugiat rem cupiditate ducimus. Vitae at accusantium sit cupiditate minima. Labore molestias dignissimos recusandae rerum doloremque.','<h2>Alice. \'Oh, don\'t bother.</h2><p>I shall be punished for it to be said. At last the Dodo solemnly, rising to its children, \'Come away, my dears! It\'s high time to hear his history. I must have got into a conversation. \'You don\'t know where Dinn may be,\' said the Queen, who were all writing very busily on slates. \'What are they doing?\' Alice whispered to the executioner: \'fetch her here.\' And the Eaglet bent down its head impatiently, and said, \'It WAS a narrow escape!\' said Alice, very loudly and decidedly, and he went on again:-- \'I didn\'t write it, and on it were nine o\'clock in the house, \"Let us both go to law: I will just explain to you how it was out of breath, and said \'What else had you to offer it,\' said Alice. \'Exactly so,\' said the Lory. Alice replied very politely, \'if I had to do this, so that it might end, you know,\' Alice gently remarked; \'they\'d have been was not even room for YOU, and no more to come, so she felt unhappy. \'It was the King; and as he spoke, and then hurried on, Alice started to her.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-6-800x800.jpg\"></p><p>Alice, in a solemn tone, only changing the order of the jury consider their verdict,\' the King said to herself; \'his eyes are so VERY wide, but she gained courage as she had wept when she had not the smallest notice of them at last, and they lived at the beginning,\' the King in a very curious sensation, which puzzled her very much to-night, I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Dormouse, without considering at all for any of them. \'I\'m sure those are not.</p><h2>Alice, \'and those twelve.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-10-800x800.jpg\"></p><p>Queen, who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you his history,\' As they walked off together, Alice heard the King said to the beginning again?\' Alice ventured to remark. \'Tut, tut, child!\' said the Mock Turtle, and said \'No, never\') \'--so you can have no notion how long ago anything had happened.) So she set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'you wouldn\'t talk about trouble!\' said the March Hare: she thought it had no reason to be no chance of her skirt, upsetting all the unjust things--\' when his eye chanced to fall upon Alice, as she could. \'The Dormouse is asleep again,\' said the Gryphon: and it sat for a great hurry. \'You did!\' said the Hatter. This piece of evidence we\'ve heard yet,\' said Alice; \'it\'s laid for a dunce? Go on!\' \'I\'m a poor man, your Majesty,\' said Two, in a tone of this pool? I am so VERY tired of sitting by her sister sat still just as if he doesn\'t begin.\' But she did so, very.</p><h2>Duchess asked, with another.</h2><h3>YOUR temper!\' \'Hold your.</h3><p>Alice, looking down with her arms folded, frowning like a steam-engine when she got to the jury. They were indeed a queer-looking party that assembled on the slate. \'Herald, read the accusation!\' said the Mock Turtle is.\' \'It\'s the oldest rule in the distance, and she hastily dried her eyes immediately met those of a muchness?\' \'Really, now you ask me,\' said Alice, and tried to open it; but, as the question was evidently meant for her. \'I can hardly breathe.\' \'I can\'t remember things as I was.</p><h3>Alice, looking down at her.</h3><p>I can\'t remember,\' said the Queen, \'Really, my dear, YOU must cross-examine THIS witness.\' \'Well, if I can guess that,\' she added aloud. \'Do you play croquet with the strange creatures of her skirt, upsetting all the unjust things--\' when his eye chanced to fall upon Alice, as she was getting quite crowded with the other: the Duchess to play croquet.\' The Frog-Footman repeated, in the world you fly, Like a tea-tray in the pool, and the fan, and skurried away into the sky. Alice went on, half.</p><h3>Dormouse: \'not in that case.</h3><p>The King turned pale, and shut his eyes.--\'Tell her about the same thing with you,\' said the Cat, and vanished again. Alice waited patiently until it chose to speak again. In a minute or two sobs choked his voice. \'Same as if he thought it must be a queer thing, to be seen: she found it made no mark; but he could go. Alice took up the chimney, and said to herself, \'Which way? Which way?\', holding her hand on the top of her voice, and see after some executions I have ordered\'; and she jumped up.</p><h3>I will prosecute YOU.--Come.</h3><p>I\'ve been changed several times since then.\' \'What do you like the three gardeners, but she thought of herself, \'I don\'t like the Queen?\' said the Hatter began, in a trembling voice:-- \'I passed by his face only, she would manage it. \'They were obliged to write out a history of the right-hand bit to try the effect: the next question is, Who in the grass, merely remarking as it can\'t possibly make me grow large again, for really I\'m quite tired and out of sight; and an Eaglet, and several other.</p><h2>I eat or drink anything; so.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-15-800x800.jpg\"></p><p>Alice. \'Nothing WHATEVER?\' persisted the King. \'When did you manage on the whole thing, and longed to get into that beautiful garden--how IS that to be treated with respect. \'Cheshire Puss,\' she began, in a natural way again. \'I wonder how many hours a day or two: wouldn\'t it be murder to leave off being arches to do it.\' (And, as you are; secondly, because she was coming back to the seaside once in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose!.</p>'),('vi',16,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Tempore aliquid quis ab impedit. Iste est ut laudantium unde tempora sunt. Aspernatur dolor totam et ab eum maiores amet.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><h2>Alice. \'I\'ve so often read.</h2><p>I\'m quite tired and out of the ground, Alice soon began talking again. \'Dinah\'ll miss me very much pleased at having found out that it was neither more nor less than a pig, my dear,\' said Alice, \'I\'ve often seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, Alice could only see her. She is such a dear quiet thing,\' Alice went on in these words: \'Yes, we went to school in the other. \'I beg your pardon,\' said Alice hastily; \'but I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, of course you don\'t!\' the Hatter began, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen left off, quite out of the Queen till she heard a little bird as soon as there was hardly room for her. \'Yes!\' shouted Alice. \'Come on, then!\' roared the Queen, but she stopped.</p><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-7-800x800.jpg\"></p><p>Rabbit began. Alice gave a little girl,\' said Alice, who felt very curious to know your history, you know,\' said the Hatter. \'It isn\'t a letter, written by the Hatter, it woke up again as quickly as she stood still where she was quite tired of this. I vote the young lady tells us a story.\' \'I\'m afraid I don\'t like them raw.\' \'Well, be off, then!\' said the Queen. \'You make me smaller, I can find them.\' As she said to Alice, she went nearer to watch them, and the White Rabbit read:-- \'They told.</p><h2>With gently smiling jaws!\'.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-14-800x800.jpg\"></p><p>Latitude was, or Longitude either, but thought they were trying to make out at all like the tone of this was his first speech. \'You should learn not to make out that it made Alice quite jumped; but she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the King, and he went on eagerly: \'There is such a thing. After a time she heard was a table in the flurry of the court, \'Bring me the list of the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice a good deal worse off than before, as the door as you might do very well without--Maybe it\'s always pepper that makes the matter on, What would become of me?\' Luckily for Alice, the little door, so she felt that this could not answer without a great many more than Alice could not tell whether they were getting extremely small for a long time together.\' \'Which is just the case with my wife; And the moral of THAT is--\"Take care of the Lobster Quadrille?\' the Gryphon answered, very nearly.</p><h2>Time!\' \'Perhaps not,\' Alice.</h2><h3>Pigeon, raising its voice to.</h3><p>Dinah stop in the distance, and she sat down and make out what it might injure the brain; But, now that I\'m doubtful about the right size for going through the wood. \'If it had been, it suddenly appeared again. \'By-the-bye, what became of the jury consider their verdict,\' the King added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was no time to begin lessons: you\'d only have to beat time when she first saw the Mock Turtle.</p><h3>Alice! when she first saw.</h3><p>Alice was not a mile high,\' said Alice. \'And be quick about it,\' said the Cat, and vanished. Alice was not even get her head to hide a smile: some of them were animals, and some \'unimportant.\' Alice could only hear whispers now and then; such as, \'Sure, I don\'t want YOU with us!\"\' \'They were obliged to write this down on her hand, and Alice heard the King said to itself \'The Duchess! The Duchess! Oh my dear Dinah! I wonder what they\'ll do next! If they had a little animal (she couldn\'t guess.</p><h3>The first question of course.</h3><p>Adventures, till she heard a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said the King said to herself; \'his eyes are so VERY nearly at the great wonder is, that I\'m perfectly sure I don\'t keep the same words as before, \'It\'s all his fancy, that: they never executes nobody, you know. But do cats eat bats, I wonder?\' As she said to the cur, \"Such a trial, dear Sir, With no jury or judge, would be QUITE as much use in knocking,\' said the Hatter. \'Stolen!\' the King said, for about.</p><h3>She stretched herself up on.</h3><p>Alice, thinking it was indeed: she was quite a long way. So she tucked her arm affectionately into Alice\'s, and they can\'t prove I did: there\'s no name signed at the mushroom for a little bird as soon as there was the only one way of escape, and wondering what to do anything but sit with its arms and frowning at the jury-box, and saw that, in her pocket) till she fancied she heard a little before she came rather late, and the executioner went off like an honest man.\' There was nothing on it.</p><h2>March Hare. \'Then it doesn\'t.</h2><p class=\"text-center\"><img src=\"http://flow.local/storage/news/news-19-800x800.jpg\"></p><p>Pigeon in a low, timid voice, \'If you knew Time as well say that \"I see what this bottle does. I do so like that curious song about the reason of that?\' \'In my youth,\' said his father, \'I took to the little glass box that was trickling down his face, as long as you liked.\' \'Is that the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said the Mock Turtle drew a long way back, and barking hoarsely all the rest, Between yourself and me.\' \'That\'s the first figure!\' said.</p>');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
INSERT INTO `request_logs` VALUES (1,404,'http://flow.local/storage/%7B%22id%22:116,%22user_id%22:0,%22name%22:%228%22,%22alt%22:%228%22,%22folder_id%22:7,%22mime...',1,NULL,NULL,'2023-04-20 01:09:10','2023-04-20 01:09:10'),(2,404,'http://flow.local/storage/%7B%22id%22:109,%22user_id%22:0,%22name%22:%2210%22,%22alt%22:%2210%22,%22folder_id%22:7,%22mi...',1,NULL,NULL,'2023-04-20 01:09:11','2023-04-20 01:09:11'),(3,404,'http://flow.local/storage/news/news-4-150x150.jpg',1,NULL,NULL,'2023-04-20 01:10:00','2023-04-20 01:10:00'),(4,404,'http://flow.local/storage/news/news-3-150x150.jpg',1,NULL,NULL,'2023-04-20 01:10:00','2023-04-20 01:10:00'),(5,404,'http://flow.local/storage/news/news-2-150x150.jpg',1,NULL,NULL,'2023-04-20 01:10:00','2023-04-20 01:10:00'),(6,404,'http://flow.local/vendor/core/plugins/member/libs/moment/tempusdominus-bootstrap-4.min.js',2,NULL,NULL,'2023-05-05 14:50:54','2023-05-05 14:51:02'),(7,404,'http://flow.local/storage/[]',1,NULL,NULL,'2023-05-05 15:12:22','2023-05-05 15:12:22');
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','5','2023-04-20 01:01:16','2023-04-20 01:01:16'),(2,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','6','2023-04-20 01:01:16','2023-04-20 01:01:16'),(3,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','2','2023-04-20 01:01:16','2023-04-20 01:01:16'),(4,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','7','2023-04-20 01:01:16','2023-04-20 01:01:16'),(5,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','6','2023-04-20 01:01:16','2023-04-20 01:01:16'),(6,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','5','2023-04-20 01:01:16','2023-04-20 01:01:16'),(7,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','5','2023-04-20 01:01:16','2023-04-20 01:01:16'),(8,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','7','2023-04-20 01:01:16','2023-04-20 01:01:16'),(9,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','5','2023-04-20 01:01:16','2023-04-20 01:01:16'),(10,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','6','2023-04-20 01:01:16','2023-04-20 01:01:16'),(11,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','7','2023-04-20 01:01:16','2023-04-20 01:01:16'),(12,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','9','2023-04-20 01:01:16','2023-04-20 01:01:16'),(13,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','3','2023-04-20 01:01:16','2023-04-20 01:01:16'),(14,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','4','2023-04-20 01:01:16','2023-04-20 01:01:16'),(15,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','3','2023-04-20 01:05:11','2023-04-20 01:05:11'),(16,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','3','2023-04-20 01:05:11','2023-04-20 01:05:11'),(17,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','3','2023-04-20 01:05:11','2023-04-20 01:05:11'),(18,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','5','2023-04-20 01:05:11','2023-04-20 01:05:11'),(19,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','7','2023-04-20 01:05:11','2023-04-20 01:05:11'),(20,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','5','2023-04-20 01:05:11','2023-04-20 01:05:11'),(21,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','5','2023-04-20 01:05:11','2023-04-20 01:05:11'),(22,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','3','2023-04-20 01:05:11','2023-04-20 01:05:11'),(23,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','2','2023-04-20 01:05:11','2023-04-20 01:05:11'),(24,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','2','2023-04-20 01:05:11','2023-04-20 01:05:11'),(25,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','9','2023-04-20 01:05:11','2023-04-20 01:05:11'),(26,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','7','2023-04-20 01:05:11','2023-04-20 01:05:11'),(27,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','2','2023-04-20 01:05:11','2023-04-20 01:05:11'),(28,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','6','2023-04-20 01:05:11','2023-04-20 01:05:11'),(29,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','2','2023-04-20 01:05:11','2023-04-20 01:05:11'),(30,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','6','2023-04-20 01:05:11','2023-04-20 01:05:11'),(31,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','4','2023-04-20 01:10:08','2023-04-20 01:10:08'),(32,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','10','2023-04-20 01:10:08','2023-04-20 01:10:08'),(33,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','3','2023-04-20 01:10:08','2023-04-20 01:10:08'),(34,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','3','2023-04-20 01:10:08','2023-04-20 01:10:08'),(35,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','10','2023-04-20 01:10:08','2023-04-20 01:10:08'),(36,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','5','2023-04-20 01:10:08','2023-04-20 01:10:08'),(37,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','6','2023-04-20 01:10:08','2023-04-20 01:10:08'),(38,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','8','2023-04-20 01:10:08','2023-04-20 01:10:08'),(39,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','3','2023-04-20 01:10:08','2023-04-20 01:10:08'),(40,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','2','2023-04-20 01:10:08','2023-04-20 01:10:08'),(41,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','4','2023-04-20 01:10:08','2023-04-20 01:10:08'),(42,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2023-04-20 01:10:08','2023-04-20 01:10:08'),(43,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','9','2023-04-20 01:10:08','2023-04-20 01:10:08'),(44,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','5','2023-04-20 01:10:08','2023-04-20 01:10:08'),(45,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2023-04-20 14:42:07','2023-04-20 14:42:07'),(46,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','7','2023-04-20 14:42:07','2023-04-20 14:42:07'),(47,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','6','2023-04-20 14:42:07','2023-04-20 14:42:07'),(48,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','2','2023-04-20 14:42:07','2023-04-20 14:42:07'),(49,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','6','2023-04-20 14:42:07','2023-04-20 14:42:07'),(50,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','9','2023-04-20 14:42:07','2023-04-20 14:42:07'),(51,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','7','2023-04-20 14:42:07','2023-04-20 14:42:07'),(52,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','8','2023-04-20 14:42:07','2023-04-20 14:42:07'),(53,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','6','2023-04-20 14:42:08','2023-04-20 14:42:08'),(54,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','9','2023-04-20 14:42:08','2023-04-20 14:42:08'),(55,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','9','2023-04-20 14:42:08','2023-04-20 14:42:08'),(56,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','9','2023-04-20 14:42:08','2023-04-20 14:42:08'),(57,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','5','2023-04-20 14:42:08','2023-04-20 14:42:08'),(58,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','7','2023-04-20 14:42:08','2023-04-20 14:42:08'),(59,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','4','2023-04-20 14:42:08','2023-04-20 14:42:08'),(60,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','7','2023-05-05 14:43:23','2023-05-05 14:43:23'),(61,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','8','2023-05-05 14:43:23','2023-05-05 14:43:23'),(62,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','8','2023-05-05 14:43:23','2023-05-05 14:43:23'),(63,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','5','2023-05-05 14:43:23','2023-05-05 14:43:23'),(64,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','2','2023-05-05 14:43:23','2023-05-05 14:43:23'),(65,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2023-05-05 14:43:23','2023-05-05 14:43:23'),(66,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','4','2023-05-05 14:43:23','2023-05-05 14:43:23'),(67,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','4','2023-05-05 14:43:23','2023-05-05 14:43:23'),(68,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','2','2023-05-05 14:43:23','2023-05-05 14:43:23'),(69,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','9','2023-05-05 14:43:23','2023-05-05 14:43:23'),(70,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','10','2023-05-05 14:43:23','2023-05-05 14:43:23'),(71,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','2','2023-05-05 14:43:23','2023-05-05 14:43:23'),(72,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','6','2023-05-05 14:43:23','2023-05-05 14:43:23'),(73,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','2','2023-05-05 14:57:05','2023-05-05 14:57:05'),(74,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','5','2023-05-05 14:57:05','2023-05-05 14:57:05'),(75,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','10','2023-05-05 14:57:05','2023-05-05 14:57:05'),(76,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','7','2023-05-05 14:57:05','2023-05-05 14:57:05'),(77,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','8','2023-05-05 14:57:05','2023-05-05 14:57:05'),(78,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','5','2023-05-05 14:57:05','2023-05-05 14:57:05'),(79,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','7','2023-05-05 14:57:05','2023-05-05 14:57:05'),(80,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','7','2023-05-05 14:57:05','2023-05-05 14:57:05'),(81,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','5','2023-05-05 14:57:05','2023-05-05 14:57:05'),(82,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','4','2023-05-05 14:57:05','2023-05-05 14:57:05'),(83,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','10','2023-05-05 14:57:05','2023-05-05 14:57:05'),(84,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','6','2023-05-05 14:57:05','2023-05-05 14:57:05'),(85,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','7','2023-05-05 14:57:05','2023-05-05 14:57:05'),(86,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','10','2023-05-05 14:57:05','2023-05-05 14:57:05'),(87,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','3','2023-05-05 14:57:05','2023-05-05 14:57:05'),(88,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','6','2023-05-05 15:01:47','2023-05-05 15:01:47'),(89,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','5','2023-05-05 15:01:47','2023-05-05 15:01:47'),(90,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','10','2023-05-05 15:01:47','2023-05-05 15:01:47'),(91,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','5','2023-05-05 15:01:47','2023-05-05 15:01:47'),(92,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','2','2023-05-05 15:01:47','2023-05-05 15:01:47'),(93,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','3','2023-05-05 15:01:47','2023-05-05 15:01:47'),(94,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','9','2023-05-05 15:01:47','2023-05-05 15:01:47'),(95,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','3','2023-05-05 15:01:47','2023-05-05 15:01:47'),(96,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','8','2023-05-05 15:01:47','2023-05-05 15:01:47'),(97,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','10','2023-05-05 15:01:47','2023-05-05 15:01:47'),(98,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','4','2023-05-05 15:01:47','2023-05-05 15:01:47'),(99,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','3','2023-05-05 15:01:47','2023-05-05 15:01:47'),(100,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','3','2023-05-05 15:01:47','2023-05-05 15:01:47'),(101,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','10','2023-05-05 15:01:47','2023-05-05 15:01:47'),(102,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','7','2023-05-05 15:01:47','2023-05-05 15:01:47'),(103,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','2','2023-05-05 15:01:47','2023-05-05 15:01:47'),(104,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','10','2023-05-05 15:03:01','2023-05-05 15:03:01'),(105,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','10','2023-05-05 15:03:01','2023-05-05 15:03:01'),(106,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','2','2023-05-05 15:03:01','2023-05-05 15:03:01'),(107,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','8','2023-05-05 15:03:01','2023-05-05 15:03:01'),(108,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','10','2023-05-05 15:03:01','2023-05-05 15:03:01'),(109,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','8','2023-05-05 15:03:01','2023-05-05 15:03:01'),(110,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','7','2023-05-05 15:03:01','2023-05-05 15:03:01'),(111,'Botble\\Blog\\Models\\Post',9,NULL,'author_id','1','8','2023-05-05 15:03:01','2023-05-05 15:03:01'),(112,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','9','2023-05-05 15:03:01','2023-05-05 15:03:01'),(113,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','3','2023-05-05 15:03:01','2023-05-05 15:03:01'),(114,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','8','2023-05-05 15:03:01','2023-05-05 15:03:01'),(115,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','3','2023-05-05 15:03:01','2023-05-05 15:03:01'),(116,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','3','2023-05-05 15:03:01','2023-05-05 15:03:01'),(117,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','4','2023-05-05 15:03:01','2023-05-05 15:03:01'),(118,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','7','2023-05-05 15:03:01','2023-05-05 15:03:01'),(119,'Botble\\Blog\\Models\\Post',1,NULL,'author_id','1','9','2023-05-05 15:22:15','2023-05-05 15:22:15'),(120,'Botble\\Blog\\Models\\Post',2,NULL,'author_id','1','4','2023-05-05 15:22:15','2023-05-05 15:22:15'),(121,'Botble\\Blog\\Models\\Post',3,NULL,'author_id','1','6','2023-05-05 15:22:15','2023-05-05 15:22:15'),(122,'Botble\\Blog\\Models\\Post',4,NULL,'author_id','1','6','2023-05-05 15:22:15','2023-05-05 15:22:15'),(123,'Botble\\Blog\\Models\\Post',5,NULL,'author_id','1','4','2023-05-05 15:22:15','2023-05-05 15:22:15'),(124,'Botble\\Blog\\Models\\Post',6,NULL,'author_id','1','9','2023-05-05 15:22:15','2023-05-05 15:22:15'),(125,'Botble\\Blog\\Models\\Post',7,NULL,'author_id','1','4','2023-05-05 15:22:15','2023-05-05 15:22:15'),(126,'Botble\\Blog\\Models\\Post',8,NULL,'author_id','1','9','2023-05-05 15:22:15','2023-05-05 15:22:15'),(127,'Botble\\Blog\\Models\\Post',10,NULL,'author_id','1','10','2023-05-05 15:22:15','2023-05-05 15:22:15'),(128,'Botble\\Blog\\Models\\Post',11,NULL,'author_id','1','8','2023-05-05 15:22:15','2023-05-05 15:22:15'),(129,'Botble\\Blog\\Models\\Post',12,NULL,'author_id','1','8','2023-05-05 15:22:15','2023-05-05 15:22:15'),(130,'Botble\\Blog\\Models\\Post',13,NULL,'author_id','1','4','2023-05-05 15:22:15','2023-05-05 15:22:15'),(131,'Botble\\Blog\\Models\\Post',14,NULL,'author_id','1','3','2023-05-05 15:22:15','2023-05-05 15:22:15'),(132,'Botble\\Blog\\Models\\Post',15,NULL,'author_id','1','4','2023-05-05 15:22:15','2023-05-05 15:22:15'),(133,'Botble\\Blog\\Models\\Post',16,NULL,'author_id','1','8','2023-05-05 15:22:15','2023-05-05 15:22:15');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"comment\",\"contact\",\"cookie-consent\",\"gallery\",\"member\",\"newsletter\",\"post-scheduler\",\"request-log\",\"rss-feed\",\"toc\",\"translation\"]',NULL,'2023-04-20 01:01:03'),(6,'show_admin_bar','1',NULL,NULL),(7,'theme','flow',NULL,NULL),(8,'admin_logo','general/logo-white.png',NULL,NULL),(9,'admin_favicon','general/favicon.png',NULL,NULL),(101,'theme-vi-flow-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"social_facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"social_twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"social_instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"social_linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"social_pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(105,'comment_enable','1',NULL,NULL),(106,'comment_menu_enable','[\"Botble\\\\Blog\\\\Models\\\\Post\"]',NULL,NULL),(856,'theme-flow-site_title','Flow - Laravel Personal Blog Script','2023-05-05 15:22:16','2023-05-05 15:22:16'),(857,'theme-flow-copyright','©2023 Designed by AliThemes | All rights reserved.','2023-05-05 15:22:16','2023-05-05 15:22:16'),(858,'theme-flow-preloader_enabled','0','2023-05-05 15:22:16','2023-05-05 15:22:16'),(859,'theme-flow-favicon','general/favicon.png','2023-05-05 15:22:16','2023-05-05 15:22:16'),(860,'theme-flow-website','https://thesky9.com','2023-05-05 15:22:16','2023-05-05 15:22:16'),(861,'theme-flow-contact_email','support@thesky9.com','2023-05-05 15:22:16','2023-05-05 15:22:16'),(862,'theme-flow-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2023-05-05 15:22:16','2023-05-05 15:22:16'),(863,'theme-flow-phone','+(123) 345-6789','2023-05-05 15:22:16','2023-05-05 15:22:16'),(864,'theme-flow-address','214 West Arnold St. New York, NY 10002','2023-05-05 15:22:16','2023-05-05 15:22:16'),(865,'theme-flow-cookie_consent_message','Your experience on this site will be improved by allowing cookies ','2023-05-05 15:22:16','2023-05-05 15:22:16'),(866,'theme-flow-cookie_consent_learn_more_url','http://flow.local/cookie-policy','2023-05-05 15:22:16','2023-05-05 15:22:16'),(867,'theme-flow-cookie_consent_learn_more_text','Cookie Policy','2023-05-05 15:22:16','2023-05-05 15:22:16'),(868,'theme-flow-homepage_id','1','2023-05-05 15:22:16','2023-05-05 15:22:16'),(869,'theme-flow-blog_page_id','4','2023-05-05 15:22:16','2023-05-05 15:22:16'),(870,'theme-flow-single_layout','right-sidebar','2023-05-05 15:22:16','2023-05-05 15:22:16'),(871,'theme-flow-single_title_layout','top-full','2023-05-05 15:22:16','2023-05-05 15:22:16'),(872,'theme-flow-action_title','All you need to build new site','2023-05-05 15:22:16','2023-05-05 15:22:16'),(873,'theme-flow-action_button_text','Buy Now','2023-05-05 15:22:16','2023-05-05 15:22:16'),(874,'theme-flow-action_button_url','https://codecanyon.net/user/thesky9','2023-05-05 15:22:16','2023-05-05 15:22:16'),(875,'theme-flow-logo','general/logo.png','2023-05-05 15:22:16','2023-05-05 15:22:16'),(876,'theme-flow-logo_white','general/logo-white.png','2023-05-05 15:22:16','2023-05-05 15:22:16'),(877,'theme-flow-font_heading','Poppins','2023-05-05 15:22:16','2023-05-05 15:22:16'),(878,'theme-flow-font_body','Source Sans Pro','2023-05-05 15:22:16','2023-05-05 15:22:16'),(879,'theme-flow-color_brand_1','#ffcda3','2023-05-05 15:22:16','2023-05-05 15:22:16'),(880,'theme-flow-color_brand_2','#fce2ce','2023-05-05 15:22:16','2023-05-05 15:22:16'),(881,'theme-flow-color_brand_3','#ffede5','2023-05-05 15:22:16','2023-05-05 15:22:16'),(882,'theme-flow-color_brand_4','#fff5ef','2023-05-05 15:22:16','2023-05-05 15:22:16'),(883,'theme-flow-color_primary','#87c6e3','2023-05-05 15:22:16','2023-05-05 15:22:16'),(884,'theme-flow-color_secondary','#455265','2023-05-05 15:22:16','2023-05-05 15:22:16'),(885,'theme-flow-color_success','#76e1c6','2023-05-05 15:22:16','2023-05-05 15:22:16'),(886,'theme-flow-color_danger','#f0a9a9','2023-05-05 15:22:16','2023-05-05 15:22:16'),(887,'theme-flow-color_warning','#e6bf7e','2023-05-05 15:22:16','2023-05-05 15:22:16'),(888,'theme-flow-color_info','#58c1c8','2023-05-05 15:22:16','2023-05-05 15:22:16'),(889,'theme-flow-color_grey_900','#101010','2023-05-05 15:22:16','2023-05-05 15:22:16'),(890,'theme-flow-color_grey_700','#484848','2023-05-05 15:22:16','2023-05-05 15:22:16'),(891,'theme-flow-color_grey_400','#999999','2023-05-05 15:22:16','2023-05-05 15:22:16'),(892,'theme-flow-color_grey_100','#9c9c9c','2023-05-05 15:22:16','2023-05-05 15:22:16'),(893,'theme-flow-color_light','#F3F3F3','2023-05-05 15:22:16','2023-05-05 15:22:16'),(894,'theme-flow-color_dark','#111111','2023-05-05 15:22:16','2023-05-05 15:22:16'),(895,'theme-flow-color_link','#222831','2023-05-05 15:22:16','2023-05-05 15:22:16'),(896,'theme-flow-color_muted','#9b9b9b','2023-05-05 15:22:16','2023-05-05 15:22:16'),(897,'theme-flow-color_white','#FFFFFF','2023-05-05 15:22:16','2023-05-05 15:22:16'),(898,'theme-flow-primary_border_color','#9b9b9b','2023-05-05 15:22:16','2023-05-05 15:22:16'),(899,'theme-flow-secondary_border_color','#f0f8ff','2023-05-05 15:22:16','2023-05-05 15:22:16'),(900,'theme-flow-mutted_border_color','#f0f8ff','2023-05-05 15:22:16','2023-05-05 15:22:16'),(901,'theme-flow-vi-site_title','Flow - Laravel Personal Blog Script','2023-05-05 15:22:16','2023-05-05 15:22:16'),(902,'theme-flow-vi-copyright','©2023 Thiết kế bởi AliThemes | Tất cả quyền đã được bảo hộ.','2023-05-05 15:22:16','2023-05-05 15:22:16'),(903,'theme-flow-vi-preloader_enabled','0','2023-05-05 15:22:16','2023-05-05 15:22:16'),(904,'theme-flow-vi-favicon','general/favicon.png','2023-05-05 15:22:16','2023-05-05 15:22:16'),(905,'theme-flow-vi-website','https://thesky9.com','2023-05-05 15:22:16','2023-05-05 15:22:16'),(906,'theme-flow-vi-contact_email','support@thesky9.com','2023-05-05 15:22:16','2023-05-05 15:22:16'),(907,'theme-flow-vi-site_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio suspendisse leo neque iaculis molestie sagittis maecenas aenean eget molestie sagittis.','2023-05-05 15:22:16','2023-05-05 15:22:16'),(908,'theme-flow-vi-phone','+(123) 345-6789','2023-05-05 15:22:16','2023-05-05 15:22:16'),(909,'theme-flow-vi-address','214 West Arnold St. New York, NY 10002','2023-05-05 15:22:16','2023-05-05 15:22:16'),(910,'theme-flow-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ','2023-05-05 15:22:16','2023-05-05 15:22:16'),(911,'theme-flow-vi-cookie_consent_learn_more_url','http://flow.local/cookie-policy','2023-05-05 15:22:16','2023-05-05 15:22:16'),(912,'theme-flow-vi-cookie_consent_learn_more_text','Cookie Policy','2023-05-05 15:22:16','2023-05-05 15:22:16'),(913,'theme-flow-vi-homepage_id','1','2023-05-05 15:22:16','2023-05-05 15:22:16'),(914,'theme-flow-vi-blog_page_id','4','2023-05-05 15:22:16','2023-05-05 15:22:16'),(915,'theme-flow-vi-single_layout','default','2023-05-05 15:22:16','2023-05-05 15:22:16'),(916,'theme-flow-vi-single_title_layout','top-full','2023-05-05 15:22:16','2023-05-05 15:22:16'),(917,'theme-flow-vi-logo','general/logo.png','2023-05-05 15:22:16','2023-05-05 15:22:16'),(918,'theme-flow-vi-logo_white','general/logo-white.png','2023-05-05 15:22:17','2023-05-05 15:22:17'),(919,'theme-flow-vi-action_title','Bạn cần tạo mới website','2023-05-05 15:22:17','2023-05-05 15:22:17'),(920,'theme-flow-vi-action_button_text','Mua Ngay','2023-05-05 15:22:17','2023-05-05 15:22:17'),(921,'theme-flow-vi-action_button_url','https://codecanyon.net/user/thesky9','2023-05-05 15:22:17','2023-05-05 15:22:17'),(922,'theme-flow-vi-font_heading','Poppins','2023-05-05 15:22:17','2023-05-05 15:22:17'),(923,'theme-flow-vi-font_body','Source Sans Pro','2023-05-05 15:22:17','2023-05-05 15:22:17'),(924,'theme-flow-vi-color_brand_1','#ffcda3','2023-05-05 15:22:17','2023-05-05 15:22:17'),(925,'theme-flow-vi-color_brand_2','#fce2ce','2023-05-05 15:22:17','2023-05-05 15:22:17'),(926,'theme-flow-vi-color_brand_3','#ffede5','2023-05-05 15:22:17','2023-05-05 15:22:17'),(927,'theme-flow-vi-color_brand_4','#fff5ef','2023-05-05 15:22:17','2023-05-05 15:22:17'),(928,'theme-flow-vi-color_primary','#87c6e3','2023-05-05 15:22:17','2023-05-05 15:22:17'),(929,'theme-flow-vi-color_secondary','#455265','2023-05-05 15:22:17','2023-05-05 15:22:17'),(930,'theme-flow-vi-color_success','#76e1c6','2023-05-05 15:22:17','2023-05-05 15:22:17'),(931,'theme-flow-vi-color_danger','#f0a9a9','2023-05-05 15:22:17','2023-05-05 15:22:17'),(932,'theme-flow-vi-color_warning','#e6bf7e','2023-05-05 15:22:17','2023-05-05 15:22:17'),(933,'theme-flow-vi-color_info','#58c1c8','2023-05-05 15:22:17','2023-05-05 15:22:17'),(934,'theme-flow-vi-color_grey_900','#101010','2023-05-05 15:22:17','2023-05-05 15:22:17'),(935,'theme-flow-vi-color_grey_700','#484848','2023-05-05 15:22:17','2023-05-05 15:22:17'),(936,'theme-flow-vi-color_grey_400','#999999','2023-05-05 15:22:17','2023-05-05 15:22:17'),(937,'theme-flow-vi-color_grey_100','#9c9c9c','2023-05-05 15:22:17','2023-05-05 15:22:17'),(938,'theme-flow-vi-color_light','#F3F3F3','2023-05-05 15:22:17','2023-05-05 15:22:17'),(939,'theme-flow-vi-color_dark','#111111','2023-05-05 15:22:17','2023-05-05 15:22:17'),(940,'theme-flow-vi-color_link','#222831','2023-05-05 15:22:17','2023-05-05 15:22:17'),(941,'theme-flow-vi-color_muted','#9b9b9b','2023-05-05 15:22:17','2023-05-05 15:22:17'),(942,'theme-flow-vi-color_white','#FFFFFF','2023-05-05 15:22:17','2023-05-05 15:22:17'),(943,'theme-flow-vi-primary_border_color','#9b9b9b','2023-05-05 15:22:17','2023-05-05 15:22:17'),(944,'theme-flow-vi-secondary_border_color','#f0f8ff','2023-05-05 15:22:17','2023-05-05 15:22:17'),(945,'theme-flow-vi-mutted_border_color','#f0f8ff','2023-05-05 15:22:17','2023-05-05 15:22:17'),(946,'theme-flow-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"social_facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"social_twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"social_instagram\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Linkedin\"},{\"key\":\"social-icon\",\"value\":\"social_linkedin\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.linkedin.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"social_pinterest\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}]]',NULL,NULL),(948,'theme-flow-contact_info_boxes','[[{\"key\":\"type\",\"value\":\"Head Office\"},{\"key\":\"title\",\"value\":\"Paris, France\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-1.png\"}],[{\"key\":\"type\",\"value\":\"Support\"},{\"key\":\"title\",\"value\":\"Paris, France\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-2.png\"}],[{\"key\":\"type\",\"value\":\"Factory\"},{\"key\":\"title\",\"value\":\"Paris, France\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-3.png\"}]]',NULL,NULL),(949,'theme-flow-vi-contact_info_boxes','[[{\"key\":\"type\",\"value\":\"\\u0110\\u1ea1i di\\u1ec7n\"},{\"key\":\"title\",\"value\":\"H\\u00e0 N\\u1ed9i\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-1.png\"}],[{\"key\":\"type\",\"value\":\"H\\u1ed7 tr\\u1ee3\"},{\"key\":\"title\",\"value\":\"H\\u1ed3 Ch\\u00ed Minh\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-2.png\"}],[{\"key\":\"type\",\"value\":\"Nh\\u00e0 m\\u00e1y\"},{\"key\":\"title\",\"value\":\"\\u0110\\u00e0 N\\u1eb5ng\"},{\"key\":\"subtitle\",\"value\":\"Lorem 142 Str, 2352, Ipsum State, USA <\\/br> Phone: (+01) 234 567\"},{\"key\":\"image\",\"value\":\"news\\/office-3.png\"}]]',NULL,NULL),(950,'media_random_hash','4bde016b4447b355bdd3c3d26ee5ed52',NULL,NULL),(953,'language_hide_default','1',NULL,NULL),(954,'language_switcher_display','list',NULL,NULL),(955,'language_display','all',NULL,NULL),(956,'language_hide_languages','[]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=613 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (557,'design',1,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(558,'lifestyle',2,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(559,'travel-tips',3,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(560,'healthy',4,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(561,'travel-tips',5,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(562,'hotel',6,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(563,'nature',7,'Botble\\Blog\\Models\\Category','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(564,'general',1,'Botble\\Blog\\Models\\Tag','tag','2023-05-05 15:22:13','2023-05-05 15:22:13'),(565,'design',2,'Botble\\Blog\\Models\\Tag','tag','2023-05-05 15:22:13','2023-05-05 15:22:13'),(566,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2023-05-05 15:22:13','2023-05-05 15:22:13'),(567,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2023-05-05 15:22:13','2023-05-05 15:22:13'),(568,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2023-05-05 15:22:13','2023-05-05 15:22:13'),(569,'the-top-2020-handbag-trends-to-know',1,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(570,'top-search-engine-optimization-strategies',2,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(571,'which-company-would-you-choose',3,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(572,'used-car-dealer-sales-tricks-exposed',4,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(573,'20-ways-to-sell-your-product-faster',5,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(574,'the-secrets-of-rich-and-famous-writers',6,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(575,'imagine-losing-20-pounds-in-14-days',7,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(576,'are-you-still-using-that-slow-old-typewriter',8,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(577,'a-skin-cream-thats-proven-to-work',9,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(578,'10-reasons-to-start-your-own-profitable-website',10,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(579,'simple-ways-to-reduce-your-unwanted-wrinkles',11,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(580,'apple-imac-with-retina-5k-display-review',12,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(581,'10000-web-site-visitors-in-one-monthguaranteed',13,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(582,'unlock-the-secrets-of-selling-high-ticket-items',14,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(583,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',15,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(584,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',16,'Botble\\Blog\\Models\\Post','','2023-05-05 15:22:13','2023-05-05 15:22:13'),(585,'john-smith',1,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(586,'wilfredo-rolfson',2,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(587,'jordy-witting',3,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(588,'sibyl-ebert',4,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(589,'earlene-larson',5,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(590,'halie-little',6,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(591,'elliott-bergstrom',7,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(592,'halie-pfannerstill',8,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(593,'julian-leffler',9,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(594,'wilfredo-upton',10,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(595,'madilyn-lueilwitz',11,'Botble\\Member\\Models\\Member','author','2023-05-05 15:22:15','2023-05-05 15:22:15'),(596,'homepage',1,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(597,'home-2',2,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(598,'home-3',3,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(599,'blog',4,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(600,'blog-big',5,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(601,'blog-grid',6,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(602,'blog-list',7,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(603,'blog-list-2',8,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(604,'contact',9,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(605,'cookie-policy',10,'Botble\\Page\\Models\\Page','','2023-05-05 15:28:19','2023-05-05 15:28:19'),(606,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(607,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(608,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(609,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(610,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(611,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21'),(612,'building',7,'Botble\\Gallery\\Models\\Gallery','galleries','2023-05-05 15:28:21','2023-05-05 15:28:21');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Database\\Seeders\\User','','published','2023-05-05 15:22:13','2023-05-05 15:22:13'),(2,'Design',1,'Database\\Seeders\\User','','published','2023-05-05 15:22:13','2023-05-05 15:22:13'),(3,'Fashion',1,'Database\\Seeders\\User','','published','2023-05-05 15:22:13','2023-05-05 15:22:13'),(4,'Branding',1,'Database\\Seeders\\User','','published','2023-05-05 15:22:13','2023-05-05 15:22:13'),(5,'Modern',1,'Database\\Seeders\\User','','published','2023-05-05 15:22:13','2023-05-05 15:22:13');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@thesky9.com',NULL,'$2y$10$1QUxMbR3u1.J0OzsLB9nf.apRvH75eacr91JBs9/XHNEtWTFEaRmi',NULL,'2023-05-05 15:28:19','2023-05-05 15:28:19','System','Admin','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'PopularPostsWidget','primary_sidebar','flow',0,'{\"id\":\"PopularPostsWidget\",\"name\":\"Most popular\",\"number_display\":5}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(2,'GalleriesWidget','primary_sidebar','flow',1,'{\"id\":\"GalleriesWidget\",\"name\":\"Gallery\",\"number_display\":6}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(3,'NewsletterWidget','footer_sidebar_1','flow',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Subscribe\",\"subname\":\"to Our Newsletter\"}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(4,'CustomMenuWidget','footer_sidebar_2','flow',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(5,'TagsWidget','footer_sidebar_2','flow',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\"}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(6,'PopularPostsWidget','primary_sidebar','flow-vi',0,'{\"id\":\"PopularPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":5}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(7,'GalleriesWidget','primary_sidebar','flow-vi',1,'{\"id\":\"GalleriesWidget\",\"name\":\"Th\\u01b0 vi\\u1ec7n\",\"number_display\":6}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(8,'NewsletterWidget','footer_sidebar_1','flow-vi',1,'{\"id\":\"NewsletterWidget\",\"name\":\"Nh\\u1eadn b\\u1ea3n tin\",\"subname\":\"M\\u1edbi nh\\u1ea5t t\\u1eeb ch\\u00fang t\\u00f4i\"}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(9,'CustomMenuWidget','footer_sidebar_2','flow-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket\"}','2023-05-05 15:22:16','2023-05-05 15:22:16'),(10,'TagsWidget','footer_sidebar_2','flow-vi',1,'{\"id\":\"TagsWidget\",\"name\":\"Tags\"}','2023-05-05 15:22:16','2023-05-05 15:22:16');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 22:30:09
