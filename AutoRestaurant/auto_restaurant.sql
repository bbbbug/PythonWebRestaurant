-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: auto_restaurant
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cart',7,'add_cart'),(26,'Can change cart',7,'change_cart'),(27,'Can delete cart',7,'delete_cart'),(28,'Can view cart',7,'view_cart'),(29,'Can add customer',8,'add_customer'),(30,'Can change customer',8,'change_customer'),(31,'Can delete customer',8,'delete_customer'),(32,'Can view customer',8,'view_customer'),(33,'Can add employee',9,'add_employee'),(34,'Can change employee',9,'change_employee'),(35,'Can delete employee',9,'delete_employee'),(36,'Can view employee',9,'view_employee'),(37,'Can add food',10,'add_food'),(38,'Can change food',10,'change_food'),(39,'Can delete food',10,'delete_food'),(40,'Can view food',10,'view_food'),(41,'Can add foodtype',11,'add_foodtype'),(42,'Can change foodtype',11,'change_foodtype'),(43,'Can delete foodtype',11,'delete_foodtype'),(44,'Can view foodtype',11,'view_foodtype'),(45,'Can add job',12,'add_job'),(46,'Can change job',12,'change_job'),(47,'Can delete job',12,'delete_job'),(48,'Can view job',12,'view_job'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order'),(53,'Can add orderfood',14,'add_orderfood'),(54,'Can change orderfood',14,'change_orderfood'),(55,'Can delete orderfood',14,'delete_orderfood'),(56,'Can view orderfood',14,'view_orderfood'),(57,'Can add salary',15,'add_salary'),(58,'Can change salary',15,'change_salary'),(59,'Can delete salary',15,'delete_salary'),(60,'Can view salary',15,'view_salary'),(61,'Can add table',16,'add_table'),(62,'Can change table',16,'change_table'),(63,'Can delete table',16,'delete_table'),(64,'Can view table',16,'view_table');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$nS6I0lyzQfs0$vZbhXwGfa2b7M0DK9MxJvwApck/gbl1sInULpgR8Q7Y=','2018-12-02 14:22:43.696997',1,'momo','','','it_chengmo@163.com',1,1,'2018-11-27 12:04:37.732980'),(2,'pbkdf2_sha256$120000$Qx8UjedlCRa6$S8Va/exHglAtrndNjRH256nJvxHRh8p1CgR3xOXLH9w=','2018-12-19 10:30:51.061855',1,'mm','','','',1,1,'2018-12-19 10:29:09.819298');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-27 12:30:07.098523','1','food object (1)',1,'[{\"added\": {}}]',10,1),(2,'2018-11-27 12:32:00.582072','2','food object (2)',1,'[{\"added\": {}}]',10,1),(3,'2018-11-27 12:35:26.043676','3','food object (3)',1,'[{\"added\": {}}]',10,1),(4,'2018-11-27 12:37:30.977608','4','food object (4)',1,'[{\"added\": {}}]',10,1),(5,'2018-11-27 12:38:31.958549','5','food object (5)',1,'[{\"added\": {}}]',10,1),(6,'2018-11-27 12:39:26.217462','6','food object (6)',1,'[{\"added\": {}}]',10,1),(7,'2018-11-27 12:41:33.786349','7','food object (7)',1,'[{\"added\": {}}]',10,1),(8,'2018-11-27 12:42:17.225195','8','food object (8)',1,'[{\"added\": {}}]',10,1),(9,'2018-11-27 12:43:11.531980','9','food object (9)',1,'[{\"added\": {}}]',10,1),(10,'2018-11-27 12:44:20.449699','10','food object (10)',1,'[{\"added\": {}}]',10,1),(11,'2018-11-27 12:45:04.203701','11','food object (11)',1,'[{\"added\": {}}]',10,1),(12,'2018-11-27 12:45:50.904824','12','food object (12)',1,'[{\"added\": {}}]',10,1),(13,'2018-11-27 12:46:50.260111','13','food object (13)',1,'[{\"added\": {}}]',10,1),(14,'2018-11-27 12:47:56.422223','14','food object (14)',1,'[{\"added\": {}}]',10,1),(15,'2018-11-27 12:49:19.435251','15','food object (15)',1,'[{\"added\": {}}]',10,1),(16,'2018-11-27 12:50:08.340453','16','food object (16)',1,'[{\"added\": {}}]',10,1),(17,'2018-11-27 12:51:06.287504','17','food object (17)',1,'[{\"added\": {}}]',10,1),(18,'2018-11-27 12:52:02.872200','18','food object (18)',1,'[{\"added\": {}}]',10,1),(19,'2018-11-27 12:54:02.046532','19','food object (19)',1,'[{\"added\": {}}]',10,1),(20,'2018-11-28 07:29:32.595735','7','order object (7)',1,'[{\"added\": {}}]',13,1),(21,'2018-11-28 07:46:34.815739','1','orderfood object (1)',1,'[{\"added\": {}}]',14,1),(22,'2018-11-28 07:46:49.082681','2','orderfood object (2)',1,'[{\"added\": {}}]',14,1),(23,'2018-11-28 07:46:59.141972','3','orderfood object (3)',1,'[{\"added\": {}}]',14,1),(24,'2018-11-28 07:47:07.906601','4','orderfood object (4)',1,'[{\"added\": {}}]',14,1),(25,'2018-11-28 07:47:19.680825','5','orderfood object (5)',1,'[{\"added\": {}}]',14,1),(26,'2018-11-28 07:49:15.871122','8','order object (8)',1,'[{\"added\": {}}]',13,1),(27,'2018-11-28 07:52:12.323169','9','order object (9)',1,'[{\"added\": {}}]',13,1),(28,'2018-11-28 07:53:42.321344','10','order object (10)',1,'[{\"added\": {}}]',13,1),(29,'2018-11-28 07:54:23.568957','11','order object (11)',1,'[{\"added\": {}}]',13,1),(30,'2018-11-28 07:55:20.309230','6','orderfood object (6)',1,'[{\"added\": {}}]',14,1),(31,'2018-11-28 07:55:45.874286','7','orderfood object (7)',1,'[{\"added\": {}}]',14,1),(32,'2018-11-28 07:55:58.348549','8','orderfood object (8)',1,'[{\"added\": {}}]',14,1),(33,'2018-11-28 07:56:16.614323','9','orderfood object (9)',1,'[{\"added\": {}}]',14,1),(34,'2018-11-28 07:57:15.343964','10','orderfood object (10)',1,'[{\"added\": {}}]',14,1),(35,'2018-11-28 07:57:27.502648','11','orderfood object (11)',1,'[{\"added\": {}}]',14,1),(36,'2018-11-28 07:57:39.529309','12','orderfood object (12)',1,'[{\"added\": {}}]',14,1),(37,'2018-11-28 07:57:49.123410','13','orderfood object (13)',1,'[{\"added\": {}}]',14,1),(38,'2018-11-28 07:57:59.643745','14','orderfood object (14)',1,'[{\"added\": {}}]',14,1),(39,'2018-11-28 07:58:08.599599','15','orderfood object (15)',1,'[{\"added\": {}}]',14,1),(40,'2018-11-28 07:58:16.587845','16','orderfood object (16)',1,'[{\"added\": {}}]',14,1),(41,'2018-11-28 07:58:32.160692','17','orderfood object (17)',1,'[{\"added\": {}}]',14,1),(42,'2018-11-28 07:58:38.853497','18','orderfood object (18)',1,'[{\"added\": {}}]',14,1),(43,'2018-11-28 07:58:45.384653','19','orderfood object (19)',1,'[{\"added\": {}}]',14,1),(44,'2018-11-28 07:58:54.619744','20','orderfood object (20)',1,'[{\"added\": {}}]',14,1),(45,'2018-11-28 07:59:02.294519','21','orderfood object (21)',1,'[{\"added\": {}}]',14,1),(46,'2018-11-28 07:59:12.449375','22','orderfood object (22)',1,'[{\"added\": {}}]',14,1),(47,'2018-11-28 07:59:30.580097','23','orderfood object (23)',1,'[{\"added\": {}}]',14,1),(48,'2018-11-28 07:59:43.497655','24','orderfood object (24)',1,'[{\"added\": {}}]',14,1),(49,'2018-11-28 07:59:51.028406','25','orderfood object (25)',1,'[{\"added\": {}}]',14,1),(50,'2018-11-28 08:00:03.658654','26','orderfood object (26)',1,'[{\"added\": {}}]',14,1),(51,'2018-11-28 08:00:15.558834','27','orderfood object (27)',1,'[{\"added\": {}}]',14,1),(52,'2018-11-28 08:00:23.649076','28','orderfood object (28)',1,'[{\"added\": {}}]',14,1),(53,'2018-11-28 08:03:00.423690','6','customer object (6)',1,'[{\"added\": {}}]',8,1),(54,'2018-11-28 08:04:22.320903','7','customer object (7)',1,'[{\"added\": {}}]',8,1),(55,'2018-11-28 08:04:48.806876','8','customer object (8)',1,'[{\"added\": {}}]',8,1),(56,'2018-11-28 08:05:28.579583','9','customer object (9)',1,'[{\"added\": {}}]',8,1),(57,'2018-11-28 08:06:07.477432','10','customer object (10)',1,'[{\"added\": {}}]',8,1),(58,'2018-11-28 08:07:36.071664','12','order object (12)',1,'[{\"added\": {}}]',13,1),(59,'2018-11-28 08:08:31.905218','13','order object (13)',1,'[{\"added\": {}}]',13,1),(60,'2018-11-28 08:09:08.193154','14','order object (14)',1,'[{\"added\": {}}]',13,1),(61,'2018-11-28 08:09:47.601776','15','order object (15)',1,'[{\"added\": {}}]',13,1),(62,'2018-11-28 08:10:32.614415','16','order object (16)',1,'[{\"added\": {}}]',13,1),(63,'2018-11-28 08:11:29.178166','29','orderfood object (29)',1,'[{\"added\": {}}]',14,1),(64,'2018-11-28 08:11:38.080362','30','orderfood object (30)',1,'[{\"added\": {}}]',14,1),(65,'2018-11-28 08:11:51.457597','31','orderfood object (31)',1,'[{\"added\": {}}]',14,1),(66,'2018-11-28 08:12:02.873068','32','orderfood object (32)',1,'[{\"added\": {}}]',14,1),(67,'2018-11-28 08:12:18.377609','33','orderfood object (33)',1,'[{\"added\": {}}]',14,1),(68,'2018-11-28 08:12:27.741570','34','orderfood object (34)',1,'[{\"added\": {}}]',14,1),(69,'2018-11-28 08:12:36.809532','35','orderfood object (35)',1,'[{\"added\": {}}]',14,1),(70,'2018-11-28 08:12:51.804773','36','orderfood object (36)',1,'[{\"added\": {}}]',14,1),(71,'2018-11-28 08:13:01.791556','37','orderfood object (37)',1,'[{\"added\": {}}]',14,1),(72,'2018-11-28 08:13:09.688478','38','orderfood object (38)',1,'[{\"added\": {}}]',14,1),(73,'2018-11-28 08:13:19.469655','39','orderfood object (39)',1,'[{\"added\": {}}]',14,1),(74,'2018-11-28 08:13:31.341291','40','orderfood object (40)',1,'[{\"added\": {}}]',14,1),(75,'2018-11-28 08:13:39.046762','41','orderfood object (41)',1,'[{\"added\": {}}]',14,1),(76,'2018-11-28 08:13:44.848045','42','orderfood object (42)',1,'[{\"added\": {}}]',14,1),(77,'2018-11-28 08:13:54.676650','43','orderfood object (43)',1,'[{\"added\": {}}]',14,1),(78,'2018-11-28 08:14:02.624291','44','orderfood object (44)',1,'[{\"added\": {}}]',14,1),(79,'2018-11-28 08:14:11.061217','45','orderfood object (45)',1,'[{\"added\": {}}]',14,1),(80,'2018-11-28 08:14:19.376599','46','orderfood object (46)',1,'[{\"added\": {}}]',14,1),(81,'2018-11-28 08:14:28.152472','47','orderfood object (47)',1,'[{\"added\": {}}]',14,1),(82,'2018-11-28 08:14:37.252243','48','orderfood object (48)',1,'[{\"added\": {}}]',14,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'res','cart'),(8,'res','customer'),(9,'res','employee'),(10,'res','food'),(11,'res','foodtype'),(12,'res','job'),(13,'res','order'),(14,'res','orderfood'),(15,'res','salary'),(16,'res','table'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-27 06:44:42.953600'),(2,'auth','0001_initial','2018-11-27 06:44:49.737460'),(3,'admin','0001_initial','2018-11-27 06:44:51.313247'),(4,'admin','0002_logentry_remove_auto_add','2018-11-27 06:44:51.370095'),(5,'admin','0003_logentry_add_action_flag_choices','2018-11-27 06:44:51.428938'),(6,'contenttypes','0002_remove_content_type_name','2018-11-27 06:44:52.856121'),(7,'auth','0002_alter_permission_name_max_length','2018-11-27 06:44:53.597140'),(8,'auth','0003_alter_user_email_max_length','2018-11-27 06:44:53.715822'),(9,'auth','0004_alter_user_username_opts','2018-11-27 06:44:53.776660'),(10,'auth','0005_alter_user_last_login_null','2018-11-27 06:44:54.366084'),(11,'auth','0006_require_contenttypes_0002','2018-11-27 06:44:54.417946'),(12,'auth','0007_alter_validators_add_error_messages','2018-11-27 06:44:54.478783'),(13,'auth','0008_alter_user_username_max_length','2018-11-27 06:44:55.246729'),(14,'auth','0009_alter_user_last_name_max_length','2018-11-27 06:44:55.895993'),(15,'res','0001_initial','2018-11-27 06:45:03.763295'),(16,'sessions','0001_initial','2018-11-27 06:45:04.223065');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0rvvgma7he4ltj7r0a29gr10j6g9nayc','MDQ0YTJjNGY1NTI1MjI1Zjg3N2MzM2UwNzM3NWIxZmIxZjkxYjE5NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNzU3MmE3NjIzOWNmMmIyMzYyMmIwZjU2YTUyODM4NGViNDM3MGZjIn0=','2018-12-11 12:20:00.984245'),('yr0ovdjx2wgyjhb7a1vka8egx0e2xxhb','NTFmNmY0MTA5ZDg3NGQ2NzdhMWYzMDRlM2FmYzQ5NjhiOGE0Yjc4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZTJlNTAyMWVkZDFhMjMzOGE2Y2E1MWY2ODQ5NjdhOTYwMDQzODI1In0=','2018-12-16 14:22:43.799057'),('zg8g7wyy3gtos11rfhsjaop6710tbuk1','MmE5ZTRlMjRjOWM5ZDg2MzJkYmIzM2VjODU2MTBiYTQxNjRiMjA4MDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZDUyZjZlODQ5OTUxMjI0MTM1ZTVlOTg1MmEzMGY2ZGRiYTYxNzIwIn0=','2019-01-02 10:30:51.218093');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_cart`
--

DROP TABLE IF EXISTS `res_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `orderfoodname` varchar(512) NOT NULL,
  `orderfoodtype` varchar(512) NOT NULL,
  `orderfoodnum` int(11) NOT NULL,
  `orderfoodprice` double NOT NULL,
  `orderfooddiscount` double NOT NULL,
  `orderfoodstatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  CONSTRAINT `res_cart_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `res_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_cart`
--

LOCK TABLES `res_cart` WRITE;
/*!40000 ALTER TABLE `res_cart` DISABLE KEYS */;
INSERT INTO `res_cart` VALUES (14,5,'五花肉炒扁豆','热菜',1,32,1,0),(15,5,'乌龟菠萝包','热菜',1,20.5,1,0),(16,5,'排骨焖鹌鹑蛋','热菜',1,40,1,0),(17,5,'巧克力戚风蛋糕','甜品',1,28,1,0),(18,5,'山楂汤','汤',1,26,1,0);
/*!40000 ALTER TABLE `res_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_customer`
--

DROP TABLE IF EXISTS `res_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(30) DEFAULT NULL,
  `ctel` varchar(30) DEFAULT NULL,
  `cage` int(11) DEFAULT NULL,
  `csex` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `password` varchar(512) NOT NULL,
  `cpicture` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `cperference` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `registerdate` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_customer`
--

LOCK TABLES `res_customer` WRITE;
/*!40000 ALTER TABLE `res_customer` DISABLE KEYS */;
INSERT INTO `res_customer` VALUES (1,'黄金明','1336572318',23,0,'1996-08-23','admin','','','2018-11-28 13:17:18.000000'),(2,'李磊','18825307136',22,0,'1996-05-18','admin','','','2018-11-28 13:27:08.000000'),(3,'陈思明','18907110668',22,0,'1996-06-14','admin','','','2018-11-28 13:27:46.000000'),(4,'程末','15327886415',20,0,'1995-08-19','admin','','','2018-11-28 13:28:25.000000'),(5,'杨珺仪','1887235231',21,1,'1996-06-04','admin','','','2018-11-28 13:50:38.000000'),(6,'明明','无',12,1,'2018-11-28','admin','无','无','2018-11-28 08:02:19.000000'),(7,'磊磊','无',13,1,'2018-11-28','admin','无','无','2018-11-28 08:04:21.000000'),(8,'蕾蕾','无',4,1,'2018-11-28','admin','无','无','2018-11-28 08:04:40.000000'),(9,'默默','无',33,0,'2018-11-28','admin','无','无','2018-11-28 08:05:27.000000'),(10,'刘三','无',56,0,'2018-11-28','admin','无','无','2018-11-28 08:06:06.000000');
/*!40000 ALTER TABLE `res_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_employee`
--

DROP TABLE IF EXISTS `res_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(512) NOT NULL,
  `epassword` varchar(512) NOT NULL,
  `esex` int(11) NOT NULL,
  `email` varchar(512) NOT NULL,
  `address` varchar(512) NOT NULL,
  `contract` varchar(512) NOT NULL,
  `employee_job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_employee_employee_job_id_85ae7d5a_fk_res_job_id` (`employee_job_id`),
  CONSTRAINT `res_employee_employee_job_id_85ae7d5a_fk_res_job_id` FOREIGN KEY (`employee_job_id`) REFERENCES `res_job` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_employee`
--

LOCK TABLES `res_employee` WRITE;
/*!40000 ALTER TABLE `res_employee` DISABLE KEYS */;
INSERT INTO `res_employee` VALUES (2001,'小红','1',0,'','湖北','无',1002);
/*!40000 ALTER TABLE `res_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_food`
--

DROP TABLE IF EXISTS `res_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ftype` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foodname` varchar(512) NOT NULL,
  `foodprice` double NOT NULL,
  `foodpicture` varchar(100) NOT NULL,
  `fooddescribe` varchar(256) NOT NULL,
  `fooddiscount` double NOT NULL,
  `food_type_id` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_food_food_type_id_3544653c_fk_res_foodtype_id` (`food_type_id`),
  CONSTRAINT `res_food_food_type_id_3544653c_fk_res_foodtype_id` FOREIGN KEY (`food_type_id`) REFERENCES `res_foodtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_food`
--

LOCK TABLES `res_food` WRITE;
/*!40000 ALTER TABLE `res_food` DISABLE KEYS */;
INSERT INTO `res_food` VALUES (1,'热菜','北京烤鸭',20,'img/2ed135e8-f7c0-4325-9205-6dff70a03d3e.jpg','烤鸭是具有世界声誉的北京著名菜式，用料为优质肉食鸭北京鸭，果木炭火烤制，色泽红润，肉质肥而不腻，外脆里嫩。它以色泽红艳，肉质细嫩，味道醇厚，肥而不腻的特色，被誉为“天下美味”。',1,1,0),(2,'热菜','红烧肉',30,'img/b151f8198618367ade38490228738bd4b21ce5bf.jpg','红烧肉是中华的一道经典名菜，口感肥而不腻、软糯香甜，是老少皆宜的美食。同时，红烧肉还富含胶原蛋白，是美容养颜保持肌肤弹性的好菜。当然，红烧肉味数甜，不可多吃，有高血糖和高血脂的患者慎吃。红烧肉的烹饪技巧以砂锅为主，肥瘦相间，香甜松软，入口即化。红烧肉在中国各地流传甚广，是一道著名的大众菜肴。',1,1,0),(3,'热菜','乌龟菠萝包',20.5,'img/s13134870_154330027422291.jpg','菠萝包没有菠萝，形似菠萝！乌龟菠萝包，没有乌龟噢！这么呆萌的乌龟，小孩子应该会爱不释手！瞧，它正可怜巴巴的看着你呢！',1,3,0),(4,'凉菜','凉拌木耳',10,'img/a113291_154089465972097.jpg','凉拌木耳是一道以木耳作为主要食材，以胡萝卜、香菜、洋葱、红辣椒、甜椒作为辅料凉拌而成的一道家常菜。具有清爽适口，营养丰富的特点，尤其适宜夏季食用。',0.9,2,0),(5,'汤','鲫鱼豆腐汤',30,'img/s113291_154089344011807.jpg','汤白维美，鲜嫩可口',1,5,0),(6,'凉菜','凉拌苦瓜',12,'img/s113291_154089380613590.jpg','凉拌苦瓜是一道著名的印度菜，制作原料主要有苦瓜、核桃油、豆瓣酱等，具有降低血糖、消毒利尿、杀菌清热等作用',1,2,0),(7,'甜品','蔓越莓小心心蛋糕',25,'img/s6030800_154313457311551.jpg','蔓越莓蛋糕，松软可口',1,4,0),(8,'热菜','粉蒸肉',32,'img/a113291_154089380437680.jpg','粉蒸肉，超下饭',1,1,0),(9,'甜品','泡芙',20,'img/s113291_154089410389867.jpg','泡芙是一种源自意大利的甜食。蓬松张空的奶油面皮中包裹着奶油、巧克力乃至冰淇淋。制作时使用水、汉密哈顿奶油、面和蛋做包裹的面包。',1,4,0),(10,'热菜','排骨焖鹌鹑蛋',40,'img/s2921467_154321405875238.jpg','孩子的幼儿园小伙伴要来家里玩，就想着做一个孩子能爱吃的，肉和蛋都有了，事实证明孩子们确实很爱吃，喷香入味还下饭，做法也很亲民，肉食动物们动手试试看咯',1,1,0),(11,'甜品','冰糖炖雪梨',25,'img/s113291_154089388601634.jpg','无',1,4,0),(12,'甜品','菠菜蒸糕',30,'img/s8481307_154304039190364.jpg','菠菜蒸糕，好看好吃',1,4,0),(13,'汤','山楂汤',26,'img/s410583_154316086416929.jpg','现在是山楂上市的时候，超市里卖得还挺贵，10元一斤，没过几天，外面早市上竟然是2元一斤，真是太便宜了。山楂可以帮助消积食，儿童可以适量喝一些',1,5,0),(14,'主食','香脆锅巴',28,'img/s13138037_154300955415780.jpg','时间是个奇妙的东西，有些东西在念念不忘中最终变得模糊，有些东西无论过去多么久，始终对它情有独钟，就像这款锅巴，从童年至今却无法割舍对它的喜爱',1,3,0),(15,'热菜','五花肉炒扁豆',32,'img/s10218474_154287188077151.jpg','扁豆，营养价值较高，矿物质和维生素含量比大部分根茎菜和瓜菜都高，味亦鲜嫩可口，既是滋补佳品，又是一味良药。  扁豆味甘、性平，归、胃经，气清香而不串，性温和而色微黄，与脾性最合，有健脾、和中、益气、化湿、消暑之功效。  经常适量食用扁豆可使人体得到多种营养素，防止各种营养素缺乏痛',1,1,0),(16,'汤','银耳莲子百合汤',24,'img/s410583_154290234879051.jpg','多喝些汤水对身体有益处。银耳对老年慢性支气管炎、肺原性心脏病有一定疗效，莲子有益心补肾、健脾止泻、固精安神、健脑的作用，常食能预防老年性痴呆的发生。百合味道鲜美，还有宁心安神的作用，买不到鲜百合，就用干百合来代替了。',1,5,0),(17,'热菜','爆炒西兰花',18,'img/s6695887_154286795406491.jpg','这道菜颜色好，味道鲜。',1,1,0),(18,'甜品','巧克力戚风蛋糕',28,'img/s10218474_154269481506173.jpg','巧克力戚风蛋糕，生活已经够苦了，让我们来点甜的吧！ 传统戚风蛋糕，绵绵湿润口感，不甜不腻，一直都得到大家喜爱。 而加入了可可粉，比起普通的戚风蛋糕，它显得更加诱人。 巧克力戚风蛋糕绵密而香浓，组织蓬松细腻，巧克力味道浓郁，香甜可口，即使心情不好的人吃了也会露出欢颜。 浓郁的滋味完成了这片甜蜜领域最动人的挑逗！',1,4,0),(19,'主食','南瓜肉松小餐包',23,'img/s13280458_154237289574895.jpg','这是根据阿呜511老师的南瓜老面包配方调整做的南瓜肉松小餐包，本身南瓜中种面包的松软微甜，加上肉松芝士的微咸，好吃极了。',1,3,0),(22,'热菜','宫保鸡丁',20,'img/2123453555.jpg','宫保鸡丁选用鸡肉为主料，佐以花生米、黄瓜、辣椒等辅料烹制而成。 红而不辣、辣而不猛、香辣味浓、肉质滑脆。由于其入口鲜辣，鸡肉的鲜嫩配合花生的香脆。',1,1,0);
/*!40000 ALTER TABLE `res_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_foodtype`
--

DROP TABLE IF EXISTS `res_foodtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_foodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(512) NOT NULL,
  `foodnum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_foodtype`
--

LOCK TABLES `res_foodtype` WRITE;
/*!40000 ALTER TABLE `res_foodtype` DISABLE KEYS */;
INSERT INTO `res_foodtype` VALUES (1,'热菜',50),(2,'凉菜',50),(3,'主食',10),(4,'甜品',20),(5,'汤',20),(6,'开胃菜',10);
/*!40000 ALTER TABLE `res_foodtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_job`
--

DROP TABLE IF EXISTS `res_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jname` varchar(512) NOT NULL,
  `jbasesalary` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_job`
--

LOCK TABLES `res_job` WRITE;
/*!40000 ALTER TABLE `res_job` DISABLE KEYS */;
INSERT INTO `res_job` VALUES (1000,'经理',10000),(1001,'服务员',2500),(1002,'清洁工',2000),(1003,'厨师',2800);
/*!40000 ALTER TABLE `res_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_order`
--

DROP TABLE IF EXISTS `res_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordercreatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `orderfinishtime` datetime(6) DEFAULT NULL,
  `orderremark` varchar(512) DEFAULT '无',
  `orderpersonNum` int(11) DEFAULT NULL,
  `orderassess` varchar(512) DEFAULT '无',
  `orderstatus` int(11) NOT NULL,
  `orderprices` double DEFAULT '0',
  `orderallfoodnum` int(11) DEFAULT NULL,
  `order_customer_id` int(11) DEFAULT NULL,
  `order_table_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_order_order_customer_id_05fe5a6f_fk_res_customer_id` (`order_customer_id`),
  KEY `res_order_order_table_id_dbab7ea8_fk_res_table_id` (`order_table_id`),
  CONSTRAINT `res_order_order_customer_id_05fe5a6f_fk_res_customer_id` FOREIGN KEY (`order_customer_id`) REFERENCES `res_customer` (`id`),
  CONSTRAINT `res_order_order_table_id_dbab7ea8_fk_res_table_id` FOREIGN KEY (`order_table_id`) REFERENCES `res_table` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_order`
--

LOCK TABLES `res_order` WRITE;
/*!40000 ALTER TABLE `res_order` DISABLE KEYS */;
INSERT INTO `res_order` VALUES (5,'2018-11-28 14:18:32','2018-11-28 14:18:00.000000','',0,'',1,146.5,5,5,1),(7,'2018-11-28 07:21:43','2018-11-28 00:00:00.000000','微辣，不要香菜',3,'无',0,0,0,1,1),(8,'2018-11-28 07:48:05','2018-11-28 07:48:07.000000','多放辣',5,'无',0,0,5,2,10),(9,'2018-11-28 07:50:55','2018-11-28 07:50:56.000000','无',6,'无',0,0,0,3,9),(10,'2018-11-28 07:52:56','2018-11-28 07:53:03.000000','不雅葱',3,'无',0,0,0,4,4),(11,'2018-11-28 07:54:02','2018-11-28 07:54:03.000000','变态辣',4,'无',0,0,0,3,6),(12,'2018-11-28 08:07:16','2018-11-28 08:07:18.000000','微辣，不要香菜',4,'无',1,0,0,6,8),(13,'2018-11-28 08:08:11','2018-11-28 08:08:12.000000','变态辣',4,'无',1,0,0,7,7),(14,'2018-11-28 08:08:43','2018-11-28 08:08:44.000000','不要葱',2,'无',1,0,0,8,6),(15,'2018-11-28 08:09:29','2018-11-28 08:09:30.000000','多放辣',3,'无',1,0,0,9,3),(16,'2018-11-28 08:10:12','2018-11-28 08:10:14.000000','微辣，不要香菜',5,'无',1,0,0,10,2),(21,NULL,NULL,'',0,'',0,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `res_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_orderfood`
--

DROP TABLE IF EXISTS `res_orderfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_orderfood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodNum` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `orderfood_food_id` int(11) NOT NULL,
  `orderfood_order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_orderfood_orderfood_food_id_db8c93c3_fk_res_food_id` (`orderfood_food_id`),
  KEY `res_orderfood_orderfood_order_id_e0364182_fk_res_order_id` (`orderfood_order_id`),
  CONSTRAINT `res_orderfood_orderfood_food_id_db8c93c3_fk_res_food_id` FOREIGN KEY (`orderfood_food_id`) REFERENCES `res_food` (`id`),
  CONSTRAINT `res_orderfood_orderfood_order_id_e0364182_fk_res_order_id` FOREIGN KEY (`orderfood_order_id`) REFERENCES `res_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_orderfood`
--

LOCK TABLES `res_orderfood` WRITE;
/*!40000 ALTER TABLE `res_orderfood` DISABLE KEYS */;
INSERT INTO `res_orderfood` VALUES (2,2,0,2,7),(3,1,0,10,7),(4,1,0,13,7),(5,2,0,12,7),(6,1,0,8,7),(7,1,0,5,7),(8,1,0,22,7),(10,1,0,6,8),(11,1,0,7,8),(12,1,0,8,8),(13,1,0,9,8),(14,1,0,10,8),(15,1,0,1,9),(16,1,0,2,9),(17,1,0,3,9),(18,1,0,7,9),(19,1,0,14,9),(20,1,0,3,10),(21,1,0,15,10),(22,1,0,14,10),(23,1,0,14,10),(24,1,0,6,11),(25,1,0,12,11),(26,1,0,22,11),(27,1,0,19,11),(28,1,0,16,11),(30,1,0,19,12),(31,1,0,14,12),(32,1,1,6,12),(33,1,0,2,13),(34,1,0,4,13),(35,1,1,9,13),(36,1,0,18,13),(37,1,1,2,14),(38,1,0,8,14),(39,1,0,12,14),(40,1,0,15,14),(41,1,1,22,15),(42,1,1,19,15),(43,2,0,17,15),(44,1,0,13,15),(45,1,1,4,16),(46,1,1,12,16),(47,2,0,17,16),(48,1,0,10,16),(49,1,0,15,5),(50,1,0,3,5),(51,1,0,10,5),(52,1,0,18,5),(53,1,0,13,5),(54,1,0,1,21),(55,1,0,1,21),(56,1,0,2,21),(57,1,0,3,21),(58,1,0,4,21);
/*!40000 ALTER TABLE `res_orderfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_salary`
--

DROP TABLE IF EXISTS `res_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `performance` double NOT NULL,
  `tablenum` int(11) NOT NULL,
  `totalsalary` double NOT NULL,
  `serverevaluate` varchar(512) NOT NULL,
  `salary_employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `res_salary_salary_employee_id_e2396f90_fk_res_employee_id` (`salary_employee_id`),
  CONSTRAINT `res_salary_salary_employee_id_e2396f90_fk_res_employee_id` FOREIGN KEY (`salary_employee_id`) REFERENCES `res_employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_salary`
--

LOCK TABLES `res_salary` WRITE;
/*!40000 ALTER TABLE `res_salary` DISABLE KEYS */;
/*!40000 ALTER TABLE `res_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_table`
--

DROP TABLE IF EXISTS `res_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `res_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tablepersonNum` int(11) NOT NULL,
  `tableflag` int(11) NOT NULL,
  `tabledescription` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_table`
--

LOCK TABLES `res_table` WRITE;
/*!40000 ALTER TABLE `res_table` DISABLE KEYS */;
INSERT INTO `res_table` VALUES (1,4,2,'小桌'),(2,4,3,'小桌'),(3,4,3,'小桌'),(4,4,1,'小桌'),(5,4,2,'小桌'),(6,4,1,'小桌'),(7,4,1,'小桌'),(8,4,2,'小桌'),(9,8,3,'大桌'),(10,8,1,'大桌'),(11,8,0,'大桌');
/*!40000 ALTER TABLE `res_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 16:31:03
