/*
SQLyog Ultimate v8.61 
MySQL - 5.6.16 : Database - preguntas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`preguntas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `preguntas`;

/*Table structure for table `calificacion` */

DROP TABLE IF EXISTS `calificacion`;

CREATE TABLE `calificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `calificacion` varchar(100) DEFAULT NULL,
  `respuestas` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `calificacion` */

LOCK TABLES `calificacion` WRITE;

UNLOCK TABLES;

/*Table structure for table `cuestionario` */

DROP TABLE IF EXISTS `cuestionario`;

CREATE TABLE `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL,
  `respuesta2` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `cuestionario` */

LOCK TABLES `cuestionario` WRITE;

insert  into `cuestionario`(`id`,`pregunta`,`respuesta`,`respuesta2`) values (1,'¿El Toluca tiene 10 titulos?','si',NULL),(2,'¿Marte es una estrella?','no',1),(3,'¿Newton fue cantante?','no',NULL),(4,'¿PHP es un lenguaje de programación?','si',0),(5,'¿Bill Gates fundo Microsoft?','si',NULL),(6,'¿Messi juega en el Barcelona?','si',1),(7,'¿Cleopatra fue reina de Roma?','no',NULL),(8,'¿El Kilauea es un volcán?','si',1),(9,'¿Ronaldinho juega en el Napoli?','no',0),(10,'¿La ballena es un mamífero?','si',1),(11,'¿Drogba jugo en el Arsenal?','no',0),(12,'¿El Xbox360 es de Sony?','no',NULL),(13,'¿Assasins Creed es un juego de video?','si',1),(14,'¿Beethoven compuso la novena sinfonía?','si',NULL),(15,'¿Napoleón conquisto China?','no',NULL),(16,'¿José Cardozo anoto 148 goles en Toluca?','no',NULL),(17,'¿Nike fabrica computadoras?','no',1),(18,'¿La avestruz vuela?','no',NULL),(19,'¿MySql es un gestor de base de datos?','si',NULL),(20,'¿Windows 8 es un sistema operativo?','si',NULL),(21,'¿TCP es un protocolo de red?','si',NULL),(22,'¿Titanic fue una nave espacial?','no',NULL),(23,'¿Android es un S.O para smartphones?','si',NULL),(24,'¿Mozambique se encuentra en África?','si',NULL),(25,'¿El Helio es un elemento químico?','si',1);

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(200) DEFAULT NULL,
  `Contrasena` varchar(200) DEFAULT NULL,
  `Calificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`Id`,`User`,`Contrasena`,`Calificacion`) values (1,'joseluis','123','7');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
