-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: Leetcode
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

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
-- Table structure for table `1070_product`
--

DROP TABLE IF EXISTS `1070_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1070_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1070_product`
--

LOCK TABLES `1070_product` WRITE;
/*!40000 ALTER TABLE `1070_product` DISABLE KEYS */;
INSERT INTO `1070_product` VALUES
(100,'Nokia'),
(200,'Apple'),
(300,'Samsung');
/*!40000 ALTER TABLE `1070_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1070_sales`
--

DROP TABLE IF EXISTS `1070_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1070_sales` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `1070_sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `1070_product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1070_sales`
--

LOCK TABLES `1070_sales` WRITE;
/*!40000 ALTER TABLE `1070_sales` DISABLE KEYS */;
INSERT INTO `1070_sales` VALUES
(1,100,2008,10,5000),
(2,100,2009,12,5000),
(7,200,2011,15,9000);
/*!40000 ALTER TABLE `1070_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1077_employee`
--

DROP TABLE IF EXISTS `1077_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1077_employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1077_employee`
--

LOCK TABLES `1077_employee` WRITE;
/*!40000 ALTER TABLE `1077_employee` DISABLE KEYS */;
INSERT INTO `1077_employee` VALUES
(1,'Khaled',3),
(2,'Ali',2),
(3,'John',3),
(4,'Doe',2);
/*!40000 ALTER TABLE `1077_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1077_project`
--

DROP TABLE IF EXISTS `1077_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1077_project` (
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `1077_project_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `1077_employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1077_project`
--

LOCK TABLES `1077_project` WRITE;
/*!40000 ALTER TABLE `1077_project` DISABLE KEYS */;
INSERT INTO `1077_project` VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,4);
/*!40000 ALTER TABLE `1077_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1098_books`
--

DROP TABLE IF EXISTS `1098_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1098_books` (
  `book_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `available_from` date DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1098_books`
--

LOCK TABLES `1098_books` WRITE;
/*!40000 ALTER TABLE `1098_books` DISABLE KEYS */;
INSERT INTO `1098_books` VALUES
(1,'Kalila And Demna','2010-01-01'),
(2,'28 Letters','2012-05-12'),
(3,'The Hobbit','2019-06-10'),
(4,'13 Reasons Why','2019-06-01'),
(5,'The Hunger Games','2008-09-21');
/*!40000 ALTER TABLE `1098_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1098_orders`
--

DROP TABLE IF EXISTS `1098_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1098_orders` (
  `order_id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1098_orders`
--

LOCK TABLES `1098_orders` WRITE;
/*!40000 ALTER TABLE `1098_orders` DISABLE KEYS */;
INSERT INTO `1098_orders` VALUES
(1,1,2,'2018-07-26'),
(2,1,1,'2018-11-05'),
(3,3,8,'2019-06-11'),
(4,4,6,'2019-06-05'),
(5,4,5,'2019-06-20'),
(6,5,9,'2009-02-02'),
(7,5,8,'2010-04-13');
/*!40000 ALTER TABLE `1098_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1107_traffic`
--

DROP TABLE IF EXISTS `1107_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1107_traffic` (
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(8) DEFAULT NULL CHECK (`activity` in ('login','logout','jobs','groups','homepage')),
  `activity_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1107_traffic`
--

LOCK TABLES `1107_traffic` WRITE;
/*!40000 ALTER TABLE `1107_traffic` DISABLE KEYS */;
INSERT INTO `1107_traffic` VALUES
(1,'login','2019-05-01'),
(1,'homepage','2019-05-01'),
(1,'logout','2019-05-01'),
(2,'login','2019-06-21'),
(2,'logout','2019-06-21'),
(3,'login','2019-01-01'),
(3,'jobs','2019-01-01'),
(3,'logout','2019-01-01'),
(4,'login','2019-06-21'),
(4,'groups','2019-06-21'),
(4,'logout','2019-06-21'),
(5,'login','2019-03-01'),
(5,'logout','2019-03-01'),
(5,'login','2019-06-21'),
(5,'logout','2019-06-21');
/*!40000 ALTER TABLE `1107_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1127_spending`
--

DROP TABLE IF EXISTS `1127_spending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1127_spending` (
  `user_id` int(11) NOT NULL,
  `spend_date` date NOT NULL,
  `platform` char(7) NOT NULL CHECK (`platform` in ('desktop','mobile')),
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`spend_date`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1127_spending`
--

LOCK TABLES `1127_spending` WRITE;
/*!40000 ALTER TABLE `1127_spending` DISABLE KEYS */;
INSERT INTO `1127_spending` VALUES
(1,'2019-07-01','desktop',100),
(1,'2019-07-01','mobile',100),
(2,'2019-07-01','mobile',100),
(2,'2019-07-02','mobile',100),
(3,'2019-07-01','desktop',100),
(3,'2019-07-02','desktop',100);
/*!40000 ALTER TABLE `1127_spending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1132_actions`
--

DROP TABLE IF EXISTS `1132_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1132_actions` (
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `action` varchar(8) DEFAULT NULL CHECK (`action` in ('view','like','reaction','comment','report','share')),
  `extra` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1132_actions`
--

LOCK TABLES `1132_actions` WRITE;
/*!40000 ALTER TABLE `1132_actions` DISABLE KEYS */;
INSERT INTO `1132_actions` VALUES
(1,1,'2019-07-01','view',NULL),
(1,1,'2019-07-01','like',NULL),
(1,1,'2019-07-01','share',NULL),
(2,2,'2019-07-04','view',NULL),
(2,2,'2019-07-04','report','spam'),
(3,4,'2019-07-04','view',NULL),
(3,4,'2019-07-04','report','spam'),
(4,3,'2019-07-02','view',NULL),
(4,3,'2019-07-02','report','spam'),
(5,2,'2019-07-03','view',NULL),
(5,2,'2019-07-03','report','racism'),
(5,5,'2019-07-03','view',NULL),
(5,5,'2019-07-03','report','racism');
/*!40000 ALTER TABLE `1132_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1132_removals`
--

DROP TABLE IF EXISTS `1132_removals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1132_removals` (
  `post_id` int(11) NOT NULL,
  `remove_date` date DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1132_removals`
--

LOCK TABLES `1132_removals` WRITE;
/*!40000 ALTER TABLE `1132_removals` DISABLE KEYS */;
INSERT INTO `1132_removals` VALUES
(2,'2019-07-20'),
(3,'2019-07-18');
/*!40000 ALTER TABLE `1132_removals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1158_items`
--

DROP TABLE IF EXISTS `1158_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1158_items` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1158_items`
--

LOCK TABLES `1158_items` WRITE;
/*!40000 ALTER TABLE `1158_items` DISABLE KEYS */;
INSERT INTO `1158_items` VALUES
(1,'Samsung'),
(2,'Lenovo'),
(3,'LG'),
(4,'HP');
/*!40000 ALTER TABLE `1158_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1158_orders`
--

DROP TABLE IF EXISTS `1158_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1158_orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `item_id` (`item_id`),
  KEY `buyer_id` (`buyer_id`,`seller_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `1158_orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `1158_items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `1158_orders_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `1158_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `1158_orders_ibfk_3` FOREIGN KEY (`seller_id`) REFERENCES `1158_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1158_orders`
--

LOCK TABLES `1158_orders` WRITE;
/*!40000 ALTER TABLE `1158_orders` DISABLE KEYS */;
INSERT INTO `1158_orders` VALUES
(1,'2019-08-01',4,1,2),
(2,'2018-08-02',2,1,3),
(3,'2019-08-03',3,2,3),
(4,'2018-08-04',1,4,2),
(5,'2018-08-04',1,3,4),
(6,'2019-08-05',2,2,4);
/*!40000 ALTER TABLE `1158_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1158_users`
--

DROP TABLE IF EXISTS `1158_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1158_users` (
  `user_id` int(11) NOT NULL,
  `join_date` date DEFAULT NULL,
  `favorite_brand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1158_users`
--

LOCK TABLES `1158_users` WRITE;
/*!40000 ALTER TABLE `1158_users` DISABLE KEYS */;
INSERT INTO `1158_users` VALUES
(1,'2018-01-01','Lenovo'),
(2,'2018-02-09','Samsung'),
(3,'2018-01-19','LG'),
(4,'2018-05-21','HP');
/*!40000 ALTER TABLE `1158_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1159_items`
--

DROP TABLE IF EXISTS `1159_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1159_items` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1159_items`
--

LOCK TABLES `1159_items` WRITE;
/*!40000 ALTER TABLE `1159_items` DISABLE KEYS */;
INSERT INTO `1159_items` VALUES
(1,'Samsung'),
(2,'Lenovo'),
(3,'LG'),
(4,'HP');
/*!40000 ALTER TABLE `1159_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1159_orders`
--

DROP TABLE IF EXISTS `1159_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1159_orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `item_id` (`item_id`),
  KEY `buyer_id` (`buyer_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `fk_1159_orders_buyer_id_1159_items_user_id` FOREIGN KEY (`buyer_id`) REFERENCES `1159_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1159_orders_item_id_1159_items_item_id` FOREIGN KEY (`item_id`) REFERENCES `1159_items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1159_orders_seller_id_1159_items_user_id` FOREIGN KEY (`seller_id`) REFERENCES `1159_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1159_orders`
--

LOCK TABLES `1159_orders` WRITE;
/*!40000 ALTER TABLE `1159_orders` DISABLE KEYS */;
INSERT INTO `1159_orders` VALUES
(1,'2019-08-01',4,1,2),
(2,'2019-08-02',2,1,3),
(3,'2019-08-03',3,2,3),
(4,'2019-08-04',1,4,2),
(5,'2019-08-04',1,3,4),
(6,'2019-08-05',2,2,4);
/*!40000 ALTER TABLE `1159_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1159_users`
--

DROP TABLE IF EXISTS `1159_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1159_users` (
  `user_id` int(11) NOT NULL,
  `join_date` date DEFAULT NULL,
  `favorite_brand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1159_users`
--

LOCK TABLES `1159_users` WRITE;
/*!40000 ALTER TABLE `1159_users` DISABLE KEYS */;
INSERT INTO `1159_users` VALUES
(1,'2019-01-01','Lenovo'),
(2,'2019-02-09','Samsung'),
(3,'2019-01-19','LG'),
(4,'2019-05-21','HP');
/*!40000 ALTER TABLE `1159_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1164_products`
--

DROP TABLE IF EXISTS `1164_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1164_products` (
  `product_id` int(11) NOT NULL,
  `new_price` int(11) DEFAULT NULL,
  `change_date` date NOT NULL,
  PRIMARY KEY (`product_id`,`change_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1164_products`
--

LOCK TABLES `1164_products` WRITE;
/*!40000 ALTER TABLE `1164_products` DISABLE KEYS */;
INSERT INTO `1164_products` VALUES
(1,20,'2019-08-14'),
(1,30,'2019-08-15'),
(1,35,'2019-08-16'),
(2,50,'2019-08-14'),
(2,65,'2019-08-17'),
(3,20,'2019-08-18');
/*!40000 ALTER TABLE `1164_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1174_Delivery`
--

DROP TABLE IF EXISTS `1174_Delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1174_Delivery` (
  `delivery_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `customer_pref_delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1174_Delivery`
--

LOCK TABLES `1174_Delivery` WRITE;
/*!40000 ALTER TABLE `1174_Delivery` DISABLE KEYS */;
INSERT INTO `1174_Delivery` VALUES
(1,1,'2019-08-01','2019-08-02'),
(2,2,'2019-08-02','2019-08-02'),
(3,1,'2019-08-11','2019-08-12'),
(4,3,'2019-08-24','2019-08-24'),
(5,3,'2019-08-21','2019-08-22'),
(6,2,'2019-08-11','2019-08-13'),
(7,4,'2019-08-09','2019-08-09');
/*!40000 ALTER TABLE `1174_Delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1193_transactions`
--

DROP TABLE IF EXISTS `1193_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1193_transactions` (
  `id` int(11) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL CHECK (`state` in ('approved','declined')),
  `amount` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1193_transactions`
--

LOCK TABLES `1193_transactions` WRITE;
/*!40000 ALTER TABLE `1193_transactions` DISABLE KEYS */;
INSERT INTO `1193_transactions` VALUES
(121,'US','approved',1000,'2018-12-18'),
(122,'US','declined',2000,'2018-12-19'),
(123,'US','approved',2000,'2019-01-01'),
(124,'DE','approved',2000,'2019-01-07');
/*!40000 ALTER TABLE `1193_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1194_matches`
--

DROP TABLE IF EXISTS `1194_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1194_matches` (
  `match_id` int(11) NOT NULL,
  `first_player` int(11) DEFAULT NULL,
  `second_player` int(11) DEFAULT NULL,
  `first_score` int(11) DEFAULT NULL,
  `second_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_id`),
  KEY `first_player` (`first_player`),
  KEY `second_player` (`second_player`),
  CONSTRAINT `fk_1194_matches_first_player_1194_players_player_id` FOREIGN KEY (`first_player`) REFERENCES `1194_players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_1194_matches_second_player_1194_players_player_id` FOREIGN KEY (`second_player`) REFERENCES `1194_players` (`player_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1194_matches`
--

LOCK TABLES `1194_matches` WRITE;
/*!40000 ALTER TABLE `1194_matches` DISABLE KEYS */;
INSERT INTO `1194_matches` VALUES
(1,15,45,3,0),
(2,30,25,1,2),
(3,30,15,2,0),
(4,40,20,5,2),
(5,35,50,1,1);
/*!40000 ALTER TABLE `1194_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1194_players`
--

DROP TABLE IF EXISTS `1194_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1194_players` (
  `player_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1194_players`
--

LOCK TABLES `1194_players` WRITE;
/*!40000 ALTER TABLE `1194_players` DISABLE KEYS */;
INSERT INTO `1194_players` VALUES
(10,2),
(15,1),
(20,3),
(25,1),
(30,1),
(35,2),
(40,3),
(45,1),
(50,2);
/*!40000 ALTER TABLE `1194_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1204_Queue`
--

DROP TABLE IF EXISTS `1204_Queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1204_Queue` (
  `person_id` int(11) NOT NULL,
  `person_name` varchar(30) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `turn` int(11) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1204_Queue`
--

LOCK TABLES `1204_Queue` WRITE;
/*!40000 ALTER TABLE `1204_Queue` DISABLE KEYS */;
INSERT INTO `1204_Queue` VALUES
(1,'James Elephant',500,6),
(2,'Will Johnliams',200,4),
(3,'John Adams',350,2),
(4,'Thomas Jefferson',175,5),
(5,'George Washington',250,1),
(6,'Thomas Jefferson',400,3);
/*!40000 ALTER TABLE `1204_Queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1205_chargebacks`
--

DROP TABLE IF EXISTS `1205_chargebacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1205_chargebacks` (
  `trans_id` int(11) DEFAULT NULL,
  `charge_date` date DEFAULT NULL,
  KEY `trans_id` (`trans_id`),
  CONSTRAINT `1205_chargebacks_ibfk_1` FOREIGN KEY (`trans_id`) REFERENCES `1205_transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1205_chargebacks`
--

LOCK TABLES `1205_chargebacks` WRITE;
/*!40000 ALTER TABLE `1205_chargebacks` DISABLE KEYS */;
INSERT INTO `1205_chargebacks` VALUES
(102,'2019-05-29'),
(101,'2019-06-30'),
(105,'2019-09-18');
/*!40000 ALTER TABLE `1205_chargebacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1205_transactions`
--

DROP TABLE IF EXISTS `1205_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1205_transactions` (
  `id` int(11) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL CHECK (`state` in ('approved','declined')),
  `amount` int(11) DEFAULT NULL,
  `trans_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1205_transactions`
--

LOCK TABLES `1205_transactions` WRITE;
/*!40000 ALTER TABLE `1205_transactions` DISABLE KEYS */;
INSERT INTO `1205_transactions` VALUES
(101,'US','approved',1000,'2019-05-18'),
(102,'US','declined',2000,'2019-05-19'),
(103,'US','approved',3000,'2019-06-10'),
(104,'US','approved',4000,'2019-06-13'),
(105,'US','approved',5000,'2019-06-15');
/*!40000 ALTER TABLE `1205_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1212_matches`
--

DROP TABLE IF EXISTS `1212_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1212_matches` (
  `match_id` int(11) NOT NULL,
  `host_team` int(11) DEFAULT NULL,
  `guest_team` int(11) DEFAULT NULL,
  `host_goals` int(11) DEFAULT NULL,
  `guest_goals` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1212_matches`
--

LOCK TABLES `1212_matches` WRITE;
/*!40000 ALTER TABLE `1212_matches` DISABLE KEYS */;
INSERT INTO `1212_matches` VALUES
(1,10,20,3,0),
(2,30,10,2,2),
(3,10,50,5,1),
(4,20,30,1,0),
(5,50,30,1,0);
/*!40000 ALTER TABLE `1212_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1212_teams`
--

DROP TABLE IF EXISTS `1212_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1212_teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1212_teams`
--

LOCK TABLES `1212_teams` WRITE;
/*!40000 ALTER TABLE `1212_teams` DISABLE KEYS */;
INSERT INTO `1212_teams` VALUES
(10,'Leetcode FC'),
(20,'NewYork FC'),
(30,'Atlanta FC'),
(40,'Chicago FC'),
(50,'Toronto FC');
/*!40000 ALTER TABLE `1212_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1225_failed`
--

DROP TABLE IF EXISTS `1225_failed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1225_failed` (
  `fail_date` date NOT NULL,
  PRIMARY KEY (`fail_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1225_failed`
--

LOCK TABLES `1225_failed` WRITE;
/*!40000 ALTER TABLE `1225_failed` DISABLE KEYS */;
INSERT INTO `1225_failed` VALUES
('2018-12-28'),
('2018-12-29'),
('2019-01-04'),
('2019-01-05');
/*!40000 ALTER TABLE `1225_failed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1225_succeeded`
--

DROP TABLE IF EXISTS `1225_succeeded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1225_succeeded` (
  `success_date` date NOT NULL,
  PRIMARY KEY (`success_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1225_succeeded`
--

LOCK TABLES `1225_succeeded` WRITE;
/*!40000 ALTER TABLE `1225_succeeded` DISABLE KEYS */;
INSERT INTO `1225_succeeded` VALUES
('2018-12-30'),
('2018-12-31'),
('2019-01-01'),
('2019-01-02'),
('2019-01-03'),
('2019-01-06');
/*!40000 ALTER TABLE `1225_succeeded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1264_friendship`
--

DROP TABLE IF EXISTS `1264_friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1264_friendship` (
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  PRIMARY KEY (`user1_id`,`user2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1264_friendship`
--

LOCK TABLES `1264_friendship` WRITE;
/*!40000 ALTER TABLE `1264_friendship` DISABLE KEYS */;
INSERT INTO `1264_friendship` VALUES
(1,2),
(1,3),
(1,4),
(2,3),
(2,4),
(2,5),
(6,1);
/*!40000 ALTER TABLE `1264_friendship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1264_likes`
--

DROP TABLE IF EXISTS `1264_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1264_likes` (
  `user_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1264_likes`
--

LOCK TABLES `1264_likes` WRITE;
/*!40000 ALTER TABLE `1264_likes` DISABLE KEYS */;
INSERT INTO `1264_likes` VALUES
(1,88),
(2,23),
(2,77),
(3,24),
(3,77),
(4,56),
(5,11),
(6,33),
(6,88);
/*!40000 ALTER TABLE `1264_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1308_scores`
--

DROP TABLE IF EXISTS `1308_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1308_scores` (
  `player_name` varchar(10) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `day` date NOT NULL,
  `score_points` int(11) DEFAULT NULL,
  PRIMARY KEY (`gender`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1308_scores`
--

LOCK TABLES `1308_scores` WRITE;
/*!40000 ALTER TABLE `1308_scores` DISABLE KEYS */;
INSERT INTO `1308_scores` VALUES
('Priyanka','F','2019-12-30',17),
('Priya','F','2019-12-31',23),
('Aron','F','2020-01-01',17),
('Alice','F','2020-01-07',23),
('Jose','M','2019-12-18',2),
('Khali','M','2019-12-25',11),
('Slaman','M','2019-12-30',13),
('Joe','M','2019-12-31',3),
('Bajrang','M','2020-01-07',7);
/*!40000 ALTER TABLE `1308_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1321_customer`
--

DROP TABLE IF EXISTS `1321_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1321_customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `visited_on` date NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`visited_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1321_customer`
--

LOCK TABLES `1321_customer` WRITE;
/*!40000 ALTER TABLE `1321_customer` DISABLE KEYS */;
INSERT INTO `1321_customer` VALUES
(1,'Jhon','2019-01-01',100),
(1,'Jhon','2019-01-10',130),
(2,'Daniel','2019-01-02',110),
(3,'Jade','2019-01-03',120),
(3,'Jade','2019-01-10',150),
(4,'Khaled','2019-01-04',130),
(5,'Winston','2019-01-05',110),
(6,'Elvis','2019-01-06',140),
(7,'Anna','2019-01-07',150),
(8,'Maria','2019-01-08',80),
(9,'Jaze','2019-01-09',110);
/*!40000 ALTER TABLE `1321_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1336_transactions`
--

DROP TABLE IF EXISTS `1336_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1336_transactions` (
  `user_id` int(11) DEFAULT NULL,
  `transaction_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1336_transactions`
--

LOCK TABLES `1336_transactions` WRITE;
/*!40000 ALTER TABLE `1336_transactions` DISABLE KEYS */;
INSERT INTO `1336_transactions` VALUES
(1,'2020-01-02',120),
(2,'2020-01-03',22),
(7,'2020-01-11',232),
(1,'2020-01-04',7),
(9,'2020-01-25',33),
(9,'2020-01-25',66),
(8,'2020-01-28',1),
(9,'2020-01-25',99);
/*!40000 ALTER TABLE `1336_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1336_visits`
--

DROP TABLE IF EXISTS `1336_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1336_visits` (
  `user_id` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  PRIMARY KEY (`user_id`,`visit_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1336_visits`
--

LOCK TABLES `1336_visits` WRITE;
/*!40000 ALTER TABLE `1336_visits` DISABLE KEYS */;
INSERT INTO `1336_visits` VALUES
(1,'2020-01-01'),
(1,'2020-01-02'),
(1,'2020-01-04'),
(2,'2020-01-02'),
(2,'2020-01-03'),
(7,'2020-01-11'),
(8,'2020-01-28'),
(9,'2020-01-25'),
(12,'2020-01-01'),
(19,'2020-01-03');
/*!40000 ALTER TABLE `1336_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1341_movie_rating`
--

DROP TABLE IF EXISTS `1341_movie_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1341_movie_rating` (
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `1341_movie_rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `1341_movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `1341_movie_rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `1341_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1341_movie_rating`
--

LOCK TABLES `1341_movie_rating` WRITE;
/*!40000 ALTER TABLE `1341_movie_rating` DISABLE KEYS */;
INSERT INTO `1341_movie_rating` VALUES
(1,1,3,'2020-01-12'),
(1,2,4,'2020-02-11'),
(1,3,2,'2020-02-12'),
(1,4,1,'2020-01-01'),
(2,1,5,'2020-02-17'),
(2,2,2,'2020-02-01'),
(2,3,2,'2020-03-01'),
(3,1,3,'2020-02-22'),
(3,2,4,'2020-02-25');
/*!40000 ALTER TABLE `1341_movie_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1341_movies`
--

DROP TABLE IF EXISTS `1341_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1341_movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1341_movies`
--

LOCK TABLES `1341_movies` WRITE;
/*!40000 ALTER TABLE `1341_movies` DISABLE KEYS */;
INSERT INTO `1341_movies` VALUES
(1,'Avengers'),
(2,'Frozen 2'),
(3,'Joker');
/*!40000 ALTER TABLE `1341_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1341_users`
--

DROP TABLE IF EXISTS `1341_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1341_users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1341_users`
--

LOCK TABLES `1341_users` WRITE;
/*!40000 ALTER TABLE `1341_users` DISABLE KEYS */;
INSERT INTO `1341_users` VALUES
(1,'Daniel'),
(2,'Monica'),
(3,'Maria'),
(4,'James');
/*!40000 ALTER TABLE `1341_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1369_UserActivity`
--

DROP TABLE IF EXISTS `1369_UserActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1369_UserActivity` (
  `username` varchar(10) DEFAULT NULL,
  `activity` varchar(10) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1369_UserActivity`
--

LOCK TABLES `1369_UserActivity` WRITE;
/*!40000 ALTER TABLE `1369_UserActivity` DISABLE KEYS */;
INSERT INTO `1369_UserActivity` VALUES
('Alice','Travel','2020-02-12','2020-02-20'),
('Alice','Dancing','2020-02-21','2020-02-23'),
('Alice','Travel','2020-02-24','2020-02-28'),
('Bob','Travel','2020-02-11','2020-02-18');
/*!40000 ALTER TABLE `1369_UserActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1384_product`
--

DROP TABLE IF EXISTS `1384_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1384_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1384_product`
--

LOCK TABLES `1384_product` WRITE;
/*!40000 ALTER TABLE `1384_product` DISABLE KEYS */;
INSERT INTO `1384_product` VALUES
(1,'LC Phone'),
(2,'LC T-Shirt'),
(3,'LC Keychain');
/*!40000 ALTER TABLE `1384_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1384_sales`
--

DROP TABLE IF EXISTS `1384_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1384_sales` (
  `product_id` int(11) NOT NULL,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `average_daily_sales` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_1384_sales_product_id_1384_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `1384_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1384_sales`
--

LOCK TABLES `1384_sales` WRITE;
/*!40000 ALTER TABLE `1384_sales` DISABLE KEYS */;
INSERT INTO `1384_sales` VALUES
(1,'2019-01-25','2019-02-28',100),
(2,'2018-12-01','2020-01-01',10),
(3,'2019-12-01','2020-01-31',1);
/*!40000 ALTER TABLE `1384_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1412_exam`
--

DROP TABLE IF EXISTS `1412_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1412_exam` (
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`exam_id`,`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1412_exam`
--

LOCK TABLES `1412_exam` WRITE;
/*!40000 ALTER TABLE `1412_exam` DISABLE KEYS */;
INSERT INTO `1412_exam` VALUES
(10,1,70),
(10,2,80),
(10,3,90),
(20,1,80),
(30,1,70),
(30,3,80),
(30,4,90),
(40,1,60),
(40,2,70),
(40,4,80);
/*!40000 ALTER TABLE `1412_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1412_student`
--

DROP TABLE IF EXISTS `1412_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1412_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1412_student`
--

LOCK TABLES `1412_student` WRITE;
/*!40000 ALTER TABLE `1412_student` DISABLE KEYS */;
INSERT INTO `1412_student` VALUES
(1,'Daniel'),
(2,'Jade'),
(3,'Stella'),
(4,'Jonathan'),
(5,'Will');
/*!40000 ALTER TABLE `1412_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1421_NPV`
--

DROP TABLE IF EXISTS `1421_NPV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1421_NPV` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `npv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1421_NPV`
--

LOCK TABLES `1421_NPV` WRITE;
/*!40000 ALTER TABLE `1421_NPV` DISABLE KEYS */;
INSERT INTO `1421_NPV` VALUES
(1,2018,100),
(1,2019,113),
(2,2008,121),
(3,2009,12),
(7,2019,0),
(7,2020,30),
(11,2020,99),
(13,2019,40);
/*!40000 ALTER TABLE `1421_NPV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1421_queries`
--

DROP TABLE IF EXISTS `1421_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1421_queries` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1421_queries`
--

LOCK TABLES `1421_queries` WRITE;
/*!40000 ALTER TABLE `1421_queries` DISABLE KEYS */;
INSERT INTO `1421_queries` VALUES
(1,2019),
(2,2008),
(3,2009),
(7,2018),
(7,2019),
(7,2020),
(13,2019);
/*!40000 ALTER TABLE `1421_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1459_points`
--

DROP TABLE IF EXISTS `1459_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1459_points` (
  `id` int(11) NOT NULL,
  `x_value` int(11) DEFAULT NULL,
  `y_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1459_points`
--

LOCK TABLES `1459_points` WRITE;
/*!40000 ALTER TABLE `1459_points` DISABLE KEYS */;
INSERT INTO `1459_points` VALUES
(1,2,8),
(2,4,7),
(3,2,10);
/*!40000 ALTER TABLE `1459_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1479_items`
--

DROP TABLE IF EXISTS `1479_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1479_items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(30) DEFAULT NULL,
  `item_category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1479_items`
--

LOCK TABLES `1479_items` WRITE;
/*!40000 ALTER TABLE `1479_items` DISABLE KEYS */;
INSERT INTO `1479_items` VALUES
(1,'LC Alg. Book','Book'),
(2,'LC DB. Book','Book'),
(3,'LC SmarthPhone','Phone'),
(4,'LC Phone 2020','Phone'),
(5,'LC SmartGlass','Glasses'),
(6,'LC T-Shirt XL','T-Shirt');
/*!40000 ALTER TABLE `1479_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `1479_orders`
--

DROP TABLE IF EXISTS `1479_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `1479_orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`item_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `fk_1479_orders_item_id_1479_items_item_id` FOREIGN KEY (`item_id`) REFERENCES `1479_items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1479_orders`
--

LOCK TABLES `1479_orders` WRITE;
/*!40000 ALTER TABLE `1479_orders` DISABLE KEYS */;
INSERT INTO `1479_orders` VALUES
(1,1,'2020-06-01',1,10),
(2,1,'2020-06-08',2,10),
(3,2,'2020-06-02',1,5),
(4,3,'2020-06-03',3,5),
(5,4,'2020-06-04',4,1),
(6,4,'2020-06-05',5,5),
(7,5,'2020-06-05',1,10),
(8,5,'2020-06-14',4,5),
(9,5,'2020-06-21',3,5);
/*!40000 ALTER TABLE `1479_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `177_employee`
--

DROP TABLE IF EXISTS `177_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `177_employee` (
  `id` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `177_employee`
--

LOCK TABLES `177_employee` WRITE;
/*!40000 ALTER TABLE `177_employee` DISABLE KEYS */;
INSERT INTO `177_employee` VALUES
(1,100),
(2,200),
(3,300);
/*!40000 ALTER TABLE `177_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `178_scores`
--

DROP TABLE IF EXISTS `178_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `178_scores` (
  `id` tinyint(4) DEFAULT NULL,
  `score` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `178_scores`
--

LOCK TABLES `178_scores` WRITE;
/*!40000 ALTER TABLE `178_scores` DISABLE KEYS */;
INSERT INTO `178_scores` VALUES
(1,3.50),
(2,3.65),
(3,4.00),
(4,3.85),
(5,4.00),
(6,3.65);
/*!40000 ALTER TABLE `178_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `185_department`
--

DROP TABLE IF EXISTS `185_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `185_department` (
  `id` int(11) NOT NULL,
  `name` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `185_department`
--

LOCK TABLES `185_department` WRITE;
/*!40000 ALTER TABLE `185_department` DISABLE KEYS */;
INSERT INTO `185_department` VALUES
(1,'IT'),
(2,'Sales');
/*!40000 ALTER TABLE `185_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `185_employee`
--

DROP TABLE IF EXISTS `185_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `185_employee` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  KEY `departmentid` (`departmentid`),
  CONSTRAINT `185_employee_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `185_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `185_employee`
--

LOCK TABLES `185_employee` WRITE;
/*!40000 ALTER TABLE `185_employee` DISABLE KEYS */;
INSERT INTO `185_employee` VALUES
(1,'Joe',85000,1),
(2,'Henry',80000,2),
(3,'Sam',60000,2),
(4,'Max',90000,1),
(5,'Janet',69000,1),
(6,'Randy',85000,1),
(7,'Will',70000,1);
/*!40000 ALTER TABLE `185_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `262_lookup_trips_status`
--

DROP TABLE IF EXISTS `262_lookup_trips_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `262_lookup_trips_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` char(30) NOT NULL,
  PRIMARY KEY (`id`,`status`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `262_lookup_trips_status`
--

LOCK TABLES `262_lookup_trips_status` WRITE;
/*!40000 ALTER TABLE `262_lookup_trips_status` DISABLE KEYS */;
INSERT INTO `262_lookup_trips_status` VALUES
(1,'completed'),
(2,'cancelled_by_client'),
(3,'cancelled_by_driver');
/*!40000 ALTER TABLE `262_lookup_trips_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `262_lookup_users_role`
--

DROP TABLE IF EXISTS `262_lookup_users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `262_lookup_users_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` char(6) NOT NULL,
  PRIMARY KEY (`id`,`role`),
  KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `262_lookup_users_role`
--

LOCK TABLES `262_lookup_users_role` WRITE;
/*!40000 ALTER TABLE `262_lookup_users_role` DISABLE KEYS */;
INSERT INTO `262_lookup_users_role` VALUES
(1,'client'),
(2,'driver');
/*!40000 ALTER TABLE `262_lookup_users_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `262_trips`
--

DROP TABLE IF EXISTS `262_trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `262_trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `status` char(30) NOT NULL,
  `request_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `client_id` (`client_id`),
  KEY `driver_id` (`driver_id`),
  CONSTRAINT `fk_262_trips_client_id_262_users_id` FOREIGN KEY (`client_id`) REFERENCES `262_users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_262_trips_driver_id_262_users_id` FOREIGN KEY (`driver_id`) REFERENCES `262_users` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_262_trips_status_262_lookup_trips_status` FOREIGN KEY (`status`) REFERENCES `262_lookup_trips_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `262_trips`
--

LOCK TABLES `262_trips` WRITE;
/*!40000 ALTER TABLE `262_trips` DISABLE KEYS */;
INSERT INTO `262_trips` VALUES
(1,1,10,1,'completed','2013-10-01'),
(2,2,11,1,'cancelled_by_driver','2013-10-01'),
(3,3,12,6,'completed','2013-10-01'),
(4,4,13,6,'cancelled_by_client','2013-10-01'),
(5,1,10,1,'completed','2013-10-02'),
(6,2,11,6,'completed','2013-10-02'),
(7,3,12,6,'completed','2013-10-02'),
(8,2,12,12,'completed','2013-10-03'),
(9,3,10,12,'completed','2013-10-03'),
(10,4,13,12,'cancelled_by_driver','2013-10-03');
/*!40000 ALTER TABLE `262_trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `262_users`
--

DROP TABLE IF EXISTS `262_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `262_users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `banned` char(3) NOT NULL CHECK (`banned` in ('No','Yes')),
  `role` char(6) NOT NULL,
  PRIMARY KEY (`users_id`),
  KEY `role` (`role`),
  CONSTRAINT `fk_262_users_role_262_lookup_users_role` FOREIGN KEY (`role`) REFERENCES `262_lookup_users_role` (`role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `262_users`
--

LOCK TABLES `262_users` WRITE;
/*!40000 ALTER TABLE `262_users` DISABLE KEYS */;
INSERT INTO `262_users` VALUES
(1,'No','client'),
(2,'Yes','client'),
(3,'No','client'),
(4,'No','client'),
(10,'No','driver'),
(11,'No','driver'),
(12,'No','driver'),
(13,'No','driver');
/*!40000 ALTER TABLE `262_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `534_activity`
--

DROP TABLE IF EXISTS `534_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `534_activity` (
  `player_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `event_date` date NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`,`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `534_activity`
--

LOCK TABLES `534_activity` WRITE;
/*!40000 ALTER TABLE `534_activity` DISABLE KEYS */;
INSERT INTO `534_activity` VALUES
(1,2,'2016-03-01',5),
(1,2,'2016-05-02',6),
(1,3,'2017-06-25',1),
(3,1,'2016-03-02',0),
(3,4,'2018-07-03',5);
/*!40000 ALTER TABLE `534_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `550_activity`
--

DROP TABLE IF EXISTS `550_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `550_activity` (
  `player_id` int(11) NOT NULL,
  `device_id` int(11) DEFAULT NULL,
  `event_date` date NOT NULL,
  `games_played` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`,`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `550_activity`
--

LOCK TABLES `550_activity` WRITE;
/*!40000 ALTER TABLE `550_activity` DISABLE KEYS */;
INSERT INTO `550_activity` VALUES
(1,2,'2016-03-01',5),
(1,2,'2016-03-02',6),
(2,3,'2017-06-25',1),
(3,1,'2016-03-02',0),
(3,4,'2018-07-03',5);
/*!40000 ALTER TABLE `550_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `569_employees`
--

DROP TABLE IF EXISTS `569_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `569_employees` (
  `id` int(11) DEFAULT NULL,
  `company` varchar(1) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `569_employees`
--

LOCK TABLES `569_employees` WRITE;
/*!40000 ALTER TABLE `569_employees` DISABLE KEYS */;
INSERT INTO `569_employees` VALUES
(1,'A',2341),
(2,'A',341),
(3,'A',15),
(4,'A',15314),
(5,'A',451),
(6,'A',513),
(7,'B',15),
(8,'B',13),
(9,'B',1154),
(10,'B',1345),
(11,'B',1221),
(12,'B',234),
(13,'C',2345),
(14,'C',2645),
(15,'C',2645),
(16,'C',2652),
(17,'C',65);
/*!40000 ALTER TABLE `569_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `570_employees`
--

DROP TABLE IF EXISTS `570_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `570_employees` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `department` varchar(1) DEFAULT NULL,
  `managerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `570_employees`
--

LOCK TABLES `570_employees` WRITE;
/*!40000 ALTER TABLE `570_employees` DISABLE KEYS */;
INSERT INTO `570_employees` VALUES
(101,'John','A',NULL),
(102,'Dan','A',101),
(103,'James','A',101),
(104,'Amy','A',101),
(105,'Anne','A',101),
(106,'Ron','B',101);
/*!40000 ALTER TABLE `570_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `571_numbers`
--

DROP TABLE IF EXISTS `571_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `571_numbers` (
  `number` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `571_numbers`
--

LOCK TABLES `571_numbers` WRITE;
/*!40000 ALTER TABLE `571_numbers` DISABLE KEYS */;
INSERT INTO `571_numbers` VALUES
(0,7),
(1,1),
(2,3),
(3,1);
/*!40000 ALTER TABLE `571_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `574_candidate`
--

DROP TABLE IF EXISTS `574_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `574_candidate` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `574_candidate`
--

LOCK TABLES `574_candidate` WRITE;
/*!40000 ALTER TABLE `574_candidate` DISABLE KEYS */;
INSERT INTO `574_candidate` VALUES
(1,'A'),
(2,'B'),
(3,'C'),
(4,'D'),
(5,'E');
/*!40000 ALTER TABLE `574_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `574_vote`
--

DROP TABLE IF EXISTS `574_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `574_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `574_vote`
--

LOCK TABLES `574_vote` WRITE;
/*!40000 ALTER TABLE `574_vote` DISABLE KEYS */;
INSERT INTO `574_vote` VALUES
(1,2),
(2,4),
(3,3),
(4,2),
(5,5);
/*!40000 ALTER TABLE `574_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `578_survey_log`
--

DROP TABLE IF EXISTS `578_survey_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `578_survey_log` (
  `id` int(11) NOT NULL,
  `action` varchar(6) NOT NULL CHECK (`action` in ('answer','show','skip')),
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `q_num` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  CONSTRAINT `CONSTRAINT_1` CHECK (`action` = 'answer' and `answer_id` <> NULL or (`action` = 'skip' or `action` = 'show') and `answer_id` = NULL)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `578_survey_log`
--

LOCK TABLES `578_survey_log` WRITE;
/*!40000 ALTER TABLE `578_survey_log` DISABLE KEYS */;
INSERT INTO `578_survey_log` VALUES
(5,'show',285,NULL,1,123),
(5,'answer',285,124124,1,124),
(5,'show',369,NULL,2,125),
(5,'skip',369,NULL,2,126);
/*!40000 ALTER TABLE `578_survey_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `579_employee`
--

DROP TABLE IF EXISTS `579_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `579_employee` (
  `id` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `579_employee`
--

LOCK TABLES `579_employee` WRITE;
/*!40000 ALTER TABLE `579_employee` DISABLE KEYS */;
INSERT INTO `579_employee` VALUES
(1,1,20),
(2,1,20),
(1,2,30),
(2,2,30),
(3,2,40),
(1,3,40),
(3,3,60),
(1,4,60),
(3,4,70);
/*!40000 ALTER TABLE `579_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `585_insurance`
--

DROP TABLE IF EXISTS `585_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `585_insurance` (
  `PID` int(11) DEFAULT NULL,
  `TIV_2015` decimal(15,2) DEFAULT NULL,
  `TIV_2016` decimal(15,2) DEFAULT NULL,
  `LAT` decimal(5,2) DEFAULT NULL,
  `LON` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `585_insurance`
--

LOCK TABLES `585_insurance` WRITE;
/*!40000 ALTER TABLE `585_insurance` DISABLE KEYS */;
INSERT INTO `585_insurance` VALUES
(1,10.00,5.00,10.00,10.00),
(2,20.00,20.00,20.00,20.00),
(3,10.00,30.00,20.00,20.00),
(4,10.00,40.00,40.00,40.00);
/*!40000 ALTER TABLE `585_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `601_stadium`
--

DROP TABLE IF EXISTS `601_stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `601_stadium` (
  `id` int(11) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `people` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `601_stadium`
--

LOCK TABLES `601_stadium` WRITE;
/*!40000 ALTER TABLE `601_stadium` DISABLE KEYS */;
INSERT INTO `601_stadium` VALUES
(1,'2017-01-01',10),
(2,'2017-01-02',109),
(3,'2017-01-03',150),
(4,'2017-01-04',99),
(5,'2017-01-05',145),
(6,'2017-01-06',1455),
(7,'2017-01-07',199),
(8,'2017-01-08',188);
/*!40000 ALTER TABLE `601_stadium` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `602_request_accepted`
--

DROP TABLE IF EXISTS `602_request_accepted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `602_request_accepted` (
  `requester_id` int(11) NOT NULL,
  `accepter` int(11) NOT NULL,
  `accept_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `602_request_accepted`
--

LOCK TABLES `602_request_accepted` WRITE;
/*!40000 ALTER TABLE `602_request_accepted` DISABLE KEYS */;
INSERT INTO `602_request_accepted` VALUES
(1,2,'2016-06-03'),
(1,3,'2016-06-08'),
(2,3,'2016-06-08'),
(3,4,'2016-06-09');
/*!40000 ALTER TABLE `602_request_accepted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `608_tree`
--

DROP TABLE IF EXISTS `608_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `608_tree` (
  `id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `608_tree`
--

LOCK TABLES `608_tree` WRITE;
/*!40000 ALTER TABLE `608_tree` DISABLE KEYS */;
INSERT INTO `608_tree` VALUES
(1,NULL),
(2,1),
(3,1),
(4,2),
(5,2);
/*!40000 ALTER TABLE `608_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `612_point_2d`
--

DROP TABLE IF EXISTS `612_point_2d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `612_point_2d` (
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `612_point_2d`
--

LOCK TABLES `612_point_2d` WRITE;
/*!40000 ALTER TABLE `612_point_2d` DISABLE KEYS */;
INSERT INTO `612_point_2d` VALUES
(-1,-1),
(0,0),
(-1,-2);
/*!40000 ALTER TABLE `612_point_2d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `614_follow`
--

DROP TABLE IF EXISTS `614_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `614_follow` (
  `followee` varchar(1) DEFAULT NULL,
  `follower` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `614_follow`
--

LOCK TABLES `614_follow` WRITE;
/*!40000 ALTER TABLE `614_follow` DISABLE KEYS */;
INSERT INTO `614_follow` VALUES
('A','B'),
('B','C'),
('B','D'),
('D','E');
/*!40000 ALTER TABLE `614_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `615_employee`
--

DROP TABLE IF EXISTS `615_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `615_employee` (
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `615_employee`
--

LOCK TABLES `615_employee` WRITE;
/*!40000 ALTER TABLE `615_employee` DISABLE KEYS */;
INSERT INTO `615_employee` VALUES
(1,1),
(2,2),
(3,2);
/*!40000 ALTER TABLE `615_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `615_salary`
--

DROP TABLE IF EXISTS `615_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `615_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  PRIMARY KEY (`id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `615_salary_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `615_employee` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `615_salary`
--

LOCK TABLES `615_salary` WRITE;
/*!40000 ALTER TABLE `615_salary` DISABLE KEYS */;
INSERT INTO `615_salary` VALUES
(1,1,9000,'2017-03-31'),
(2,2,6000,'2017-03-31'),
(3,3,10000,'2017-03-31'),
(4,1,7000,'2017-02-28'),
(5,2,6000,'2017-02-28'),
(6,3,8000,'2017-02-28');
/*!40000 ALTER TABLE `615_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `618_student`
--

DROP TABLE IF EXISTS `618_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `618_student` (
  `name` varchar(10) DEFAULT NULL,
  `continent` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `618_student`
--

LOCK TABLES `618_student` WRITE;
/*!40000 ALTER TABLE `618_student` DISABLE KEYS */;
INSERT INTO `618_student` VALUES
('Jack','America'),
('Pascal','Europe'),
('Xi','Asia'),
('Jane','America');
/*!40000 ALTER TABLE `618_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 16:40:34
