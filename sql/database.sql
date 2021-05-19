CREATE DATABASE IF NOT EXISTS Biblioteca;

/*-------------------------------------------- TABLA AUTOR --------------------------------------------*/

CREATE TABLE `autor`(
  `claveautor` INT(11) NOT NULL, -- LLAVE PRIMARIA
  `nombre` VARCHAR(60) DEFAULT NULL,
  PRIMARY KEY (`claveautor`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `autor` VALUES
(2010,'Gabriel García Márquez'),
(2011,'Johann Wolfgang von Goethe'),
(2012,'Nikolai Gogol'),
(2013,'Giovanni Boccaccio'),
(2014,'Jorge Luis Borges'),
(2015,'Emily Brontë'),
(2016,'Albert Camus'),
(2017,'Paul Celan'),
(2018,'Louis-Ferdinand Céline'),
(2019,'Miguel de Cervantes');

/*-------------------------------------------- TABLA EDITORIAL --------------------------------------------*/

CREATE TABLE `editorial` (
  `claveeditorial` SMALLINT(6) NOT NULL, -- LLAVE PRIMARIA
  `nombre` VARCHAR(70) DEFAULT NULL,
  `direccion` VARCHAR(70) DEFAULT NULL,
  `telefono` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`claveeditorial`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `editorial` VALUES
(1,'Editorial animal de invierno ',' Santa Anita ','987867645'),
(2,'Caja Negra ',' La Victoria ','956784637'),
(3,'Colmena Editores ',' La Molina ','945672341'),
(4,'Editorial Ambar ',' Santa Anita ','945678364'),
(5,'Editorial Futura ',' Ate ','94671423'),
(6,'Editorial Macro ',' Surco ','95679087'),
(7,'Editorial Maria Trinidad ',' Comas ','9836784'),
(8,'Editorial gato viejo ',' Callao ','96389471'),
(9,'Editorial Pesopluma ','  Miraflores ','987387645'),
(10,'La travesía editora ',' San Isidro ','984890645');

/*-------------------------------------------- TABLA CATEGORIA --------------------------------------------*/

CREATE TABLE `categoria`(
  `clavecategoria` SMALLINT(6) NOT NULL, -- LLAVE PRIMARIA
  `nombre` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`clavecategoria`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `categoria` VALUES
(8010,'La soledad'),
(8011,'Tragedia'),
(8012,'Ambicion'),
(8013,'Aventura'),
(8014,'Drama'),
(8015,'Venganza'),
(8016,'Aventura'),
(8017,'Romance'),
(8018,'Aventura'),
(8019,'Imaginacion');

/*-------------------------------------------- TABLA LIBRO --------------------------------------------*/

CREATE TABLE `libro` (
  `clavelibro` INT(11) NOT NULL, -- LLAVE PRIMARIA
  `titulo` VARCHAR(70) DEFAULT NULL,
  `idioma` VARCHAR(15) DEFAULT NULL,
  `stock` INT(11) DEFAULT NULL,
  `formato` VARCHAR(15) DEFAULT NULL,
  `claveeditorial` SMALLINT(6) DEFAULT NULL, -- LLAVE FORANEA
  `clavecategoria` SMALLINT(6) DEFAULT NULL, -- LLAVE FORANEA
  `claveautor` INT(11) DEFAULT NULL, -- LLAVE FORANEA
  PRIMARY KEY (`clavelibro`),
  KEY `claveeditorial` (`claveeditorial`), 
  KEY `clavecategoria` (`clavecategoria`),
  KEY `claveautor` (`claveautor`),
  CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`claveeditorial`) REFERENCES `editorial` (`claveeditorial`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`clavecategoria`) REFERENCES `categoria` (`clavecategoria`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`claveautor`) REFERENCES `autor` (`claveautor`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `libro` VALUES
(1011,'Cien años de soledad ','English',20,'EPUB',1, 8010, 2010),
(1012,'Fausto ','Español',15,'MOBI',2, 8011, 2011),
(1013,'Almas muertas ','Español',11,'FISICO',3, 8012, 2012),
(1014,'Decamerón ','English',30,'FISICO',4, 8013, 2013),
(1015,'Ficciones ','English',13,'FISICO',5, 8014, 2014),
(1016,'Cumbres Borrascosas ','Español',27,'FISICO',6, 8015, 2015),
(1017,'El extranjero ','Español',24,'FISICO',7, 8016, 2016),
(1018,'Poemas ','Español',21,'FISICO',8, 8017, 2017),
(1019,'Viaje al fin de la noche ','Español',25,'PDF',9, 8018, 2018),
(1020,'Don Quijote de la Mancha ','English',35,'CBR',10, 8019, 2019);

/*-------------------------------------------- TABLA PRESTAMO --------------------------------------------*/

CREATE TABLE `prestamo` (
  `claveprestamo` INT(11) NOT NULL, -- Clave socio?
  `fecha_prestamo` DATE NOT NULL,
  `fecha_devolucion` DATE DEFAULT NULL,
  `clavesocio` INT(11) DEFAULT NULL,
  `clavelibro` INT(11) DEFAULT NULL,
  PRIMARY KEY (`claveprestamo`),
  KEY `clavesocio` (`clavesocio`),
  KEY `clavelibro` (`clavelibro`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`clavesocio`) REFERENCES `socio` (`clavesocio`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`clavelibro`) REFERENCES `libro` (`clavelibro`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `prestamo` VALUES
(5041,'2021-10-24','2021-10-24', 3011, 1011),
(5042,'2021-10-24','2021-11-24',3012, 1012),
(5043,'2021-10-14','2021-11-14',3013, 1013),
(5044,'2021-11-13','2021-12-13',3014, 1014),
(5045,'2021-11-12','2021-12-12',3015, 1015),
(5046,'2021-09-05','2021-10-05',3016, 1016),
(5047,'2021-08-09','2021-09-09',3017, 1017),
(5048,'2021-09-27','2021-10-27',3018, 1018),
(5049,'2021-10-12','2021-11-12',3019, 1019),
(5050,'2021-11-11','2021-12-11',3020, 1020);

/*-------------------------------------------- TABLA PRESTAMO --------------------------------------------*/

CREATE TABLE `socio` (
  `clavesocio` INT(11) NOT NULL,
  `nombre` VARCHAR(70) DEFAULT NULL,
  `direccion` VARCHAR(60) DEFAULT NULL,
  `telefono` VARCHAR(15) DEFAULT NULL,
  PRIMARY KEY (`clavesocio`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

INSERT INTO `socio` VALUES
(3011,'Eduardo Lopez ','Ate Vitarte','987385738'),
(3012,'Angel Mejía','Surco','987678294'),
(3013,'Joel Cardenas','Huaycan','987674372'),
(3014,'Omar Echevarria ','San Juan de Miraflores','93578294'),
(3015,'Efrain Gomez ','San Juan de Lurigancho','987397494'),
(3016,'Luis Romero ','Puente Piedra','983678294'),
(3017,'Edmundo Meza ','Ancon','989847394'),
(3018,'Piero Guerrero ','Miraflores','988973655'),
(3019,'Emanuel Vilchez','Santa Anita','987937456'),
(3020,'Samuel Lopez ','La Molina','984677894');