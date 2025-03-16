-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_partners
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
-- Table structure for table `marerial_type`
--

DROP TABLE IF EXISTS `marerial_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marerial_type` (
  `id_marerial_type` int NOT NULL AUTO_INCREMENT,
  `defect_marerial_type` double(5,2) NOT NULL,
  `name_marerial` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marerial_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marerial_type`
--

LOCK TABLES `marerial_type` WRITE;
/*!40000 ALTER TABLE `marerial_type` DISABLE KEYS */;
INSERT INTO `marerial_type` VALUES (1,0.10,'Тип материала 1'),(2,0.95,'Тип материала 2'),(3,0.28,'Тип материала 3'),(4,55.00,'Тип материала 4'),(5,0.34,'Тип материала 5');
/*!40000 ALTER TABLE `marerial_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_products`
--

DROP TABLE IF EXISTS `partner_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_products` (
  `id_parner_product` int NOT NULL AUTO_INCREMENT,
  `artikul_product` varchar(7) NOT NULL,
  `id_partner` int NOT NULL,
  `count_product` int NOT NULL,
  `data_sales` date NOT NULL,
  PRIMARY KEY (`id_parner_product`),
  KEY `fk_product` (`artikul_product`),
  KEY `fk_partner` (`id_partner`),
  CONSTRAINT `fk_partner` FOREIGN KEY (`id_partner`) REFERENCES `partners` (`id_partner`),
  CONSTRAINT `fk_product` FOREIGN KEY (`artikul_product`) REFERENCES `products` (`artikul_product`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_products`
--

LOCK TABLES `partner_products` WRITE;
/*!40000 ALTER TABLE `partner_products` DISABLE KEYS */;
INSERT INTO `partner_products` VALUES (1,'8758385',1,15500,'2023-03-23'),(2,'7750282',1,12350,'2023-12-18'),(3,'7028748',1,37400,'2024-06-07'),(4,'8858958',2,35000,'2022-12-02'),(5,'5012543',2,1250,'2023-05-17'),(6,'7750282',2,1000,'2024-06-07'),(7,'8758385',2,7550,'2024-07-01'),(8,'8758385',3,7250,'2023-01-22'),(9,'8858958',3,2500,'2024-07-05'),(10,'7028748',4,59050,'2023-03-20'),(11,'7750282',4,37200,'2024-03-12'),(12,'5012543',4,4500,'2024-05-14'),(13,'7750282',5,50000,'2023-09-19'),(14,'7028748',5,670000,'2023-11-10'),(15,'8758385',5,35000,'2024-04-15'),(16,'8858958',5,25000,'2024-06-12');
/*!40000 ALTER TABLE `partner_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partners` (
  `id_partner` int NOT NULL AUTO_INCREMENT,
  `type_partner` varchar(5) NOT NULL,
  `name_parnter` varchar(50) NOT NULL,
  `director_parnter_name` varchar(50) NOT NULL,
  `director_parnter_surname` varchar(45) NOT NULL,
  `director_parnter_patronymic` varchar(45) NOT NULL,
  `email_parnter` varchar(50) NOT NULL,
  `phone_parnter` varchar(50) NOT NULL,
  `address_index` varchar(50) NOT NULL,
  `address_region` varchar(45) NOT NULL,
  `address_city` varchar(45) NOT NULL,
  `address_street` varchar(45) NOT NULL,
  `address_numberhouse` varchar(45) NOT NULL,
  `inn_parnter` varchar(50) NOT NULL,
  `rating_parnter` varchar(50) NOT NULL,
  PRIMARY KEY (`id_partner`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'ЗАО','База Строитель','Иванова','Александра','Ивановна','aleksandraivanova@ml.ru','491234567','652050','Кемеровская область','Юрга','Лесная','7','2222455179','7'),(2,'ООО','Паркет 29','Петров','Василий','Петрович','vppetrov@vl.ru','987 123 56 78','164500','Архангельская область','Северодвинск','Строителей','18','3333888520','7'),(3,'ЗАО','Стройсервис','Соловьев','Андрей','Николаевич','ansolovev@st.ru','812 223 32 00','188910','Ленинградская область','Приморск','Парковая','21','4440391035','7'),(4,'ОАО','Ремонт и отделка','Воробьева','Екатерина','Валерьевна','ekaterina.vorobeva@ml.ru','444 222 33 11','143960','Московская область','Реутов','Свободы','51','1111520857','5'),(5,'ЗАО','МонтажПро','Степанов','Степан','Сергеевич','stepanov@stepan.ru','912 888 33 33','309500','Белгородская область','Старый Оскол','Рабочая','122','5552431140','10'),(6,'ЗАО','324','234','234','234','234','234','234','234','234','234','234','234','234'),(7,'ООО','12','12','12','1','2121','21','212','12','12','12','12','12','12'),(8,'ООО','1','1','1','1','1','1','1','1','1','1','1','1','1'),(9,'ЗАО','2','2','2445е','ее','2','45е','5е4е','45е','2','2','2пуук','2','3434'),(10,'ОАО','45','45','45','45','45','45','45','45','45','45','45','45','45'),(11,'ЗАО','цу','цуа','цу','а','цуаца','34','цуа','цуацуа','уца','уц','ацуа','3434','34'),(12,'ЗАО','1','1','11','1','1','1','1','1','1','1','ц','1','1');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_type` (
  `id_product_type` int NOT NULL AUTO_INCREMENT,
  `koef_product_type` double(5,2) NOT NULL,
  `name_product` varchar(45) NOT NULL,
  PRIMARY KEY (`id_product_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,2.35,'Ламинат'),(2,5.15,'Массивная доска'),(3,4.34,'Паркетная доска'),(4,1.50,'Пробковое покрытие');
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `artikul_product` varchar(7) NOT NULL,
  `id_product_type` int DEFAULT NULL,
  `name_product` varchar(500) NOT NULL,
  `min_price` double(10,4) NOT NULL,
  PRIMARY KEY (`artikul_product`),
  KEY `fk_product_type` (`id_product_type`),
  CONSTRAINT `fk_product_type` FOREIGN KEY (`id_product_type`) REFERENCES `product_type` (`id_product_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('5012543',4,'Пробковое напольное клеевое покрытие 32 класс 4 мм',5450.5900),('7028748',1,'Ламинат Дуб серый 32 класс 8 мм с фаской',3890.4100),('7750282',1,'Ламинат Дуб дымчато-белый 33 класс 12 мм',1799.3300),('8758385',3,'Паркетная доска Ясень темный однополосная 14 мм',4456.9000),('8858958',3,'Инженерная доска Дуб Французская елка однополосная 12 мм',7330.9900);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 16:49:38
