-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: decoration_dbq
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress` (
  `adress_id` int NOT NULL AUTO_INCREMENT,
  `index_city` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `street` varchar(30) DEFAULT NULL,
  `number_house` int DEFAULT NULL,
  PRIMARY KEY (`adress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (1,'344288','Ковров','Чехова',1),(2,'614164','Ковров','Степная',30),(3,'394242','Ковров','Коммунистическая',43),(4,'660540','Ковров','Солнечная',25),(5,'125837','Ковров','Шоссейная',40),(6,'125703','Ковров','Партизанская',49),(7,'625283','Ковров','Победы',46),(8,'614611','Ковров','Молодежная',50),(9,'454311','Ковров','Новая',19),(10,'660007','Ковров','Октябрьская',19),(11,'603036','Ковров','Садовая',4),(12,'450983','Ковров','Комсомольская',26),(13,'394782','Ковров','Чехова',3),(14,'603002','Ковров','Дзержинского',28),(15,'450558','Ковров','Набережная',30),(16,'394060','Ковров','Фрунзе',43),(17,'410661','Ковров','Школьная',50),(18,'625590','Ковров','Коммунистическая',20),(19,'625683','Ковров','8Марта',4),(20,'400562','Ковров','Зеленая',32),(21,'614510','Ковров','Маяковского',47),(22,'410542','Ковров','Светлая',46),(23,'620839','Ковров','Цветочная',8),(24,'443890','Ковров','Коммунистическая',1),(25,'603379','Ковров','Спортивная',46),(26,'603721','Ковров','Гоголя',41),(27,'410172','Ковров','Северная',13),(28,'420151','Ковров','Вишневая',32),(29,'125061','Ковров','Подгорная',8),(30,'630370','Ковров','Шоссейная',24),(31,'614753','Ковров','Полевая',35),(32,'426030','Ковров','Маяковского',44),(33,'450375','Ковров','Клубная',44),(34,'625560','Ковров','Некрасова',12),(35,'630201','Ковров','Комсомольская',17),(36,'190949','Ковров','Мичурина',26);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categories_id` int NOT NULL AUTO_INCREMENT,
  `categories_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ароматы для дома'),(2,'Вазы'),(3,'Горшки и подставки'),(4,'Интерьерные аксессуары'),(5,'Картины и фоторамки'),(6,'Свечи'),(7,'Часы'),(8,'Шкатулки и подставки');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer` (
  `manufacturer_id` int NOT NULL AUTO_INCREMENT,
  `manufacturer_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Aroma'),(2,'Cube Color'),(3,'Esteban'),(4,'Gallery'),(5,'Home Philosophy'),(6,'Kersten'),(7,'Miksdo'),(8,'True Scents'),(9,'Umbra'),(10,'Valley'),(11,'Весна');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_structure`
--

DROP TABLE IF EXISTS `order_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_structure` (
  `order_structure_id` int NOT NULL AUTO_INCREMENT,
  `article_number` varchar(15) DEFAULT NULL,
  `Quanity` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`order_structure_id`),
  KEY `article_number` (`article_number`),
  CONSTRAINT `order_structure_ibfk_1` FOREIGN KEY (`article_number`) REFERENCES `product` (`article_number`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_structure`
--

LOCK TABLES `order_structure` WRITE;
/*!40000 ALTER TABLE `order_structure` DISABLE KEYS */;
INSERT INTO `order_structure` VALUES (1,'K478R4',10,1),(2,'S563T4',2,2),(3,'K083T5',11,3),(4,'B037T5',1,4),(5,'R922T5',7,5),(6,'V783T5',1,6),(7,'H937R3',1,7),(8,'F903T5',4,8),(9,'R836R5',1,9),(10,'D832R2',5,10),(11,'F933T5',5,1),(12,'D034T5',6,2),(13,'D826T5',11,3),(14,'D832R2',5,4),(15,'D044T5',5,5),(16,'F933T5',5,6),(17,'S039T5',3,7),(18,'F937R4',3,8),(19,'D826T5',2,9),(20,'D044T5',2,10);
/*!40000 ALTER TABLE `order_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_structure_id` int NOT NULL,
  `date_order` date DEFAULT NULL,
  `data_delivery` date DEFAULT NULL,
  `adress_id` int DEFAULT NULL,
  `fio_client` varchar(30) DEFAULT NULL,
  `kod_delivery` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`order_structure_id`),
  KEY `status_id` (`status_id`),
  KEY `adress_id` (`adress_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`order_structure_id`) REFERENCES `order_structure` (`order_structure_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`adress_id`) REFERENCES `adress` (`adress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2001-05-20','2007-05-20',2,'Архипова Оливия Дмитриевна',111,1),(2,'2002-05-20','2008-05-20',8,'null',112,1),(3,'2003-05-20','2009-05-20',10,'null',113,1),(4,'2004-05-20','2010-05-20',12,'null',114,2),(5,'2005-05-20','2011-05-20',15,'null',115,1),(6,'2006-05-20','2012-05-20',18,'Никонова Татьяна Захаровна',116,1),(7,'2007-05-20','2013-05-20',20,'null',117,2),(8,'2008-05-20','2014-05-20',25,'null',118,1),(9,'2009-05-20','2015-05-20',30,'null',119,2),(10,'2010-05-20','2016-05-20',36,'Рябова Диана Павловна',120,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `article_number` varchar(30) NOT NULL,
  `name_product` varchar(15) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `max_discount` int DEFAULT NULL,
  `manufacturer_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `categories_id` int DEFAULT NULL,
  `current_discount` int DEFAULT NULL,
  `quantity_stock` int DEFAULT NULL,
  `description` text,
  `image` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`article_number`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `categories_id` (`categories_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`manufacturer_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('B025Y5','Блюдо','шт.',1890,5,5,1,4,3,4,'Блюдодекоративноеflower35смHomePhilosophy','picture.png'),('B037T5','Блюдо','шт.',690,5,2,2,4,4,5,'Блюдо декоративное Flower 35 см','picture.png'),('D034T5','Диффузор','шт.',800,20,7,2,1,2,15,'Диффузор Mikadointense Апельсин с корицей','D034T5.jpg'),('D044T5','Декорнастенный','шт.',1790,5,5,1,4,3,7,'Декорнастенный Фантазия 45х45х1см',NULL),('D826T5','Диффузор','шт.',600,5,8,2,1,2,13,'Диффузор TrueScents 45 мл манго',NULL),('D832R2','Растение','шт.',1000,10,5,1,4,3,15,'Декоративное растение 102см',NULL),('D947R5','Диффузор','шт.',500,5,1,2,1,4,6,'Диффузор Aroma Harmony Lavender',NULL),('F837T5','Фоторамка','шт.',999,5,4,2,5,2,15,'Шкатулка для украшений из дерева Stowit',NULL),('F903T5','Фоторамка','шт.',600,15,4,2,5,2,3,'Фоторамка Gallery 20х30 см',NULL),('F928T5','Фоторамка','шт.',1590,25,9,1,5,2,13,'Фоторамка Prisma 10х10см',NULL),('F933T5','Кашпо','шт.',1400,20,2,2,3,4,23,'Настольное кашпосавтополивом CubeColor','F933T5.jpg'),('F937R4','Фоторамка','шт.',359,15,4,2,5,4,17,'Фоторамка 10х15смGaller yсерыйспатиной/золотой',NULL),('H023R8','Часы','шт.',560000,15,9,1,7,2,6,'ЧасынастенныеRibbon30,5см','H023R8.jpg'),('H937R3','Часы','шт.',999,10,9,2,7,3,4,'Часынастенные650030,2см','H937R3.jpg'),('K083T5','Аромат','шт.',2790,20,3,1,1,2,6,'СменныйароматFiguenoire250мл',NULL),('K478R4','Аромат','шт.',3500,30,3,1,1,4,4,'Аромат для декобукета Esteban','K478R4.jpg'),('K937T4','Аромат','шт.',7900,25,3,1,1,2,17,'Деко-букетКедр250мл',NULL),('P846R4','Подставка','шт.',1400,15,10,1,3,3,12,'Подставкадляцветочныхгоршков55x25x35смValley',NULL),('P927R2','Подставка','шт.',4000,15,10,1,3,2,4,'ПодставкадляцветочныхгоршковValley','P927R2.jpg'),('P936E4','Подставка','шт.',3590,15,9,1,3,4,9,'ПодставкадлягазетижурналовZina','P936E4.jpg'),('R836R5','Шкатулка','шт.',8000,30,9,1,8,5,3,'ШкатулкадляукрашенийиздереваStowit',NULL),('R922T5','Шкатулка','шт.',690,10,5,1,8,2,4,'ШкатулкаизкерамикиLana6х7см',NULL),('S039T5','Свеча','шт.',250,10,8,2,6,2,18,'СвечаTrueMoodsFeelhappy',NULL),('S563T4','Свеча','шт.',1000,20,8,2,6,3,12,'Свеча в стакане TrueScents','S563T4.jpg'),('S936Y5','Свеча','шт.',299,15,8,2,1,3,4,'Свеча в стакане TrueScents',NULL),('S937T5','Подсвечник','шт.',2600,10,6,1,2,3,23,'Подсвечник 37см','picture.png'),('V432R6','Ваза','шт.',1990,10,6,1,2,3,30,'Ваза из фаянса28,00x9,50x9,50см',NULL),('V483R7','Ваза','шт.',100,15,11,2,2,3,7,'Ваза «Весна» 18 см стекло,цветпрозрачный','V483R7.jpg'),('V783T5','Ваза','шт.',1300,25,5,1,2,2,13,'Ваза из керамики Betty','V783T5.jpg'),('wef','ewd','wed',23,32,2,2,2,23,23,'2323',NULL),('weg','eg','wegw',2323,32,1,1,1,23,23,'eb',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Администратор'),(2,'Клиент'),(3,'Менеджер');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Новый'),(2,'Завершен');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Стокманн'),(2,'Hoff');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `patronymic` varchar(40) DEFAULT NULL,
  `login` varchar(40) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Алексеев','Владислав','Аркадьевич','loginDEbct2018','Qg3gff',2),(2,'Савельева','Евфросиния','Арсеньевна','loginDEvtg2018','ETMNzL',1),(3,'Никонов','Мэлс','Лукьевич','loginDEuro2018','a1MIcO',2),(4,'Горшкова','Агафья','Онисимовна','loginDEpst2018','0CyGnX',2),(5,'Горбачёв','Пантелеймон','Германович','loginDEpsu2018','Vx9cQ{',3),(6,'Ершова','Иванна','Максимовна','loginDEzqs2018','qM9p7i',3),(7,'Туров','Денис','Геласьевич','loginDEioe2018','yMPu&2',3),(8,'Носова','Наина','Эдуардовна','loginDEcmk2018','3f+b0+',1),(9,'Куликов','Андрей','Святославович','loginDEfsp2018','&dtlI+',2),(10,'Нестеров','Агафон','Георгьевич','loginDExcd2018','SZXZNL',2),(11,'Козлов','Геласий','Христофорович','loginDEvlf2018','O5mXc2',3),(12,'Борисова','Анжелика','Анатольевна','loginDEanv2018','Xiq}M3',1),(13,'Суханов','Станислав','Фролович','loginDEzde2018','tlO3x&',3),(14,'Тетерина','Феврония','Эдуардовна','loginDEriv2018','GJ2mHL',3),(15,'Муравьёва','Александра','Ростиславовна','loginDEhcp2018','n2nfRl',3),(16,'Новикова','Лукия','Ярославовна','loginDEwjv2018','ZfseKA',3),(17,'Агафонова','Лариса','Михаиловна','loginDEiry2018','5zu7+}',3),(18,'Сергеева','Агата','Юрьевна','loginDEgbr2018','}+Ex1*',3),(19,'Колобова','Елена','Евгеньевна','loginDExxv2018','+daE|T',3),(20,'Ситников','Николай','Филатович','loginDEbto2018','b1iYMI',2),(21,'Белов','Роман','Иринеевич','loginDEfbs2018','v90Rep',3),(22,'Волкова','Алла','Лукьевна','loginDEple2018','WlW+l8',1),(23,'Кудрявцева','Таисия','Игоревна','loginDEhhx2018','hmCHeQ',3),(24,'Семёнова','Октябрина','Христофоровна','loginDEayn2018','Ka2Fok',3),(25,'Смирнов','Сергей','Яковович','loginDEwld2018','y9HStF',3),(26,'Брагина','Алина','Валерьевна','loginDEhuu2018','X31OEf',2),(27,'Евсеев','Игорь','Донатович','loginDEmjb2018','5mm{ch',3),(28,'Суворов','Илья','Евсеевич','loginDEdgp2018','1WfJjo',3),(29,'Котов','Денис','Мартынович','loginDEgyi2018','|7nYPc',1),(30,'Бобылёва','Юлия','Егоровна','loginDEmvn2018','Mrr9e0',2),(31,'Брагин','Бронислав','Георгьевич','loginDEfoj2018','nhGc+D',1),(32,'Александров','Владимир','Дамирович','loginDEuuo2018','42XmH1',2),(33,'Фокин','Ириней','Ростиславович','loginDEhsj2018','s+jrMW',2),(34,'Воронов','Митрофан','Антонович','loginDEvht2018','zMyS8Z',2),(35,'Маслов','Мстислав','Антонинович','loginDEeqo2018','l5CBqA',2),(36,'Щербаков','Георгий','Богданович','loginDExrf2018','mhpRIT',2),(37,'Кириллова','Эмилия','Федосеевна','loginDEfku2018','a1m+8c',3),(38,'Васильев','Серапион','Макарович','loginDExix2018','hzxtnn',1),(39,'Галкина','Олимпиада','Владленовна','loginDEqrf2018','mI8n58',3),(40,'Яковлева','Ксения','Онисимовна','loginDEhlk2018','g0jSed',2),(41,'Калашникова','Александра','Владимировна','loginDEwoe2018','yOtw2F',1),(42,'Медведьева','Таисия','Тихоновна','loginDExyu2018','7Fg}9p',2),(43,'Карпова','Ольга','Лукьевна','loginDEcor2018','2cIrC8',2),(44,'Герасимов','Мстислав','Дамирович','loginDEqon2018','YeFbh6',3),(45,'Тимофеева','Ксения','Валерьевна','loginDEyfd2018','8aKdb0',2),(46,'Горбунов','Вячеслав','Станиславович','loginDEtto2018','qXYDuu',3),(47,'Кошелева','Кира','Владиславовна','loginDEdal2018','cJWXL0',3),(48,'Панфилова','Марина','Борисовна','loginDEbjs2018','Xap2ct',3),(49,'Кудрявцев','Матвей','Игоревич','loginDEdof2018','kD|LRU',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 16:52:05
