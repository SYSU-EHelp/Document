-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: localhost    Database: Ehelp
-- ------------------------------------------------------
-- Server version	5.7.13

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
-- Table structure for table answer
--

DROP TABLE IF EXISTS answer;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE answer (
  id int(11) NOT NULL AUTO_INCREMENT,
  answerer_id int(11) NOT NULL,
  date datetime NOT NULL,
  description varchar(200) NOT NULL,
  question_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table answer
--

LOCK TABLES answer WRITE;
/*!40000 ALTER TABLE answer DISABLE KEYS */;
INSERT INTO answer VALUES (1,2,'2010-02-02 00:00:00','ads',3),(2,3,'2013-12-31 00:00:00','zxc',3);
/*!40000 ALTER TABLE answer ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table contact
--

DROP TABLE IF EXISTS contact;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE contact (
  id int(11) NOT NULL AUTO_INCREMENT,
  contact_phone varchar(45) NOT NULL,
  contact_user varchar(45) NOT NULL,
  user_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table contact
--

LOCK TABLES contact WRITE;
/*!40000 ALTER TABLE contact DISABLE KEYS */;
INSERT INTO contact VALUES (1,'188','123',3),(2,'137','wer',3);
/*!40000 ALTER TABLE contact ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table emergency
--

DROP TABLE IF EXISTS emergency;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE emergency (
  id int(11) NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  finished int(11) NOT NULL,
  launcher_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table emergency
--

LOCK TABLES emergency WRITE;
/*!40000 ALTER TABLE emergency DISABLE KEYS */;
INSERT INTO emergency VALUES (1,'2018-02-02 00:00:00',1,3);
/*!40000 ALTER TABLE emergency ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table help
--

DROP TABLE IF EXISTS help;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE help (
  id int(11) NOT NULL AUTO_INCREMENT,
  address varchar(200) NOT NULL,
  date datetime NOT NULL,
  description varchar(200) NOT NULL,
  finished int(11) NOT NULL,
  launcher_id int(11) NOT NULL,
  title varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table help
--

LOCK TABLES help WRITE;
/*!40000 ALTER TABLE help DISABLE KEYS */;
INSERT INTO help VALUES (1,'road','2017-09-21 00:00:00','help please',1,3,'help'),(2,'qwe','2013-02-12 00:00:00','asd',1,4,'qwe');
/*!40000 ALTER TABLE help ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table question
--

DROP TABLE IF EXISTS question;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE question (
  id int(11) NOT NULL AUTO_INCREMENT,
  asker_id int(11) NOT NULL,
  date datetime NOT NULL,
  description varchar(200) NOT NULL,
  title varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table question
--

LOCK TABLES question WRITE;
/*!40000 ALTER TABLE question DISABLE KEYS */;
INSERT INTO question VALUES (3,3,'2020-02-02 00:00:00','zxc','zxzxc');
/*!40000 ALTER TABLE question ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table response
--

DROP TABLE IF EXISTS response;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE response (
  id int(11) NOT NULL AUTO_INCREMENT,
  event_id int(11) NOT NULL,
  event_type int(11) NOT NULL,
  user_id int(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table response
--

LOCK TABLES response WRITE;
/*!40000 ALTER TABLE response DISABLE KEYS */;
INSERT INTO response VALUES (1,1,1,3);
/*!40000 ALTER TABLE response ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table user
--

DROP TABLE IF EXISTS user;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE user (
  id int(11) NOT NULL AUTO_INCREMENT,
  avatar varchar(45) DEFAULT NULL,
  password varchar(45) NOT NULL,
  phone varchar(15) NOT NULL,
  username varchar(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY UK_589idila9li6a4arw1t8ht1gx (phone),
  UNIQUE KEY UK_sb8bbouer5wak8vyiiy4pf2bx (username)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table user
--

LOCK TABLES user WRITE;
/*!40000 ALTER TABLE user DISABLE KEYS */;
INSERT INTO user VALUES (3,NULL,'123456','1881925376','Gordan'),(4,NULL,'123456','123','Lin'),(5,'','123456','18819253762','GordanLin');
/*!40000 ALTER TABLE user ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-17 19:20:28
