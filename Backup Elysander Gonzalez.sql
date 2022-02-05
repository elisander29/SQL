-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: baloncesto
-- ------------------------------------------------------
-- Server version	8.0.27

-- Las tablas son ciudad,detalle_partido,equipo_jugador,equipo,
-- estadistica_jugador,estadistica_torneo,jugadores,LOG_equipos,
-- LOG_jugadores,pais,partido,posicion,sede,torneo,torneo_equipo

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
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'San fracisco'),(2,'Caracas'),(3,'Anzoategui'),(4,'Barcelona'),(5,'Madrid');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `detalle_partido`
--

LOCK TABLES `detalle_partido` WRITE;
/*!40000 ALTER TABLE `detalle_partido` DISABLE KEYS */;
INSERT INTO `detalle_partido` VALUES (1,1,1),(2,1,2),(3,2,3),(4,1,1),(5,1,2),(6,2,3),(7,2,4),(8,3,5),(9,3,6);
/*!40000 ALTER TABLE `detalle_partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipo_jugador`
--

LOCK TABLES `equipo_jugador` WRITE;
/*!40000 ALTER TABLE `equipo_jugador` DISABLE KEYS */;
INSERT INTO `equipo_jugador` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,1),(1,2),(1,3),(1,4),(1,5),(1,7),(1,8),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20);
/*!40000 ALTER TABLE `equipo_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `equipos`
--

LOCK TABLES `equipos` WRITE;
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` VALUES (1,'Golden State Warriors','1946',1),(2,'Cocodrilos de Caracas','1990',2),(3,'Marinos de Anzoategui','1976',2),(4,'Boca Juniors','1929',3),(5,'Barcelona','1926',4),(6,'Real Madrid','1931',4),(7,'Guaros de Lara','1983',2),(8,'toros de aragua','1983',2),(10,'Guaros de Lara','1983',2);
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadistica_jugador`
--

LOCK TABLES `estadistica_jugador` WRITE;
/*!40000 ALTER TABLE `estadistica_jugador` DISABLE KEYS */;
INSERT INTO `estadistica_jugador` VALUES (1,20,5,2,2,2,'20:01',1,1),(2,30,6,1,1,1,'25:01',1,2),(3,22,5,2,2,2,'20:01',2,1),(4,32,6,1,1,1,'25:01',2,2),(5,21,5,2,2,2,'20:01',3,1),(6,31,6,1,1,1,'25:01',3,2),(7,23,5,2,2,2,'20:01',4,1),(8,33,6,1,1,1,'25:01',4,2),(9,24,5,2,2,2,'20:01',5,1),(10,34,6,1,1,1,'25:01',5,2);
/*!40000 ALTER TABLE `estadistica_jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estadistica_torneo`
--

LOCK TABLES `estadistica_torneo` WRITE;
/*!40000 ALTER TABLE `estadistica_torneo` DISABLE KEYS */;
INSERT INTO `estadistica_torneo` VALUES (1,'50','32','82','100','75',1),(2,'50','32','82','100','75',2),(3,'50','32','82','100','75',3);
/*!40000 ALTER TABLE `estadistica_torneo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jugadores`
--

LOCK TABLES `jugadores` WRITE;
/*!40000 ALTER TABLE `jugadores` DISABLE KEYS */;
INSERT INTO `jugadores` VALUES (1,'Stephen','Curry','1,91 m',1,'88 KG'),(2,'Gary','Payton II','1,91 m',1,'88 KG'),(3,'Chris','Chiozza','1,80 m',1,'79 KG'),(4,'Klay','Thompson','1,98 m',2,'98 KG'),(5,'Jordan','Poole','1,93 m',2,'88 KG'),(7,'Klay','Thompson','1,98 m',2,'98 KG'),(8,'Jordan','Poole','1,93 m',2,'88 KG'),(10,'Moses','Moody','1,98 m',2,'93 KG'),(11,'Damion','Lee','1,96 m',2,'92 KG'),(12,'Andrew','Wiggins','2,01 m',3,'93 KG'),(13,'Otto','Porter','2,03 m',3,'103 KG'),(14,'Andre','Iguodla','1,98 m',3,'98 KG'),(15,'Jonathan','Kuminga','2.03 m',3,'95 KG'),(16,'Draymond','Green','1,918 m',4,'107 KG'),(17,'Juan','Toscano','1,98 m',4,'97 KG'),(18,'Kevon','Looney','2,06 m',5,'113 KG'),(19,'James','Wiseman','2,13 m',5,'111 KG'),(20,'Nemanja','Bjelica','2,09 m',5,'106 KG'),(21,'elysander','gonzalez','1,80 ',1,'110 kg'),(23,'federico','Bongiovanni','1,90 m',2,'90 KG'),(24,'Cristian','Maier','2,00 m',3,'100 KG'),(25,'Elysander','Gonzalez','1,80 m',1,'110 KG'),(26,'federico','Bongiovanni','1,90 m',2,'90 KG'),(31,'federico','Bongiovanni','1,90 m',2,'90 KG');
/*!40000 ALTER TABLE `jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_equipos`
--

LOCK TABLES `log_equipos` WRITE;
/*!40000 ALTER TABLE `log_equipos` DISABLE KEYS */;
INSERT INTO `log_equipos` VALUES (1,'Guaros de Lara','1983',2,NULL,NULL,'INSERT'),(2,'toros de aragua','1983',2,NULL,NULL,'INSERT'),(3,'Guaros de Lara','1983',2,NULL,NULL,'INSERT'),(4,'Guaros de Lara','1983',2,'root@localhost','2022-01-26 20:15:01','DELETE'),(5,'Guaros de Lara','1983',2,NULL,NULL,'INSERT'),(6,'toros de aragua','1983',2,NULL,NULL,'INSERT'),(7,'toros de aragua','1983',2,'root@localhost','2022-01-31 12:51:07','DELETE');
/*!40000 ALTER TABLE `log_equipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_jugadores`
--

LOCK TABLES `log_jugadores` WRITE;
/*!40000 ALTER TABLE `log_jugadores` DISABLE KEYS */;
INSERT INTO `log_jugadores` VALUES (1,0,'Elysander','Gonzalez','1,80 m',1,'110 KG',NULL,NULL,'INSERT'),(2,NULL,'Elysander','Gonzalez','1,80 m',1,'110 KG','root@localhost','2022-01-26 20:00:58','DELETE'),(3,NULL,'Cristian','Maier','2,00 m',3,'100 KG','root@localhost','2022-01-31 11:13:31','DELETE'),(4,0,'elysaccnder','goccnzalez','1,80 ',1,'110 kg',NULL,NULL,'INSERT'),(5,NULL,'elysaccnder','goccnzalez','1,80 ',1,'110 kg','root@localhost','2022-01-31 11:30:26','DELETE'),(6,0,'federico','Bongiovanni','1,90 m',2,'90 KG',NULL,NULL,'INSERT'),(7,0,'Cristian','Maier','2,00 m',3,'100 KG',NULL,NULL,'INSERT'),(8,NULL,'Cristian','Maier','2,00 m',3,'100 KG','root@localhost','2022-01-31 11:59:05','DELETE');
/*!40000 ALTER TABLE `log_jugadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'EEUU'),(2,'Venezuela'),(3,'Argentina'),(4,'España'),(5,'Francia');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `partido`
--

LOCK TABLES `partido` WRITE;
/*!40000 ALTER TABLE `partido` DISABLE KEYS */;
INSERT INTO `partido` VALUES (1,1,'2022-01-19 00:00:00'),(2,1,'2022-01-18 00:00:00'),(3,1,'2022-01-17 00:00:00'),(4,1,'2022-01-16 00:00:00'),(5,2,'2022-01-19 00:00:00'),(6,2,'2022-01-18 00:00:00');
/*!40000 ALTER TABLE `partido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `posicion`
--

LOCK TABLES `posicion` WRITE;
/*!40000 ALTER TABLE `posicion` DISABLE KEYS */;
INSERT INTO `posicion` VALUES (1,'BASE'),(2,'ESCOLTA'),(3,'ALERO'),(4,'ALA-PIVOT'),(5,'PIVOT');
/*!40000 ALTER TABLE `posicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'Chase Center','Warriors Way, San Francisco',1,1,'18.064 espectadores'),(2,'Parque Naciones Unidas','El Paraiso, Caracas',2,2,'6.100 espectadores'),(3,'Luis Ramos','Puerto La Cruz, Estado Anzoátegui',2,3,'5.500 espectadores'),(4,'Palau Blaugrana','Av. de Joan XXIII,Barcelona',4,4,'7.585 espectadores'),(5,'WiZink Center','Av. Felipe II, Madrid, España',4,5,'15.000 espectadores');
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `torneo`
--

LOCK TABLES `torneo` WRITE;
/*!40000 ALTER TABLE `torneo` DISABLE KEYS */;
INSERT INTO `torneo` VALUES (1,'NBA','Temp 2022'),(2,'LPB','Temp 2022'),(3,'Liga ACB','Temp 2022');
/*!40000 ALTER TABLE `torneo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `torneo_equipo`
--

LOCK TABLES `torneo_equipo` WRITE;
/*!40000 ALTER TABLE `torneo_equipo` DISABLE KEYS */;
INSERT INTO `torneo_equipo` VALUES (1,1);
/*!40000 ALTER TABLE `torneo_equipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-04 21:50:58
