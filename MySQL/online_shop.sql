-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: online_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` set('for women','for men','for children') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'for children'),(2,'for women'),(3,'for men');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `users_id` int unsigned NOT NULL,
  `full_name` varchar(345) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('M','W','X') DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`users_id`),
  KEY `fk_Clients_users_idx` (`users_id`),
  CONSTRAINT `fk_Clients_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Carmela Wiegand','1985-03-18','X','1994-09-19 19:07:59'),(2,'Una Collins','2004-04-17','M','1981-07-24 18:44:32'),(3,'Jaleel Torp','2001-03-13','W','1996-10-28 13:25:55'),(4,'Dr. Nettie Metz DVM','2015-09-26','X','2008-10-07 16:42:03'),(5,'Lexie Hayes','1978-06-16','W','2009-05-02 19:06:57'),(6,'Mr. Elmore Bernier','1981-05-29','W','2012-06-02 05:26:05'),(7,'Chasity Quigley DDS','1990-02-25','X','2007-10-03 13:58:20'),(8,'Mr. Jordy Weber Jr.','2007-01-04','X','1995-05-10 09:23:30'),(9,'Malika Friesen','1977-01-28','M','1991-07-27 10:51:43'),(10,'Dr. Lorenza Frami','1985-03-06','M','1994-11-05 11:12:00'),(11,'Jacinthe Wintheiser','2003-01-05','X','2017-04-29 20:34:43'),(12,'Christa Fay','1991-09-21','X','2017-10-30 14:06:29'),(13,'Alan Pfannerstill','1975-01-25','W','1981-04-22 22:41:55'),(14,'Francis Cruickshank','1973-09-14','M','1991-04-27 21:07:57'),(15,'Zelma Larkin','1975-09-11','M','2001-09-04 12:47:37'),(16,'Crystal Bayer IV','1990-09-01','X','2002-04-23 10:54:17'),(17,'Maia Feeney','1987-03-13','W','1992-12-08 10:43:34'),(18,'Mrs. Myrna Russel II','1981-04-07','W','2004-02-12 08:04:56'),(19,'Harvey Rogahn III','1993-08-01','W','1999-11-27 17:16:06'),(20,'Keaton Rohan Jr.','2000-01-03','W','2004-10-15 19:04:22'),(21,'Abbigail Feil','1987-04-29','W','1987-02-28 01:40:08'),(22,'Itzel Klein','1976-11-29','M','2020-09-20 07:44:02'),(23,'Clint Yundt','1973-07-28','M','1974-06-27 00:22:12'),(24,'Corine Adams','2004-04-14','X','2002-03-12 09:53:52'),(25,'Raquel Nitzsche','1977-05-15','W','1985-10-23 18:44:28'),(26,'Cidorov ivan Robertovich','1989-12-19','W','2017-07-18 08:09:25'),(27,'Prof. Odell McGlynn','2020-03-12','W','1989-05-06 20:42:53'),(28,'Bonnie Schiller V','2010-11-07','X','2002-08-23 19:14:36'),(29,'Gabriel Shields','1978-04-28','W','2011-03-26 16:49:54'),(30,'Lennie Thiel DDS','1993-08-31','W','2015-10-23 14:33:15'),(31,'Mr. Delmer Bashirian MD','2003-06-25','X','2002-02-17 18:10:02'),(32,'Kenyatta Weissnat MD','1970-08-30','X','1987-11-02 00:06:31'),(33,'Dr. Therese Beahan','2016-12-06','X','2019-02-08 04:27:51'),(34,'Miss Vernice Block PhD','2012-05-29','W','1973-07-06 04:21:40'),(35,'Laverna Goodwin','2012-05-05','W','1981-05-04 10:08:48'),(36,'Armando Kris','1990-06-27','X','2006-06-05 13:47:17'),(37,'Petrov Ivan Petrovich','1986-09-29','M','2002-01-01 00:43:58'),(38,'Dr. Joseph Kohler I','1989-01-17','X','1996-12-25 13:17:07'),(39,'Mr. Jerrod Mante','2012-01-07','M','2015-10-23 05:08:46'),(40,'Myah Hand','1997-08-11','X','2018-08-03 19:17:44'),(41,'Prof. Ansley Koch','1979-08-23','M','1993-02-11 12:30:37'),(42,'Raleigh Christiansen','1992-12-22','M','1981-03-26 17:56:31'),(43,'Mr. Mallory Wuckert II','2000-08-28','W','2019-08-07 19:32:49'),(44,'Miss Madisyn Herman','2006-01-28','W','1988-10-27 11:43:22'),(45,'Jay Becker','1988-07-09','X','1986-05-13 16:58:29'),(46,'Urban Lueilwitz','1989-07-15','M','1972-05-27 20:57:10'),(47,'Ivanov Ivan Ivanovich','2008-05-06','X','2010-06-25 12:45:02'),(48,'Henri Sanford','2007-03-24','M','1976-07-31 17:32:14'),(49,'Moises Kuhn','2010-03-25','X','1995-04-15 21:57:16'),(50,'Antwan Satterfield','2011-03-05','W','2003-10-09 13:27:28'),(51,'Prof. Frank Schimmel MD','1992-05-04','X','2016-02-09 02:34:40'),(52,'Elinore Bernhard MD','1988-10-20','W','1972-11-06 09:33:06'),(53,'Carley Hickle','1997-03-09','X','2009-09-04 00:49:32'),(54,'Madeline Murphy','1970-06-19','M','2008-04-10 21:17:40'),(55,'Eldridge Murazik','1970-11-19','W','1993-04-19 04:50:29'),(56,'Tina Pacocha','1993-10-12','X','1989-12-16 08:36:34'),(57,'Margarete Corwin','1971-08-19','X','1979-07-06 07:21:24'),(58,'Lois Gottlieb V','2004-08-02','X','2007-10-14 16:20:09'),(59,'Casper Schumm','2004-09-19','M','2018-10-17 22:16:48'),(60,'Jessica Ortiz DVM','1974-10-18','M','1978-01-17 18:32:02'),(61,'Maxime Pfannerstill','1994-10-12','X','2020-03-30 12:07:39'),(62,'Bobby Grant V','2012-09-20','W','2019-03-31 23:18:30'),(63,'Dr. Rylan Klein V','2018-04-28','W','1970-04-22 17:53:24'),(64,'Yazmin Hills','2000-05-17','M','2009-02-03 14:31:28'),(65,'Mario Gutmann','1980-01-15','W','1999-05-01 17:47:49'),(66,'Barry Powlowski DDS','1993-02-22','X','1982-08-19 07:14:10'),(67,'Noemie Torphy','2001-07-12','M','1996-08-27 10:09:26'),(68,'Miss Amelia Nitzsche I','1984-04-10','X','2000-01-22 05:42:40'),(69,'Geraldine Langosh II','1994-12-06','M','2020-03-28 15:04:32'),(70,'Ms. Melisa Lakin DDS','1999-07-12','W','2007-11-19 10:17:52'),(71,'Miss Aracely Lesch','2002-12-03','X','1980-07-21 07:18:46'),(72,'Mr. Nathanael Trantow I','1974-10-07','M','1995-01-07 17:33:05'),(73,'Mrs. Vena Hermiston DVM','1997-03-28','W','1993-03-09 01:56:36'),(74,'Mrs. Alvena Sanford III','2013-09-12','W','1995-04-10 05:31:56'),(75,'Abel Fisher II','1984-09-05','X','2010-08-05 11:36:25'),(76,'Aditya Fadel','1989-06-24','W','1998-06-24 19:09:47'),(77,'Jennie Stiedemann IV','2012-06-25','M','2017-01-16 18:59:44'),(78,'Al Luettgen','2012-04-16','W','2000-08-19 09:32:45'),(79,'Max Hoppe','2015-06-23','X','2017-06-09 07:22:47'),(80,'Dorothea Hudson','1995-01-14','M','2003-04-13 19:00:51'),(81,'Shana Stehr II','2008-08-10','M','1975-07-03 18:59:48'),(82,'Lilla White','1994-10-22','M','1972-03-14 04:21:59'),(83,'Mr. Nicola Mayer','1997-09-27','X','1973-11-20 03:55:51'),(84,'Prof. Claudine Gibson','2002-04-27','W','1998-09-21 14:31:21'),(85,'Mr. Jerald Waters MD','2011-07-01','X','2020-07-15 13:20:50'),(86,'Miss Sunny Kihn','1983-06-22','M','1995-05-13 23:39:09'),(87,'Brent Connelly','1989-07-03','M','1995-04-27 12:31:37'),(88,'Catalina Greenfelder','1975-02-22','M','1990-07-22 20:50:26'),(89,'Miss Georgette Witting','2006-04-24','X','1976-04-02 23:53:13'),(90,'Dr. Zula Green V','1993-06-03','W','1995-03-06 12:32:58'),(91,'Alexandrea Leannon V','2006-02-05','W','1982-11-24 22:53:58'),(92,'Mrs. Emmy Waters MD','1980-02-09','M','1976-03-08 09:48:03'),(93,'Cleveland Cronin','2019-11-02','W','1978-04-07 19:27:12'),(94,'Prof. Isobel Feest','2006-09-29','W','1996-08-07 14:14:54'),(95,'Gladyce Nienow','2019-09-16','M','1989-07-26 13:54:50'),(96,'Katherine Johns','1991-11-13','M','2020-10-12 04:18:19'),(97,'Jerrold Toy','1997-06-02','M','1984-05-09 04:40:45'),(98,'Kory Ziemann','1970-10-16','M','1987-05-18 22:23:49'),(99,'Prof. Rowan McClure','2005-11-29','M','1984-06-23 10:31:19'),(100,'Dr. Terrell Lockman','1990-01-22','X','2006-12-19 19:45:02');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courier`
--

DROP TABLE IF EXISTS `courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courier` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(245) NOT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courier`
--

LOCK TABLES `courier` WRITE;
/*!40000 ALTER TABLE `courier` DISABLE KEYS */;
INSERT INTO `courier` VALUES (1,'Prof. Angeline Barton PhD',79427402264),(2,'Brian Lindgren',79405628251),(3,'Ray Spinka',79469845464),(4,'Kobe Armstrong',79869049743),(5,'Kiera Gutkowski',79053624976),(6,'Elnora Jenkins',79809303395),(7,'Euna Ritchie',79315474604),(8,'Lamar Tremblay',79633981602),(9,'Bridie Kohler',79002902290),(10,'Prof. Erin Wisozk',79896176074),(11,'Broderick Kreiger',79018675127),(12,'Ms. Ocie Legros',79858743421),(13,'Edmund Casper PhD',79004713416),(14,'Soledad Waelchi',79612387895),(15,'Celia Haley II',79435743058),(16,'Dr. Green Eichmann II',79681847277),(17,'Mr. Mike Gottlieb Jr.',79928508736),(18,'Lauren Pollich',79382655957),(19,'Ms. Beatrice Stiedemann',79558621478),(20,'Aglae McGlynn PhD',79488859703),(21,'Bailey Klein',79864300084),(22,'Zachary Hilpert',79146619789),(23,'Jude Altenwerth',79569210000),(24,'Ada Boyle',79623604816),(25,'Abe Oberbrunner',79428754797),(26,'Buster Heaney',79122338556),(27,'Zula Schinner',79363981313),(28,'Keanu Gusikowski Jr.',79365856078),(29,'Aliyah Daugherty',79785286408),(30,'Miss Lolita Wisoky',79888236411),(31,'Jalon Quigley II',79859262743),(32,'Dorothy Stokes',79885399941),(33,'America Waters',79417697693),(34,'Greta Hilll',79914855313),(35,'Jordyn Hagenes',79936309192),(36,'Jay Lubowitz',79578010396),(37,'Mrs. Vada Turcotte',79082380025),(38,'Joy Kuhic',79634394662),(39,'Ricardo Vandervort',79931226014),(40,'Makenzie Keebler II',79689003663),(41,'Jordan Torp',79375957558),(42,'Miguel Greenfelder',79331698454),(43,'Syble Gerhold',79728255280),(44,'Geraldine Koepp',79279388953),(45,'Mr. Lindsey Wisoky',79248763324),(46,'Athena Olson',79460882673),(47,'Jannie Bartell',79711919131),(48,'Myrna Gorczany',79017811054),(49,'Fermin Kunde',79376426773),(50,'Miss Natasha Hansen',79013317438),(51,'Caden Erdman',79032204287),(52,'Rowena Rippin',79311409645),(53,'Prof. Rachael Kessler DVM',79437058372),(54,'Tressa Botsford',79227105861),(55,'Mr. Okey Kutch',79232989891),(56,'Cesar Cummerata',79376650077),(57,'Austin Satterfield Sr.',79534399734),(58,'Dr. Ned Leuschke',79382389829),(59,'Ofelia Herzog',79925308685),(60,'Geo Nienow',79851256952),(61,'Shakira Wilderman',79101430601),(62,'Green Schumm',79809391736),(63,'Reta Koelpin',79388366372),(64,'Kayleigh Carroll',79112879703),(65,'Prof. Crystal Gutkowski',79238351818),(66,'Jarvis Goyette',79659650879),(67,'Dr. Timmothy Labadie',79557761089),(68,'Chelsey Cole',79175153194),(69,'Kyleigh Johnson',79612966968),(70,'Miss Eula Boyle',79727014696),(71,'Monty Gutkowski',79200801190),(72,'Genesis Muller',79773090359),(73,'Adriana Gusikowski',79885820035),(74,'Hulda Conroy',79758777506),(75,'George Bosco',79672516479),(76,'Prof. Cade Bailey',79824841219),(77,'Emmie Gerhold',79536204752),(78,'Annabel Koss Jr.',79423234004),(79,'Alayna Wisozk',79436444281),(80,'Dr. Elmo Hermann Sr.',79372380970),(81,'Ericka McClure',79808607104),(82,'Dr. Caterina Purdy V',79020315488),(83,'Paris Schulist',79846574950),(84,'Molly Dach',79585833242),(85,'Roxanne Doyle',79665817032),(86,'Rickey Orn',79857045573),(87,'Jonas Toy III',79570969278),(88,'Kathryn Willms',79871411663),(89,'Mathilde Buckridge',79516630022),(90,'Mr. Jerald Beer',79298246873),(91,'Stuart Kreiger',79901321770),(92,'Alta Wiegand',79111168508),(93,'Mackenzie Hansen',79649322329),(94,'Prof. Rebeca Aufderhar Sr.',79015836520),(95,'Mrs. Esperanza Sawayn Sr.',79929356486),(96,'Geovany O\'Keefe III',79418871643),(97,'Kayla Bergnaum',79540062481),(98,'Kristina Nolan',79823615278),(99,'Lauren Pouros',79933186083),(100,'Dr. Uriel Borer I',79667857062);
/*!40000 ALTER TABLE `courier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int unsigned NOT NULL,
  `courier_id` int unsigned NOT NULL,
  `point_id` int NOT NULL,
  `price_delivery` decimal(10,0) NOT NULL,
  `time_delivery` time NOT NULL,
  `method_delivery` enum('pickup','courier') DEFAULT NULL COMMENT 'pickup - самовывоз\ncourier - курьер',
  PRIMARY KEY (`id`),
  KEY `fk_delivery_point_delivery1_idx` (`point_id`),
  KEY `fk_delivery_orders1_idx` (`orders_id`),
  KEY `fk_delivery_courier1_idx` (`courier_id`),
  CONSTRAINT `fk_delivery_courier1` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`id`),
  CONSTRAINT `fk_delivery_orders1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_delivery_point_delivery1` FOREIGN KEY (`point_id`) REFERENCES `point_delivery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,100,51,96,4095,'12:00:00','courier'),(2,19,21,2,4662,'12:00:00','pickup'),(3,25,35,24,5908,'12:00:00','pickup'),(4,8,93,38,6761,'12:00:00','courier'),(5,70,88,97,886,'12:00:00','courier'),(6,95,70,84,1896,'12:00:00','pickup'),(7,88,58,55,2153,'12:00:00','courier'),(8,32,74,98,1452,'12:00:00','pickup'),(9,89,95,3,1767,'12:00:00','courier'),(10,61,76,30,1131,'12:00:00','courier'),(11,40,76,80,130,'12:00:00','pickup'),(12,36,94,1,198,'12:00:00','courier'),(13,38,19,35,3879,'12:00:00','courier'),(14,61,26,28,5355,'12:00:00','courier'),(15,99,95,15,2081,'12:00:00','courier'),(16,96,89,84,2082,'12:00:00','pickup'),(17,79,77,42,972,'12:00:00','courier'),(18,34,8,16,1175,'12:00:00','pickup'),(19,31,96,10,900,'12:00:00','courier'),(20,33,57,86,1843,'12:00:00','courier'),(21,63,97,61,4449,'12:00:00','pickup'),(22,43,33,54,6142,'12:00:00','courier'),(23,44,70,72,6418,'12:00:00','courier'),(24,78,30,98,3861,'12:00:00','courier'),(25,6,29,93,6084,'12:00:00','courier'),(26,20,24,82,932,'12:00:00','courier'),(27,4,2,58,2638,'12:00:00','courier'),(28,45,35,66,4437,'12:00:00','courier'),(29,61,66,62,2604,'12:00:00','courier'),(30,70,99,19,289,'12:00:00','pickup'),(31,55,61,15,2792,'12:00:00','pickup'),(32,16,4,48,491,'12:00:00','pickup'),(33,69,47,17,5717,'12:00:00','courier'),(34,41,25,47,5719,'12:00:00','pickup'),(35,39,30,75,4052,'12:00:00','courier'),(36,31,50,98,874,'12:00:00','pickup'),(37,12,53,99,5242,'12:00:00','pickup'),(38,70,98,34,3012,'12:00:00','courier'),(39,35,58,100,1425,'12:00:00','pickup'),(40,97,28,98,3489,'12:00:00','courier'),(41,15,82,59,5825,'12:00:00','pickup'),(42,30,98,63,4569,'12:00:00','pickup'),(43,77,66,10,2663,'12:00:00','pickup'),(44,93,7,34,3478,'12:00:00','pickup'),(45,39,46,64,6935,'12:00:00','courier'),(46,13,76,14,3149,'12:00:00','courier'),(47,11,87,66,579,'12:00:00','courier'),(48,10,57,63,2115,'12:00:00','pickup'),(49,44,91,21,6654,'12:00:00','pickup'),(50,43,87,48,5037,'12:00:00','pickup'),(51,40,2,30,6359,'12:00:00','pickup'),(52,99,31,27,1478,'12:00:00','courier'),(53,61,8,93,6233,'12:00:00','pickup'),(54,70,1,100,394,'12:00:00','pickup'),(55,4,40,45,2980,'12:00:00','pickup'),(56,68,53,20,3653,'12:00:00','pickup'),(57,81,63,7,5486,'12:00:00','pickup'),(58,47,72,63,4954,'12:00:00','pickup'),(59,10,15,54,3451,'12:00:00','courier'),(60,30,57,41,441,'12:00:00','pickup'),(61,78,97,42,4540,'12:00:00','pickup'),(62,7,96,73,4957,'12:00:00','courier'),(63,34,57,81,3122,'12:00:00','courier'),(64,26,26,81,776,'12:00:00','pickup'),(65,25,30,20,181,'12:00:00','courier'),(66,70,98,72,3170,'12:00:00','courier'),(67,90,79,35,3426,'12:00:00','pickup'),(68,96,25,6,6789,'12:00:00','pickup'),(69,59,35,21,4329,'12:00:00','pickup'),(70,12,65,77,6393,'12:00:00','pickup'),(71,53,42,74,5567,'12:00:00','pickup'),(72,94,49,70,4659,'12:00:00','courier'),(73,67,82,26,2617,'12:00:00','pickup'),(74,47,8,51,417,'12:00:00','courier'),(75,28,32,81,3575,'12:00:00','pickup'),(76,48,2,78,3997,'12:00:00','courier'),(77,19,91,57,6647,'12:00:00','courier'),(78,53,86,81,1424,'12:00:00','pickup'),(79,59,45,15,855,'12:00:00','courier'),(80,79,57,80,5980,'12:00:00','courier'),(81,56,9,21,3457,'12:00:00','courier'),(82,30,3,69,329,'12:00:00','courier'),(83,99,69,51,2847,'12:00:00','pickup'),(84,24,16,58,4851,'12:00:00','pickup'),(85,75,44,89,6507,'12:00:00','courier'),(86,55,91,90,100,'12:00:00','pickup'),(87,33,9,81,321,'12:00:00','courier'),(88,89,62,66,6827,'12:00:00','courier'),(89,70,21,11,3725,'12:00:00','pickup'),(90,85,100,67,4815,'12:00:00','pickup'),(91,64,56,75,2192,'12:00:00','pickup'),(92,85,85,77,4756,'12:00:00','pickup'),(93,53,83,46,3787,'12:00:00','pickup'),(94,3,7,62,1220,'12:00:00','pickup'),(95,61,81,5,5530,'12:00:00','pickup'),(96,50,36,95,5013,'12:00:00','pickup'),(97,40,69,4,1627,'12:00:00','pickup'),(98,20,58,66,6076,'12:00:00','pickup'),(99,85,27,86,6703,'12:00:00','courier'),(100,95,12,85,2636,'12:00:00','courier');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `high_rating_of_products`
--

DROP TABLE IF EXISTS `high_rating_of_products`;
/*!50001 DROP VIEW IF EXISTS `high_rating_of_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_rating_of_products` AS SELECT 
 1 AS `products_id`,
 1 AS `name`,
 1 AS `rating_product`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_clients_orders`
--

DROP TABLE IF EXISTS `info_clients_orders`;
/*!50001 DROP VIEW IF EXISTS `info_clients_orders`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_clients_orders` AS SELECT 
 1 AS `id`,
 1 AS `full_name`,
 1 AS `phone`,
 1 AS `orders_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `orders_id` int unsigned NOT NULL,
  `products_id` int unsigned NOT NULL,
  `count` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `total_price` decimal(10,0) GENERATED ALWAYS AS ((`count` * `price`)) VIRTUAL,
  KEY `fk_order_products_orders1_idx` (`orders_id`),
  KEY `fk_order_products_products1_idx` (`products_id`),
  CONSTRAINT `fk_order_products_orders1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk_order_products_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` (`orders_id`, `products_id`, `count`, `price`) VALUES (21,6,279,7),(98,7,247,661263),(25,5,96,8768685),(42,1,365,2506),(16,6,402,10),(85,2,242,6874507),(98,3,5,10),(95,4,92,4565846),(98,7,41,247069),(55,1,86,10),(64,7,324,4),(8,2,354,10),(87,5,185,6821617),(49,2,286,309226),(85,2,242,6874507),(98,3,5,10),(95,4,92,4565846),(98,7,41,247069),(55,1,86,10),(64,7,324,4),(8,2,354,10),(87,5,185,6821617),(49,2,286,309226),(14,3,416,6207679),(99,3,173,61934),(14,7,258,7329),(22,3,32,4),(59,5,371,10),(41,6,496,10),(39,2,86,38325),(94,3,51,4873),(67,7,419,7352231),(89,5,44,16),(83,3,136,10),(70,4,325,3564),(35,6,389,3040),(62,2,159,34),(44,1,257,7799),(37,5,500,2778857),(52,3,277,283),(92,5,415,228),(31,1,19,33065),(2,7,380,1059528),(76,3,332,1815399),(64,1,338,1865835),(68,4,344,158882),(50,3,16,7),(45,3,393,3),(98,2,244,626439),(81,5,73,1867014),(75,2,346,3),(44,3,168,30),(36,7,389,10),(46,6,426,787941),(45,7,423,10),(7,3,326,76865),(62,3,179,10999),(49,5,375,263),(26,2,43,2148),(6,7,79,52266283),(38,6,350,65),(47,7,208,5),(7,7,173,10),(25,1,321,35),(89,1,435,6777138),(71,7,319,10795),(89,2,277,649),(29,4,172,7464),(2,6,152,189962),(27,4,26,10),(72,3,62,3977614),(82,3,224,6),(70,3,89,10),(97,7,426,801),(54,1,298,482536),(86,7,137,1825),(74,3,68,1512433),(79,6,195,10),(25,1,349,44925),(85,4,259,3),(9,4,347,706),(37,2,127,125),(70,5,336,6135),(83,5,486,4),(41,1,270,481),(17,1,267,122),(43,7,475,48656),(46,1,465,4245946),(29,3,405,256940),(8,6,150,746),(43,7,161,164588),(74,2,209,10),(26,4,147,43),(97,4,98,19),(56,6,206,232),(93,5,335,347),(37,3,484,11322),(92,1,52,8419),(95,6,181,138068),(77,3,384,170),(83,7,162,10),(48,2,145,4441),(92,7,495,88643),(37,2,434,3943),(34,4,294,2920941),(3,6,435,887001),(37,6,467,317281),(93,5,315,1299),(29,7,231,342511);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `clients_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL COMMENT '0- не доставлен\n1 - доставлен',
  `method_payment` enum('cash','bank card') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_clients1_idx` (`clients_id`),
  CONSTRAINT `fk_orders_clients1` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,63,'1985-06-01 07:48:07',1,'bank card'),(2,79,'2006-01-10 20:57:39',1,'cash'),(3,22,'1989-12-11 15:59:03',0,'bank card'),(4,71,'1988-12-21 19:08:44',1,'bank card'),(5,57,'2002-05-14 18:25:09',1,'cash'),(6,72,'1985-10-07 19:15:55',1,'bank card'),(7,10,'1971-02-09 20:01:54',0,'cash'),(8,10,'1999-07-06 09:49:08',1,'cash'),(9,70,'1995-12-23 14:29:21',1,'cash'),(10,53,'2001-01-21 19:24:34',1,'cash'),(11,32,'1988-04-26 00:24:15',1,'cash'),(12,13,'2001-08-19 18:42:57',0,'bank card'),(13,9,'1981-12-24 16:31:41',0,'cash'),(14,47,'2018-01-02 19:48:56',1,'bank card'),(15,33,'2004-06-24 15:11:45',0,'bank card'),(16,47,'2018-01-02 03:13:07',0,'cash'),(17,43,'1980-01-12 19:33:43',1,'bank card'),(18,19,'1981-04-26 15:59:04',0,'cash'),(19,69,'1986-08-23 05:17:02',0,'cash'),(20,26,'1977-03-21 00:54:11',0,'cash'),(21,16,'2019-08-15 02:39:21',1,'bank card'),(22,84,'2005-01-30 04:05:49',1,'bank card'),(23,88,'2011-07-21 01:52:48',1,'cash'),(24,88,'1988-06-20 08:45:21',0,'cash'),(25,24,'2002-12-28 14:58:30',1,'bank card'),(26,18,'1988-12-04 18:17:58',0,'bank card'),(27,70,'2001-02-16 22:10:33',1,'cash'),(28,83,'2006-11-06 23:01:51',0,'bank card'),(29,28,'1971-10-15 23:47:00',0,'bank card'),(30,37,'2020-07-07 08:25:28',0,'cash'),(31,81,'2020-06-03 14:38:19',0,'bank card'),(32,91,'1981-04-25 03:12:06',1,'cash'),(33,60,'2020-10-28 04:29:35',1,'cash'),(34,2,'1990-03-10 22:59:52',1,'cash'),(35,61,'2020-02-02 19:23:15',1,'cash'),(36,17,'1996-10-17 07:48:37',0,'bank card'),(37,74,'1975-04-26 22:24:40',0,'cash'),(38,70,'2012-07-21 02:50:01',1,'cash'),(39,27,'1993-01-17 06:22:05',0,'bank card'),(40,44,'1975-06-22 13:49:58',0,'bank card'),(41,23,'2020-05-13 03:35:28',0,'bank card'),(42,58,'1982-06-03 06:56:15',0,'cash'),(43,57,'1980-09-19 05:26:51',1,'cash'),(44,31,'2021-01-01 00:25:56',1,'bank card'),(45,5,'2001-02-14 07:34:53',1,'bank card'),(46,89,'2006-11-22 07:17:49',0,'cash'),(47,78,'1982-06-17 13:54:26',1,'cash'),(48,47,'2018-01-01 20:56:14',0,'bank card'),(49,8,'2020-09-11 08:04:55',0,'cash'),(50,46,'1979-02-19 19:53:26',1,'cash'),(51,72,'2008-12-05 08:32:52',1,'bank card'),(52,24,'2019-11-13 03:21:29',0,'bank card'),(53,29,'1979-06-29 13:14:50',0,'cash'),(54,60,'2001-08-16 11:24:45',1,'cash'),(55,11,'1975-01-24 00:39:15',0,'cash'),(56,52,'1971-11-13 08:35:52',0,'cash'),(57,78,'1978-12-28 10:12:06',1,'bank card'),(58,81,'2000-04-17 02:22:58',1,'cash'),(59,35,'2012-06-09 10:28:27',0,'bank card'),(60,5,'1995-01-24 18:55:26',0,'cash'),(61,62,'2019-11-25 17:56:45',1,'bank card'),(62,16,'1980-06-21 04:16:20',1,'cash'),(63,95,'1980-09-13 01:08:25',0,'cash'),(64,22,'2000-05-22 08:17:31',1,'cash'),(65,18,'2006-10-25 07:21:23',1,'cash'),(66,56,'1979-05-15 18:37:18',1,'cash'),(67,39,'2019-07-21 21:42:43',1,'bank card'),(68,91,'2002-03-18 13:09:27',1,'cash'),(69,25,'1994-12-16 18:50:21',1,'cash'),(70,65,'1997-04-09 11:25:56',0,'bank card'),(71,34,'1987-11-22 10:56:32',0,'bank card'),(72,47,'2018-01-01 14:18:43',0,'bank card'),(73,23,'1984-03-09 17:50:08',1,'cash'),(74,91,'1980-12-30 01:51:16',0,'cash'),(75,78,'1981-03-16 04:22:30',0,'bank card'),(76,28,'1974-07-28 03:30:05',1,'bank card'),(77,79,'1977-04-03 15:28:10',0,'bank card'),(78,55,'1995-12-22 18:25:44',1,'cash'),(79,74,'1989-09-25 19:23:43',0,'cash'),(80,86,'2005-05-01 21:16:54',0,'cash'),(81,100,'1997-05-14 13:01:01',1,'cash'),(82,46,'2019-10-31 04:06:59',1,'cash'),(83,9,'1997-02-07 12:43:55',1,'bank card'),(84,29,'1992-08-06 22:51:19',1,'bank card'),(85,5,'2001-09-17 13:10:54',1,'cash'),(86,20,'2019-09-19 06:13:44',0,'bank card'),(87,80,'2005-01-09 22:08:08',0,'cash'),(88,82,'1997-01-13 09:22:58',1,'bank card'),(89,1,'1983-09-11 07:34:26',1,'cash'),(90,15,'2007-08-31 09:54:01',1,'cash'),(91,87,'1970-11-11 08:08:15',1,'cash'),(92,62,'2020-11-05 18:49:53',0,'cash'),(93,30,'1981-03-06 00:50:17',1,'bank card'),(94,82,'2012-01-27 04:09:14',1,'bank card'),(95,84,'2010-02-16 20:46:36',0,'bank card'),(96,47,'2018-01-03 02:15:08',0,'cash'),(97,37,'2018-01-01 10:46:26',1,'cash'),(98,22,'1985-03-09 04:59:24',1,'cash'),(99,38,'1978-12-31 12:23:06',0,'bank card'),(100,62,'1999-08-02 05:56:01',0,'bank card');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photo` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `clients_id` int unsigned DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `size` bigint NOT NULL DEFAULT '0',
  `blob` blob,
  `metadata` json DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_photo_clients1_idx` (`clients_id`),
  CONSTRAINT `fk_photo_clients1` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,46,'uris',202555,NULL,NULL,NULL),(2,57,'rtx',64,NULL,NULL,NULL),(3,17,'sema',9859,NULL,NULL,NULL),(4,11,'uvz',2272,NULL,NULL,NULL),(5,21,'gca',16,NULL,NULL,NULL),(6,31,'ez3',122410,NULL,NULL,NULL),(7,78,'ots',701541415,NULL,NULL,NULL),(8,42,'dna',6738,NULL,NULL,NULL),(9,50,'iso',48119672,NULL,NULL,NULL),(10,27,'svd',1315,NULL,NULL,NULL),(11,61,'fbs',65,NULL,NULL,NULL),(12,99,'pgn',9127,NULL,NULL,NULL),(13,99,'xif',698032516,NULL,NULL,NULL),(14,32,'dot',45045012,NULL,NULL,NULL),(15,64,'susp',0,NULL,NULL,NULL),(16,15,'ustar',5,NULL,NULL,NULL),(17,53,'3ds',539521217,NULL,NULL,NULL),(18,14,'kpxx',238398919,NULL,NULL,NULL),(19,72,'ief',0,NULL,NULL,NULL),(20,28,'thmx',456526095,NULL,NULL,NULL),(21,97,'h264',845506251,NULL,NULL,NULL),(22,51,'texi',165467,NULL,NULL,NULL),(23,21,'java',980062751,NULL,NULL,NULL),(24,82,'std',82370,NULL,NULL,NULL),(25,33,'vtu',412,NULL,NULL,NULL),(26,82,'sgm',0,NULL,NULL,NULL),(27,80,'rdf',0,NULL,NULL,NULL),(28,81,'nfo',585093,NULL,NULL,NULL),(29,100,'btif',798755,NULL,NULL,NULL),(30,98,'asf',6,NULL,NULL,NULL),(31,8,'xpl',44212115,NULL,NULL,NULL),(32,46,'mus',907,NULL,NULL,NULL),(33,54,'ptid',8,NULL,NULL,NULL),(34,24,'dot',135,NULL,NULL,NULL),(35,56,'ksp',3265581,NULL,NULL,NULL),(36,75,'sis',1722,NULL,NULL,NULL),(37,55,'mpy',13,NULL,NULL,NULL),(38,34,'odp',5127,NULL,NULL,NULL),(39,17,'xbap',382227,NULL,NULL,NULL),(40,5,'ivp',403508,NULL,NULL,NULL),(41,60,'sis',50,NULL,NULL,NULL),(42,77,'g3',6642,NULL,NULL,NULL),(43,4,'dgc',8619401,NULL,NULL,NULL),(44,58,'wtb',805,NULL,NULL,NULL),(45,9,'vob',0,NULL,NULL,NULL),(46,67,'wmd',582,NULL,NULL,NULL),(47,73,'ecma',32516,NULL,NULL,NULL),(48,61,'wmz',8,NULL,NULL,NULL),(49,80,'svg',4,NULL,NULL,NULL),(50,45,'ppm',3836,NULL,NULL,NULL),(51,88,'mka',0,NULL,NULL,NULL),(52,76,'mpe',62263,NULL,NULL,NULL),(53,96,'spl',8656181,NULL,NULL,NULL),(54,9,'uvp',29081,NULL,NULL,NULL),(55,58,'wma',244422,NULL,NULL,NULL),(56,28,'ogx',38,NULL,NULL,NULL),(57,90,'lha',38,NULL,NULL,NULL),(58,38,'oti',4025,NULL,NULL,NULL),(59,9,'sgi',38291,NULL,NULL,NULL),(60,90,'sxg',501,NULL,NULL,NULL),(61,35,'movie',6064,NULL,NULL,NULL),(62,16,'odt',922,NULL,NULL,NULL),(63,35,'htm',857574316,NULL,NULL,NULL),(64,89,'xslt',45768,NULL,NULL,NULL),(65,40,'pgm',851437769,NULL,NULL,NULL),(66,91,'oxt',608741434,NULL,NULL,NULL),(67,64,'pct',765136736,NULL,NULL,NULL),(68,95,'sfd-hdstx',5,NULL,NULL,NULL),(69,24,'xsm',37589,NULL,NULL,NULL),(70,80,'uvvf',44,NULL,NULL,NULL),(71,100,'wrl',934467,NULL,NULL,NULL),(72,83,'tfm',23170,NULL,NULL,NULL),(73,56,'vxml',0,NULL,NULL,NULL),(74,3,'xvml',27539584,NULL,NULL,NULL),(75,41,'srt',202195945,NULL,NULL,NULL),(76,65,'caf',3981977,NULL,NULL,NULL),(77,69,'wav',350274411,NULL,NULL,NULL),(78,14,'vcs',296791678,NULL,NULL,NULL),(79,25,'tsv',56,NULL,NULL,NULL),(80,49,'mpy',9459,NULL,NULL,NULL),(81,58,'ppt',498112388,NULL,NULL,NULL),(82,12,'arc',0,NULL,NULL,NULL),(83,25,'webm',9,NULL,NULL,NULL),(84,54,'omdoc',15,NULL,NULL,NULL),(85,20,'fst',603752083,NULL,NULL,NULL),(86,82,'etx',54356,NULL,NULL,NULL),(87,82,'ifb',24,NULL,NULL,NULL),(88,10,'uu',0,NULL,NULL,NULL),(89,19,'omdoc',637700064,NULL,NULL,NULL),(90,90,'xo',77938701,NULL,NULL,NULL),(91,99,'blb',99,NULL,NULL,NULL),(92,54,'tex',311,NULL,NULL,NULL),(93,6,'pps',6172,NULL,NULL,NULL),(94,34,'obj',50650765,NULL,NULL,NULL),(95,43,'pfb',89681744,NULL,NULL,NULL),(96,45,'mie',68,NULL,NULL,NULL),(97,24,'spl',7,NULL,NULL,NULL),(98,6,'123',762,NULL,NULL,NULL),(99,40,'xdp',5912,NULL,NULL,NULL),(100,48,'sse',85952,NULL,NULL,NULL);
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `point_delivery`
--

DROP TABLE IF EXISTS `point_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `point_delivery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(145) NOT NULL,
  `adress` varchar(245) NOT NULL,
  `phone` bigint DEFAULT NULL,
  `working_hours` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `point_delivery`
--

LOCK TABLES `point_delivery` WRITE;
/*!40000 ALTER TABLE `point_delivery` DISABLE KEYS */;
INSERT INTO `point_delivery` VALUES (1,'iste','416 Nitzsche Circles Suite 721\nO\'Connellchester, WI 34885',79263021964,'8:00-20:00'),(2,'hic','028 Ona Causeway Apt. 276\nHoppeville, KY 75612',79572152344,'8:00-20:00'),(3,'voluptates','1527 Schroeder Meadow Suite 052\nMoseston, VA 70258',79865881036,'8:00-20:00'),(4,'temporibus','5968 Blair Junction Apt. 553\nRowebury, OH 20287-8494',79031829215,'8:00-20:00'),(5,'deleniti','0722 Douglas Tunnel\nSchmelermouth, MA 45514-3326',79292146138,'8:00-20:00'),(6,'aut','97712 Reichert Expressway\nMcGlynnside, WI 25294',79359559140,'8:00-20:00'),(7,'ad','88283 Goldner Passage Suite 116\nDeltaville, CT 78490',79374302578,'8:00-20:00'),(8,'quam','3410 Heaney Stravenue\nDuncanville, GA 44584',79622626062,'8:00-20:00'),(9,'explicabo','68912 Gottlieb Drive Apt. 531\nPort Chance, AZ 59441',79557752480,'8:00-20:00'),(10,'quibusdam','428 Hudson Wells\nNew Jettie, OH 01610',79139521766,'8:00-20:00'),(11,'est','798 Weimann Overpass Apt. 721\nNew Demarcotown, MD 96940',79412402732,'8:00-20:00'),(12,'enim','75220 Delilah Ford\nNorth Corneliusshire, ME 00380',79420227037,'8:00-20:00'),(13,'consequatur','97304 Herta Route Apt. 082\nSatterfieldfurt, ME 31833-6720',79237486526,'8:00-20:00'),(14,'in','17155 Tremblay Valleys Suite 272\nWest Piperport, OR 69903',79547035857,'8:00-20:00'),(15,'tempore','3213 Hessel Lake\nSouth Roslynburgh, MI 60637-1580',79466273102,'8:00-20:00'),(16,'ea','737 Nicole Court Apt. 472\nFayshire, GA 64411-9194',79005375871,'8:00-20:00'),(17,'ab','048 Sporer Courts Apt. 796\nJeraldtown, MO 96920',79400351263,'8:00-20:00'),(18,'nobis','80003 Williamson Vista\nWiegandview, NE 47236-5819',79766890748,'8:00-20:00'),(19,'enim','785 Pierre Field\nPort Paytonmouth, ND 27421',79348803815,'8:00-20:00'),(20,'deleniti','7559 Breitenberg Crescent\nO\'Konside, MO 90355-6936',79695437783,'8:00-20:00'),(21,'dolor','6465 Miller Stream Suite 611\nNew Arvelport, WV 20340-9980',79161927580,'8:00-20:00'),(22,'rerum','468 Alfred Crossroad Apt. 321\nPagacfurt, HI 27720',79528962240,'8:00-20:00'),(23,'rerum','513 Monserrat Well Apt. 323\nMcClurebury, ME 75825-6426',79090859550,'8:00-20:00'),(24,'nulla','9169 Winifred Meadow\nPowlowskiside, AL 07925',79763997084,'8:00-20:00'),(25,'impedit','4894 Evan Lodge\nWardstad, GA 94685-5415',79477309126,'8:00-20:00'),(26,'dolore','476 Fritsch Light Apt. 132\nDaniellaport, VT 05976',79408264697,'8:00-20:00'),(27,'incidunt','808 Macejkovic Spur\nAndersonport, DE 91885',79091092180,'8:00-20:00'),(28,'sit','790 Jamil Estates Suite 085\nEast Russellport, NJ 37402',79487092571,'8:00-20:00'),(29,'blanditiis','37518 Adrianna Haven\nJonestown, MS 03093-6710',79501283848,'8:00-20:00'),(30,'omnis','770 Neha View\nNew Alfonzo, NY 86180-8953',79744982137,'8:00-20:00'),(31,'praesentium','00885 Herzog Plain Suite 170\nWest Chadrickton, PA 33668-6971',79922444125,'8:00-20:00'),(32,'ducimus','7850 Stoltenberg Trace Suite 897\nNew Bernieceborough, AL 40087-2582',79866153955,'8:00-20:00'),(33,'ullam','72360 Viva Wells\nVictoriaborough, HI 17992',79013754542,'8:00-20:00'),(34,'sint','258 Hoeger Knoll Suite 839\nSouth Floville, CT 82138-2621',79219513463,'8:00-20:00'),(35,'qui','38012 Funk Harbors Suite 872\nSimeonborough, NE 19533-1215',79868059828,'8:00-20:00'),(36,'animi','03402 Esta Motorway Suite 733\nNorth Heidiville, MT 93317-4188',79003168806,'8:00-20:00'),(37,'similique','453 Sigurd Avenue\nRichieport, UT 93102-1111',79709547473,'8:00-20:00'),(38,'inventore','134 Doyle Forest Apt. 630\nPort Alisonhaven, KY 40057-0667',79742058251,'8:00-20:00'),(39,'cupiditate','59804 Cronin Springs\nJohnsonburgh, AK 90896-9772',79965208909,'8:00-20:00'),(40,'dolores','510 Flo Spurs Suite 398\nVirginiemouth, OK 32897-7522',79795037057,'8:00-20:00'),(41,'fugit','47063 Block Street Suite 280\nSouth Nameshire, SC 11760-0302',79372518743,'8:00-20:00'),(42,'vero','677 Berge Keys\nEast Revaport, MT 81445-5109',79253896720,'8:00-20:00'),(43,'cupiditate','852 Eichmann Turnpike Suite 080\nLake Jaunita, NJ 16189-1794',79570885311,'8:00-20:00'),(44,'et','375 Gottlieb Pine Apt. 206\nMafaldastad, NY 66918-6274',79143444148,'8:00-20:00'),(45,'eos','3160 Jayme Shore Apt. 995\nNew Stefanieburgh, NC 58523',79054602472,'8:00-20:00'),(46,'incidunt','812 Rath Hollow\nSouth Morton, WV 00733-9312',79691256191,'8:00-20:00'),(47,'autem','011 Stiedemann Divide\nLake Nashmouth, OK 04175-4039',79993412401,'8:00-20:00'),(48,'modi','8255 Huel Cape Suite 499\nReingerburgh, UT 01408',79411791906,'8:00-20:00'),(49,'soluta','510 Rau Crescent\nLake Jeremyhaven, VT 56233',79766060651,'8:00-20:00'),(50,'exercitationem','1515 Klocko Vista Apt. 619\nWest Arielleborough, NH 96325',79628885395,'8:00-20:00'),(51,'dignissimos','9252 Dicki Highway Suite 217\nElenorview, ID 45434-1103',79789351469,'10:00-18:00'),(52,'pariatur','933 Dana Turnpike\nLindgrenburgh, ND 12593',79119318440,'10:00-18:00'),(53,'et','99146 Raina Hollow\nKyleefurt, ID 75456',79122065612,'10:00-18:00'),(54,'aperiam','561 Haag Spur\nAlexischester, MN 50159-2520',79695308454,'10:00-18:00'),(55,'in','0042 Crystal Squares\nNew Jordane, DE 09848-9213',79096815352,'10:00-18:00'),(56,'et','49786 Cruickshank Ville\nEmoryburgh, WI 67686-4988',79258253270,'10:00-18:00'),(57,'eaque','73500 Kertzmann Key\nAlyciastad, WV 41841-2488',79481601691,'10:00-18:00'),(58,'quia','57889 Rempel Fords Suite 802\nSouth Rafael, WA 40264-1011',79358230768,'10:00-18:00'),(59,'veritatis','01237 Nadia Way Apt. 791\nFriesenhaven, OK 78322-6668',79901050106,'10:00-18:00'),(60,'debitis','4977 Destin Passage Suite 541\nNorth Carmen, RI 78489-4422',79287453215,'10:00-18:00'),(61,'id','75956 Simonis Plaza Apt. 817\nBruenview, UT 41334',79022152905,'10:00-18:00'),(62,'ea','26962 Terry Shores Suite 245\nLake Helen, VT 01286',79362487016,'10:00-18:00'),(63,'aliquam','1357 Bechtelar Parks\nWest Aricton, OK 67179',79797604278,'10:00-18:00'),(64,'recusandae','95284 Macejkovic Trace Apt. 431\nNorth Mikel, IA 77786',79366961285,'10:00-18:00'),(65,'inventore','457 D\'Amore Parkways\nLarkinfurt, TX 48743-3557',79804787115,'10:00-18:00'),(66,'voluptatum','981 Schuppe Isle Apt. 542\nHermistonchester, VA 76848-1728',79846893654,'10:00-18:00'),(67,'sunt','54519 Mayer Ramp Suite 624\nNorth Cecil, WY 78034',79358464142,'10:00-18:00'),(68,'non','684 Tad Ways\nPort Russelltown, CT 45772',79498516420,'10:00-18:00'),(69,'debitis','0826 Roberta Alley\nEast Vivianneberg, LA 99469-6285',79569446756,'10:00-18:00'),(70,'nulla','7028 Pattie Bridge\nNew Beaulah, NH 49915-2645',79367268684,'10:00-18:00'),(71,'in','6780 Berge Bypass\nNew Gennaroside, DE 41961-0312',79702711393,'10:00-18:00'),(72,'eius','0919 Ellen Circle\nDejonburgh, AL 30894',79239249349,'10:00-18:00'),(73,'minus','487 Hoppe Orchard Apt. 747\nGulgowskifurt, MA 78818',79485640552,'10:00-18:00'),(74,'quam','7093 Crist Stravenue Suite 239\nLake Amaraport, RI 62499',79930894361,'10:00-18:00'),(75,'eum','324 Bianka Expressway Apt. 116\nLake Oranstad, WY 85097-0274',79142778142,'10:00-18:00'),(76,'id','237 Crist Turnpike\nPort Shane, RI 95776-5010',79485398702,'10:00-18:00'),(77,'illo','646 King Key\nLake Josephton, NM 03167',79242630565,'10:00-18:00'),(78,'maxime','383 Sydni Loaf\nNew Paoloview, DE 40378-2165',79782642180,'10:00-18:00'),(79,'error','01464 Jeanne Ramp Apt. 709\nHalmouth, IA 32296-2956',79697157585,'10:00-18:00'),(80,'itaque','989 Hunter Neck Suite 150\nNew Lomaberg, ME 18578-1545',79206768222,'10:00-18:00'),(81,'veritatis','6646 Jillian Ford Suite 544\nEast Daniella, DC 51312-6639',79439151923,'10:00-18:00'),(82,'unde','678 Walter Springs\nMarciastad, OH 68424-3920',79823905646,'10:00-18:00'),(83,'enim','88638 Zetta Knolls Suite 695\nEast Rosella, MD 86547-0171',79705579086,'10:00-18:00'),(84,'doloribus','029 Christiansen Falls\nKeenanton, IA 50175-3414',79913257100,'10:00-18:00'),(85,'iste','168 Golden Pine Apt. 014\nScottyland, KS 57487',79394954542,'10:00-18:00'),(86,'quia','99315 Justice Corners Apt. 877\nGabriellamouth, MA 58164-2271',79376908883,'10:00-18:00'),(87,'illo','494 Wilfred Crossroad Apt. 468\nKodystad, KY 14919-8072',79728392971,'10:00-18:00'),(88,'odit','2860 Laura Square\nLake Dameon, UT 19302-7580',79933616334,'10:00-18:00'),(89,'repudiandae','3047 Zemlak Square Apt. 479\nPort Alejandrinview, CT 42941-9526',79105599469,'10:00-18:00'),(90,'reprehenderit','2793 Denesik Dale\nMadgeborough, UT 89487',79177103364,'10:00-18:00'),(91,'animi','4385 Mose Orchard Suite 798\nSusanshire, KS 27878',79557490673,'10:00-18:00'),(92,'consectetur','8184 Maximus Keys Apt. 779\nSouth Ashleigh, TX 19931-2795',79466298692,'10:00-18:00'),(93,'aut','61686 Greenholt Dam Suite 590\nNew Maryse, PA 82741-9324',79328549221,'10:00-18:00'),(94,'quas','666 Pauline Isle Apt. 227\nWildermanview, OR 41718',79629552486,'10:00-18:00'),(95,'vel','5587 Lavinia Lake\nSouth Ashaside, UT 23146-4545',79407763558,'10:00-18:00'),(96,'est','9002 Spinka Courts Apt. 709\nPort Dedric, DE 96910',79687145699,'10:00-18:00'),(97,'recusandae','01856 Schiller Oval\nLake Kaitlinfurt, NJ 77004',79085020657,'10:00-18:00'),(98,'et','011 Marilie Fall\nMayrahaven, SC 86579-3380',79314044430,'10:00-18:00'),(99,'saepe','8875 Tillman Fields\nKarolannmouth, WI 83635',79999673318,'10:00-18:00'),(100,'harum','363 Fisher Manor Suite 068\nLake Rahulberg, WV 30329',79368570854,'10:00-18:00');
/*!40000 ALTER TABLE `point_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_keys`
--

DROP TABLE IF EXISTS `product_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_keys`
--

LOCK TABLES `product_keys` WRITE;
/*!40000 ALTER TABLE `product_keys` DISABLE KEYS */;
INSERT INTO `product_keys` VALUES (3,' color'),(1,' maker'),(4,'size'),(2,'weight');
/*!40000 ALTER TABLE `product_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `categories_id` int unsigned NOT NULL,
  `subcategories_id` int NOT NULL,
  `photo_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_products_categories1_idx` (`categories_id`),
  KEY `fk_products_subcategories1_idx` (`subcategories_id`),
  KEY `fk_products_photo1_idx` (`photo_id`),
  CONSTRAINT `fk_products_categories1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_products_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`),
  CONSTRAINT `fk_products_subcategories1` FOREIGN KEY (`subcategories_id`) REFERENCES `subcategories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'sneakers',2,1,45),(2,'boots',2,1,5),(3,'X',3,2,85),(4,'skirt',1,2,87),(5,'M',3,1,28),(6,'coat',1,2,36),(7,'Y',3,2,52);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_values`
--

DROP TABLE IF EXISTS `products_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_values` (
  `products_id` int unsigned NOT NULL,
  `keys_id` int unsigned NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`products_id`),
  KEY `fk_products_values_product_keys1_idx` (`keys_id`),
  KEY `fk_products_values_products1_idx` (`products_id`),
  CONSTRAINT `fk_products_values_product_keys1` FOREIGN KEY (`keys_id`) REFERENCES `product_keys` (`id`),
  CONSTRAINT `fk_products_values_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_values`
--

LOCK TABLES `products_values` WRITE;
/*!40000 ALTER TABLE `products_values` DISABLE KEYS */;
INSERT INTO `products_values` VALUES (1,2,NULL),(2,1,'Y'),(3,1,'Y'),(4,2,NULL),(5,3,NULL),(6,2,NULL),(7,2,NULL);
/*!40000 ALTER TABLE `products_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `photo_id` int unsigned DEFAULT NULL,
  `clients_id` int unsigned DEFAULT NULL,
  `products_id` int unsigned DEFAULT NULL,
  `delivery_id` int unsigned DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating_product` int DEFAULT NULL,
  `rating_delivery` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_photo1_idx` (`photo_id`),
  KEY `fk_review_clients1_idx` (`clients_id`),
  KEY `fk_review_products1_idx` (`products_id`),
  KEY `fk_review_delivery1_idx` (`delivery_id`),
  CONSTRAINT `fk_review_clients1` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`users_id`),
  CONSTRAINT `fk_review_delivery1` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  CONSTRAINT `fk_review_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`id`),
  CONSTRAINT `fk_review_products1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,54,85,6,2,'Cum sit eius illum impedit tempora omnis temp','2001-07-27 00:27:49',3,2),(2,32,93,6,28,'Qui et nesciunt magni sequi.','2012-02-10 04:39:07',4,3),(3,6,99,5,3,'Veniam quia et delectus quia corrupti.','1975-05-24 02:31:12',3,3),(4,47,46,6,78,'In non nihil iure ex.','1993-12-26 14:02:08',3,4),(5,58,93,6,88,'Harum ut doloremque nihil animi qui quasi.','2012-01-30 04:10:09',3,1),(6,42,71,7,35,'Soluta dolorem eligendi quibusdam minima repu','1971-12-27 21:11:04',4,5),(7,16,91,4,61,'Error quaerat nulla maiores est sequi sed com','2015-07-05 00:37:32',3,4),(8,74,23,7,28,'Recusandae omnis quaerat cupiditate voluptas ','2014-08-26 12:47:37',1,5),(9,8,77,3,39,'Ut magnam facilis eum aut.','1980-06-21 22:19:20',1,1),(10,70,16,5,75,'Est consequatur mollitia excepturi occaecati ','2001-06-15 23:51:43',2,1),(11,14,30,6,61,'Fugit ad qui eos mollitia.','1976-02-04 21:59:45',4,3),(12,76,56,3,33,'Explicabo et reprehenderit voluptatum tempore','1975-11-30 04:09:39',3,4),(13,49,14,2,91,'Rem rerum reprehenderit tempora similique.','1999-05-09 22:11:30',3,5),(14,84,19,2,100,'Aperiam a et consequatur repellat.','2015-10-08 11:09:23',1,5),(15,10,81,5,84,'Non est excepturi est blanditiis.','1993-09-11 15:45:11',2,4),(16,4,57,1,11,'Dicta delectus exercitationem alias amet temp','2016-06-15 17:15:38',3,5),(17,34,41,4,4,'Necessitatibus qui labore aliquam molestiae.','2007-05-29 06:14:39',2,1),(18,56,15,6,70,'Vel asperiores est molestiae at iusto rerum.','1994-01-30 09:46:07',3,2),(19,45,56,3,20,'Sit consequatur nisi earum.','1993-07-20 07:07:37',4,4),(20,12,68,4,61,'Itaque et exercitationem voluptatem odio qui ','2011-04-15 16:49:58',1,4),(21,81,73,4,65,'Deleniti rerum est ut aliquid.','1991-02-11 16:44:02',3,4),(22,92,76,5,1,'Et et eum fuga dolores.','2007-03-12 10:26:54',4,2),(23,56,24,6,59,'Iusto quia et tempore iste necessitatibus mod','2005-01-31 06:43:20',3,4),(24,81,95,5,14,'Optio est nisi quaerat sit aut perspiciatis.','2021-02-01 18:31:59',5,1),(25,36,19,2,92,'Natus consequatur est non quia ut id et.','2002-03-30 22:13:32',1,4),(26,33,95,5,78,'Et voluptas fugit et omnis reprehenderit.','2003-09-08 10:49:20',1,1),(27,51,91,7,62,'Sed sed eum recusandae dignissimos praesentiu','2008-02-29 18:54:20',2,1),(28,59,50,2,39,'Id facilis pariatur saepe dolor.','1979-01-21 16:36:37',5,3),(29,22,73,1,14,'Eius voluptatem praesentium nisi culpa aut.','2019-06-01 21:30:36',2,2),(30,48,67,1,4,'Ut ab est fuga magnam commodi.','1980-06-18 12:12:46',1,2),(31,91,98,5,71,'Provident ut amet consequatur neque consequat','1998-07-23 18:24:51',5,3),(32,93,32,6,28,'Distinctio veniam sapiente provident dolores ','2009-04-12 00:20:54',1,3),(33,51,2,2,83,'Beatae ipsum facere voluptas.','1989-06-18 04:31:32',3,4),(34,97,81,5,47,'Et vel sed odio delectus ut sunt sed.','1972-05-31 18:15:10',3,1),(35,71,57,1,30,'Rerum hic at velit officiis aut in nihil.','1994-03-07 10:58:31',1,3),(36,7,30,5,29,'Recusandae rerum libero rerum.','1980-03-29 12:25:57',5,4),(37,2,71,3,50,'Perferendis ut et sit aut.','1997-05-07 04:11:24',5,4),(38,38,55,4,28,'Modi cum laborum qui consequatur.','1988-08-27 15:16:54',5,5),(39,53,16,7,45,'Temporibus ipsum saepe tempora suscipit.','1976-04-20 12:41:35',2,2),(40,47,83,6,98,'Blanditiis labore aliquid cum est.','2007-05-21 23:56:28',5,2),(41,84,92,6,80,'Facilis sit ducimus libero ipsum.','2010-12-03 19:17:48',1,2),(42,72,41,2,43,'Consequatur officia eum totam.','1986-12-14 11:03:24',3,1),(43,98,34,6,4,'Consequatur ut in impedit ipsum ut quod.','1998-08-14 21:52:06',1,1),(44,64,40,3,65,'Saepe corrupti sit laboriosam enim sed.','1992-02-08 13:49:43',5,5),(45,10,73,1,48,'Sed provident quibusdam veniam eum.','2015-12-28 17:02:10',1,2),(46,28,67,6,81,'Nihil ab quia iure molestiae laudantium.','2001-07-13 01:36:17',3,2),(47,82,73,2,29,'Doloribus voluptatem pariatur deleniti omnis.','1998-10-04 12:09:19',1,4),(48,55,97,2,39,'Modi nam in dicta eum nisi suscipit.','1997-10-15 20:05:49',3,4),(49,89,6,2,60,'Voluptatem tenetur voluptatem qui voluptatem.','1981-04-04 02:46:25',5,2),(50,46,44,1,43,'Nostrum expedita enim alias dolores quis occa','2007-03-30 07:59:57',4,5),(51,78,74,4,41,'Cum veniam qui reprehenderit sequi quod.','2011-01-16 12:29:49',3,4),(52,13,78,1,23,'Rerum omnis eveniet voluptatem voluptatibus l','2006-04-01 19:53:47',4,2),(53,51,20,5,79,'Amet iste accusantium quaerat.','1990-03-09 12:32:28',1,3),(54,86,45,5,68,'Laboriosam delectus eligendi exercitationem e','1981-04-08 13:13:07',4,2),(55,17,83,7,71,'Reiciendis dolorum veritatis asperiores sint ','1997-12-30 18:43:43',3,5),(56,80,22,1,68,'Labore repudiandae alias et neque qui sint.','1991-08-08 02:17:23',2,5),(57,28,27,2,73,'Odio ut necessitatibus labore quas quam repud','1989-06-12 00:47:40',1,1),(58,71,30,2,48,'Repellendus nihil voluptas aut quae exercitat','2017-11-24 05:02:16',1,2),(59,4,62,7,17,'Et veritatis est magni dolor.','1983-03-24 20:08:18',3,4),(60,40,94,3,91,'Distinctio saepe voluptas consequuntur offici','1994-04-12 23:13:00',2,5),(61,14,10,5,99,'Voluptas sunt adipisci rem non id fugit et.','2016-09-07 19:49:31',2,5),(62,54,27,5,70,'Quam adipisci itaque architecto quia dignissi','1977-01-23 06:18:55',3,5),(63,10,63,3,90,'Quos accusantium et aut voluptates voluptatem','1997-10-02 16:38:22',5,4),(64,85,50,4,12,'Autem nemo fugiat voluptas voluptatem vel ull','2003-08-16 14:37:16',1,1),(65,76,85,6,46,'Mollitia atque nemo recusandae qui at adipisc','1999-07-20 02:54:40',1,2),(66,15,100,7,18,'Quaerat incidunt ut sed distinctio nemo.','1973-02-14 08:51:48',4,1),(67,62,82,3,2,'Quas id aut modi aspernatur non pariatur.','1977-08-03 22:16:15',1,4),(68,76,74,7,89,'Placeat recusandae voluptatibus nisi eaque ma','1988-01-16 17:18:06',2,1),(69,83,61,7,36,'Provident est et iure ipsam voluptas.','2013-07-19 01:52:20',4,4),(70,87,54,1,97,'Labore quia ipsum quis id sunt minima corrupt','1995-06-04 11:09:40',3,3),(71,17,46,6,1,'Alias impedit adipisci rerum facere quia et.','2016-06-26 01:55:14',4,2),(72,95,43,1,71,'Debitis sint eius sunt reiciendis unde.','1990-04-16 17:10:56',1,1),(73,27,96,2,41,'Commodi enim corrupti est fugiat magni et.','1998-12-06 07:58:28',2,2),(74,96,9,5,58,'Voluptatem fuga tempore quis fugit dolorem.','2003-11-09 19:28:06',1,1),(75,91,94,5,66,'Fugit veniam et voluptatem et architecto.','2008-05-15 03:40:44',2,2),(76,67,52,4,50,'Placeat aut quas fugit aliquid.','1989-04-02 15:09:01',3,3),(77,12,42,6,99,'Neque voluptas eligendi voluptas adipisci opt','1971-12-08 04:43:38',1,3),(78,96,91,7,12,'Facere maiores officia aut voluptatem at ut.','2002-04-03 23:21:11',4,1),(79,37,81,1,31,'Quidem perferendis nisi nostrum qui officiis ','2000-12-23 18:46:13',4,3),(80,23,24,1,50,'Molestias nostrum harum autem sit aut libero.','1990-12-09 07:35:47',5,2),(81,20,17,7,16,'Tempora sunt sapiente dolor consequatur et do','1994-04-18 10:25:13',1,2),(82,26,50,6,16,'Voluptatem quidem possimus ut numquam quibusd','1978-06-04 00:31:24',2,1),(83,43,33,6,9,'Laboriosam numquam omnis repudiandae adipisci','1991-10-26 10:41:20',2,1),(84,84,37,5,96,'Amet similique totam consequatur sunt.','1989-03-28 04:47:32',3,1),(85,79,44,7,74,'Minus porro quis accusamus temporibus ipsa ut','2016-07-17 02:37:23',5,2),(86,34,89,7,71,'Saepe sed labore provident sunt deserunt in d','2004-02-22 19:14:37',2,5),(87,69,99,1,92,'Rerum soluta reiciendis in optio.','1971-03-30 17:54:33',1,5),(88,22,2,3,42,'Et et aut nobis ex.','2012-11-02 07:34:33',2,2),(89,19,32,4,44,'Velit explicabo labore quod asperiores odio u','2012-02-15 22:39:44',2,4),(90,81,31,5,23,'Consequatur harum dolor veritatis quia rerum ','1976-09-27 20:35:43',3,3),(91,63,42,3,47,'Iure maiores dolor laudantium iusto enim.','2012-06-06 10:21:20',4,2),(92,78,90,3,57,'Consequuntur sapiente culpa odio aut.','1978-11-09 02:46:37',5,3),(93,33,35,3,67,'Occaecati pariatur saepe in quo magni.','2017-06-11 12:15:11',4,1),(94,24,17,3,93,'Natus fugiat debitis nostrum ut quis.','2011-11-16 15:02:08',3,3),(95,15,38,6,37,'Natus blanditiis perspiciatis reiciendis reru','1998-11-11 12:17:40',1,5),(96,40,25,6,58,'Non rerum aperiam sit voluptatem ut omnis.','1993-05-20 19:54:10',5,5),(97,57,35,1,37,'Molestiae voluptatum odit vero explicabo in o','1973-06-23 12:01:59',1,5),(98,65,61,5,28,'Accusantium veniam voluptatibus exercitatione','1994-12-27 17:35:37',2,2),(99,3,91,6,81,'Eum et molestiae et veritatis eos aut quo.','1992-10-14 18:31:37',2,1),(100,81,15,3,13,'Nobis tempora sapiente voluptate.','1983-05-19 05:30:15',5,4);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'footwear'),(2,'clothes');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) NOT NULL,
  `phone` bigint NOT NULL,
  `password` char(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sarina46@example.org',79319539267,'da5c1e8586962cb2d4cdfb46a6fc4af93f1c0f55'),(2,'veum.garnett@example.org',79617228310,'aa843a49546881a4d0c92fc5164073d57b574233'),(3,'toy.maggie@example.com',79982130459,'879e3a6051fbb3527661dda3a0d89647be23c1e9'),(4,'francis.gusikowski@example.org',79232571889,'34bd40d8a8a59c6b107a7d6fc3a0649e2fd1ffb5'),(5,'gislason.malcolm@example.net',79145806578,'52e854603c28c439b22dd57e0a11f0940854a5ea'),(6,'wfriesen@example.net',79208914808,'804bc0e4e932e68421d62deeb3516c540cd5a260'),(7,'nmurray@example.net',79288729240,'ba6d454a84719f7e9b93c8f7de2f865662914676'),(8,'idibbert@example.com',79831566222,'3941874469fcaf56af8021d04c4949f85774a6b6'),(9,'lindsay.klein@example.com',79721432361,'4b0d5b69e4d05842a3504bf762d07e15003feec5'),(10,'koelpin.verlie@example.com',79637310048,'5dea6507e3eb2431a64faba291b769a2991cce75'),(11,'brakus.emil@example.net',79784856287,'f73230d58bf20c27fbaab5eaa097499c91037ddc'),(12,'sswift@example.net',79622147911,'307ebeb36195e275b76be02e470ba1446224a45e'),(13,'corbin.sipes@example.net',79065836670,'4f5001f5fde0e4c99e0a3b90a1becbbc34301883'),(14,'viola.rice@example.org',79375817793,'e51c75f0cf5be198d788a44e7a6734335dcdf4ad'),(15,'rocio.welch@example.org',79174385663,'dfc85c55a6824dca7986872462bcb50e169ad768'),(16,'wveum@example.com',79046832331,'7e60289b751d9765f5ed0160431327aae0d21f6d'),(17,'jermain.maggio@example.net',79400074554,'5499badde65a6c1bacde5ba6966ff1a35841d467'),(18,'kody.west@example.com',79706519173,'852eedc060c03cd65875c94401cc522ec1ab437a'),(19,'mwalsh@example.com',79118580268,'92fbe9da8a85a401d544e501f6a2abf85d445230'),(20,'betty68@example.org',79571759039,'32f324d1cffc0a1492be68c50cd7e68abc65c25d'),(21,'manuel04@example.net',79037978793,'f7ca2cf0c3ebaac4e84106ed559ae24aa3caa891'),(22,'igreenholt@example.net',79679187605,'99f9bd4827e5617433d40d205e52be2998f75ce0'),(23,'wwilderman@example.com',79288317707,'3d72c32246aa509166d285615639d8c65aab95b9'),(24,'caleigh14@example.com',79332390729,'df9f5d8ba617f3154bf111d5584792a6065178a6'),(25,'nharvey@example.com',79457859769,'0cbebc38d9112c73a99ebe31e1552899fc901031'),(26,'mariano21@example.org',79366287512,'5671473b61940bba086495fbbe1fefec6b01c2f5'),(27,'elvis.waters@example.org',79227689539,'7d37328a6bb8cfb0f9b636e936af0aa22e4e247b'),(28,'khintz@example.net',79555901947,'ffecfc82b123d38cc6a2e71b0245b94e8ad8ed59'),(29,'jaskolski.gus@example.net',79840901381,'3b0b20ac70d83fe49bf31db6f6acec031dfc82ab'),(30,'cormier.tevin@example.com',79874075906,'65a659ea1fa0f53ddfce0cf01099fb677d72840e'),(31,'ruby80@example.com',79450834167,'4aa9ee1de9a4ddf1e0cb1c91128fc1a2cb61543e'),(32,'jgraham@example.net',79385745505,'8a12ff0f8b193b3492550d5fb141d39168a0e697'),(33,'krista.glover@example.com',79533817522,'eba413b0c99587fa742ba38adc50e535f6c0f7c7'),(34,'tillman.dominique@example.com',79544998349,'7cc25fa58772380ba5d9d1e34a830af6d557498d'),(35,'fay24@example.net',79394475272,'933ba414f225f8c8a3ffbf8bcca3c3bd22493a3e'),(36,'mertie.jacobs@example.org',79808165900,'ecead3b3d80cedf38c4883485a9da9122887e43d'),(37,'janet92@example.org',79741467553,'4f93d6f43413565965a3c79d3c203ffe7783df37'),(38,'clotilde68@example.net',79159964246,'575a768caed0d9ea9fabde759d06f8806cefa48f'),(39,'zion64@example.com',79737292933,'5e38f086dd39590ad6f58c1dd9ce5342894388b6'),(40,'gleichner.berenice@example.net',79677936653,'b3999b962115e9f1950e07458491fd2281cac75b'),(41,'zcronin@example.net',79144262107,'0c396b33b07612902e6f6be448fdab5a12560bf4'),(42,'bstehr@example.net',79404175272,'3721e47a1b912bbf2ff1e32ea0fcbad1302d69b0'),(43,'balistreri.gilberto@example.org',79683498433,'bdb050497eba1abbbffd9e426ec5591c9871b0bf'),(44,'gorczany.morton@example.net',79527667976,'b5d9eabe705e19de358b040f8e683e097c187c66'),(45,'jrowe@example.org',79862818532,'e7f9df484b3190b679fbeddc7b9cc6ced4676cca'),(46,'jarrell.daugherty@example.com',79461674929,'b3716baacfd75e51c27917cb12718706df1793d7'),(47,'ara24@example.net',79828911735,'a39c78a82c9af347e4c3d7b844365dc7e68b32ed'),(48,'shields.johnpaul@example.com',79975092831,'1177735b50edb604118b1e927cab23933d0b7940'),(49,'madalyn.hermann@example.net',79804445001,'57436d4008cf2f550e5e2bde6d43d247204048cb'),(50,'cleta.lubowitz@example.com',79414514463,'117b0786cdadc4426347956d8018c5728b5a11d3'),(51,'linda34@example.net',79697108331,'aea71abc38e51cedb3d7e4b75291e778c7e65599'),(52,'valerie39@example.com',79034243321,'242b197e1487370d18ba005d321c01def5019c17'),(53,'zpouros@example.net',79172055901,'18a6ea9f537d65347cd855bc7da8c5aead7aa3e3'),(54,'jgreenfelder@example.org',79011066156,'93e817ca22add683bbc7eb68adb18d2cc7fd5f99'),(55,'damien23@example.com',79921017193,'42f20a49e78162e1a0f3bb1ab185e9ab0d95b968'),(56,'carolyn44@example.com',79787300170,'b7100dc0ab9d288afdf629f6bea34baf2cc644bd'),(57,'waino69@example.com',79278589453,'7594f2a2d1ebeef117fed90f21428dd165e7d1ab'),(58,'clark50@example.net',79425610791,'6a91af5194696ea4891e78cd44c36739687b6816'),(59,'monte15@example.org',79412375605,'908901c094c474871c2de97b7370e44710bb89ad'),(60,'ikunde@example.com',79639643091,'8c30bf6360533d3a788c4c20db680360b63ea839'),(61,'ahills@example.net',79877857209,'2660e3e5ef93ab54518238a04616b42df3ec2595'),(62,'seth.bailey@example.net',79651404274,'c7cbb3b1719e0f1ceab855a91292b9ca0c5c2156'),(63,'louie17@example.org',79424215495,'918b5cdfd3c28b08709955738d7007e41c7524b5'),(64,'pablo.runolfsson@example.com',79919568879,'301b1982c1fa7f773040c00a15b53d987effc505'),(65,'rogahn.roberta@example.net',79755600967,'159ec5c752cd483b76f8ee127ca1134d9e7ade18'),(66,'bahringer.hulda@example.com',79281348915,'b7138fae525ea3722b29456bc046243369754538'),(67,'clementine25@example.org',79203183168,'772381538d5b3abe5a54c8e383578d20c943f3b4'),(68,'elissa.o\'reilly@example.com',79487484244,'de95d651bcb4e2c89aea43e958ee7680e5174a29'),(69,'rosendo18@example.net',79161658892,'0be9d88f9b6eeff38a63c9b00f71369a3fe76284'),(70,'carissa03@example.com',79881847914,'fc9b9f75970f46d7a2599acd5f60a9fbb9f637b2'),(71,'devin74@example.com',79439354227,'cc2d86486de35f6d4311ebd39336601c2414bfa3'),(72,'garrison02@example.net',79761921178,'d516f4c4a4432643e4fc855cd02aed36e7ade16d'),(73,'elroy36@example.com',79477729841,'c3f6a4ceeda5975d5637d3c175b49d09a7f475c9'),(74,'nboehm@example.net',79521636872,'5cfbfcdb23ecd1fd63d1ab8acaf179c099ff4360'),(75,'quitzon.bridgette@example.org',79093546965,'eb15068f449453aff3cac0ee3000d4d30644d977'),(76,'ibahringer@example.com',79187260066,'d34fba0c20e4a443a5a64d10781d517df10b65e2'),(77,'destini89@example.com',79489218166,'1b983cb3f428c6210428a9e5451a070c36dcf544'),(78,'alda14@example.com',79429043943,'012d368b7d88f705c5465c3862bc6d9264dd4984'),(79,'tracy59@example.net',79945897864,'5e44371f39c3289796ed8d2afc4444e5c67cf03b'),(80,'treutel.chad@example.net',79371656363,'f4cfdc4711fef22addc85b1fe386654b47bda42f'),(81,'ernie85@example.com',79701064542,'94f4ba5c922ba395d1ba2c11075e027fc6968df2'),(82,'moore.karli@example.com',79073654928,'122ce5e5acb7efa8a5ccd43f2270295d306140c3'),(83,'crystel51@example.org',79433723685,'222fbd567bf2c0a95fffceea70caf48e8cff8261'),(84,'kertzmann.savanah@example.net',79435319209,'121c5207ed075f53d8ab87a4e9639b206d2f7b8a'),(85,'kuhlman.edward@example.com',79202282009,'29c48f35859bdf983109ac397f51a57e8cb593e6'),(86,'vkuvalis@example.org',79740463617,'29a8b366d1ef00195d6e45177cd80f31250cacb4'),(87,'xpaucek@example.com',79573961796,'23ddc7d7f99b0b4f182b71ca16b8d4edd37c2e56'),(88,'araceli.wisoky@example.com',79386920427,'626ca4460e74bde862581deb92e5e176c4138c58'),(89,'gulgowski.cornell@example.com',79479703127,'e3e6fb3b6352b3f613f98958068c5aa5e645fe7a'),(90,'ricky34@example.org',79064053730,'7c73315ed2128998f1b958c56aaa521b9fc9b076'),(91,'francesca.nitzsche@example.com',79460755014,'a8da6fb5809cd3c995fb9bb1ecbfee31c28e6c9f'),(92,'khalil.mccullough@example.net',79378706902,'6477fdd98ab0b275ef657319143470fbad161de9'),(93,'marie83@example.net',79925397438,'ef64ab93300bcceb970d538b609276b98cbee3fa'),(94,'torp.stefan@example.net',79505371082,'f7efdf493b131c7a0217e9f3ed74e715afe44155'),(95,'uswaniawski@example.org',79340014424,'38fd1e5e8d67d12b347a3f56e9de826ec7ae58fe'),(96,'guido49@example.net',79160880483,'be0721e76c6adef87690f518ddef1ba6e576ed3e'),(97,'marks.erna@example.com',79444535328,'977cd87aca3ba0b0a8c85e33460c5aedfadc5871'),(98,'nikki.dooley@example.org',79286868790,'7ffd7b190b916fc2d01ed9904489ac6b80375349'),(99,'morissette.frances@example.org',79839584409,'8b75c0ef4384970ccdb66dd27033fbcad0885ebb'),(100,'runolfsdottir.henriette@example.org',79582378005,'e18fdd05bf428e9425bd4928110bb3984a1d86bf');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
