-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'yvTO15uAoOzebzVimZxD1GKqRYY22alO',1,'2022-01-03 21:24:07','2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-01-04 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(2,'Top Slider Image 2','2027-01-04 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(3,'Homepage middle 1','2027-01-04 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(4,'Homepage middle 2','2027-01-04 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(5,'Homepage middle 3','2027-01-04 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(6,'Homepage big 1','2027-01-04 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(7,'Homepage bottom small','2027-01-04 00:00:00','not_set','KJ9KKUKTBYD0','promotion/7.jpg','/products',0,7,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(8,'Product sidebar','2027-01-04 00:00:00','product-sidebar','2UDULECZWG9X','promotion/8.jpg','/products',0,8,'published','2022-01-03 21:24:06','2022-01-03 21:24:06'),(9,'Homepage big 2','2027-01-04 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-01-03 21:24:06','2022-01-03 21:24:06');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int(11) NOT NULL,
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
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) unsigned NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Ullam provident sint maxime neque alias. Cum aperiam odio sunt omnis est dolore sequi. Molestiae odio ea voluptatum. Sint rem saepe et autem occaecati est.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(2,'Fashion',0,'Inventore corrupti animi saepe ipsam nisi deleniti vero. Quos consequuntur et rerum occaecati voluptas odio. Voluptas iusto numquam incidunt sit. Voluptatem ea qui aut assumenda.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(3,'Electronic',0,'Dolor rerum culpa nobis sed harum. Dolorem possimus provident velit est ut. Beatae libero quisquam quo rem est nulla qui ea. Amet autem laudantium non. Porro et quae ea voluptas et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(4,'Commercial',0,'Tempore rerum est architecto et sint. Velit perferendis qui quo est quis non at. Qui vel et aut quia eveniet a sint delectus. Eius cum velit soluta molestiae eos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-01-03 21:24:04','2022-01-03 21:24:04');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
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
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
INSERT INTO `contacts` VALUES (1,'Mandy Kuphal','jakubowski.adolfo@example.net','737.272.4264','850 Cyrus Cove\nNorth Beth, UT 56387','Necessitatibus illo at omnis qui.','Ullam aut sunt esse. Tempore non voluptatum repellendus neque rerum. Provident beatae nam et animi possimus et voluptates. Fugit neque ullam voluptatem. Inventore sit commodi voluptas non soluta deleniti libero et. Saepe excepturi sint dolor iste. Et est atque expedita perferendis maxime. Placeat qui aspernatur accusamus. Cupiditate culpa voluptatum omnis hic accusantium placeat. Nam ipsam fugit inventore animi facilis excepturi minima.','unread','2022-01-03 21:24:00','2022-01-03 21:24:00'),(2,'Ali Wehner','keanu.okon@example.org','+1-234-813-8253','5234 Katrina Brook\nWillardburgh, OH 94019','Voluptas quo eum voluptas.','Ut molestiae ipsa itaque sit reprehenderit. Voluptatem officiis et est repellendus laborum. Fugiat et esse accusantium voluptas. Itaque dignissimos blanditiis quia sunt ea repellat tenetur. Quis reprehenderit rerum ipsam impedit enim officia quam consequatur. Ea porro consequatur voluptas. Unde aliquam expedita asperiores est est dicta aut. Enim ut nulla vero. Omnis sit et dolor et rerum. Id dolor ut aspernatur provident rem. Sed voluptatem repudiandae reprehenderit quae vel veritatis dolores.','read','2022-01-03 21:24:00','2022-01-03 21:24:00'),(3,'Mrs. Marilie Kuhlman MD','tyreek83@example.net','220-730-3007','803 Mina Shoals\nSelinamouth, MO 79000-7895','Et sunt dolore quibusdam consectetur.','Praesentium ut sed perferendis animi expedita. Dolores quis et ullam. Qui commodi exercitationem quod commodi tempora est blanditiis. Nam dolore placeat quas sit esse porro ad. Dignissimos et consequuntur magni et repellat et. Suscipit enim est et iure et. Sunt ex sit repellat eos quia. Sed mollitia explicabo qui dolore velit ipsum in quia. Quisquam qui nulla necessitatibus pariatur voluptates sunt sed.','read','2022-01-03 21:24:00','2022-01-03 21:24:00'),(4,'Annabelle Watsica','billie77@example.net','425.375.1957','1016 Pfannerstill Haven\nBruenside, AR 18478-7613','Voluptas perspiciatis natus rerum qui mollitia.','Est velit ea quia doloribus. Voluptatem saepe optio quia. Iure quod alias vel et natus. Ratione incidunt inventore facere eos facilis vel et. Inventore laudantium excepturi cupiditate maxime et aut. Aut facere facere nostrum iste porro fugiat quidem. Repellat et animi explicabo molestias. Eveniet dolor animi eligendi architecto sit modi. Consequatur perferendis corporis nobis culpa corrupti earum quia. Officiis natus ratione reiciendis modi omnis.','read','2022-01-03 21:24:00','2022-01-03 21:24:00'),(5,'Theresa Ankunding','jeffry60@example.org','304.531.1538','30168 Fahey Wells\nEstherbury, MN 86442','Voluptatibus possimus nam corporis saepe.','Omnis sapiente cum alias temporibus iure. Facilis tempora quae error enim voluptas velit id odio. Blanditiis numquam libero soluta a ex ut alias facere. Ullam repellat dolores aut quia minus quaerat. Et omnis vitae odio nulla cumque fuga error. Necessitatibus qui dolorem soluta est. Reiciendis velit corrupti repudiandae nobis et et. Libero dolorem quis animi saepe. Voluptatibus et laborum quia et sit ut. Culpa quas atque quas. Reprehenderit molestiae id assumenda est possimus consequatur.','unread','2022-01-03 21:24:00','2022-01-03 21:24:00'),(6,'Noel Schmitt','gisselle86@example.com','+1.704.336.7984','4009 Schoen Bypass Apt. 683\nNew Heloise, CO 45992','Sit corrupti quaerat laudantium dolorem.','Quas et ea consequatur quisquam assumenda. Et et ea ipsa qui dolor eos sed. Ducimus dolorem similique voluptas sed officiis. Eum repudiandae quia est veritatis inventore non molestiae et. Dolorum rerum quasi culpa. Cumque facilis nam soluta et. A optio natus dolorum quia hic architecto. Ipsam ad et praesentium numquam officia sed similique. Officiis fugit dolor dolorem qui magni atque. Accusantium veritatis eius harum earum modi. Accusantium atque quia sit illo aut id. Qui quaerat cumque eius.','unread','2022-01-03 21:24:00','2022-01-03 21:24:00'),(7,'Terence Kub','ngislason@example.com','(618) 481-6666','90039 Crona Rest Apt. 055\nValentineview, NJ 51864','Veritatis ab voluptas odit.','Ullam eos eaque omnis deleniti sed pariatur laboriosam. Quia vitae maxime in nostrum laboriosam voluptatum enim. Molestiae beatae omnis eos enim non tempore. Accusamus deserunt iusto sed ipsum eos ut. Mollitia beatae a sed voluptas nobis ex saepe qui. Libero eius qui et et sapiente quibusdam. Labore et maxime autem rem facere nihil. Enim voluptatum laboriosam beatae. Ratione est eum omnis consectetur sequi. Et ab fugiat aut aut inventore.','unread','2022-01-03 21:24:00','2022-01-03 21:24:00'),(8,'Kris Harvey','fahey.alvina@example.net','+1-847-331-5323','34145 Strosin Shoal\nPort Ebba, OH 24124-1649','Enim vel ipsa et iure suscipit laboriosam.','Error aut corporis esse omnis quasi dolorum. Minima recusandae velit sit. Nostrum perferendis iusto enim est eius dolorem et. Deleniti ut reiciendis necessitatibus eum dicta occaecati. Aut voluptates atque facere. Est quas eum sequi quam rem non. Quod nam aspernatur aliquam cum enim ipsa voluptatem. Eligendi qui qui impedit ratione tenetur sed minima. Dolores mollitia cumque quod saepe saepe. Reprehenderit at beatae quia omnis quo molestiae. Natus expedita nobis aliquid cum nam quis.','read','2022-01-03 21:24:00','2022-01-03 21:24:00'),(9,'Zelma Barton','elyse.stroman@example.net','+1-936-391-2065','26354 Morissette Stream\nVolkmantown, NV 96389','Qui eum impedit deserunt iusto beatae quas.','Repudiandae accusantium error et quia a. Eum distinctio corporis quis quidem optio non quasi. Vitae nesciunt aspernatur earum tempore voluptatem accusamus reprehenderit. Quo ducimus harum animi est. Est nostrum magnam quia itaque officiis consequuntur et. Molestias non architecto voluptatem repellendus est. Eius sunt dolor esse voluptatibus quia voluptatem placeat.','unread','2022-01-03 21:24:00','2022-01-03 21:24:00'),(10,'Albertha Bruen','ebba89@example.net','+1-234-215-2875','35888 Mertz Plaza\nEast Gersonberg, WV 76198','In vel aut delectus similique ea delectus minima.','Explicabo eaque vel deserunt animi dicta saepe voluptas quo. Veritatis eum vitae quia tempora dolorem. Fugiat omnis tempora asperiores eius maxime. Nobis nesciunt sapiente quas beatae. Non ut consequatur aliquid ullam id cumque aperiam. Est neque nesciunt necessitatibus enim. Sit accusamus perspiciatis magni sed dolores omnis aliquid ipsa. Consequatur culpa ad dolores.','read','2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` tinyint(3) unsigned NOT NULL DEFAULT 1,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-01-03 21:23:41','2022-01-03 21:23:41'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-01-03 21:23:41','2022-01-03 21:23:41');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `decimals` tinyint(3) unsigned DEFAULT 0,
  `order` int(10) unsigned DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-01-03 21:23:42','2022-01-03 21:23:42'),(2,'EUR','€',0,2,1,0,0.84,'2022-01-03 21:23:42','2022-01-03 21:23:42'),(3,'VND','₫',0,0,2,0,23203,'2022-01-03 21:23:42','2022-01-03 21:23:42');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Manley Schuster V','customer@botble.com','+17704776856','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',1,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','49558'),(2,'Manley Schuster V','customer@botble.com','+15852633775','MS','Ohio','West Genesis','650 Rahul Unions',1,0,'2022-01-03 21:23:59','2022-01-03 21:23:59','63369'),(3,'Prof. Freeman O\'Hara','vendor@botble.com','+13808906888','MZ','New Hampshire','West Pearline','9995 Wintheiser Ridges',2,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','18538'),(4,'Prof. Freeman O\'Hara','vendor@botble.com','+13605662402','GA','Maryland','North Kennethmouth','8738 Hellen Glen Apt. 447',2,0,'2022-01-03 21:23:59','2022-01-03 21:23:59','67776'),(5,'Eula Cormier','yraynor@example.org','+16105605351','GS','Hawaii','Macejkovicberg','26865 Monte Neck',3,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','60779-4888'),(6,'Bertha Altenwerth','darion.lesch@example.net','+12838002675','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',4,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','58997'),(7,'Shakira Armstrong','wkutch@example.org','+16512368366','AI','Maine','New Jaydatown','655 Osvaldo Radial Suite 829',5,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','14868'),(8,'Dixie O\'Kon Sr.','natalia11@example.com','+18728302443','MR','Wisconsin','Lake Linwood','30863 Euna View Suite 383',6,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','25161-1347'),(9,'Rosie Haley','cassin.lily@example.com','+18648628910','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',7,1,'2022-01-03 21:23:59','2022-01-03 21:23:59','48157'),(10,'Reinhold Jacobs','emilio.hirthe@example.net','+19147680512','YE','Rhode Island','Millerville','56074 Marquis Falls',8,1,'2022-01-03 21:24:00','2022-01-03 21:24:00','09163-4144'),(11,'Ashtyn Christiansen','jacynthe52@example.org','+19806338310','BE','Missouri','Dickinsontown','90317 Triston Shores Apt. 791',9,1,'2022-01-03 21:24:00','2022-01-03 21:24:00','34284'),(12,'Tia Nolan V','wilma.leuschke@example.org','+18627268506','PG','Alaska','Port Mosesland','9086 Mandy Roads Suite 749',10,1,'2022-01-03 21:24:00','2022-01-03 21:24:00','58084');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Manley Schuster V','customer@botble.com','$2y$10$V/QzuOCEjA3frRtij./x8e/ij0jqU9QSW09.YVxkaZGR92O6vsXC.','customers/7.jpg',NULL,'+16017234569',NULL,'2022-01-03 21:23:59','2022-01-03 21:23:59','2022-01-04 04:23:59',NULL,0,NULL,'activated'),(2,'Prof. Freeman O\'Hara','vendor@botble.com','$2y$10$WYZSKBsVRcarj0hTuf9fXun38E4.ZGO.xS5Is8sl7qOQdSbkVZtFm','customers/6.jpg',NULL,'+14636490299',NULL,'2022-01-03 21:23:59','2022-01-03 21:24:11','2022-01-04 04:23:59',NULL,1,'2022-01-04 04:24:11','activated'),(3,'Eula Cormier','yraynor@example.org','$2y$10$6hDb82/lnqpEpt9TqHt3Ju85sLqJuN5lkS.ywu9B8Ed31cqIV/kTO','customers/1.jpg',NULL,'+15392786627',NULL,'2022-01-03 21:23:59','2022-01-03 21:24:11','2022-01-04 04:23:59',NULL,1,'2022-01-04 04:24:11','activated'),(4,'Bertha Altenwerth','darion.lesch@example.net','$2y$10$QZZsgdDI9DzQ9HyV8o7Odu4S85/.uImRlNrM.kqy/Ff29Tf0XDn7q','customers/2.jpg',NULL,'+12075393428',NULL,'2022-01-03 21:23:59','2022-01-03 21:23:59','2022-01-04 04:23:59',NULL,0,NULL,'activated'),(5,'Shakira Armstrong','wkutch@example.org','$2y$10$/CLo2mrMV5DfHg6dszCTiuJBJL8nNGELen1kd79/TYFQcRDSEcbcq','customers/3.jpg',NULL,'+14028729664',NULL,'2022-01-03 21:23:59','2022-01-03 21:24:11','2022-01-04 04:23:59',NULL,1,'2022-01-04 04:24:11','activated'),(6,'Dixie O\'Kon Sr.','natalia11@example.com','$2y$10$NUgqGgwB2twPh8lbnR9QIem.1tXEmOG60nbCmVH7uHDrQcbZJbV7W','customers/4.jpg',NULL,'+17145363355',NULL,'2022-01-03 21:23:59','2022-01-03 21:24:12','2022-01-04 04:23:59',NULL,1,'2022-01-04 04:24:12','activated'),(7,'Rosie Haley','cassin.lily@example.com','$2y$10$fagV1EQI9ZuSfQJhSexylO.1tVURmEd3Pz6jb.s4T70DbI6U9HVeS','customers/5.jpg',NULL,'+18472678060',NULL,'2022-01-03 21:23:59','2022-01-03 21:23:59','2022-01-04 04:23:59',NULL,0,NULL,'activated'),(8,'Reinhold Jacobs','emilio.hirthe@example.net','$2y$10$SMMQnzqmNcE0nxJ0EQtCfeveUUkh8HneQNmvi.TOltm.4DD2oM.LG','customers/6.jpg',NULL,'+14406998773',NULL,'2022-01-03 21:24:00','2022-01-03 21:24:00','2022-01-04 04:24:00',NULL,0,NULL,'activated'),(9,'Ashtyn Christiansen','jacynthe52@example.org','$2y$10$HbUyP8nexdS9einp9s6FA.09LtF1YpKgNhRQNVpvpNKZ4mr1SgS4.','customers/7.jpg',NULL,'+13475416373',NULL,'2022-01-03 21:24:00','2022-01-03 21:24:12','2022-01-04 04:24:00',NULL,1,'2022-01-04 04:24:12','activated'),(10,'Tia Nolan V','wilma.leuschke@example.org','$2y$10$8VhT1KKqr2pAQMtBS46SMeD.jZXdQrMXiiNjKFf9goNDdxYPCyxvq','customers/8.jpg',NULL,'+13028603640',NULL,'2022-01-03 21:24:00','2022-01-03 21:24:12','2022-01-04 04:24:00',NULL,1,'2022-01-04 04:24:12','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) unsigned NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_collection_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) unsigned NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(10) unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `sold` int(10) unsigned NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,41.73,16,2),(1,2,33.21,9,1),(1,3,8.2,17,3),(1,4,387.828,18,5),(1,5,566.64,17,2),(1,6,276.08,9,2),(1,7,294.06,15,1),(1,8,309.1041,16,2),(1,9,287.5,6,3),(1,10,846.12,18,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-02-03 00:00:00','published','2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',1,'58997'),(2,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',2,'58997'),(3,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',3,'58997'),(4,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',4,'48157'),(5,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',5,'48157'),(6,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',6,'58997'),(7,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',7,'58997'),(8,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',8,'48157'),(9,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',9,'48157'),(10,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',10,'09163-4144'),(11,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',11,'09163-4144'),(12,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',12,'09163-4144'),(13,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',13,'48157'),(14,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',14,'48157'),(15,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',15,'49558'),(16,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',16,'49558'),(17,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',17,'49558'),(18,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',18,'49558'),(19,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',19,'49558'),(20,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',20,'49558'),(21,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',21,'09163-4144'),(22,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',22,'09163-4144'),(23,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',23,'09163-4144'),(24,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',24,'09163-4144'),(25,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',25,'09163-4144'),(26,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',26,'48157'),(27,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',27,'48157'),(28,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',28,'48157'),(29,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',29,'49558'),(30,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',30,'49558'),(31,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',31,'49558'),(32,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',32,'58997'),(33,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',33,'58997'),(34,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',34,'58997'),(35,'Reinhold Jacobs','+19147680512','emilio.hirthe@example.net','YE','Rhode Island','Millerville','56074 Marquis Falls',35,'09163-4144'),(36,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',36,'58997'),(37,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',37,'58997'),(38,'Bertha Altenwerth','+12838002675','darion.lesch@example.net','GE','Pennsylvania','Elfriedahaven','4188 Jacklyn Turnpike',38,'58997'),(39,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',39,'48157'),(40,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',40,'48157'),(41,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',41,'48157'),(42,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',42,'49558'),(43,'Manley Schuster V','+17704776856','customer@botble.com','SB','Nebraska','East Claude','829 Grimes Rapids Suite 933',43,'49558'),(44,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',44,'48157'),(45,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',45,'48157'),(46,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',46,'48157'),(47,'Rosie Haley','+18648628910','cassin.lily@example.com','EC','Rhode Island','Johathanmouth','555 Georgianna Tunnel',47,'48157');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2021-12-18 05:24:12','2021-12-18 05:24:12'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2021-12-18 05:24:12','2021-12-18 05:24:12'),(3,'confirm_payment','Payment was confirmed (amount $564.30) by %user_name%',0,1,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2021-12-28 05:24:12','2021-12-28 05:24:12'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2021-12-28 05:24:12','2021-12-28 05:24:12'),(7,'confirm_payment','Payment was confirmed (amount $1,850.70) by %user_name%',0,2,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2021-12-29 21:24:12','2021-12-29 21:24:12'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2021-12-29 21:24:12','2021-12-29 21:24:12'),(11,'confirm_payment','Payment was confirmed (amount $902.00) by %user_name%',0,3,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-01-02 07:24:12','2022-01-02 07:24:12'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-01-02 07:24:12','2022-01-02 07:24:12'),(15,'confirm_payment','Payment was confirmed (amount $1,256.90) by %user_name%',0,4,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2021-12-28 13:24:12','2021-12-28 13:24:12'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2021-12-28 13:24:12','2021-12-28 13:24:12'),(19,'create_shipment','Created shipment for order',0,5,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2021-12-28 21:24:12','2021-12-28 21:24:12'),(21,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2021-12-28 21:24:12','2021-12-28 21:24:12'),(22,'confirm_payment','Payment was confirmed (amount $3,319.90) by %user_name%',0,6,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(23,'create_shipment','Created shipment for order',0,6,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(24,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(25,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2021-12-31 21:24:12','2021-12-31 21:24:12'),(26,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2021-12-31 21:24:12','2021-12-31 21:24:12'),(27,'create_shipment','Created shipment for order',0,7,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(28,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2021-12-24 23:24:12','2021-12-24 23:24:12'),(29,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2021-12-24 23:24:12','2021-12-24 23:24:12'),(30,'confirm_payment','Payment was confirmed (amount $557.70) by %user_name%',0,8,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(31,'create_shipment','Created shipment for order',0,8,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(32,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(33,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2021-12-30 15:24:12','2021-12-30 15:24:12'),(34,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2021-12-30 15:24:12','2021-12-30 15:24:12'),(35,'confirm_payment','Payment was confirmed (amount $2,473.80) by %user_name%',0,9,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(37,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(40,'create_shipment','Created shipment for order',0,10,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2021-12-30 21:24:12','2021-12-30 21:24:12'),(42,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2021-12-30 21:24:12','2021-12-30 21:24:12'),(43,'confirm_payment','Payment was confirmed (amount $1,253.70) by %user_name%',0,11,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(44,'create_shipment','Created shipment for order',0,11,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(46,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(47,'confirm_payment','Payment was confirmed (amount $1,425.60) by %user_name%',0,12,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(48,'create_shipment','Created shipment for order',0,12,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(49,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(50,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2021-12-27 09:24:12','2021-12-27 09:24:12'),(51,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2021-12-27 09:24:12','2021-12-27 09:24:12'),(52,'create_shipment','Created shipment for order',0,13,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(53,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2021-12-28 15:24:12','2021-12-28 15:24:12'),(55,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2021-12-28 15:24:12','2021-12-28 15:24:12'),(56,'confirm_payment','Payment was confirmed (amount $2,692.20) by %user_name%',0,14,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(57,'create_shipment','Created shipment for order',0,14,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(58,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2021-12-26 17:24:12','2021-12-26 17:24:12'),(59,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2021-12-26 17:24:12','2021-12-26 17:24:12'),(60,'confirm_payment','Payment was confirmed (amount $1,658.50) by %user_name%',0,15,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(61,'create_shipment','Created shipment for order',0,15,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(62,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2021-12-29 01:24:12','2021-12-29 01:24:12'),(64,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2021-12-29 01:24:12','2021-12-29 01:24:12'),(65,'confirm_payment','Payment was confirmed (amount $1,820.80) by %user_name%',0,16,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(66,'create_shipment','Created shipment for order',0,16,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(67,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(68,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2021-12-31 15:24:12','2021-12-31 15:24:12'),(69,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2021-12-31 15:24:12','2021-12-31 15:24:12'),(70,'create_shipment','Created shipment for order',0,17,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(71,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(72,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2021-12-25 03:24:12','2021-12-25 03:24:12'),(73,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2021-12-25 03:24:12','2021-12-25 03:24:12'),(74,'confirm_payment','Payment was confirmed (amount $1,596.50) by %user_name%',0,18,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(76,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-01-02 21:24:12','2022-01-02 21:24:12'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-01-02 21:24:12','2022-01-02 21:24:12'),(79,'confirm_payment','Payment was confirmed (amount $62.00) by %user_name%',0,19,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(81,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2021-12-25 21:24:12','2021-12-25 21:24:12'),(82,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2021-12-25 21:24:12','2021-12-25 21:24:12'),(83,'confirm_payment','Payment was confirmed (amount $5,722.60) by %user_name%',0,20,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(84,'create_shipment','Created shipment for order',0,20,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(85,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(86,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2021-12-30 07:24:12','2021-12-30 07:24:12'),(87,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2021-12-30 07:24:12','2021-12-30 07:24:12'),(88,'confirm_payment','Payment was confirmed (amount $1,228.95) by %user_name%',0,21,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(89,'create_shipment','Created shipment for order',0,21,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(90,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(91,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(92,'confirm_payment','Payment was confirmed (amount $852.60) by %user_name%',0,22,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(93,'create_shipment','Created shipment for order',0,22,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(94,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,22,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(95,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(96,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(97,'confirm_payment','Payment was confirmed (amount $877.80) by %user_name%',0,23,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(98,'create_shipment','Created shipment for order',0,23,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(99,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(100,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(101,'confirm_payment','Payment was confirmed (amount $1,658.50) by %user_name%',0,24,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(102,'create_shipment','Created shipment for order',0,24,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(103,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(104,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(105,'confirm_payment','Payment was confirmed (amount $1,590.30) by %user_name%',0,25,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(106,'create_shipment','Created shipment for order',0,25,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(107,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(108,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(109,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(110,'create_shipment','Created shipment for order',0,26,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(111,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(112,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(113,'confirm_payment','Payment was confirmed (amount $1,571.70) by %user_name%',0,27,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(114,'create_shipment','Created shipment for order',0,27,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(115,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(116,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(117,'confirm_payment','Payment was confirmed (amount $1,850.70) by %user_name%',0,28,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(118,'create_shipment','Created shipment for order',0,28,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(119,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(120,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(121,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(122,'create_shipment','Created shipment for order',0,29,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(123,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(124,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-01-02 13:24:13','2022-01-02 13:24:13'),(125,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-01-02 13:24:13','2022-01-02 13:24:13'),(126,'confirm_payment','Payment was confirmed (amount $2,297.40) by %user_name%',0,30,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(127,'create_shipment','Created shipment for order',0,30,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(128,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-01-03 07:24:13','2022-01-03 07:24:13'),(129,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-01-03 07:24:13','2022-01-03 07:24:13'),(130,'create_shipment','Created shipment for order',0,31,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(131,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(132,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(133,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(134,'create_shipment','Created shipment for order',0,32,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(135,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(137,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(138,'confirm_payment','Payment was confirmed (amount $446.60) by %user_name%',0,33,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(139,'create_shipment','Created shipment for order',0,33,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(140,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(142,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(143,'confirm_payment','Payment was confirmed (amount $2,542.00) by %user_name%',0,34,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(144,'create_shipment','Created shipment for order',0,34,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(145,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-01-01 09:24:13','2022-01-01 09:24:13'),(146,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-01-01 09:24:13','2022-01-01 09:24:13'),(147,'create_shipment','Created shipment for order',0,35,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(148,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(149,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(150,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(151,'confirm_payment','Payment was confirmed (amount $623.70) by %user_name%',0,36,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(152,'create_shipment','Created shipment for order',0,36,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(153,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(155,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(156,'confirm_payment','Payment was confirmed (amount $1,253.70) by %user_name%',0,37,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(157,'create_shipment','Created shipment for order',0,37,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(158,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(159,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-01-02 05:24:13','2022-01-02 05:24:13'),(160,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-01-02 05:24:13','2022-01-02 05:24:13'),(161,'confirm_payment','Payment was confirmed (amount $3,444.00) by %user_name%',0,38,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(162,'create_shipment','Created shipment for order',0,38,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(163,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,38,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(164,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(165,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(166,'confirm_payment','Payment was confirmed (amount $1,354.10) by %user_name%',0,39,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(167,'create_shipment','Created shipment for order',0,39,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(169,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(170,'create_shipment','Created shipment for order',0,40,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(171,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-01-03 03:24:13','2022-01-03 03:24:13'),(172,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-01-03 03:24:13','2022-01-03 03:24:13'),(173,'create_shipment','Created shipment for order',0,41,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(174,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(175,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(176,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(177,'confirm_payment','Payment was confirmed (amount $1,253.70) by %user_name%',0,42,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(178,'create_shipment','Created shipment for order',0,42,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(179,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(180,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(181,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(182,'confirm_payment','Payment was confirmed (amount $1,763.90) by %user_name%',0,43,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(183,'create_shipment','Created shipment for order',0,43,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(184,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(185,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-01-03 19:24:13','2022-01-03 19:24:13'),(186,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-01-03 19:24:13','2022-01-03 19:24:13'),(187,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,44,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(188,'create_shipment','Created shipment for order',0,44,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(189,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(190,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(191,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(192,'confirm_payment','Payment was confirmed (amount $1,064.70) by %user_name%',0,45,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(193,'create_shipment','Created shipment for order',0,45,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(194,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(195,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(196,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(197,'confirm_payment','Payment was confirmed (amount $1,782.50) by %user_name%',0,46,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(198,'create_shipment','Created shipment for order',0,46,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(199,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(200,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(201,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(202,'confirm_payment','Payment was confirmed (amount $1,596.50) by %user_name%',0,47,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(203,'create_shipment','Created shipment for order',0,47,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(204,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,47,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(205,'update_status','Order confirmed by %user_name%',0,6,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(206,'update_status','Order confirmed by %user_name%',0,8,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(207,'update_status','Order confirmed by %user_name%',0,9,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(208,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(209,'update_status','Order confirmed by %user_name%',0,15,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(210,'update_status','Order confirmed by %user_name%',0,16,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(211,'update_status','Order confirmed by %user_name%',0,18,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(212,'update_status','Order confirmed by %user_name%',0,20,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(213,'update_status','Order confirmed by %user_name%',0,22,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(214,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(215,'update_status','Order confirmed by %user_name%',0,28,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(216,'update_status','Order confirmed by %user_name%',0,33,NULL,'2022-01-03 21:24:14','2022-01-03 21:24:14'),(217,'update_status','Order confirmed by %user_name%',0,36,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(218,'update_status','Order confirmed by %user_name%',0,37,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(219,'update_status','Order confirmed by %user_name%',0,38,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(220,'update_status','Order confirmed by %user_name%',0,42,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(221,'update_status','Order confirmed by %user_name%',0,43,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(222,'update_status','Order confirmed by %user_name%',0,44,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(223,'update_status','Order confirmed by %user_name%',0,45,NULL,'2022-01-03 21:24:15','2022-01-03 21:24:15'),(224,'update_status','Order confirmed by %user_name%',0,46,NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16'),(225,'update_status','Order confirmed by %user_name%',0,47,NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) unsigned DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,513.00,51.30,'[]',53,'Sound Intone I65 Earphone White Version',832.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(2,2,3,597.00,59.70,'[]',58,'B&O Play Mini Bluetooth Speaker',2205.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(3,3,1,820.00,82.00,'[]',74,'MVMTH Classical Leather Watch In Black',680.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(4,4,3,20.00,2.00,'[]',29,'Beat Headphone',2337.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(5,4,2,569.00,56.90,'[]',62,'Apple MacBook Air Retina 12-Inch Laptop',1252.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(6,5,1,1231.00,123.10,'[]',41,'Smart Televisions',554.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(7,6,2,20.00,2.00,'[]',31,'Beat Headphone',1558.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(8,6,3,820.00,82.00,'[]',74,'MVMTH Classical Leather Watch In Black',2040.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(9,6,1,669.00,66.90,'[]',75,'Baxter Care Hair Kit For Bearded Mens',581.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(10,7,2,1282.00,128.20,'[]',44,'Herschel Leather Duffle Bag In Brown Color',1446.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(11,8,1,507.00,50.70,'[]',38,'Audio Equipment',844.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(12,9,3,798.00,79.80,'[]',72,'NYX Beauty Couton Pallete Makeup 12',1689.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(13,10,2,1222.00,122.20,'[]',47,'Xbox One Wireless Controller Black Color',1370.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(14,10,2,535.00,53.50,'[]',50,'EPSION Plaster Printer',1578.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(15,11,2,597.00,59.70,'[]',58,'B&O Play Mini Bluetooth Speaker',1470.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(16,12,1,1296.00,129.60,'[]',67,'Aveeno Moisturizing Body Shower 450ml',621.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(17,13,2,567.00,56.70,'[]',32,'Red & Black Headphone',1226.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(18,13,2,1296.00,129.60,'[]',66,'Aveeno Moisturizing Body Shower 450ml',1242.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(19,14,2,1282.00,128.20,'[]',46,'Herschel Leather Duffle Bag In Brown Color',1446.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(20,15,3,535.00,53.50,'[]',48,'EPSION Plaster Printer',2367.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(21,16,1,569.00,56.90,'[]',61,'Apple MacBook Air Retina 12-Inch Laptop',626.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(22,16,2,569.00,56.90,'[]',62,'Apple MacBook Air Retina 12-Inch Laptop',1252.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(23,17,3,40.50,4.05,'[]',28,'Smart Watches',1968.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(24,17,3,507.00,50.70,'[]',38,'Audio Equipment',2532.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(25,17,1,564.00,56.40,'[]',64,'Samsung Gear VR Virtual Reality Headset',631.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(26,18,3,515.00,51.50,'[]',60,'Apple MacBook Air Retina 13.3-Inch Laptop',1857.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(27,19,3,20.00,2.00,'[]',29,'Beat Headphone',2337.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(28,20,3,1282.00,128.20,'[]',45,'Herschel Leather Duffle Bag In Brown Color',2169.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(29,20,3,564.00,56.40,'[]',65,'Samsung Gear VR Virtual Reality Headset',1893.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(30,21,1,40.50,4.05,'[]',26,'Smart Watches',656.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(31,21,2,564.00,56.40,'[]',64,'Samsung Gear VR Virtual Reality Headset',1262.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(32,22,2,406.00,40.60,'[]',37,'Nikon HD camera',1692.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(33,23,1,798.00,79.80,'[]',72,'NYX Beauty Couton Pallete Makeup 12',563.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(34,24,3,535.00,53.50,'[]',50,'EPSION Plaster Printer',2367.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(35,25,3,513.00,51.30,'[]',53,'Sound Intone I65 Earphone White Version',2496.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(36,26,2,20.00,2.00,'[]',29,'Beat Headphone',1558.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(37,26,2,569.00,56.90,'[]',63,'Apple MacBook Air Retina 12-Inch Laptop',1252.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(38,27,3,507.00,50.70,'[]',39,'Audio Equipment',2532.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(39,28,3,597.00,59.70,'[]',56,'B&O Play Mini Bluetooth Speaker',2205.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(40,29,3,20.00,2.00,'[]',31,'Beat Headphone',2337.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(41,29,1,569.00,56.90,'[]',61,'Apple MacBook Air Retina 12-Inch Laptop',626.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(42,30,2,1094.00,109.40,'[]',70,'NYX Beauty Couton Pallete Makeup 12',1488.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(43,31,2,569.00,56.90,'[]',61,'Apple MacBook Air Retina 12-Inch Laptop',1252.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(44,31,3,820.00,82.00,'[]',73,'MVMTH Classical Leather Watch In Black',2040.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(45,32,3,80.25,8.03,'[]',24,'Dual Camera 20MP',1716.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(46,32,3,40.50,4.05,'[]',27,'Smart Watches',1968.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(47,33,1,406.00,40.60,'[]',36,'Nikon HD camera',846.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(48,34,3,820.00,82.00,'[]',74,'MVMTH Classical Leather Watch In Black',2040.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(49,35,2,20.00,2.00,'[]',31,'Beat Headphone',1558.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(50,35,2,569.00,56.90,'[]',62,'Apple MacBook Air Retina 12-Inch Laptop',1252.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(51,36,1,567.00,56.70,'[]',32,'Red & Black Headphone',613.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(52,37,2,597.00,59.70,'[]',55,'B&O Play Mini Bluetooth Speaker',1470.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(53,38,3,820.00,82.00,'[]',73,'MVMTH Classical Leather Watch In Black',2040.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(54,38,1,820.00,82.00,'[]',74,'MVMTH Classical Leather Watch In Black',680.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(55,39,1,1231.00,123.10,'[]',42,'Smart Televisions',554.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(56,40,2,515.00,51.50,'[]',59,'Apple MacBook Air Retina 13.3-Inch Laptop',1238.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(57,41,1,820.00,82.00,'[]',73,'MVMTH Classical Leather Watch In Black',680.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(58,42,2,597.00,59.70,'[]',56,'B&O Play Mini Bluetooth Speaker',1470.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(59,43,3,569.00,56.90,'[]',63,'Apple MacBook Air Retina 12-Inch Laptop',1878.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(60,44,2,20.00,2.00,'[]',31,'Beat Headphone',1558.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(61,45,2,507.00,50.70,'[]',38,'Audio Equipment',1688.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(62,46,3,575.00,57.50,'[]',43,'Samsung Smart Phone',1644.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(63,47,3,515.00,51.50,'[]',59,'Apple MacBook Air Retina 13.3-Inch Laptop',1857.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,4,'1','default','pending',564.30,51.30,0.00,NULL,NULL,0.00,513.00,1,NULL,1,'f10H3c00XohZDBdd4ca9NZC1RFTSJ',1,'2021-12-18 05:24:12','2022-01-03 21:24:12',4),(2,4,'1','default','pending',1850.70,59.70,0.00,NULL,NULL,0.00,1791.00,1,NULL,1,'bcsk0Sy4vbSLZE18ugrtXxrAMvOJW',2,'2021-12-28 05:24:12','2022-01-03 21:24:12',6),(3,4,'1','default','pending',902.00,82.00,0.00,NULL,NULL,0.00,820.00,1,NULL,1,'K792vbQI4fOqzG8iu62J1v1eFZoAD',3,'2021-12-29 21:24:12','2022-01-03 21:24:12',3),(4,7,'1','default','pending',1256.90,58.90,0.00,NULL,NULL,0.00,1198.00,1,NULL,1,'ChJeXJshj35RF2VPsMCh5gUV8NGJC',4,'2022-01-02 07:24:12','2022-01-03 21:24:12',3),(5,7,'1','default','pending',1354.10,123.10,0.00,NULL,NULL,0.00,1231.00,1,NULL,1,'zXUM7emiLWAPq1JEWxJfrxoaBtUbQ',5,'2021-12-28 13:24:12','2022-01-03 21:24:12',1),(6,4,'1','default','completed',3319.90,150.90,0.00,NULL,NULL,0.00,3169.00,1,NULL,1,'uwDLvANN79k8obA2zC3VwAQq2JgMn',6,'2021-12-28 21:24:12','2022-01-03 21:24:13',3),(7,4,'1','default','pending',2692.20,128.20,0.00,NULL,NULL,0.00,2564.00,1,NULL,1,'xkIsIR2LDJ8MPkgWo2GEdjdTfed8K',7,'2021-12-31 21:24:12','2022-01-03 21:24:12',2),(8,7,'1','default','completed',557.70,50.70,0.00,NULL,NULL,0.00,507.00,1,NULL,1,'D9DDlS83pt8BXJrPtpP5n2HJBw6U6',8,'2021-12-24 23:24:12','2022-01-03 21:24:13',2),(9,7,'1','default','completed',2473.80,79.80,0.00,NULL,NULL,0.00,2394.00,1,NULL,1,'A2uLSsMYWbFuRL1d7XwK8ywLWMQ3b',9,'2021-12-30 15:24:12','2022-01-03 21:24:13',6),(10,8,'1','default','pending',3689.70,175.70,0.00,NULL,NULL,0.00,3514.00,1,NULL,1,'AYv7ptXaIO46AEOdQIx4li4nCMNEB',10,'2021-12-26 21:24:12','2022-01-03 21:24:12',1),(11,8,'1','default','pending',1253.70,59.70,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,'c1wfJgHdwwAD6kFI2Nji1LfdDh9VQ',11,'2021-12-30 21:24:12','2022-01-03 21:24:12',6),(12,8,'1','default','completed',1425.60,129.60,0.00,NULL,NULL,0.00,1296.00,1,NULL,1,'MJ3sEjdBtQDtjV7MRQXfiGynPH9Z0',12,'2021-12-26 21:24:12','2022-01-03 21:24:13',5),(13,7,'1','default','pending',3912.30,186.30,0.00,NULL,NULL,0.00,3726.00,1,NULL,1,'Cyn07E19kUMtL6snA6UvAQR7QlTaY',13,'2021-12-27 09:24:12','2022-01-03 21:24:12',5),(14,7,'1','default','pending',2692.20,128.20,0.00,NULL,NULL,0.00,2564.00,1,NULL,1,'exs3U6yT60HJFKEUrGrF4DTemNpCe',14,'2021-12-28 15:24:12','2022-01-03 21:24:12',2),(15,1,'1','default','completed',1658.50,53.50,0.00,NULL,NULL,0.00,1605.00,1,NULL,1,'EJm9i1uTZojjUNa4E4bOl5WNoCaxz',15,'2021-12-26 17:24:12','2022-01-03 21:24:13',1),(16,1,'1','default','completed',1820.80,113.80,0.00,NULL,NULL,0.00,1707.00,1,NULL,1,'5t1ySJifNEw0AiC5eYLrORZ9wQiPu',16,'2021-12-29 01:24:12','2022-01-03 21:24:14',3),(17,1,'1','default','pending',2317.65,111.15,0.00,NULL,NULL,0.00,2206.50,1,NULL,1,'Z8SrLdx0I2LXcYsat8HseuweajDbX',17,'2021-12-31 15:24:12','2022-01-03 21:24:12',2),(18,1,'1','default','completed',1596.50,51.50,0.00,NULL,NULL,0.00,1545.00,1,NULL,1,'dysXl9sUV3TWMynWwyy1kyfEbXe9M',18,'2021-12-25 03:24:12','2022-01-03 21:24:14',6),(19,1,'1','default','pending',62.00,2.00,0.00,NULL,NULL,0.00,60.00,1,NULL,1,'0wjlxfPESxJO8vPP0eLxTfzU8w0cJ',19,'2022-01-02 21:24:12','2022-01-03 21:24:12',3),(20,1,'1','default','completed',5722.60,184.60,0.00,NULL,NULL,0.00,5538.00,1,NULL,1,'FGkBZhnozrAiEXRzijPmd3e4PIaM3',20,'2021-12-25 21:24:12','2022-01-03 21:24:14',2),(21,8,'1','default','pending',1228.95,60.45,0.00,NULL,NULL,0.00,1168.50,1,NULL,1,'tcSToa9EplZaEddV0CTbvPgHyFYwd',21,'2021-12-30 07:24:12','2022-01-03 21:24:12',2),(22,8,'1','default','completed',852.60,40.60,0.00,NULL,NULL,0.00,812.00,1,NULL,1,'gJrNul0tkZj4QJxm8Nln4Q0qQ6QBs',22,'2022-01-02 01:24:12','2022-01-03 21:24:14',5),(23,8,'1','default','pending',877.80,79.80,0.00,NULL,NULL,0.00,798.00,1,NULL,1,'tSJApq136in27rCLtdSAdkcjgIcMx',23,'2022-01-02 01:24:12','2022-01-03 21:24:12',6),(24,8,'1','default','pending',1658.50,53.50,0.00,NULL,NULL,0.00,1605.00,1,NULL,1,'cIb7Y6Y7fyRB8dNtOd7e3q1L0lXLP',24,'2021-12-29 21:24:13','2022-01-03 21:24:13',1),(25,8,'1','default','completed',1590.30,51.30,0.00,NULL,NULL,0.00,1539.00,1,NULL,1,'E7dwgp7BBtD9NG2K8uqoJe1yPcpiv',25,'2021-12-31 13:24:13','2022-01-03 21:24:14',4),(26,7,'1','default','pending',1236.90,58.90,0.00,NULL,NULL,0.00,1178.00,1,NULL,1,'kHBQXJ0JTuSgo8oorcgDtk184ZmIg',26,'2021-12-31 21:24:13','2022-01-03 21:24:13',3),(27,7,'1','default','pending',1571.70,50.70,0.00,NULL,NULL,0.00,1521.00,1,NULL,1,'56jbnjBYm0reci7vyU70vAm4JN3fb',27,'2021-12-31 21:24:13','2022-01-03 21:24:13',2),(28,7,'1','default','completed',1850.70,59.70,0.00,NULL,NULL,0.00,1791.00,1,NULL,1,'lKqXjcWQWDNIInrdPCOFpSYuY7l4q',28,'2021-12-31 21:24:13','2022-01-03 21:24:14',6),(29,1,'1','default','pending',687.90,58.90,0.00,NULL,NULL,0.00,629.00,1,NULL,1,'40J6iXUxDmHbGAJMf7LkWFJWR13gw',29,'2021-12-31 13:24:13','2022-01-03 21:24:13',3),(30,1,'1','default','pending',2297.40,109.40,0.00,NULL,NULL,0.00,2188.00,1,NULL,1,'QxnkKr4YR6IHpjs11K7PbiDSUq6vo',30,'2022-01-02 13:24:13','2022-01-03 21:24:13',1),(31,1,'1','default','pending',3736.90,138.90,0.00,NULL,NULL,0.00,3598.00,1,NULL,1,'fddPIEqwh6MTmIYmOcMgW4iEMcqeJ',31,'2022-01-03 07:24:13','2022-01-03 21:24:13',3),(32,4,'1','default','pending',374.33,12.08,0.00,NULL,NULL,0.00,362.25,1,NULL,1,'dD4dOBEJz7pE0HN8rezMFvwVqcKY1',32,'2022-01-02 21:24:13','2022-01-03 21:24:13',2),(33,4,'1','default','completed',446.60,40.60,0.00,NULL,NULL,0.00,406.00,1,NULL,1,'TIJLgMTglDcf8Fm3wZmwfdw9DmUWk',33,'2022-01-02 21:24:13','2022-01-03 21:24:14',5),(34,4,'1','default','pending',2542.00,82.00,0.00,NULL,NULL,0.00,2460.00,1,NULL,1,'2FhOuCEm9jJ0lRL1EptFtPRwxsTSA',34,'2021-12-29 21:24:13','2022-01-03 21:24:13',3),(35,8,'1','default','pending',1236.90,58.90,0.00,NULL,NULL,0.00,1178.00,1,NULL,1,'9Ebt6ZVx0mNrW6TWaNtQbQFTkOiX2',35,'2022-01-01 09:24:13','2022-01-03 21:24:13',3),(36,4,'1','default','completed',623.70,56.70,0.00,NULL,NULL,0.00,567.00,1,NULL,1,'pYdLrC5apc3kgzq3bKDJH4PDXsG5C',36,'2021-12-31 13:24:13','2022-01-03 21:24:15',5),(37,4,'1','default','completed',1253.70,59.70,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,'o7hXjergdLNNuYlcVXUJlCWcxwOq7',37,'2022-01-02 21:24:13','2022-01-03 21:24:15',6),(38,4,'1','default','completed',3444.00,164.00,0.00,NULL,NULL,0.00,3280.00,1,NULL,1,'qLI32QDWxSnU8R7OoyQINgnFOe1EY',38,'2022-01-02 05:24:13','2022-01-03 21:24:15',3),(39,7,'1','default','pending',1354.10,123.10,0.00,NULL,NULL,0.00,1231.00,1,NULL,1,'Qy3nb603Z4eEUr1UMwPIYasaj70cG',39,'2022-01-03 15:24:13','2022-01-03 21:24:13',1),(40,7,'1','default','pending',1081.50,51.50,0.00,NULL,NULL,0.00,1030.00,1,NULL,1,'5sScbNfcojplYKtZVasu6oln7Mk9N',40,'2022-01-03 15:24:13','2022-01-03 21:24:13',6),(41,7,'1','default','pending',902.00,82.00,0.00,NULL,NULL,0.00,820.00,1,NULL,1,'GO46cwBqMVxIsAkjdCQzo5qTAKdv6',41,'2022-01-03 03:24:13','2022-01-03 21:24:13',3),(42,1,'1','default','completed',1253.70,59.70,0.00,NULL,NULL,0.00,1194.00,1,NULL,1,'XaESK7L281SCSYTST38CvK0Pu2EIG',42,'2022-01-03 13:24:13','2022-01-03 21:24:15',6),(43,1,'1','default','completed',1763.90,56.90,0.00,NULL,NULL,0.00,1707.00,1,NULL,1,'BkQ2OHqtBsGwbLOGP0RFHh61Vo2Tw',43,'2022-01-03 01:24:13','2022-01-03 21:24:15',3),(44,7,'1','default','completed',42.00,2.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'zsXo21HWwxM5ifyvXCbdz7qXiSHET',44,'2022-01-03 19:24:13','2022-01-03 21:24:15',3),(45,7,'1','default','completed',1064.70,50.70,0.00,NULL,NULL,0.00,1014.00,1,NULL,1,'E2ev9Q5gynpxoiIqxeHUX61OWv9dh',45,'2022-01-03 15:24:13','2022-01-03 21:24:15',2),(46,7,'1','default','completed',1782.50,57.50,0.00,NULL,NULL,0.00,1725.00,1,NULL,1,'e6j5z4JUd6yO29GU4KNQx1NuPhqpY',46,'2022-01-03 13:24:13','2022-01-03 21:24:16',4),(47,7,'1','default','completed',1596.50,51.50,0.00,NULL,NULL,0.00,1545.00,1,NULL,1,'8vR8wetXsEgH5aDH81Xixr1ButS1X',47,'2022-01-03 01:24:13','2022-01-03 21:24:16',6);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-01-03 21:23:58','2022-01-03 21:23:58'),(2,'Size','size','text',1,1,1,'published',1,'2022-01-03 21:23:58','2022-01-03 21:23:58');
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-01-03 21:23:58','2022-01-03 21:23:58'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-01-03 21:23:58','2022-01-03 21:23:58');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-01-03 21:23:43','2022-01-03 21:23:43');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,19,1),(2,9,1),(3,18,1),(4,35,1),(5,12,2),(6,16,2),(7,1,2),(8,37,2),(9,1,3),(10,9,3),(11,21,3),(12,30,3),(13,27,4),(14,3,4),(15,23,4),(16,29,5),(17,20,5),(18,24,5),(19,33,5),(20,33,6),(21,25,6),(22,13,6),(23,23,6),(24,6,7),(25,1,7),(26,14,7),(27,16,7),(28,28,8),(29,10,8),(30,11,8),(31,23,8),(32,23,9),(33,6,9),(34,5,9),(35,24,9),(36,30,10),(37,33,10),(38,34,10),(39,23,10),(40,4,11),(41,6,11),(42,23,11),(43,19,11),(44,15,12),(45,22,12),(46,23,12),(47,16,12),(48,26,13),(49,20,13),(50,9,13),(51,29,13),(52,7,14),(53,24,14),(54,4,14),(55,37,14),(56,13,15),(57,33,15),(58,9,15),(59,27,15),(60,13,16),(61,21,16),(62,19,16),(63,27,16),(64,6,17),(65,1,17),(66,4,17),(67,16,17),(68,27,18),(69,26,18),(70,2,18),(71,23,18),(72,22,19),(73,24,19),(74,6,19),(75,17,19),(76,33,20),(77,37,20),(78,19,20),(79,36,20),(80,28,21),(81,21,21),(82,3,21),(83,31,21),(84,6,22),(85,20,22),(86,8,22),(87,21,22),(88,2,23),(89,18,23),(90,23,23),(91,32,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,1,1),(2,3,2),(3,2,3),(4,3,4),(5,2,5),(6,1,6),(7,3,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,3,12),(13,1,13),(14,3,14),(15,1,15),(16,2,16),(17,2,17),(18,1,18),(19,2,19),(20,2,20),(21,1,21),(22,2,22),(23,3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-01-03 21:23:43','2022-01-03 21:23:43',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-01-03 21:23:43','2022-01-03 21:23:43',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-01-03 21:23:43','2022-01-03 21:23:43',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,3),(2,1,15),(3,1,11),(4,1,12),(5,1,18),(6,1,20),(7,2,11),(8,2,5),(9,2,9),(10,2,1),(11,2,13),(12,2,19),(13,2,17),(14,3,11),(15,3,19),(16,3,14),(17,3,2),(18,3,16),(19,3,12),(20,4,7),(21,4,19),(22,4,12),(23,4,1),(24,4,6),(25,4,3),(26,4,20),(27,5,15),(28,5,6),(29,5,20),(30,5,9),(31,6,5),(32,6,16),(33,6,1),(34,6,8),(35,6,13),(36,6,17),(37,7,20),(38,7,4),(39,7,16),(40,7,15),(41,7,17),(42,7,18),(43,8,4),(44,8,2),(45,8,11),(46,8,1),(47,8,9),(48,8,17),(49,9,6),(50,9,12),(51,9,14),(52,9,20),(53,9,4),(54,9,13),(55,10,8),(56,10,3),(57,10,20),(58,10,13),(59,10,6),(60,10,14),(61,10,2),(62,11,8),(63,11,3),(64,11,12),(65,11,14),(66,11,1),(67,11,19),(68,12,7),(69,12,2),(70,12,19),(71,12,16),(72,12,18),(73,12,8),(74,13,11),(75,13,7),(76,13,17),(77,13,6),(78,13,19),(79,13,4),(80,14,8),(81,14,17),(82,14,10),(83,14,9),(84,14,3),(85,15,2),(86,15,9),(87,15,1),(88,15,3),(89,15,4),(90,16,8),(91,16,9),(92,16,11),(93,16,19),(94,16,14),(95,16,5),(96,16,4),(97,17,18),(98,17,12),(99,17,15),(100,17,9),(101,17,20),(102,17,4),(103,18,2),(104,18,19),(105,18,13),(106,18,6),(107,18,4),(108,18,8),(109,19,8),(110,19,3),(111,19,9),(112,19,14),(113,19,1),(114,19,13),(115,20,9),(116,20,5),(117,20,1),(118,20,18),(119,20,13),(120,20,2),(121,21,10),(122,21,7),(123,21,6),(124,21,2),(125,21,3),(126,21,1),(127,22,13),(128,22,11),(129,22,15),(130,22,7),(131,22,10),(132,22,1),(133,22,8),(134,23,7),(135,23,6),(136,23,18),(137,23,8),(138,23,5),(139,23,9),(140,23,10);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,9),(1,18),(2,3),(2,12),(2,21),(3,6),(3,15);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-01-03 21:23:43','2022-01-03 21:23:43'),(2,'New','#00c9a7','published','2022-01-03 21:23:43','2022-01-03 21:23:43'),(3,'Sale','#fe9931','published','2022-01-03 21:23:43','2022-01-03 21:23:43');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,3),(1,5),(1,6),(2,1),(2,4),(2,5),(3,4),(3,5),(4,1),(4,4),(5,3),(5,5),(5,6),(6,2),(6,4),(6,5),(7,3),(7,4),(7,6),(8,1),(8,2),(9,1),(9,5),(9,6),(10,1),(10,2),(11,2),(11,4),(11,5),(12,2),(12,4),(12,6),(13,1),(13,6),(14,4),(14,5),(15,5),(15,6),(16,1),(16,3),(16,4),(17,2),(17,5),(18,3),(18,6),(19,1),(19,2),(19,3),(20,1),(20,3),(20,6),(21,1),(21,3),(21,6),(22,1),(22,5),(23,2),(23,4),(23,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(2,'Mobile',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(3,'Iphone',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(4,'Printer',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(5,'Office',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(6,'IT',NULL,'published','2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int(10) unsigned NOT NULL,
  `to_product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `variation_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,5,1),(2,9,1),(3,2,2),(4,8,2),(5,3,3),(6,8,3),(7,4,4),(8,6,4),(9,5,5),(10,9,5),(11,3,6),(12,6,6),(13,3,7),(14,8,7),(15,5,8),(16,8,8),(17,3,9),(18,10,9),(19,3,10),(20,8,10),(21,4,11),(22,8,11),(23,5,12),(24,6,12),(25,4,13),(26,6,13),(27,2,14),(28,6,14),(29,2,15),(30,6,15),(31,5,16),(32,8,16),(33,4,17),(34,7,17),(35,4,18),(36,6,18),(37,5,19),(38,6,19),(39,2,20),(40,7,20),(41,2,21),(42,8,21),(43,4,22),(44,10,22),(45,3,23),(46,8,23),(47,2,24),(48,7,24),(49,2,25),(50,9,25),(51,5,26),(52,9,26),(53,4,27),(54,10,27),(55,3,28),(56,7,28),(57,2,29),(58,9,29),(59,3,30),(60,10,30),(61,4,31),(62,8,31),(63,2,32),(64,8,32),(65,3,33),(66,6,33),(67,2,34),(68,8,34),(69,1,35),(70,8,35),(71,3,36),(72,7,36),(73,1,37),(74,10,37),(75,4,38),(76,8,38),(77,5,39),(78,9,39),(79,5,40),(80,9,40),(81,1,41),(82,10,41),(83,1,42),(84,6,42),(85,1,43),(86,8,43),(87,5,44),(88,10,44),(89,3,45),(90,8,45),(91,1,46),(92,8,46),(93,5,47),(94,8,47),(95,4,48),(96,8,48),(97,4,49),(98,9,49),(99,3,50),(100,10,50),(101,1,51),(102,6,51),(103,5,52),(104,10,52),(105,5,53),(106,8,53);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `configurable_product_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,1,0),(3,26,2,1),(4,27,2,0),(5,28,2,0),(6,29,3,1),(7,30,3,0),(8,31,3,0),(9,32,4,1),(10,33,4,0),(11,34,5,1),(12,35,5,0),(13,36,6,1),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,7,0),(18,41,8,1),(19,42,8,0),(20,43,9,1),(21,44,10,1),(22,45,10,0),(23,46,10,0),(24,47,11,1),(25,48,12,1),(26,49,12,0),(27,50,12,0),(28,51,13,1),(29,52,13,0),(30,53,13,0),(31,54,13,0),(32,55,14,1),(33,56,14,0),(34,57,14,0),(35,58,14,0),(36,59,15,1),(37,60,15,0),(38,61,16,1),(39,62,16,0),(40,63,16,0),(41,64,17,1),(42,65,17,0),(43,66,18,1),(44,67,18,0),(45,68,18,0),(46,69,18,0),(47,70,19,1),(48,71,20,1),(49,72,20,0),(50,73,21,1),(51,74,21,0),(52,75,22,1),(53,76,23,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute`
--

DROP TABLE IF EXISTS `ec_product_with_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute`
--

LOCK TABLES `ec_product_with_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute` VALUES (1,2,1),(2,9,1),(3,4,2),(4,10,2),(5,4,3),(6,6,3),(7,2,4),(8,8,4),(9,3,5),(10,8,5),(11,2,6),(12,8,6),(13,1,7),(14,9,7),(15,1,8),(16,7,8),(17,2,9),(18,10,9),(19,2,10),(20,10,10),(21,5,11),(22,6,11),(23,2,12),(24,7,12),(25,5,13),(26,8,13),(27,4,14),(28,6,14),(29,4,15),(30,9,15),(31,1,16),(32,7,16),(33,5,17),(34,9,17),(35,4,18),(36,7,18),(37,1,19),(38,10,19),(39,3,20),(40,10,20),(41,3,21),(42,9,21),(43,4,22),(44,9,22),(45,4,23),(46,10,23);
/*!40000 ALTER TABLE `ec_product_with_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `brand_id` int(10) unsigned DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) unsigned DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_by_id` int(11) DEFAULT 0,
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-162-A0',0,19,0,1,1,7,0,0,80.25,NULL,NULL,NULL,14.00,20.00,11.00,572.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,27271,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-126-A0',0,14,0,1,1,4,0,0,40.5,NULL,NULL,NULL,19.00,16.00,16.00,656.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,106922,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-102-A0',0,13,0,1,1,5,0,0,20,NULL,NULL,NULL,16.00,17.00,20.00,779.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,110634,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-171-A0',0,13,0,1,1,4,0,0,567,510.3,NULL,NULL,19.00,11.00,12.00,613.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,19336,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-141-A0',0,18,0,1,1,5,0,0,787,NULL,NULL,NULL,17.00,17.00,18.00,744.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,177906,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-107-A0',0,14,0,1,1,3,0,0,406,NULL,NULL,NULL,18.00,18.00,20.00,846.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,111739,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-132-A0',0,20,0,1,1,1,0,0,507,NULL,NULL,NULL,15.00,16.00,19.00,844.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,41856,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-112-A0',0,20,0,1,1,4,0,0,1231,997.11,NULL,NULL,15.00,18.00,11.00,554.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,182474,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-137-A0',0,16,0,1,1,5,0,0,575,NULL,NULL,NULL,18.00,18.00,12.00,548.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,58589,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-128-A0',0,12,0,1,0,3,0,0,1282,NULL,NULL,NULL,18.00,14.00,18.00,723.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,67379,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-132-A0',0,16,0,1,0,6,0,0,1222,NULL,NULL,NULL,13.00,14.00,11.00,685.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,159162,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-156-A0',0,16,0,1,0,1,0,0,535,411.95,NULL,NULL,15.00,20.00,15.00,789.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,67345,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-170-A0',0,20,0,1,0,4,0,0,513,NULL,NULL,NULL,10.00,18.00,17.00,832.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,183158,'in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-124-A0',0,18,0,1,0,1,0,0,597,NULL,NULL,NULL,14.00,13.00,20.00,735.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,86698,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-105-A0',0,20,0,1,0,7,0,0,515,NULL,NULL,NULL,14.00,12.00,13.00,619.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,128637,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-144-A0',0,16,0,1,0,4,0,0,569,403.99,NULL,NULL,18.00,14.00,11.00,626.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,106347,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-160-A0',0,13,0,1,0,1,0,0,564,NULL,NULL,NULL,11.00,12.00,15.00,631.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,186825,'in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-147-A0',0,12,0,1,0,1,0,0,1296,NULL,NULL,NULL,17.00,16.00,18.00,621.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,177257,'in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-182-A0',0,11,0,1,0,2,0,0,1094,NULL,NULL,NULL,18.00,20.00,20.00,744.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,65448,'in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-172-A0',0,11,0,1,0,3,0,0,798,566.58,NULL,NULL,16.00,18.00,18.00,563.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,173994,'in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-118-A0',0,13,0,1,0,4,0,0,820,NULL,NULL,NULL,16.00,15.00,20.00,680.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,125158,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-123-A0',0,12,0,1,0,2,0,0,669,NULL,NULL,NULL,12.00,13.00,11.00,581.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,139873,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-160-A0',0,10,0,1,0,5,0,0,945,NULL,NULL,NULL,14.00,17.00,15.00,865.00,'2022-01-03 21:23:57','2022-01-03 21:24:12',1,3624,'in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-162-A0',0,19,0,1,0,7,1,0,80.25,NULL,NULL,NULL,14.00,20.00,11.00,572.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-162-A0-A1',0,19,0,1,0,7,1,0,80.25,NULL,NULL,NULL,14.00,20.00,11.00,572.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-126-A0',0,14,0,1,0,4,1,0,40.5,NULL,NULL,NULL,19.00,16.00,16.00,656.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-126-A0-A1',0,14,0,1,0,4,1,0,40.5,NULL,NULL,NULL,19.00,16.00,16.00,656.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-126-A0-A2',0,14,0,1,0,4,1,0,40.5,NULL,NULL,NULL,19.00,16.00,16.00,656.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-102-A0',0,13,0,1,0,5,1,0,20,NULL,NULL,NULL,16.00,17.00,20.00,779.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-102-A0-A1',0,13,0,1,0,5,1,0,20,NULL,NULL,NULL,16.00,17.00,20.00,779.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-102-A0-A2',0,13,0,1,0,5,1,0,20,NULL,NULL,NULL,16.00,17.00,20.00,779.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-171-A0',0,13,0,1,0,4,1,0,567,510.3,NULL,NULL,19.00,11.00,12.00,613.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-171-A0-A1',0,13,0,1,0,4,1,0,567,453.6,NULL,NULL,19.00,11.00,12.00,613.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-141-A0',0,18,0,1,0,5,1,0,787,NULL,NULL,NULL,17.00,17.00,18.00,744.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-141-A0-A1',0,18,0,1,0,5,1,0,787,NULL,NULL,NULL,17.00,17.00,18.00,744.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-107-A0',0,14,0,1,0,3,1,0,406,NULL,NULL,NULL,18.00,18.00,20.00,846.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-107-A0-A1',0,14,0,1,0,3,1,0,406,NULL,NULL,NULL,18.00,18.00,20.00,846.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-132-A0',0,20,0,1,0,1,1,0,507,NULL,NULL,NULL,15.00,16.00,19.00,844.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-132-A0-A1',0,20,0,1,0,1,1,0,507,NULL,NULL,NULL,15.00,16.00,19.00,844.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-132-A0-A2',0,20,0,1,0,1,1,0,507,NULL,NULL,NULL,15.00,16.00,19.00,844.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-112-A0',0,20,0,1,0,4,1,0,1231,997.11,NULL,NULL,15.00,18.00,11.00,554.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Smart Televisions',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','SW-112-A0-A1',0,20,0,1,0,4,1,0,1231,1034.04,NULL,NULL,15.00,18.00,11.00,554.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-137-A0',0,16,0,1,0,5,1,0,575,NULL,NULL,NULL,18.00,18.00,12.00,548.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-128-A0',0,12,0,1,0,3,1,0,1282,NULL,NULL,NULL,18.00,14.00,18.00,723.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-128-A0-A1',0,12,0,1,0,3,1,0,1282,NULL,NULL,NULL,18.00,14.00,18.00,723.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]','SW-128-A0-A2',0,12,0,1,0,3,1,0,1282,NULL,NULL,NULL,18.00,14.00,18.00,723.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-132-A0',0,16,0,1,0,6,1,0,1222,NULL,NULL,NULL,13.00,14.00,11.00,685.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-156-A0',0,16,0,1,0,1,1,0,535,411.95,NULL,NULL,15.00,20.00,15.00,789.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-156-A0-A1',0,16,0,1,0,1,1,0,535,417.3,NULL,NULL,15.00,20.00,15.00,789.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-2.jpg\"]','SW-156-A0-A2',0,16,0,1,0,1,1,0,535,449.4,NULL,NULL,15.00,20.00,15.00,789.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-170-A0',0,20,0,1,0,4,1,0,513,NULL,NULL,NULL,10.00,18.00,17.00,832.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-170-A0-A1',0,20,0,1,0,4,1,0,513,NULL,NULL,NULL,10.00,18.00,17.00,832.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-170-A0-A2',0,20,0,1,0,4,1,0,513,NULL,NULL,NULL,10.00,18.00,17.00,832.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-170-A0-A3',0,20,0,1,0,4,1,0,513,NULL,NULL,NULL,10.00,18.00,17.00,832.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-124-A0',0,18,0,1,0,1,1,0,597,NULL,NULL,NULL,14.00,13.00,20.00,735.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-124-A0-A1',0,18,0,1,0,1,1,0,597,NULL,NULL,NULL,14.00,13.00,20.00,735.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-124-A0-A2',0,18,0,1,0,1,1,0,597,NULL,NULL,NULL,14.00,13.00,20.00,735.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-124-A0-A3',0,18,0,1,0,1,1,0,597,NULL,NULL,NULL,14.00,13.00,20.00,735.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-105-A0',0,20,0,1,0,7,1,0,515,NULL,NULL,NULL,14.00,12.00,13.00,619.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-105-A0-A1',0,20,0,1,0,7,1,0,515,NULL,NULL,NULL,14.00,12.00,13.00,619.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-144-A0',0,16,0,1,0,4,1,0,569,403.99,NULL,NULL,18.00,14.00,11.00,626.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-144-A0-A1',0,16,0,1,0,4,1,0,569,477.96,NULL,NULL,18.00,14.00,11.00,626.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-144-A0-A2',0,16,0,1,0,4,1,0,569,472.27,NULL,NULL,18.00,14.00,11.00,626.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-160-A0',0,13,0,1,0,1,1,0,564,NULL,NULL,NULL,11.00,12.00,15.00,631.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-160-A0-A1',0,13,0,1,0,1,1,0,564,NULL,NULL,NULL,11.00,12.00,15.00,631.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-147-A0',0,12,0,1,0,1,1,0,1296,NULL,NULL,NULL,17.00,16.00,18.00,621.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-147-A0-A1',0,12,0,1,0,1,1,0,1296,NULL,NULL,NULL,17.00,16.00,18.00,621.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-147-A0-A2',0,12,0,1,0,1,1,0,1296,NULL,NULL,NULL,17.00,16.00,18.00,621.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]','SW-147-A0-A3',0,12,0,1,0,1,1,0,1296,NULL,NULL,NULL,17.00,16.00,18.00,621.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-182-A0',0,11,0,1,0,2,1,0,1094,NULL,NULL,NULL,18.00,20.00,20.00,744.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-172-A0',0,11,0,1,0,3,1,0,798,566.58,NULL,NULL,16.00,18.00,18.00,563.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','SW-172-A0-A1',0,11,0,1,0,3,1,0,798,654.36,NULL,NULL,16.00,18.00,18.00,563.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-118-A0',0,13,0,1,0,4,1,0,820,NULL,NULL,NULL,16.00,15.00,20.00,680.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-118-A0-A1',0,13,0,1,0,4,1,0,820,NULL,NULL,NULL,16.00,15.00,20.00,680.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-123-A0',0,12,0,1,0,2,1,0,669,NULL,NULL,NULL,12.00,13.00,11.00,581.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-160-A0',0,10,0,1,0,5,1,0,945,NULL,NULL,NULL,14.00,17.00,15.00,865.00,'2022-01-03 21:23:57','2022-01-03 21:23:57',NULL,0,'in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Dual Camera 20MP',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Smart Watches',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Beat Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Red & Black Headphone',NULL,NULL),('vi',34,'Smart Watch External',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Nikon HD camera',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Audio Equipment',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Audio Equipment',NULL,NULL),('vi',41,'Smart Televisions',NULL,NULL),('vi',42,'Smart Televisions',NULL,NULL),('vi',43,'Samsung Smart Phone',NULL,NULL),('vi',44,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',45,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',46,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',47,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',48,'EPSION Plaster Printer',NULL,NULL),('vi',49,'EPSION Plaster Printer',NULL,NULL),('vi',50,'EPSION Plaster Printer',NULL,NULL),('vi',51,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',52,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',53,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',54,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',55,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',56,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',57,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',58,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',60,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',61,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',62,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',63,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',64,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',65,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',66,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',68,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',69,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',72,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',73,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',74,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',76,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,6,11,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(2,5,18,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(3,6,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(4,5,20,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(5,1,14,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(6,6,23,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(7,1,4,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(8,2,11,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(9,8,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(10,6,10,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(11,5,8,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/22.jpg\"]'),(12,10,17,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(13,8,7,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(14,4,22,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(15,3,21,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(16,8,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(17,8,16,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/12.jpg\"]'),(18,2,22,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(19,6,10,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\"]'),(20,2,5,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(21,4,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/22.jpg\"]'),(22,7,6,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(23,3,13,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(24,7,4,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(25,1,23,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(26,7,10,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(27,10,9,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(28,9,23,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/14.jpg\"]'),(29,9,2,4.00,'Best ecommerce CMS online store!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/15.jpg\"]'),(30,7,22,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(31,6,1,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(32,8,1,2.00,'Clean & perfect source code','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(33,5,4,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(34,6,13,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(35,1,22,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(36,8,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(37,7,20,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(38,9,19,5.00,'Clean & perfect source code','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\"]'),(39,8,10,2.00,'Good app, good backup service and support. Good documentation.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/20.jpg\"]'),(40,9,19,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(41,1,10,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(42,2,1,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(43,8,23,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(44,6,21,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(45,4,22,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(46,9,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/9.jpg\"]'),(47,7,16,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(48,6,7,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(49,7,1,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(50,5,12,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(51,6,23,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(52,4,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/19.jpg\"]'),(53,1,9,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\"]'),(54,6,13,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(55,6,19,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(56,7,11,3.00,'Best ecommerce CMS online store!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(57,5,6,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/20.jpg\"]'),(58,2,19,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\"]'),(59,9,2,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(60,6,20,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(61,1,6,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(62,5,10,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(63,10,16,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(64,4,7,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(65,10,10,2.00,'Good app, good backup service and support. Good documentation.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(66,2,10,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(67,1,16,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\"]'),(68,8,8,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(69,3,23,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/21.jpg\"]'),(70,6,22,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(71,1,12,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(72,8,11,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(73,10,18,1.00,'Best ecommerce CMS online store!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\"]'),(74,2,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/9.jpg\"]'),(75,1,14,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(76,5,19,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(77,1,18,1.00,'Clean & perfect source code','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(78,10,3,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/16.jpg\"]'),(79,2,16,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/9.jpg\"]'),(80,2,19,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(81,8,19,4.00,'Best ecommerce CMS online store!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(82,4,5,3.00,'Clean & perfect source code','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(83,4,6,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(84,1,12,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/18.jpg\"]'),(85,4,20,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(86,10,14,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(87,10,7,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/13.jpg\"]'),(88,5,4,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/11.jpg\"]'),(89,3,11,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(90,5,16,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(91,9,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(92,4,18,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(93,10,17,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/13.jpg\"]'),(94,4,17,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\"]'),(95,8,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(96,1,19,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/23.jpg\"]'),(97,5,12,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(98,3,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(99,2,22,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/4.jpg\",\"products\\/10.jpg\"]'),(100,4,13,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-01-03 21:24:00','2022-01-03 21:24:00','[\"products\\/3.jpg\",\"products\\/6.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `shipment_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2021-12-18 05:24:12','2021-12-18 05:24:12'),(2,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,1,1,'2022-01-02 05:24:12','2022-01-03 21:24:12'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2021-12-28 05:24:12','2021-12-28 05:24:12'),(4,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,2,2,'2022-01-02 05:24:12','2022-01-03 21:24:12'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2021-12-29 21:24:12','2021-12-29 21:24:12'),(6,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,3,3,'2022-01-02 05:24:12','2022-01-03 21:24:12'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-01-02 07:24:12','2022-01-02 07:24:12'),(8,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,4,4,'2022-01-02 07:24:12','2022-01-03 21:24:12'),(9,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2021-12-28 13:24:12','2021-12-28 13:24:12'),(10,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,5,5,'2022-01-02 07:24:12','2022-01-03 21:24:12'),(11,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2021-12-28 21:24:12','2021-12-28 21:24:12'),(12,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,6,6,'2022-01-02 09:24:12','2022-01-03 21:24:12'),(13,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,6,6,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2021-12-31 21:24:12','2021-12-31 21:24:12'),(15,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,7,7,'2022-01-02 09:24:12','2022-01-03 21:24:12'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2021-12-24 23:24:12','2021-12-24 23:24:12'),(17,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,8,8,'2022-01-02 11:24:12','2022-01-03 21:24:12'),(18,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,8,8,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(19,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2021-12-30 15:24:12','2021-12-30 15:24:12'),(20,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,9,9,'2022-01-02 11:24:12','2022-01-03 21:24:12'),(21,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,9,9,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(22,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(23,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,10,10,'2022-01-02 13:24:12','2022-01-03 21:24:12'),(24,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2021-12-30 21:24:12','2021-12-30 21:24:12'),(25,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,11,11,'2022-01-02 13:24:12','2022-01-03 21:24:12'),(26,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2021-12-26 21:24:12','2021-12-26 21:24:12'),(27,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,12,12,'2022-01-02 13:24:12','2022-01-03 21:24:12'),(28,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,12,12,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(29,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2021-12-27 09:24:12','2021-12-27 09:24:12'),(30,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,13,13,'2022-01-02 15:24:12','2022-01-03 21:24:12'),(31,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,13,13,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(32,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2021-12-28 15:24:12','2021-12-28 15:24:12'),(33,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,14,14,'2022-01-02 15:24:12','2022-01-03 21:24:12'),(34,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2021-12-26 17:24:12','2021-12-26 17:24:12'),(35,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,15,15,'2022-01-02 17:24:12','2022-01-03 21:24:12'),(36,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,15,15,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(37,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2021-12-29 01:24:12','2021-12-29 01:24:12'),(38,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,16,16,'2022-01-02 17:24:12','2022-01-03 21:24:12'),(39,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,16,16,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(40,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2021-12-31 15:24:12','2021-12-31 15:24:12'),(41,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,17,17,'2022-01-02 19:24:12','2022-01-03 21:24:12'),(42,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,17,17,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(43,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,17,17,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(44,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2021-12-25 03:24:12','2021-12-25 03:24:12'),(45,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,18,18,'2022-01-02 19:24:12','2022-01-03 21:24:12'),(46,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,18,18,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(47,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-01-02 21:24:12','2022-01-02 21:24:12'),(48,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,19,19,'2022-01-02 21:24:12','2022-01-03 21:24:12'),(49,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2021-12-25 21:24:12','2021-12-25 21:24:12'),(50,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,20,20,'2022-01-02 21:24:12','2022-01-03 21:24:12'),(51,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,20,20,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(52,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2021-12-30 07:24:12','2021-12-30 07:24:12'),(53,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,21,21,'2022-01-02 23:24:12','2022-01-03 21:24:12'),(54,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(55,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,22,22,'2022-01-02 23:24:12','2022-01-03 21:24:12'),(56,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,22,22,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(57,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-01-02 01:24:12','2022-01-02 01:24:12'),(58,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,23,23,'2022-01-02 23:24:12','2022-01-03 21:24:13'),(59,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(60,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,24,24,'2022-01-03 01:24:13','2022-01-03 21:24:13'),(61,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(62,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,25,25,'2022-01-03 01:24:13','2022-01-03 21:24:13'),(63,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,25,25,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(64,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(65,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,26,26,'2022-01-03 03:24:13','2022-01-03 21:24:13'),(66,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(67,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,27,27,'2022-01-03 03:24:13','2022-01-03 21:24:13'),(68,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2021-12-31 21:24:13','2021-12-31 21:24:13'),(69,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,28,28,'2022-01-03 03:24:13','2022-01-03 21:24:13'),(70,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,28,28,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(71,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(72,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,29,29,'2022-01-03 05:24:13','2022-01-03 21:24:13'),(73,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,29,29,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(74,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-01-02 13:24:13','2022-01-02 13:24:13'),(75,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,30,30,'2022-01-03 05:24:13','2022-01-03 21:24:13'),(76,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-01-03 07:24:13','2022-01-03 07:24:13'),(77,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,31,31,'2022-01-03 07:24:13','2022-01-03 21:24:13'),(78,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,31,31,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(79,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,31,31,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(80,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(81,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,32,32,'2022-01-03 09:24:13','2022-01-03 21:24:13'),(82,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,32,32,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(83,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(84,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,33,33,'2022-01-03 09:24:13','2022-01-03 21:24:13'),(85,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,33,33,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(86,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2021-12-29 21:24:13','2021-12-29 21:24:13'),(87,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,34,34,'2022-01-03 09:24:13','2022-01-03 21:24:13'),(88,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-01-01 09:24:13','2022-01-01 09:24:13'),(89,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,35,35,'2022-01-03 11:24:13','2022-01-03 21:24:13'),(90,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,35,35,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(91,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2021-12-31 13:24:13','2021-12-31 13:24:13'),(92,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,36,36,'2022-01-03 13:24:13','2022-01-03 21:24:13'),(93,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,36,36,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(94,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-01-02 21:24:13','2022-01-02 21:24:13'),(95,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,37,37,'2022-01-03 13:24:13','2022-01-03 21:24:13'),(96,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,37,37,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(97,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-01-02 05:24:13','2022-01-02 05:24:13'),(98,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,38,38,'2022-01-03 13:24:13','2022-01-03 21:24:13'),(99,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,38,38,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(100,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(101,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,39,39,'2022-01-03 15:24:13','2022-01-03 21:24:13'),(102,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(103,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,40,40,'2022-01-03 15:24:13','2022-01-03 21:24:13'),(104,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-01-03 03:24:13','2022-01-03 03:24:13'),(105,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,41,41,'2022-01-03 15:24:13','2022-01-03 21:24:13'),(106,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,41,41,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(107,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(108,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,42,42,'2022-01-03 17:24:13','2022-01-03 21:24:13'),(109,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,42,42,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(110,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(111,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,43,43,'2022-01-03 17:24:13','2022-01-03 21:24:13'),(112,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,43,43,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(113,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-01-03 19:24:13','2022-01-03 19:24:13'),(114,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,44,44,'2022-01-03 19:24:13','2022-01-03 21:24:13'),(115,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,44,44,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(116,'create_from_order','Shipping was created from order %order_id%',0,45,45,'2022-01-03 15:24:13','2022-01-03 15:24:13'),(117,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,45,45,'2022-01-03 19:24:13','2022-01-03 21:24:13'),(118,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,45,45,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(119,'create_from_order','Shipping was created from order %order_id%',0,46,46,'2022-01-03 13:24:13','2022-01-03 13:24:13'),(120,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,46,46,'2022-01-03 19:24:13','2022-01-03 21:24:13'),(121,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,46,46,'2022-01-03 21:24:13','2022-01-03 21:24:13'),(122,'create_from_order','Shipping was created from order %order_id%',0,47,47,'2022-01-03 01:24:13','2022-01-03 01:24:13'),(123,'update_status','Changed status of shipping to : Approved . Updated by: %user_name%',0,47,47,'2022-01-03 19:24:13','2022-01-03 21:24:13'),(124,'update_status','Changed status of shipping to : Delivered . Updated by: %user_name%',0,47,47,'2022-01-03 21:24:13','2022-01-03 21:24:13');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,832.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0090418890','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:12',NULL),(2,2,NULL,2205.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0044142717','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-12 04:24:12',NULL),(3,3,NULL,680.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0074919208','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:12',NULL),(4,4,NULL,3589.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0062781994','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-10 04:24:12',NULL),(5,5,NULL,554.00,NULL,'','approved',1354.10,'pending','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0032293767','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:12',NULL),(6,6,NULL,4179.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0069838210','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:12','2022-01-04 04:24:12'),(7,7,NULL,1446.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0034577403','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-12 04:24:12',NULL),(8,8,NULL,844.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0063505629','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-10 04:24:12','2022-01-04 04:24:12'),(9,9,NULL,1689.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0087723673','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-09 04:24:12','2022-01-04 04:24:12'),(10,10,NULL,2948.00,NULL,'','approved',3689.70,'pending','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0031565693','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-11 04:24:12',NULL),(11,11,NULL,1470.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0056306629','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:12',NULL),(12,12,NULL,621.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0081539047','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:12','2022-01-04 04:24:12'),(13,13,NULL,2468.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0053533081','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:12','2022-01-04 04:24:12'),(14,14,NULL,1446.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0086324778','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:12',NULL),(15,15,NULL,2367.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0077187937','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-11 04:24:12','2022-01-04 04:24:12'),(16,16,NULL,1878.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0020744497','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-11 04:24:12','2022-01-04 04:24:12'),(17,17,NULL,5131.00,NULL,'','delivered',2317.65,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0038683773','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-09 04:24:12','2022-01-04 04:24:12'),(18,18,NULL,1857.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0025460845','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:12','2022-01-04 04:24:12'),(19,19,NULL,2337.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0019994595','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-05 04:24:12',NULL),(20,20,NULL,4062.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0096909208','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-07 04:24:12','2022-01-04 04:24:12'),(21,21,NULL,1918.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0076375943','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:12',NULL),(22,22,NULL,1692.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0040720952','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:12','2022-01-04 04:24:12'),(23,23,NULL,563.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:12','2022-01-03 21:24:12','JJD0063629877','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:12',NULL),(24,24,NULL,2367.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0081151572','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:13',NULL),(25,25,NULL,2496.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0028671927','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:13','2022-01-04 04:24:13'),(26,26,NULL,2810.00,NULL,'','approved',1236.90,'pending','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0092798169','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13',NULL),(27,27,NULL,2532.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0045314188','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13',NULL),(28,28,NULL,2205.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0065789675','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-11 04:24:13','2022-01-04 04:24:13'),(29,29,NULL,2963.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0068274388','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:13','2022-01-04 04:24:13'),(30,30,NULL,1488.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0048381121','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-09 04:24:13',NULL),(31,31,NULL,3292.00,NULL,'','delivered',3736.90,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0058362941','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13','2022-01-04 04:24:13'),(32,32,NULL,3684.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0098351921','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-10 04:24:13','2022-01-04 04:24:13'),(33,33,NULL,846.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD009993448','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-10 04:24:13','2022-01-04 04:24:13'),(34,34,NULL,2040.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0061846317','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-10 04:24:13',NULL),(35,35,NULL,2810.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0054305871','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-12 04:24:13','2022-01-04 04:24:13'),(36,36,NULL,613.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0060628947','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-08 04:24:13','2022-01-04 04:24:13'),(37,37,NULL,1470.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0010389885','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13','2022-01-04 04:24:13'),(38,38,NULL,2720.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0065257650','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-09 04:24:13','2022-01-04 04:24:13'),(39,39,NULL,554.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0093634728','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:13',NULL),(40,40,NULL,1238.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0015430681','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-13 04:24:13',NULL),(41,41,NULL,680.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0053659501','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-14 04:24:13','2022-01-04 04:24:13'),(42,42,NULL,1470.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0017920891','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-07 04:24:13','2022-01-04 04:24:13'),(43,43,NULL,1878.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0093560029','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-07 04:24:13','2022-01-04 04:24:13'),(44,44,NULL,1558.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0085030676','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13','2022-01-04 04:24:13'),(45,45,NULL,1688.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0021506296','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-09 04:24:13','2022-01-04 04:24:13'),(46,46,NULL,1644.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0063147576','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-11 04:24:13','2022-01-04 04:24:13'),(47,47,NULL,1857.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-01-03 21:24:13','2022-01-03 21:24:13','JJD0080818688','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-01-06 04:24:13','2022-01-04 04:24:13');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int(10) unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int(10) unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-01-03 21:24:00','2022-01-03 21:24:00'),(2,'None',0.000000,2,'published','2022-01-03 21:24:00','2022-01-03 21:24:00');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
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
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(2,'PAYMENT',1,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(3,'ORDER & RETURNS',2,'published','2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','1c694a31fc827cbeef4fefcbbe08f346',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','1c694a31fc827cbeef4fefcbbe08f346',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','37fbe574a3a92e1a34fb31605b9def4d',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','7e5f46acaa2f8e759afcf90dc46a9ef0',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','546ecbd6a346fcfad06c06a146c63d46',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','5533537381cc38366945557d3b3f2a00',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','1358c964db22ec7d9a8ad461583a592b',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','13abbfa8b6275e9f9d9d943fcd58bd35',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','7e5f46acaa2f8e759afcf90dc46a9ef0',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','546ecbd6a346fcfad06c06a146c63d46',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','5533537381cc38366945557d3b3f2a00',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','1358c964db22ec7d9a8ad461583a592b',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT 0,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2022-01-03 21:23:43','2022-01-03 21:23:43',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2022-01-03 21:23:43','2022-01-03 21:23:43',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2022-01-03 21:23:44','2022-01-03 21:23:44',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2022-01-03 21:23:45','2022-01-03 21:23:45',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2022-01-03 21:23:45','2022-01-03 21:23:45',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2022-01-03 21:23:45','2022-01-03 21:23:45',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2022-01-03 21:23:45','2022-01-03 21:23:45',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2022-01-03 21:23:45','2022-01-03 21:23:45',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2022-01-03 21:23:46','2022-01-03 21:23:46',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2022-01-03 21:23:47','2022-01-03 21:23:47',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2022-01-03 21:23:47','2022-01-03 21:23:47',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2022-01-03 21:23:47','2022-01-03 21:23:47',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2022-01-03 21:23:47','2022-01-03 21:23:47',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2022-01-03 21:23:48','2022-01-03 21:23:48',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2022-01-03 21:23:49','2022-01-03 21:23:49',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2022-01-03 21:23:49','2022-01-03 21:23:49',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2022-01-03 21:23:49','2022-01-03 21:23:49',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2022-01-03 21:23:49','2022-01-03 21:23:49',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2022-01-03 21:23:49','2022-01-03 21:23:49',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2022-01-03 21:23:50','2022-01-03 21:23:50',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2022-01-03 21:23:50','2022-01-03 21:23:50',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2022-01-03 21:23:50','2022-01-03 21:23:50',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2022-01-03 21:23:50','2022-01-03 21:23:50',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2022-01-03 21:23:51','2022-01-03 21:23:51',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2022-01-03 21:23:51','2022-01-03 21:23:51',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2022-01-03 21:23:51','2022-01-03 21:23:51',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2022-01-03 21:23:51','2022-01-03 21:23:51',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2022-01-03 21:23:51','2022-01-03 21:23:51',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2022-01-03 21:23:52','2022-01-03 21:23:52',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2022-01-03 21:23:52','2022-01-03 21:23:52',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2022-01-03 21:23:52','2022-01-03 21:23:52',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2022-01-03 21:23:52','2022-01-03 21:23:52',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2022-01-03 21:23:53','2022-01-03 21:23:53',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2022-01-03 21:23:53','2022-01-03 21:23:53',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2022-01-03 21:23:53','2022-01-03 21:23:53',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2022-01-03 21:23:53','2022-01-03 21:23:53',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2022-01-03 21:23:54','2022-01-03 21:23:54',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2022-01-03 21:23:54','2022-01-03 21:23:54',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2022-01-03 21:23:54','2022-01-03 21:23:54',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2022-01-03 21:23:54','2022-01-03 21:23:54',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2022-01-03 21:23:54','2022-01-03 21:23:54',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2022-01-03 21:23:55','2022-01-03 21:23:55',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2022-01-03 21:23:56','2022-01-03 21:23:56',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2022-01-03 21:23:56','2022-01-03 21:23:56',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2022-01-03 21:23:59','2022-01-03 21:23:59',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2022-01-03 21:23:59','2022-01-03 21:23:59',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2022-01-03 21:24:00','2022-01-03 21:24:00',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2022-01-03 21:24:01','2022-01-03 21:24:01',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2022-01-03 21:24:01','2022-01-03 21:24:01',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2022-01-03 21:24:02','2022-01-03 21:24:02',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2022-01-03 21:24:02','2022-01-03 21:24:02',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2022-01-03 21:24:02','2022-01-03 21:24:02',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2022-01-03 21:24:03','2022-01-03 21:24:03',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2022-01-03 21:24:03','2022-01-03 21:24:03',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2022-01-03 21:24:03','2022-01-03 21:24:03',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2022-01-03 21:24:03','2022-01-03 21:24:03',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2022-01-03 21:24:04','2022-01-03 21:24:04',NULL),(104,0,'1',6,'image/jpeg',139880,'sliders/1.jpg','[]','2022-01-03 21:24:04','2022-01-03 21:24:04',NULL),(105,0,'2',6,'image/jpeg',85128,'sliders/2.jpg','[]','2022-01-03 21:24:05','2022-01-03 21:24:05',NULL),(106,0,'3',6,'image/jpeg',85668,'sliders/3.jpg','[]','2022-01-03 21:24:05','2022-01-03 21:24:05',NULL),(107,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2022-01-03 21:24:05','2022-01-03 21:24:05',NULL),(108,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2022-01-03 21:24:05','2022-01-03 21:24:05',NULL),(109,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(110,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(111,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(112,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(113,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(114,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(115,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2022-01-03 21:24:06','2022-01-03 21:24:06',NULL),(116,0,'app',8,'image/png',88771,'general/app.png','[]','2022-01-03 21:24:07','2022-01-03 21:24:07',NULL),(117,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2022-01-03 21:24:07','2022-01-03 21:24:07',NULL),(118,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(119,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(120,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(121,0,'logo',8,'image/png',892,'general/logo.png','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(122,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(123,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(124,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(125,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2022-01-03 21:24:08','2022-01-03 21:24:08',NULL),(126,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(127,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(128,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(129,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(130,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(131,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(132,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-01-03 21:24:09','2022-01-03 21:24:09',NULL),(133,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(134,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(135,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(136,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(137,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(138,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(139,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-01-03 21:24:10','2022-01-03 21:24:10',NULL),(140,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-01-03 21:24:11','2022-01-03 21:24:11',NULL),(141,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-01-03 21:24:11','2022-01-03 21:24:11',NULL),(142,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-01-03 21:24:11','2022-01-03 21:24:11',NULL),(143,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-01-03 21:24:11','2022-01-03 21:24:11',NULL),(144,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-01-03 21:24:11','2022-01-03 21:24:11',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-01-03 21:23:41','2022-01-03 21:23:41',NULL),(2,0,'product-categories','product-categories',0,'2022-01-03 21:23:42','2022-01-03 21:23:42',NULL),(3,0,'products','products',0,'2022-01-03 21:23:43','2022-01-03 21:23:43',NULL),(4,0,'customers','customers',0,'2022-01-03 21:23:58','2022-01-03 21:23:58',NULL),(5,0,'news','news',0,'2022-01-03 21:24:00','2022-01-03 21:24:00',NULL),(6,0,'sliders','sliders',0,'2022-01-03 21:24:04','2022-01-03 21:24:04',NULL),(7,0,'promotion','promotion',0,'2022-01-03 21:24:05','2022-01-03 21:24:05',NULL),(8,0,'general','general',0,'2022-01-03 21:24:07','2022-01-03 21:24:07',NULL),(9,0,'stores','stores',0,'2022-01-03 21:24:09','2022-01-03 21:24:09',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
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
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-01-03 21:24:07','2022-01-03 21:24:07'),(2,5,'main-menu','2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `reference_id` int(10) unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(2,'Quick links','quick-links','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(3,'Company','company','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(4,'Business','business','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(5,'Menu chính','menu-chinh','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(7,'Công ty','cong-ty','published','2022-01-03 21:24:07','2022-01-03 21:24:07'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-01-03 21:24:07','2022-01-03 21:24:07');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-01-03 21:23:43','2022-01-03 21:23:43'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-01-03 21:23:57','2022-01-03 21:23:57');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2020_03_05_041139_create_ecommerce_tables',1),(25,'2020_09_22_135635_update_taxes_table',1),(26,'2020_09_29_101006_add_views_into_ec_products_table',1),(27,'2020_10_01_152311_make_column_image_in_product_attributes_table_nullable',1),(28,'2020_10_06_073439_improve_ecommerce_database',1),(29,'2020_11_01_040415_update_table_ec_order_addresses',1),(30,'2020_11_04_091510_make_column_phone_in_order_addresses_nullable',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2020_11_30_015801_update_table_ec_product_categories',1),(33,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(34,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(35,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(36,'2021_02_16_092633_remove_default_value_for_author_type',1),(37,'2021_02_18_073505_update_table_ec_reviews',1),(38,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(39,'2021_03_10_025153_change_column_tax_amount',1),(40,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(41,'2021_03_27_144913_add_customer_type_into_table_payments',1),(42,'2021_04_28_074008_ecommerce_create_product_label_table',1),(43,'2021_05_24_034720_make_column_currency_nullable',1),(44,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(45,'2021_06_28_153141_correct_slugs_data',1),(46,'2021_07_06_030002_create_marketplace_table',1),(47,'2021_08_02_084121_fix_old_shortcode',1),(48,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(49,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(50,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(51,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(52,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(53,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(54,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(55,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(56,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(57,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(58,'2021_10_19_020859_update_metadata_field',1),(59,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(60,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(61,'2021_11_23_071403_correct_languages_for_product_variations',1),(62,'2021_11_28_031808_add_product_tags_translations',1),(63,'2021_12_01_031123_add_featured_image_to_ec_products',1),(64,'2021_12_02_035301_add_ads_translations_table',1),(65,'2021_12_03_030600_create_blog_translations',1),(66,'2021_12_03_075608_create_page_translations',1),(67,'2021_12_03_082134_create_faq_translations',1),(68,'2021_12_06_031304_update_table_mp_customer_revenues',1),(69,'2022_01_01_033107_update_table_ec_shipments',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT 0.00,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) DEFAULT 0.00,
  `current_balance` decimal(15,2) DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,5,6,3319.90,0.00,3319.90,0.00,'USD',NULL,'2021-12-29 15:24:13','2021-12-29 15:24:13',0,NULL),(2,3,8,557.70,0.00,557.70,0.00,'USD',NULL,'2022-01-01 15:24:13','2022-01-01 15:24:13',0,NULL),(3,10,9,2473.80,0.00,2473.80,0.00,'USD',NULL,'2021-12-31 13:24:13','2021-12-31 13:24:13',0,NULL),(4,9,12,1425.60,0.00,1425.60,0.00,'USD',NULL,'2021-12-29 11:24:13','2021-12-29 11:24:13',0,NULL),(5,2,15,1658.50,0.00,1658.50,0.00,'USD',NULL,'2021-12-26 21:24:13','2021-12-26 21:24:13',0,NULL),(6,5,16,1820.80,0.00,1820.80,3319.90,'USD',NULL,'2021-12-22 03:24:14','2021-12-22 03:24:14',0,NULL),(7,10,18,1596.50,0.00,1596.50,2473.80,'USD',NULL,'2022-01-02 07:24:14','2022-01-02 07:24:14',0,NULL),(8,3,20,5722.60,0.00,5722.60,557.70,'USD',NULL,'2021-12-31 09:24:14','2021-12-31 09:24:14',0,NULL),(9,9,22,852.60,0.00,852.60,1425.60,'USD',NULL,'2022-01-01 23:24:14','2022-01-01 23:24:14',0,NULL),(10,6,25,1590.30,0.00,1590.30,0.00,'USD',NULL,'2021-12-26 05:24:14','2021-12-26 05:24:14',0,NULL),(11,10,28,1850.70,0.00,1850.70,4070.30,'USD',NULL,'2021-12-27 15:24:14','2021-12-27 15:24:14',0,NULL),(12,9,33,446.60,0.00,446.60,2278.20,'USD',NULL,'2021-12-06 13:24:14','2021-12-06 13:24:14',0,NULL),(13,9,36,623.70,0.00,623.70,2724.80,'USD',NULL,'2021-12-19 11:24:15','2021-12-19 11:24:15',0,NULL),(14,10,37,1253.70,0.00,1253.70,5921.00,'USD',NULL,'2021-12-03 05:24:15','2021-12-03 05:24:15',0,NULL),(15,5,38,3444.00,0.00,3444.00,5140.70,'USD',NULL,'2021-12-15 09:24:15','2021-12-15 09:24:15',0,NULL),(16,10,42,1253.70,0.00,1253.70,7174.70,'USD',NULL,'2021-12-31 07:24:15','2021-12-31 07:24:15',0,NULL),(17,5,43,1763.90,0.00,1763.90,8584.70,'USD',NULL,'2021-11-28 05:24:15','2021-11-28 05:24:15',0,NULL),(18,5,44,42.00,0.00,42.00,10348.60,'USD',NULL,'2021-12-08 15:24:15','2021-12-08 15:24:15',0,NULL),(19,3,45,1064.70,0.00,1064.70,6280.30,'USD',NULL,'2021-12-23 09:24:15','2021-12-23 09:24:15',0,NULL),(20,6,46,1782.50,0.00,1782.50,1590.30,'USD',NULL,'2021-12-07 11:24:16','2021-12-07 11:24:16',0,NULL),(21,10,47,1596.50,0.00,1596.50,8428.40,'USD',NULL,'2021-12-30 21:24:16','2021-12-30 21:24:16',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT 0.00,
  `amount` decimal(15,2) unsigned DEFAULT 0.00,
  `current_balance` decimal(15,2) unsigned DEFAULT 0.00,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,308.00,1658.50,'USD','','{\"name\":\"Kristy Hettinger\",\"number\":\"+19256148340\",\"full_name\":\"Eliza Kassulke\",\"description\":\"Alycia McLaughlin\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16',NULL),(2,2,0.00,265.00,1350.50,'USD','','{\"name\":\"Kristy Hettinger\",\"number\":\"+19256148340\",\"full_name\":\"Eliza Kassulke\",\"description\":\"Alycia McLaughlin\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16',NULL),(3,2,0.00,162.00,1085.50,'USD','','{\"name\":\"Kristy Hettinger\",\"number\":\"+19256148340\",\"full_name\":\"Eliza Kassulke\",\"description\":\"Alycia McLaughlin\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16',NULL),(4,2,0.00,195.00,923.50,'USD','','{\"name\":\"Kristy Hettinger\",\"number\":\"+19256148340\",\"full_name\":\"Eliza Kassulke\",\"description\":\"Alycia McLaughlin\"}',NULL,0,'pending',NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16',NULL),(5,3,0.00,1752.00,7345.00,'USD','','{\"name\":\"Donavon Schulist\",\"number\":\"+18788438162\",\"full_name\":\"Prof. Norbert Klocko II\",\"description\":\"Celine Lebsack\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:16','2022-01-03 21:24:16',NULL),(6,3,0.00,678.00,5593.00,'USD','','{\"name\":\"Donavon Schulist\",\"number\":\"+18788438162\",\"full_name\":\"Prof. Norbert Klocko II\",\"description\":\"Celine Lebsack\"}',NULL,0,'pending',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(7,5,0.00,2945.00,10390.60,'USD','','{\"name\":\"Annette Rutherford\",\"number\":\"+14583855227\",\"full_name\":\"Rogelio Will\",\"description\":\"Clementine Ankunding DDS\"}',NULL,0,'pending',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(8,5,0.00,1068.00,7445.60,'USD','','{\"name\":\"Annette Rutherford\",\"number\":\"+14583855227\",\"full_name\":\"Rogelio Will\",\"description\":\"Clementine Ankunding DDS\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(9,6,0.00,252.00,3372.80,'USD','','{\"name\":\"Beulah Kemmer V\",\"number\":\"+14759881338\",\"full_name\":\"Eryn Welch\",\"description\":\"Dr. Tracey Walsh\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(10,6,0.00,878.00,3120.80,'USD','','{\"name\":\"Beulah Kemmer V\",\"number\":\"+14759881338\",\"full_name\":\"Eryn Welch\",\"description\":\"Dr. Tracey Walsh\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(11,6,0.00,101.00,2242.80,'USD','','{\"name\":\"Beulah Kemmer V\",\"number\":\"+14759881338\",\"full_name\":\"Eryn Welch\",\"description\":\"Dr. Tracey Walsh\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(12,6,0.00,515.00,2141.80,'USD','','{\"name\":\"Beulah Kemmer V\",\"number\":\"+14759881338\",\"full_name\":\"Eryn Welch\",\"description\":\"Dr. Tracey Walsh\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:17','2022-01-03 21:24:17',NULL),(13,9,0.00,588.00,3348.50,'USD','','{\"name\":\"Hugh Wilderman\",\"number\":\"+18542103285\",\"full_name\":\"Hermina Gibson IV\",\"description\":\"Torrance Kerluke\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:18','2022-01-03 21:24:18',NULL),(14,9,0.00,615.00,2760.50,'USD','','{\"name\":\"Hugh Wilderman\",\"number\":\"+18542103285\",\"full_name\":\"Hermina Gibson IV\",\"description\":\"Torrance Kerluke\"}',NULL,0,'completed',NULL,'2022-01-03 21:24:18','2022-01-03 21:24:18',NULL),(15,9,0.00,583.00,2145.50,'USD','','{\"name\":\"Hugh Wilderman\",\"number\":\"+18542103285\",\"full_name\":\"Hermina Gibson IV\",\"description\":\"Torrance Kerluke\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:18','2022-01-03 21:24:18',NULL),(16,10,0.00,1582.00,10024.90,'USD','','{\"name\":\"Dr. Kris Spencer\",\"number\":\"+12179905289\",\"full_name\":\"Alfreda Keeling V\",\"description\":\"Rachel Quitzon\"}',NULL,0,'pending',NULL,'2022-01-03 21:24:18','2022-01-03 21:24:18',NULL),(17,10,0.00,2027.00,8442.90,'USD','','{\"name\":\"Dr. Kris Spencer\",\"number\":\"+12179905289\",\"full_name\":\"Alfreda Keeling V\",\"description\":\"Rachel Quitzon\"}',NULL,0,'processing',NULL,'2022-01-03 21:24:18','2022-01-03 21:24:18',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','nienow.kris@example.com','+12482037236','500 Sedrick Glens Apt. 606','DJ','Oklahoma','North Deshaunchester',2,'stores/1.png','Nulla rerum molestias culpa et illum asperiores.','Ullam ab itaque necessitatibus ducimus ipsum. Est eum ex ipsum tempora deserunt. Optio reiciendis unde sint.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(2,'Global Office','milo45@example.com','+15173939353','4455 Ralph Trafficway Suite 575','MF','New York','Runolfsdottirburgh',3,'stores/2.png','Dolorum officia quia est iste.','Enim ea corporis et et velit eius inventore ducimus. Voluptas culpa suscipit non. Expedita dolore rerum temporibus rem saepe rerum et.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(3,'Young Shop','gdibbert@example.org','+19066953012','7167 Ankunding Mountains Apt. 246','SL','Louisiana','Veronicahaven',5,'stores/3.png','Odit inventore sapiente omnis.','Qui error ad est dolorem quia aut. Vel veritatis dolores ut quia voluptatem cupiditate beatae.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(4,'Global Store','agaylord@example.org','+13864645029','21405 Thompson Ridges Apt. 902','LB','Ohio','Giuseppeview',6,'stores/4.png','Similique et eos quis odio voluptates rerum.','Omnis et eius excepturi qui. Dolorem qui quidem laboriosam est. Qui in atque id officiis ipsam. Iusto soluta fugit in distinctio.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(5,'Robert’s Store','west.brittany@example.com','+16369615475','44020 Hilario Expressway Suite 133','KI','Mississippi','North Tanyabury',9,'stores/5.png','Aliquid in corporis vitae est quaerat.','Sit ad voluptatem alias. Totam ratione est similique alias ipsum. Quae earum quas ea officia. Deleniti neque quidem laboriosam assumenda aperiam sed.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12'),(6,'Stouffer','emily54@example.net','+19529044623','163 Luettgen Passage Suite 874','BT','Massachusetts','Sandraland',10,'stores/6.png','Occaecati nihil qui recusandae cumque.','Porro ad voluptates omnis ea illo eos. Animi iusto animi voluptas illum enim. Repellat eum qui consequatur quos repellat.','published',NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL DEFAULT 0,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_fee` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total_revenue` decimal(15,2) NOT NULL DEFAULT 0.00,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,728.50,0.00,1658.50,'$2y$10$40DQqOZMLol994Jw3cg/cupd5m.5UY19B08P.7czBpvUBBmsGVx0O','{\"name\":\"Kristy Hettinger\",\"number\":\"+19256148340\",\"full_name\":\"Eliza Kassulke\",\"description\":\"Alycia McLaughlin\"}','2022-01-03 21:24:11','2022-01-03 21:24:16'),(2,3,4915.00,0.00,7345.00,'$2y$10$j5uFUkjD87Qq.evAohu7ROO6JWFV3pwwYLQs4YicW4thP.AJoQLfW','{\"name\":\"Donavon Schulist\",\"number\":\"+18788438162\",\"full_name\":\"Prof. Norbert Klocko II\",\"description\":\"Celine Lebsack\"}','2022-01-03 21:24:11','2022-01-03 21:24:17'),(3,5,6377.60,0.00,10390.60,'$2y$10$2B3UxxSBRxewiuoZWjtcAuDBX/EadhqEOZPleSigmpAM5KYVBgTmW','{\"name\":\"Annette Rutherford\",\"number\":\"+14583855227\",\"full_name\":\"Rogelio Will\",\"description\":\"Clementine Ankunding DDS\"}','2022-01-03 21:24:12','2022-01-03 21:24:17'),(4,6,1626.80,0.00,3372.80,'$2y$10$9eOgiGxNLX//u7RAEXevKe5UPyDCQfZ9X93.Tz9CizRPrIMCxf9nK','{\"name\":\"Beulah Kemmer V\",\"number\":\"+14759881338\",\"full_name\":\"Eryn Welch\",\"description\":\"Dr. Tracey Walsh\"}','2022-01-03 21:24:12','2022-01-03 21:24:18'),(5,9,1562.50,0.00,3348.50,'$2y$10$3m832io5vv.jYG06xmAs7.bhYTL71GA8EdxsoKDjX5wfa5vuXVWHW','{\"name\":\"Hugh Wilderman\",\"number\":\"+18542103285\",\"full_name\":\"Hermina Gibson IV\",\"description\":\"Torrance Kerluke\"}','2022-01-03 21:24:12','2022-01-03 21:24:18'),(6,10,6415.90,0.00,10024.90,'$2y$10$XYzEeElRI/f.t3.kEHjj1OIInZ.msCpY96f/cHLNNrqwwu8j523f2','{\"name\":\"Dr. Kris Spencer\",\"number\":\"+12179905289\",\"full_name\":\"Alfreda Keeling V\",\"description\":\"Rachel Quitzon\"}','2022-01-03 21:24:12','2022-01-03 21:24:18');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(2,'About us','<p>Mock Turtle; \'but it doesn\'t mind.\' The table was a little timidly: \'but it\'s no use now,\' thought Alice, as she could, \'If you didn\'t sign it,\' said the March Hare said in a low, trembling voice. \'There\'s more evidence to come before that!\' \'Call the next thing is, to get in at the Cat\'s head began fading away the time. Alice had got its head impatiently, and walked off; the Dormouse indignantly. However, he consented to go among mad people,\' Alice remarked. \'Oh, you can\'t take LESS,\' said.</p><p>You gave us three or more; They all sat down in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an unusually large saucepan flew close by her. There was exactly one a-piece all round. (It was this last word with such sudden violence that Alice had never had fits, my dear, and that he had a little scream, half of anger, and tried to fancy what the moral of that is--\"Birds of a tree. By the time at the other side of WHAT?\' thought Alice; \'I might as well be at school at once.\' And in.</p><p>Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, always ready to play croquet.\' Then they all looked puzzled.) \'He must have been that,\' said the Duchess, as she could remember them, all these strange Adventures of hers would, in the distance. \'And yet what a wonderful dream it had fallen into a cucumber-frame, or something of the Lobster Quadrille?\' the Gryphon said to the Caterpillar, just as if nothing had happened. \'How am I to get into her head. Still she went on, \'you.</p><p>Lory, as soon as the game was going to dive in among the party. Some of the goldfish kept running in her pocket, and pulled out a box of comfits, (luckily the salt water had not as yet had any dispute with the Queen,\' and she soon made out the proper way of keeping up the chimney, has he?\' said Alice to herself. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(3,'Terms Of Use','<p>Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it very much,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they lived at the March Hare went \'Sh! sh!\' and the little door about fifteen inches high: she tried the effect of lying down with her face brightened up.</p><p>The Fish-Footman began by producing from under his arm a great hurry to get into the sky all the things between whiles.\' \'Then you shouldn\'t talk,\' said the Queen, who had been to her, still it was a different person then.\' \'Explain all that,\' he said in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they had settled down in a trembling voice to its feet, \'I move that the pebbles were all in bed!\' On various pretexts they all cheered. Alice thought.</p><p>Time, and round the table, but it makes rather a handsome pig, I think.\' And she began thinking over all the same, shedding gallons of tears, but said nothing. \'When we were little,\' the Mock Turtle Soup is made from,\' said the Duchess. \'I make you dry enough!\' They all sat down and began singing in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on in a frightened tone. \'The Queen will hear you! You see, she came upon a time there could be no use in talking to him,\' the Mock Turtle.</p><p>Caterpillar The Caterpillar and Alice joined the procession, wondering very much of it appeared. \'I don\'t quite understand you,\' she said, without even waiting to put his mouth close to her lips. \'I know SOMETHING interesting is sure to make personal remarks,\' Alice said to herself, \'the way all the jelly-fish out of breath, and said \'No, never\') \'--so you can find out the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all wrote down all three to.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(4,'Terms & Conditions','<p>Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a large piece out of the window, and some of the other ladder?--Why, I hadn\'t quite finished my tea when I breathe\"!\' \'It IS the fun?\' said Alice. The poor little thing was snorting like a mouse, That he met in the air: it puzzled her too much, so she bore it as well as if a fish came to the three gardeners who were all ornamented with hearts. Next came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit.</p><p>Alice had been to the executioner: \'fetch her here.\' And the moral of that is--\"The more there is of mine, the less there is of mine, the less there is of finding morals in things!\' Alice began to get her head to keep back the wandering hair that WOULD always get into that lovely garden. First, however, she went on saying to herself, \'after such a fall as this, I shall think nothing of tumbling down stairs! How brave they\'ll all think me for his housemaid,\' she said to the Dormouse, not.</p><p>Dormouse, and repeated her question. \'Why did they live on?\' said the Duchess. An invitation for the moment she appeared; but she gained courage as she could. \'No,\' said the cook. The King and the other end of trials, \"There was some attempts at applause, which was lit up by two guinea-pigs, who were all writing very busily on slates. \'What are they made of?\' \'Pepper, mostly,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the bank, and.</p><p>Dinah, and saying to her to begin.\' He looked anxiously at the mushroom (she had grown to her great disappointment it was only too glad to find any. And yet I don\'t like them raw.\' \'Well, be off, and Alice joined the procession, wondering very much to-night, I should think!\' (Dinah was the same thing,\' said the King, \'unless it was YOUR table,\' said Alice; \'all I know all the jurymen on to himself as he spoke, and then nodded. \'It\'s no business there, at any rate: go and live in that poky.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(5,'Refund Policy','<p>March Hare, \'that \"I like what I like\"!\' \'You might just as well to say it over) \'--yes, that\'s about the twentieth time that day. \'No, no!\' said the Mock Turtle: \'why, if a fish came to the general conclusion, that wherever you go to on the same size: to be Number One,\' said Alice. \'Come, let\'s hear some of them bowed low. \'Would you tell me,\' said Alice, \'because I\'m not the smallest notice of her own mind (as well as she went back for a minute or two, it was a queer-shaped little creature.</p><p>This was quite impossible to say a word, but slowly followed her back to yesterday, because I was going to shrink any further: she felt a little bit of mushroom, and her eyes to see what I eat\" is the capital of Paris, and Paris is the same as the March Hare. \'Exactly so,\' said the King, and the small ones choked and had no reason to be a grin, and she swam about, trying to invent something!\' \'I--I\'m a little glass table. \'Now, I\'ll manage better this time,\' she said to herself. \'Shy, they.</p><p>As she said to one of the gloves, and was a dead silence. Alice was only the pepper that had made her look up in a low, trembling voice. \'There\'s more evidence to come before that!\' \'Call the first day,\' said the cook. \'Treacle,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the bank--the birds with draggled feathers, the animals with their fur clinging close to her lips. \'I know what it was quite surprised to find that her neck kept.</p><p>Alice. \'I wonder how many miles I\'ve fallen by this very sudden change, but she had finished, her sister on the stairs. Alice knew it was a most extraordinary noise going on rather better now,\' she added in an encouraging opening for a minute or two she walked sadly down the hall. After a while she ran, as well say that \"I see what this bottle does. I do it again and again.\' \'You are old, Father William,\' the young Crab, a little timidly, \'why you are very dull!\' \'You ought to have it.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(10,'Affiliate','<p>YET,\' she said to herself; \'I should like it put more simply--\"Never imagine yourself not to her, though, as they used to it!\' pleaded poor Alice in a trembling voice:-- \'I passed by his garden.\"\' Alice did not seem to dry me at all.\' \'In that case,\' said the Pigeon; \'but I know who I am! But I\'d better take him his fan and gloves--that is, if I might venture to say to this: so she began fancying the sort of idea that they were IN the well,\' Alice said with a deep voice, \'What are tarts made.</p><p>Now, if you please! \"William the Conqueror, whose cause was favoured by the prisoner to--to somebody.\' \'It must have prizes.\' \'But who has won?\' This question the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' said the Gryphon: and Alice was more and more faintly came, carried on the twelfth?\' Alice went on eagerly. \'That\'s enough about lessons,\' the Gryphon whispered in reply, \'for fear they should forget them before the end of his great wig.\' The judge, by the officers of.</p><p>I\'ve said as yet.\' \'A cheap sort of chance of this, so that by the English, who wanted leaders, and had been wandering, when a sharp hiss made her look up in a trembling voice to a lobster--\' (Alice began to cry again, for this time the Queen in a piteous tone. And the Gryphon interrupted in a trembling voice, \'Let us get to the end: then stop.\' These were the cook, to see how he can thoroughly enjoy The pepper when he sneezes: He only does it to her great delight it fitted! Alice opened the.</p><p>I get it home?\' when it saw mine coming!\' \'How do you know that cats COULD grin.\' \'They all can,\' said the Pigeon. \'I can hardly breathe.\' \'I can\'t help it,\' she thought, \'till its ears have come, or at any rate a book of rules for shutting people up like a stalk out of the Lobster; I heard him declare, \"You have baked me too brown, I must be getting home; the night-air doesn\'t suit my throat!\' and a crash of broken glass. \'What a curious dream!\' said Alice, who felt ready to ask the.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(11,'Career','<p>Queen added to one of them even when they hit her; and the three gardeners who were lying on the glass table and the Queen said--\' \'Get to your places!\' shouted the Queen in a large cat which was the Cat said, waving its right ear and left foot, so as to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Duchess. An invitation from the change: and Alice guessed in a natural way again. \'I should like to be seen: she found herself in the air. This time there were three gardeners.</p><p>Oh, I shouldn\'t like THAT!\' \'Oh, you can\'t help it,\' she said this she looked at Alice, and sighing. \'It IS a long way. So she sat down again in a coaxing tone, and added \'It isn\'t directed at all,\' said the Mock Turtle sighed deeply, and began, in rather a handsome pig, I think.\' And she thought it over a little pattering of feet on the ground near the door, and the two creatures, who had not got into the darkness as hard as it lasted.) \'Then the eleventh day must have prizes.\' \'But who is.</p><p>Alice replied, rather shyly, \'I--I hardly know, sir, just at first, perhaps,\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed in the distance would take the place of the sort!\' said Alice. \'Anything you like,\' said the Gryphon. \'Do you know what \"it\" means well enough, when I got up and picking the daisies, when suddenly a footman because he was obliged to have it explained,\' said the Cat, and vanished again. Alice waited till she had sat down and cried. \'Come.</p><p>Queen, stamping on the floor, and a bright idea came into Alice\'s shoulder as she had found the fan and gloves--that is, if I must, I must,\' the King said, for about the crumbs,\' said the Gryphon, half to Alice. \'Only a thimble,\' said Alice in a tone of great surprise. \'Of course it is,\' said the King, \'that only makes the matter on, What would become of me?\' Luckily for Alice, the little golden key in the lap of her or of anything to put everything upon Bill! I wouldn\'t be in a hoarse growl.</p>',1,NULL,'default',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2022-01-03 21:24:05','2022-01-03 21:24:05');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0,
  `charge_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int(10) unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'FR1UGEIJKB','stripe',NULL,564.30,1,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'EMDWK1SRIA','stripe',NULL,1850.70,2,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'MWMONKNVSO','stripe',NULL,902.00,3,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'0OWVQOBOOV','razorpay',NULL,1256.90,4,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'2WHUA0JYBV','cod',NULL,1354.10,5,'pending','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'EWHRAO0IRT','paypal',NULL,3319.90,6,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'PQS4ZIVXCP','bank_transfer',NULL,2692.20,7,'pending','confirm',4,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'BCZWHHIX97','mollie',NULL,557.70,8,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'UQBD2AQPKI','paypal',NULL,2473.80,9,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'OHOGD1V9MD','cod',NULL,3689.70,10,'pending','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'893C8RLECU','paystack',NULL,1253.70,11,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ZY55B2COHS','stripe',NULL,1425.60,12,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'JWOG4KBIQ9','bank_transfer',NULL,3912.30,13,'pending','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'PLYVIQ4FOH','mollie',NULL,2692.20,14,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'IUVUADLB77','stripe',NULL,1658.50,15,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'7FIBOKEEKR','sslcommerz',NULL,1820.80,16,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'O6WI4NCR3V','cod',NULL,2317.65,17,'pending','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'N84SZCAZS0','mollie',NULL,1596.50,18,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'VNTSEMRA40','stripe',NULL,62.00,19,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'RURP2YHZOQ','sslcommerz',NULL,5722.60,20,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'KNTBD4JC3Z','paypal',NULL,1228.95,21,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'WWMZS9C2LC','mollie',NULL,852.60,22,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'R282MKDCDH','paystack',NULL,877.80,23,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:12','2022-01-03 21:24:12','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'7KSCGJNTBV','sslcommerz',NULL,1658.50,24,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'CUH5ZTL7ZY','paypal',NULL,1590.30,25,'completed','confirm',8,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'Z5V3HE4PVK','cod',NULL,1236.90,26,'pending','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'9PX0NM3R2B','paystack',NULL,1571.70,27,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'XEMAKNOA6Y','stripe',NULL,1850.70,28,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'8X6FBEHPKX','bank_transfer',NULL,687.90,29,'pending','confirm',1,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'URAT3RDKLL','paystack',NULL,2297.40,30,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'2ODNLIK4IX','cod',NULL,3736.90,31,'pending','confirm',1,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'6CP8HHN5GX','bank_transfer',NULL,374.33,32,'pending','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'PQ6UE39MVT','stripe',NULL,446.60,33,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'YVHWMCOJ4F','stripe',NULL,2542.00,34,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'UQ0UC3J1AA','bank_transfer',NULL,1236.90,35,'pending','confirm',8,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'D0E9XRDPMB','sslcommerz',NULL,623.70,36,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'OBW8Q32QDC','razorpay',NULL,1253.70,37,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'PCR5AXNPRU','paypal',NULL,3444.00,38,'completed','confirm',4,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'MLVJG4IOUO','mollie',NULL,1354.10,39,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'KMUDD3UJ9X','bank_transfer',NULL,1081.50,40,'pending','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'QNWVKCIRUB','bank_transfer',NULL,902.00,41,'pending','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'NKQ1MZVVU6','razorpay',NULL,1253.70,42,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'KH9CWXXWKW','razorpay',NULL,1763.90,43,'completed','confirm',1,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'KRXNDZL4EZ','sslcommerz',NULL,42.00,44,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'1XENMELQKM','mollie',NULL,1064.70,45,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'LLCXOJRK1Y','mollie',NULL,1782.50,46,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'ODNU3K92M2','paypal',NULL,1596.50,47,'completed','confirm',7,NULL,NULL,'2022-01-03 21:24:13','2022-01-03 21:24:13','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,1,2),(4,4,2),(5,2,3),(6,3,3),(7,2,4),(8,3,4),(9,2,5),(10,4,5),(11,1,6),(12,3,6),(13,2,7),(14,3,7),(15,1,8),(16,3,8),(17,2,9),(18,4,9),(19,2,10),(20,4,10),(21,2,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT 0,
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2080,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1200,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1738,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',747,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1162,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',852,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',2075,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',171,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',137,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1792,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',887,NULL,'2022-01-03 21:24:04','2022-01-03 21:24:04');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"translation\"]',NULL,NULL),(2,'payment_cod_status','1',NULL,NULL),(3,'payment_bank_transfer_status','1',NULL,NULL),(4,'simple_slider_using_assets','0',NULL,NULL),(5,'permalink-botble-blog-models-post','blog',NULL,NULL),(6,'permalink-botble-blog-models-category','blog',NULL,NULL),(7,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(8,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 404 19.',NULL,NULL),(9,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(10,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(11,'theme','martfury',NULL,NULL),(12,'admin_logo','general/logo-light.png',NULL,NULL),(97,'language_hide_default','1',NULL,NULL),(98,'language_switcher_display','dropdown',NULL,NULL),(99,'language_display','all',NULL,NULL),(100,'language_hide_languages','[]',NULL,NULL),(102,'media_random_hash','23ae147fc763eb8f77cb1005fd19e985',NULL,NULL),(111,'ecommerce_store_name','Martfury',NULL,NULL),(112,'ecommerce_store_phone','1800979769',NULL,NULL),(113,'ecommerce_store_address','502 New Street',NULL,NULL),(114,'ecommerce_store_state','Brighton VIC',NULL,NULL),(115,'ecommerce_store_city','Brighton VIC',NULL,NULL),(116,'ecommerce_store_country','AU',NULL,NULL),(117,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(118,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(119,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(120,'theme-martfury-logo','general/logo.png',NULL,NULL),(121,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(122,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(123,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(124,'theme-martfury-email','contact@martfury.co',NULL,NULL),(125,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(126,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(127,'theme-martfury-homepage_id','1',NULL,NULL),(128,'theme-martfury-blog_page_id','6',NULL,NULL),(129,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(130,'theme-martfury-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(131,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(132,'theme-martfury-number_of_products_per_page','40',NULL,NULL),(133,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(134,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(135,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(136,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(137,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(138,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(139,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(140,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(141,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(142,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(143,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(144,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(145,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(146,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(147,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(148,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(149,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(150,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(151,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(152,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(153,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(154,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(155,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(156,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(157,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(158,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(159,'theme-martfury-number_of_cross_sale_products_in_cart_page','7',NULL,NULL),(160,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(161,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(162,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(165,'theme-martfury-social-name-1','Facebook',NULL,NULL),(166,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(167,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(168,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(169,'theme-martfury-social-name-2','Twitter',NULL,NULL),(170,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(171,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(172,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(173,'theme-martfury-social-name-3','Instagram',NULL,NULL),(174,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(175,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(176,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(177,'theme-martfury-social-name-4','Youtube',NULL,NULL),(178,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(179,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(180,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(181,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(182,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(183,'theme-martfury-vi-homepage_id','1',NULL,NULL),(184,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(185,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(186,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(187,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(188,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(189,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(190,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(191,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1.jpg','/products',NULL,1,'2022-01-03 21:24:05','2022-01-03 21:24:05'),(2,1,'Slider 2','sliders/2.jpg','/products',NULL,2,'2022-01-03 21:24:05','2022-01-03 21:24:05'),(3,1,'Slider 3','sliders/3.jpg','/products',NULL,3,'2022-01-03 21:24:05','2022-01-03 21:24:05'),(4,2,'Slider 1','sliders/1.jpg','/products',NULL,1,'2022-01-03 21:24:05','2022-01-03 21:24:05'),(5,2,'Slider 2','sliders/2.jpg','/products',NULL,2,'2022-01-03 21:24:05','2022-01-03 21:24:05'),(6,2,'Slider 3','sliders/3.jpg','/products',NULL,3,'2022-01-03 21:24:05','2022-01-03 21:24:05');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-01-03 21:24:05','2022-01-03 21:24:05'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-01-03 21:24:05','2022-01-03 21:24:05');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-01-03 21:23:41','2022-01-03 21:23:41'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-01-03 21:23:43','2022-01-03 21:23:43'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-01-03 21:23:57','2022-01-03 21:23:57'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-01-03 21:24:00','2022-01-03 21:24:00'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-01-03 21:24:04','2022-01-03 21:24:04'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-01-03 21:24:04','2022-01-03 21:24:04'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-01-03 21:24:04','2022-01-03 21:24:04'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-01-03 21:24:04','2022-01-03 21:24:04'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-01-03 21:24:04','2022-01-03 21:24:04'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-01-03 21:24:04','2022-01-03 21:24:07'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-01-03 21:24:05','2022-01-03 21:24:05'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12'),(110,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12'),(111,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2022-01-03 21:24:12','2022-01-03 21:24:12');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
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
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-01-03 21:24:04','2022-01-03 21:24:04'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-01-03 21:24:04','2022-01-03 21:24:04'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-01-03 21:24:04','2022-01-03 21:24:04'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-01-03 21:24:04','2022-01-03 21:24:04'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-01-03 21:24:04','2022-01-03 21:24:04');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4238 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$bBl0vnv3nP4Xl3LP1TEBueWuItC354f7.9huzlwr5btHds6us4naq',NULL,'2022-01-03 21:24:07','2022-01-03 21:24:07','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-01-03 21:24:09','2022-01-03 21:24:09'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-01-03 21:24:09','2022-01-03 21:24:09');
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

-- Dump completed on 2022-01-04 11:24:37