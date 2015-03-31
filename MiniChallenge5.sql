CREATE DATABASE  IF NOT EXISTS `minichallenge5` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `minichallenge5`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: minichallenge5
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `photoID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `path` varchar(1000) NOT NULL,
  `caption` varchar(1000) NOT NULL,
  PRIMARY KEY (`photoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (1,1,'http://i2.kym-cdn.com/photos/images/facebook/000/138/246/tumblr_lltzgnHi5F1qzib3wo1_400.jpg','Not Bad, Obama, Not Bad'),(2,1,'http://cdn.smosh.com/sites/default/files/ftpuploads/bloguploads/0913/harry-potter-memes-potter-lookin-fine.jpg','Sup Gurl <3 <3'),(3,1,'http://images.gmanews.tv/v3/webpics/v3/2014/07/2014_07_30_18_39_51.jpg','accidentally inlove'),(4,1,'http://philnews.ph/wp-content/uploads/2014/07/Nancy-Binay-Baloon.jpg','I Believe I Can Fly~~'),(5,1,'https://sowhatsnews.files.wordpress.com/2014/09/nancyworld.jpg','Nancy - Miss World'),(6,1,'https://pbs.twimg.com/profile_images/514770374647496704/SJ7hdJQL.jpeg','Binay'),(7,1,'https://pbs.twimg.com/media/B74DsiICMAAsL2A.jpg:large','Nancy the Swiss Guard'),(8,1,'https://raggster.files.wordpress.com/2013/09/scumbag-binay-2016.jpg','Hipster Jejomar Binay'),(9,2,'https://metaporista.files.wordpress.com/2015/01/pacquiao-meme-meme-generator-mayweather-y-u-no-want-to-fight-me-2f123a.jpg?w=434','vitwater'),(10,1,'http://cdn.meme.am/instances/500x/57331319.jpg','hehehe'),(11,1,'http://www.thedailypedia.com/wp-content/uploads/2014/06/b6.jpg','Jinggoy Jinggoy'),(12,1,'http://4.bp.blogspot.com/-lzN-S4y1nBk/UrMbzP83e3I/AAAAAAAAyS8/OsS88pNSLFk/s640/Dont+You+Know+Me+Junjun+Binay.jpg','Madilim sa Dasma Village eh');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user','password'),(2,'aaa','password');
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

-- Dump completed on 2015-04-01  2:38:36
