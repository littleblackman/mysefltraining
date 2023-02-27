-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: mobile_learning
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.20.04.2

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
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int DEFAULT NULL,
  `chapter_order` int DEFAULT NULL,
  `name_fr` varchar(255) DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `resume_fr` varchar(255) DEFAULT NULL,
  `resume_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` VALUES (1,1,1,'Planification / schéma directeur : généralités','Planning / master plan: general',NULL,NULL,NULL,NULL),(2,1,2,'Electrification rurale : modèle de propriété et de gestion','Rural Electrification: Ownership and Management Model',NULL,NULL,NULL,NULL),(3,1,3,'Mode d’attribution des licences','Licensing method',NULL,NULL,NULL,NULL),(4,1,4,'Mesure incitative','Incentive',NULL,NULL,NULL,NULL),(5,1,5,'Appui des banques locales','Support from local banks',NULL,NULL,NULL,NULL),(6,1,6,'Engagement des parties prenantes','Stakeholder Engagement',NULL,NULL,NULL,NULL),(7,1,7,'La transversalité des programmes d’accès à l’électricité.','The transversality of access to electricity programs.',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_order` tinyint NOT NULL,
  `name_fr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_fr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,1,'Politique et Gouvernance','Policy and Governance','Donner aux décideurs des outils pour développer un cadre politique et de gouvernance adéquat pour l\'électrification rurale hors réseau, en particulier les mini-réseaux.','Empower decision-makers with tools to develop an adequate policy and governance framework for off-grid rural electrification, especially mini-grids.','online',NULL,NULL),(2,2,'Régulation','Regulation','Il est essentiel de soutenir les décideurs et les régulateurs. La mise en place des tarifs et des normes, l\'octroi des licences doit être contrôlé par les acteurs publics pour un bon programme de mini-réseaux.','It is essential to support policy makers and regulators. The establishment of tariffs and standards, the granting of licenses must be controlled by public actors for a good mini-grid program.','online',NULL,NULL),(3,3,'HTA & BT études électrique et mécanique','HV & LV electrical and mechanical studies','En milieu rural, nous nous intéressons plus à l\'étude de la production qu\'au réseau de distribution MT et BT. Alors que le fonctionnement d\'un réseau isolé est assez complexe qu\'il n\'y paraît.','In rural areas, we are more interested in the study of production than in the HV and LV distribution network. While the operation of an isolated network is quite complex than it seems.','online',NULL,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `activity_order` tinyint NOT NULL,
  `chapter_id` int NOT NULL,
  `name_fr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resume_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,1,'Limites de la concession de la compagnie nationale d’électricité','Limits of the concession of the national electricity company','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(2,2,1,'Solution décentralisée / mini-réseau','Decentralized solution / mini-grid','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(3,3,1,'L’arrivée du réseau national','The arrival of the national network','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(4,4,2,'Délégation de service, modèle public','Service delegation,  public model','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(5,5,2,'PPP : concession / affermage','PPP: concession / affermage','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(6,6,2,'Gestion communautaire','Community management','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(7,7,3,'Appel d’offres','Call for tenders','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(8,8,3,'Appel à projet','Call for projects','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(9,9,3,'Candidature spontanée','Spontaneous application','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(10,10,4,'Fiscale','Tax','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(11,11,4,'Douanière','customs','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(12,12,4,'Foncièr','Land','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(13,13,6,'Comment suivre les activités des opérateurs ?','How to track operator activities?','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL),(14,14,6,'Le rôle des autorités locales et régionales','The role of local and regional authorities','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum laoreet ullamcorper sodales. Praesent fringilla risus magna, in ullamcorper lacus consectetur vitae. Duis a nulla vel turpis pellentesque lobortis. Donec pulvinar et arcu vitae semper. Ut tincidunt rhoncus eros id tempus. Sed nec bibendum enim. Nullam commodo, tellus pharetra congue feugiat, turpis mi interdum nulla, id aliquam mi ligula ut eros',NULL,NULL,'online',NULL,NULL);
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2019_12_14_000001_create_personal_access_tokens_table',1),(2,'2022_10_04_114023_create_courses_table',1),(3,'2022_10_04_114030_create_lessons_table',1),(4,'2022_10_04_120609_create_quizzes_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quizzes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `activity_order` tinyint DEFAULT NULL,
  `chapter_id` int NOT NULL,
  `name_fr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_fr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quizzes`
--

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;
/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27 22:39:23
