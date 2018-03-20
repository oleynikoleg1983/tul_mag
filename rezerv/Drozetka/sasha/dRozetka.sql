-- MySQL dump 10.14  Distrib 5.5.43-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: dRozetka
-- ------------------------------------------------------
-- Server version	5.5.43

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
-- Table structure for table `article_news`
--

DROP TABLE IF EXISTS `article_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_news` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `name_article` varchar(32) NOT NULL,
  `date_begin_publick` date NOT NULL,
  `date_end_publick` date NOT NULL,
  `content_article` varchar(255) NOT NULL,
  `description_article` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL,
  PRIMARY KEY (`id_article`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `article_news_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category_product` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_news`
--

LOCK TABLES `article_news` WRITE;
/*!40000 ALTER TABLE `article_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `name_category` varchar(255) NOT NULL,
  `id_parent_category` int(11) DEFAULT NULL,
  `id_sub_category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_category`),
  KEY `id_sub_category` (`id_sub_category`),
  CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`id_sub_category`) REFERENCES `sub_category` (`id_sub_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_clock`
--

DROP TABLE IF EXISTS `character_clock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_clock` (
  `id_character_clock` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `size_clock` varchar(32) NOT NULL,
  `color_clock` varchar(32) NOT NULL,
  PRIMARY KEY (`id_character_clock`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `character_clock_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_clock`
--

LOCK TABLES `character_clock` WRITE;
/*!40000 ALTER TABLE `character_clock` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_clock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_screen`
--

DROP TABLE IF EXISTS `character_screen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `character_screen` (
  `id_character_screen` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `type_screen` varchar(32) NOT NULL,
  `size_screen` int(11) NOT NULL,
  `color_screen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_character_screen`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `character_screen_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_screen`
--

LOCK TABLES `character_screen` WRITE;
/*!40000 ALTER TABLE `character_screen` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_screen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id_image` int(11) NOT NULL AUTO_INCREMENT,
  `name_image` varchar(255) NOT NULL,
  `url_image` varchar(255) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maker`
--

DROP TABLE IF EXISTS `maker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maker` (
  `id_maker` int(11) NOT NULL AUTO_INCREMENT,
  `name_maker` varchar(255) NOT NULL,
  `description_maker` varchar(255) DEFAULT NULL,
  `list_category_maker` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_maker`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maker`
--

LOCK TABLES `maker` WRITE;
/*!40000 ALTER TABLE `maker` DISABLE KEYS */;
/*!40000 ALTER TABLE `maker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_static`
--

DROP TABLE IF EXISTS `page_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_static` (
  `id_page` int(11) NOT NULL AUTO_INCREMENT,
  `name_page` varchar(255) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content_page` varchar(255) NOT NULL,
  `menu` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_static`
--

LOCK TABLES `page_static` WRITE;
/*!40000 ALTER TABLE `page_static` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_network`
--

DROP TABLE IF EXISTS `phone_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_network` (
  `id_phone_network` int(11) NOT NULL AUTO_INCREMENT,
  `name_network` varchar(255) NOT NULL,
  `code_network` int(11) NOT NULL,
  PRIMARY KEY (`id_phone_network`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_network`
--

LOCK TABLES `phone_network` WRITE;
/*!40000 ALTER TABLE `phone_network` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description_product` varchar(255) DEFAULT NULL,
  `id_image` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_maker` int(11) NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_image` (`id_image`),
  KEY `id_category` (`id_category`),
  KEY `id_maker` (`id_maker`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_image`) REFERENCES `image` (`id_image`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category_product` (`id_category`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`id_maker`) REFERENCES `maker` (`id_maker`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_category` (
  `id_sub_category` int(11) NOT NULL AUTO_INCREMENT,
  `name_sub_category` varchar(32) NOT NULL,
  `list_category_sub` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_sub_category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `id_phone_network` int(11) DEFAULT NULL,
  `date_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  KEY `id_phone_network` (`id_phone_network`),
  CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`id_phone_network`) REFERENCES `phone_network` (`id_phone_network`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_location`
--

DROP TABLE IF EXISTS `user_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_location` (
  `id_user_location` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(32) DEFAULT NULL,
  `post_code` int(11) DEFAULT NULL,
  `street` varchar(32) DEFAULT NULL,
  `number_house` int(11) DEFAULT NULL,
  `number_apartment` int(11) DEFAULT NULL,
  `poeben` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_user_location`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `user_location_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user_info` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_location`
--

LOCK TABLES `user_location` WRITE;
/*!40000 ALTER TABLE `user_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-25 16:22:49
