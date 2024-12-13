-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: human_resources
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add department',7,'add_department'),(26,'Can change department',7,'change_department'),(27,'Can delete department',7,'delete_department'),(28,'Can view department',7,'view_department'),(29,'Can add job position',8,'add_jobposition'),(30,'Can change job position',8,'change_jobposition'),(31,'Can delete job position',8,'delete_jobposition'),(32,'Can view job position',8,'view_jobposition'),(33,'Can add employee',9,'add_employee'),(34,'Can change employee',9,'change_employee'),(35,'Can delete employee',9,'delete_employee'),(36,'Can view employee',9,'view_employee'),(37,'Can add salary history',10,'add_salaryhistory'),(38,'Can change salary history',10,'change_salaryhistory'),(39,'Can delete salary history',10,'delete_salaryhistory'),(40,'Can view salary history',10,'view_salaryhistory'),(41,'Can add payment date',11,'add_paymentdate'),(42,'Can change payment date',11,'change_paymentdate'),(43,'Can delete payment date',11,'delete_paymentdate'),(44,'Can view payment date',11,'view_paymentdate'),(45,'Can add vacation',12,'add_vacation'),(46,'Can change vacation',12,'change_vacation'),(47,'Can delete vacation',12,'delete_vacation'),(48,'Can view vacation',12,'view_vacation');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$sLfxiIgMuCMmkI7G7OfpL8$422+1kIi1hPZbei0I8ZNgcTGdZR3qAsmha6geire2tE=','2024-11-05 04:51:36.127930',1,'admin','','','2213110473@untels.edu.pe',1,1,'2024-11-05 04:50:46.304443');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
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
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`pk_int`),
  UNIQUE KEY `department_name` (`department_name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Recursos Humanos','Encargado de la gestión del personal y su bienestar.'),(2,'Finanzas','Gestiona los recursos financieros y la contabilidad.'),(3,'Tecnología','Responsable del desarrollo y mantenimiento de sistemas tecnológicos.'),(4,'Ventas','Gestiona las actividades de comercialización y ventas de productos o servicios.'),(5,'Marketing','Encargado de la promoción de la empresa y sus productos.'),(6,'Producción','Se encarga de la fabricación de productos o servicios.'),(7,'Logística','Gestiona la distribución de productos y suministros.'),(8,'Atención al Cliente','Responsable de la gestión de la experiencia del cliente.');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'RRHH','department'),(9,'RRHH','employee'),(8,'RRHH','jobposition'),(11,'RRHH','paymentdate'),(10,'RRHH','salaryhistory'),(12,'RRHH','vacation'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'RRHH','0001_initial','2024-11-05 04:38:02.920943'),(2,'contenttypes','0001_initial','2024-11-05 04:38:03.053932'),(3,'auth','0001_initial','2024-11-05 04:38:04.725640'),(4,'admin','0001_initial','2024-11-05 04:38:05.091860'),(5,'admin','0002_logentry_remove_auto_add','2024-11-05 04:38:05.112673'),(6,'admin','0003_logentry_add_action_flag_choices','2024-11-05 04:38:05.125645'),(7,'contenttypes','0002_remove_content_type_name','2024-11-05 04:38:05.292481'),(8,'auth','0002_alter_permission_name_max_length','2024-11-05 04:38:05.426578'),(9,'auth','0003_alter_user_email_max_length','2024-11-05 04:38:05.459078'),(10,'auth','0004_alter_user_username_opts','2024-11-05 04:38:05.473223'),(11,'auth','0005_alter_user_last_login_null','2024-11-05 04:38:05.599326'),(12,'auth','0006_require_contenttypes_0002','2024-11-05 04:38:05.630527'),(13,'auth','0007_alter_validators_add_error_messages','2024-11-05 04:38:05.654367'),(14,'auth','0008_alter_user_username_max_length','2024-11-05 04:38:05.813047'),(15,'auth','0009_alter_user_last_name_max_length','2024-11-05 04:38:05.961490'),(16,'auth','0010_alter_group_name_max_length','2024-11-05 04:38:05.987554'),(17,'auth','0011_update_proxy_permissions','2024-11-05 04:38:05.999246'),(18,'auth','0012_alter_user_first_name_max_length','2024-11-05 04:38:06.142407'),(19,'sessions','0001_initial','2024-11-05 04:38:06.226905'),(20,'RRHH','0002_alter_department_department_name_and_more','2024-11-05 07:47:23.474158'),(21,'RRHH','0003_alter_department_department_name_and_more','2024-11-05 07:52:46.312056');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
INSERT INTO `django_session` VALUES ('9nm2nifrxg1237nidibtum7b32rjvf5f','.eJxVjDsOwyAQRO9CHSHA5pcyfc6AFu8SnEQgGbuKfHcHyUVSzrw382EBtjWHrdESZmRXJtnlt4swvah0gE8oj8qnWtZljrwr_KSN3yvS-3a6fwcZWv6uTfIukpbgDCqBQzKyR3LgydnBgIwqUjJIKCB5T1qNwlrSIik7asv2A_a-OBc:1t8BXU:p3d9WoJobiRuQV1YRMnkVODoj-t93ytfoEC8jbYMlqU','2024-11-19 04:51:36.141747');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date DEFAULT (curdate()),
  `dni` varchar(50) NOT NULL,
  `fk_position` int NOT NULL,
  `fk_salary_history` int DEFAULT NULL,
  `status` enum('ACTIVE','ON_VACATION','INACTIVE') DEFAULT 'ACTIVE',
  PRIMARY KEY (`pk_int`),
  UNIQUE KEY `dni` (`dni`),
  KEY `fk_position` (`fk_position`),
  KEY `fk_salary_history` (`fk_salary_history`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`fk_position`) REFERENCES `job_position` (`pk_int`),
  CONSTRAINT `fk_salary_history` FOREIGN KEY (`fk_salary_history`) REFERENCES `salary_history` (`pk_int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_position`
--

DROP TABLE IF EXISTS `job_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_position` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `job_position_name` varchar(100) NOT NULL,
  `description` text,
  `fk_department` int NOT NULL,
  PRIMARY KEY (`pk_int`),
  UNIQUE KEY `job_position_name` (`job_position_name`),
  KEY `fk_department` (`fk_department`),
  CONSTRAINT `job_position_ibfk_1` FOREIGN KEY (`fk_department`) REFERENCES `department` (`pk_int`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_position`
--

LOCK TABLES `job_position` WRITE;
/*!40000 ALTER TABLE `job_position` DISABLE KEYS */;
INSERT INTO `job_position` VALUES (1,'Gerente de Recursos Humanos','Supervisa la gestión del personal.',1),(2,'Analista de Recursos Humanos','Encargado de los procesos de selección y capacitación.',1),(3,'Coordinador de Nómina','Gestiona el pago de sueldos y beneficios.',1),(4,'Director Financiero','Supervisa las finanzas de la empresa.',2),(5,'Contador','Lleva los registros contables y realiza informes financieros.',2),(6,'Analista Financiero','Analiza la viabilidad de proyectos e inversiones.',2),(7,'Director de Tecnología','Define la estrategia tecnológica de la empresa.',3),(8,'Desarrollador de Software','Crea y mantiene sistemas informáticos.',3),(9,'Soporte Técnico','Brinda asistencia en problemas técnicos.',3),(10,'Gerente de Ventas','Lidera el equipo de ventas.',4),(11,'Ejecutivo de Ventas','Gestiona las relaciones con los clientes.',4),(12,'Asistente de Ventas','Apoya en la gestión administrativa del área de ventas.',4),(13,'Director de Marketing','Define las estrategias de promoción.',5),(14,'Community Manager','Gestiona las redes sociales de la empresa.',5),(15,'Analista de Marketing','Analiza las campañas publicitarias.',5),(16,'Supervisor de Producción','Supervisa los procesos de producción.',6),(17,'Operario de Producción','Se encarga de las tareas en la línea de producción.',6),(18,'Jefe de Planta','Dirige la planta de producción.',6),(19,'Gerente de Logística','Coordina la cadena de suministro.',7),(20,'Encargado de Almacén','Gestiona el inventario y las bodegas.',7),(21,'Conductor','Realiza la distribución de los productos.',7),(22,'Gerente de Atención al Cliente','Supervisa la gestión de clientes.',8),(23,'Asesor de Atención al Cliente','Atiende las consultas y quejas de los clientes.',8),(24,'Supervisor de Call Center','Lidera al equipo de atención telefónica.',8);
/*!40000 ALTER TABLE `job_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_date`
--

DROP TABLE IF EXISTS `payment_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_date` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `fk_employee` int NOT NULL,
  `fk_salary_history` int NOT NULL,
  `scheduled_date` date NOT NULL,
  `payment_date` date DEFAULT (curdate()),
  `payment_status` enum('ADVANCE','ON_TIME','DELAYED') DEFAULT 'ON_TIME',
  PRIMARY KEY (`pk_int`),
  KEY `fk_employee` (`fk_employee`),
  KEY `fk_salary_history` (`fk_salary_history`),
  CONSTRAINT `payment_date_ibfk_1` FOREIGN KEY (`fk_employee`) REFERENCES `employee` (`pk_int`),
  CONSTRAINT `payment_date_ibfk_2` FOREIGN KEY (`fk_salary_history`) REFERENCES `salary_history` (`pk_int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_date`
--

LOCK TABLES `payment_date` WRITE;
/*!40000 ALTER TABLE `payment_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrhh_department`
--

DROP TABLE IF EXISTS `rrhh_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rrhh_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `department_name` varchar(100) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `RRHH_department_department_name_ce95737c_uniq` (`department_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrhh_department`
--

LOCK TABLES `rrhh_department` WRITE;
/*!40000 ALTER TABLE `rrhh_department` DISABLE KEYS */;
/*!40000 ALTER TABLE `rrhh_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary_history`
--

DROP TABLE IF EXISTS `salary_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary_history` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `fk_employee` int NOT NULL,
  `change_date` date DEFAULT (curdate()),
  `previous_salary` decimal(10,2) DEFAULT NULL,
  `current_salary` decimal(10,2) NOT NULL,
  `change_reason` varchar(255) NOT NULL,
  PRIMARY KEY (`pk_int`),
  KEY `fk_employee` (`fk_employee`),
  CONSTRAINT `salary_history_ibfk_1` FOREIGN KEY (`fk_employee`) REFERENCES `employee` (`pk_int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary_history`
--

LOCK TABLES `salary_history` WRITE;
/*!40000 ALTER TABLE `salary_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `salary_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacation`
--

DROP TABLE IF EXISTS `vacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacation` (
  `pk_int` int NOT NULL AUTO_INCREMENT,
  `fk_employee` int NOT NULL,
  `request_date` date DEFAULT (curdate()),
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `management_status` enum('PENDING','REJECTED','APPROVED') DEFAULT 'PENDING',
  PRIMARY KEY (`pk_int`),
  KEY `fk_employee` (`fk_employee`),
  CONSTRAINT `vacation_ibfk_1` FOREIGN KEY (`fk_employee`) REFERENCES `employee` (`pk_int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'human_resources'
--

--
-- Dumping routines for database 'human_resources'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 12:40:57
