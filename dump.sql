-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: btl-narujka
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.13.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `btl-narujka`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `btl-narujka` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `btl-narujka`;

--
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$pFluBnVxFdnGA8NVVFiDEOSRL/tYuGfHQhFDdnX1he95bZfJF/in6',NULL,NULL,NULL,1,'2013-10-17 14:23:56','2013-10-17 14:23:56','127.0.0.1','127.0.0.1','2013-10-17 14:22:38','2013-10-17 14:23:56');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attacheble_id` int(11) DEFAULT NULL,
  `attacheble_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `attach_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach_file_size` int(11) DEFAULT NULL,
  `attach_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,NULL,11,'Item','2013-10-18 09:26:53','2013-10-18 09:26:53',NULL,NULL,NULL,NULL),(2,NULL,12,'Item','2013-10-18 09:41:08','2013-10-18 09:41:08',NULL,NULL,NULL,NULL),(3,NULL,13,'Item','2013-10-18 09:48:52','2013-10-18 10:03:07','pictures-1920x1200-2011-Anime_the_messenger_of_spring_026860_.jpg','image/jpeg',536255,'2013-10-18 10:03:06'),(4,NULL,14,'Item','2013-10-18 10:04:27','2013-10-18 10:04:27','34371-1366x768.jpg','image/jpeg',256607,'2013-10-18 10:04:27'),(5,NULL,15,'Item','2013-10-18 10:05:26','2013-10-18 10:05:26','pictures-originals-2013-Fantasy___Figure_in_the_Cyberpunk_style_043045_.jpg','image/jpeg',192097,'2013-10-18 10:05:25'),(6,NULL,16,'Item','2013-10-18 12:19:26','2013-10-18 12:19:26','449381-1366x768.jpg','image/jpeg',97156,'2013-10-18 12:19:26'),(7,'Металлическая табличка',3,'Service','2013-10-19 08:21:21','2013-10-19 08:30:08','010.jpg','image/jpeg',118347,'2013-10-19 08:21:19'),(8,'Образцы табличек',3,'Service','2013-10-19 08:21:21','2013-10-19 08:30:08','006.jpg','image/jpeg',95791,'2013-10-19 08:21:21'),(9,'Большая табличка из оргстекла',3,'Service','2013-10-19 08:21:21','2013-10-19 08:30:08','13022012-002.jpg','image/jpeg',175333,'2013-10-19 08:21:21'),(10,'Декоративный стенд \"Елка\"',1,'Service','2013-10-19 09:22:55','2013-10-19 09:22:55','031.jpg','image/jpeg',551809,'2013-10-19 09:22:52'),(11,'Примеры карманов стенда',1,'Service','2013-10-19 09:22:55','2013-10-19 09:22:55','013.jpg','image/jpeg',352537,'2013-10-19 09:22:53'),(12,'Небольшой стенд с тремя карманами',1,'Service','2013-10-19 09:22:55','2013-10-19 09:22:55','020.jpg','image/jpeg',467551,'2013-10-19 09:22:54'),(13,'Желтый стенд с карманами',1,'Service','2013-10-19 09:22:55','2013-10-19 09:22:55','044.jpg','image/jpeg',207994,'2013-10-19 09:22:54'),(14,'Табличка с гравировкой на дверь',3,'Service','2013-10-19 09:25:38','2013-10-19 09:25:38','003.jpg','image/jpeg',105244,'2013-10-19 09:25:36'),(15,'Простая табличка на стол',3,'Service','2013-10-19 09:25:38','2013-10-19 09:25:38','008.jpg','image/jpeg',65185,'2013-10-19 09:25:37'),(16,'Таблички со скидками ',3,'Service','2013-10-19 09:25:38','2013-10-19 09:25:38','014.jpg','image/jpeg',138289,'2013-10-19 09:25:37'),(17,'Вот такой крутой порше',7,'Service','2013-10-19 14:39:21','2013-10-19 14:39:21','34371-1366x768.jpg','image/jpeg',256607,'2013-10-19 14:39:19');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `service_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (13,'Стенд информационный школьный','Интересный стенд для школы','',1,NULL,NULL,'2013-10-18 09:48:52','2013-10-18 09:48:52'),(14,'Работа намбер ту','олололол','',1,NULL,NULL,'2013-10-18 10:04:27','2013-10-18 10:04:27'),(15,'Еще один стендик','Мы делаем ТРУЪ стенды, хуле','',1,NULL,NULL,'2013-10-18 10:05:26','2013-10-18 10:05:26'),(16,'1111','fasjdfl jasd jflaidf ','',3,NULL,NULL,'2013-10-18 12:19:26','2013-10-19 16:20:26');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `service_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Ктулху','call@ktylhy.com','89489485','Я пришел что бы поРЫБАтить вас!',NULL,'2013-10-19 19:21:13','2013-10-19 19:21:13');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131017141013'),('20131017142230'),('20131017142232'),('20131017212637'),('20131017212638'),('20131018004405'),('20131018005136'),('20131018094619'),('20131019181955');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Стенды','Изготовление стендов в Томске. Самые лучше материалы, секретные технологии. Мы Вас любим стендом по литцу!','<h1>Изготовление стендов в Томске</h1>\r\n\r\n<p>Разнообразный и богатый опыт новая модель организационной деятельности играет важную роль в формировании новых предложений. Таким образом сложившаяся структура организации представляет собой интересный эксперимент проверки форм развития. Таким образом начало повседневной работы по формированию позиции требуют определения и уточнения позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения высшего порядка, а также постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение направлений прогрессивного развития. С другой стороны новая модель организационной деятельности способствует подготовки и реализации существенных финансовых и административных условий. Товарищи! укрепление и развитие структуры в значительной степени обуславливает создание дальнейших направлений развития.</p>\r\n','','','','standy','2013-10-17 15:04:36','2013-10-19 09:22:55'),(3,'Таблички','Таблички - прекрасное рекламное украшение интерьеров. Адресные таблички, таблички для дверей и многие другие.','<h1>Изготовление табличек в Томске</h1>\r\n\r\n<p>Разнообразный и богатый опыт дальнейшее развитие различных форм деятельности требуют определения и уточнения соответствующий условий активизации. Не следует, однако забывать, что сложившаяся структура организации позволяет оценить значение позиций, занимаемых участниками в отношении поставленных задач. Разнообразный и богатый опыт новая модель организационной деятельности требуют от нас анализа позиций, занимаемых участниками в отношении поставленных задач. Идейные соображения высшего порядка, а также новая модель организационной деятельности требуют определения и уточнения позиций, занимаемых участниками в отношении поставленных задач. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности позволяет оценить значение систем массового участия.</p>\r\n','','','','tablichki','2013-10-18 12:15:37','2013-10-19 08:07:40'),(4,'Штендеры','','','','','','','2013-10-19 14:32:43','2013-10-19 14:32:43'),(5,'Роллапы','','','','','','','2013-10-19 14:33:05','2013-10-19 14:33:05'),(6,'Ремонт рекламных конструкций','','','','','','','2013-10-19 14:34:20','2013-10-19 14:34:20'),(7,'Брендирование транспорта','Размещение рекламы на транспорте является очень красивым и прибыльным предприятием. Мы Вам в этом поможем!','<h1>Брендирование транспорта в Томске</h1>\r\n<p>\r\nЗадача организации, в особенности же рамки и место обучения кадров обеспечивает широкому кругу (специалистов) участие в формировании модели развития. Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание новых предложений. Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения дальнейших направлений развития.\r\n</p>','','','','brendirovanie-transporta','2013-10-19 14:39:21','2013-10-19 14:39:21');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'Тестовый слайд','Здесь вы найдете странный и возможно несоразмерный тестовый слайд, созданный специально для уничтожения пустого пространства.','','2013-10-17 16:52:06','2013-10-17 16:52:06','pictures-originals-2013-Fantasy_Artwork_cityscapes_futuristic_mist_rivers_wallpaper_043257_.jpg','image/jpeg',158154,'2013-10-17 16:52:05'),(2,'Тестовый слайд номер два','Можете не обращать на эту надпись совершенно никакого внимания! оололоолололол','','2013-10-17 17:00:14','2013-10-17 17:09:09','pictures-originals-2013-Fantasy___Figure_in_the_Cyberpunk_style_043045_.jpg','image/jpeg',192097,'2013-10-17 17:00:28'),(3,'Тестовый слайд номер три','Интересный слайдер, не правда ли? Мне тоже он нравится','','2013-10-17 17:00:45','2013-10-17 17:08:43','449381-1366x768.jpg','image/jpeg',97156,'2013-10-17 17:00:44');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-21 13:29:51
