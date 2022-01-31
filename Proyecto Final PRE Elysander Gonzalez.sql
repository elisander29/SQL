CREATE DATABASE baloncesto

USE baloncesto;

## QUERYS PARA LA CREACION DE LAS TABLAS

CREATE TABLE `jugadores` (
  `ID_JUGADORES` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Altura` varchar(45) NOT NULL,
  `ID_posicion` int NOT NULL,
  `Peso` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_JUGADORES`));

CREATE TABLE `posicion` (
  `ID_posicion` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_posicion`));


CREATE TABLE `equipos` (
  `ID_Equipos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Año` VARCHAR(45) NOT NULL,
  `ID_pais` INT NOT NULL,
  PRIMARY KEY (`ID_Equipos`));


CREATE TABLE `equipo_jugador` (
  `ID_equipo` INT NOT NULL,
  `Id_jugador` INT NOT NULL);



CREATE TABLE `pais` (
  `ID_pais` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_pais`));


CREATE TABLE `ciudad` (
  `ID_ciudad` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_ciudad`));


CREATE TABLE `sede/estadio` (
  `ID_sede` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `ID_pais` INT NOT NULL,
  `ID_ciudad` INT NOT NULL,
  `Capacidad_max` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_sede`));


CREATE TABLE `partido` (
  `ID_partido` INT NOT NULL AUTO_INCREMENT,
  `ID_sede` INT NOT NULL,
  `FechayHora` DATETIME NOT NULL,
  PRIMARY KEY (`ID_partido`));




CREATE TABLE `detalle_partido` (
  `ID_partidodetalle` INT NOT NULL AUTO_INCREMENT,
  `ID_partido` INT NOT NULL,
  `ID_equipo` INT NOT NULL,
  PRIMARY KEY (`ID_partidodetalle`));


CREATE TABLE `torneo` (
  `ID_torneo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Edicion_torneo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_torneo`));

CREATE TABLE `estadistica_jugador` (
  `ID_E_jugador` INT NOT NULL AUTO_INCREMENT,
  `Puntos` VARCHAR(45) NOT NULL,
  `Rebotes` VARCHAR(45) NOT NULL,
  `Bloqueos` VARCHAR(45) NOT NULL,
  `Robos` VARCHAR(45) NOT NULL,
  `Asistencia` VARCHAR(45) NOT NULL,
  `Min_jugados` VARCHAR(45) NOT NULL,
  `ID_jugador` INT NOT NULL,
  `ID_partido` INT NOT NULL,
  PRIMARY KEY (`ID_E_jugador`));



CREATE TABLE `estadistica_torneo` (
  `ID_E_torneo` INT NOT NULL AUTO_INCREMENT,
  `J_ganados` VARCHAR(45) NOT NULL,
  `J_perdidos` VARCHAR(45) NOT NULL,
  `J_jugados` VARCHAR(45) NOT NULL,
  `P_favor` VARCHAR(45) NOT NULL,
  `P_contra` VARCHAR(45) NOT NULL,
  `ID_torneo` INT NOT NULL,
  PRIMARY KEY (`ID_E_torneo`));

CREATE TABLE `torneo_equipo` (
  `ID_torneo` INT NOT NULL,
  `ID_equipo` INT NOT NULL);

## Las claves foráneas 

ALTER TABLE `detalle_partido` 
ADD INDEX `Partido_J_idx` (`ID_partido` ASC) VISIBLE,
ADD INDEX `Equipo_J_idx` (`ID_equipo` ASC) VISIBLE;
;
ALTER TABLE `detalle_partido` 
ADD CONSTRAINT `Partido_J`
  FOREIGN KEY (`ID_partido`)
  REFERENCES `partido` (`ID_partido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
  
ADD CONSTRAINT `Equipo_J`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `equipo_jugador` 
ADD INDEX `FK_Equipo_P_idx` (`ID_equipo` ASC) VISIBLE,
ADD INDEX `FK__Jugador_P_idx` (`Id_jugador` ASC) VISIBLE;
;

ALTER TABLE `equipo_jugador` 
ADD CONSTRAINT `FK_Equipo_P`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK__Jugador_P`
  FOREIGN KEY (`Id_jugador`)
  REFERENCES `jugadores` (`ID_JUGADORES`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `equipos` 
ADD INDEX `FK_Pais_idx` (`ID_pais` ASC) VISIBLE;
;
ALTER TABLE `equipos` 
ADD CONSTRAINT `FK_Pais`
  FOREIGN KEY (`ID_pais`)
  REFERENCES `pais` (`ID_pais`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



ALTER TABLE `estadistica_jugador` 
ADD INDEX `FK_Jugador_P_idx` (`ID_jugador` ASC) VISIBLE,
ADD INDEX `FK_Partido_J_idx` (`ID_partido` ASC) VISIBLE;
;
ALTER TABLE `estadistica_jugador` 
ADD CONSTRAINT `FK_Jugador_P`
  FOREIGN KEY (`ID_jugador`)
  REFERENCES `jugadores` (`ID_JUGADORES`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Partido_J`
  FOREIGN KEY (`ID_partido`)
  REFERENCES `partido` (`ID_partido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `estadistica_torneo` 
ADD INDEX `FK_torneo_p_idx` (`ID_torneo` ASC) VISIBLE;
;
ALTER TABLE `estadistica_torneo` 
ADD CONSTRAINT `FK_torneo_p`
  FOREIGN KEY (`ID_torneo`)
  REFERENCES `torneo` (`ID_torneo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



ALTER TABLE `torneo_equipo` 
ADD INDEX `FK_Torneo_E_idx` (`ID_torneo` ASC) VISIBLE;
;
ALTER TABLE `torneo_equipo` 
ADD CONSTRAINT `FK_Torneo_E`
  FOREIGN KEY (`ID_torneo`)
  REFERENCES `torneo` (`ID_torneo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `partido` 
ADD INDEX `FK_sede_idx` (`ID_sede` ASC) VISIBLE;
;
ALTER TABLE `partido` 
ADD CONSTRAINT `FK_sede`
  FOREIGN KEY (`ID_sede`)
  REFERENCES `sede/estadio` (`ID_sede`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;



ALTER TABLE `sede/estadio` 
ADD INDEX `INDEX_pais_idx` (`ID_pais` ASC) VISIBLE,
ADD INDEX `INDEX_ciudad_idx` (`ID_ciudad` ASC) VISIBLE;
;
ALTER TABLE `sede/estadio` 
ADD CONSTRAINT `FK_pais_s`
  FOREIGN KEY (`ID_pais`)
  REFERENCES `pais` (`ID_pais`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_ciudad`
  FOREIGN KEY (`ID_ciudad`)
  REFERENCES `ciudad` (`ID_ciudad`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `jugadores` 
ADD INDEX `FK_posicion_idx` (`ID_posicion` ASC) VISIBLE;
;
ALTER TABLE `jugadores` 
ADD CONSTRAINT `FK_posicion`
  FOREIGN KEY (`ID_posicion`)
  REFERENCES `posicion` (`ID_posicion`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `torneo_equipo` 
ADD INDEX `FK_equipo_E_idx` (`ID_equipo` ASC) VISIBLE;
;


ALTER TABLE `torneo_equipo` 
ADD CONSTRAINT `FK_equipo_E`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `sede/estadio` 
RENAME TO  `sede` ;


ALTER TABLE `estadistica_jugador` 
CHANGE COLUMN `Puntos` `Puntos` INT NOT NULL ,
CHANGE COLUMN `Rebotes` `Rebotes` INT NOT NULL ,
CHANGE COLUMN `Bloqueos` `Bloqueos` INT NOT NULL ,
CHANGE COLUMN `Robos` `Robos` INT NOT NULL ,
CHANGE COLUMN `Asistencia` `Asistencia` INT NOT NULL ;


## LOS SCRIT DE LOS INSET DE LA TABLAS ----------------------------------------------------------

#posicion
insert into `posicion` (`id_posicion`,`nombre`) values ('1','BASE');
insert into `posicion` (`id_posicion`,`nombre`) values ('2','ESCOLTA');
insert into `posicion` (`id_posicion`,`nombre`) values ('3','ALERO');
insert into `posicion` (`id_posicion`,`nombre`) values ('4','ALA-PIVOT');
insert into `posicion` (`id_posicion`,`nombre`) values ('5','PIVOT');

#jugadores
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values ('1','Stephen','Curry','1,91 m','1','88 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Gary','Payton II','1,91 m','1','88 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Chris','Chiozza','1,80 m','1','79 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Klay','Thompson','1,98 m','2','98 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Jordan','Poole','1,93 m','2','88 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Moses','Moody','1,98 m','2','93 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Damion','Lee','1,96 m','2','92 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Andrew','Wiggins','2,01 m','3','93 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Otto','Porter','2,03 m','3','103 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Andre','Iguodla','1,98 m','3','98 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Jonathan','Kuminga','2.03 m','3','95 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Draymond','Green','1,918 m','4','107 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Juan','Toscano','1,98 m','4','97 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Kevon','Looney','2,06 m','5','113 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'James','Wiseman','2,13 m','5','111 KG');
insert into  `jugadores`(`ID_jugadores`,`nombre`,`apellido`,`altura`,`ID_posicion`,`peso`)  values (null,'Nemanja','Bjelica','2,09 m','5','106 KG');

#PAIS
insert into `Pais` (`ID_pais`,`Nombre`) values (null,'EEUU');
insert into `Pais` (`ID_pais`,`Nombre`) values (null,'Venezuela');
insert into `Pais` (`ID_pais`,`Nombre`) values (null,'Argentina');
insert into `Pais` (`ID_pais`,`Nombre`) values (null,'España');
insert into `Pais` (`ID_pais`,`Nombre`) values (null,'Francia');

#Equipos
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Golden State Warriors','1946','1');
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Cocodrilos de Caracas','1990','2');
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Marinos de Anzoategui','1976','2');
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Boca Juniors','1929','3');
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Barcelona','1926','4');
insert into `equipos` (`ID_equipos`,`Nombre`,`Año`,`id_pais`) values (null,'Real Madrid','1931','4');
#CIUDAD
insert into `ciudad` (`ID_Ciudad`,`Nombre`) values (null,'San fracisco');
insert into `ciudad` (`ID_Ciudad`,`Nombre`) values (null,'Caracas');
insert into `ciudad` (`ID_Ciudad`,`Nombre`) values (null,'Anzoategui');
insert into `ciudad` (`ID_Ciudad`,`Nombre`) values (null,'Barcelona');
insert into `ciudad` (`ID_Ciudad`,`Nombre`) values (null,'Madrid');



#SEDE
insert into `Sede` (`id_sede`,`Nombre`,`Direccion`,`ID_pais`,`Id_ciudad`,`Capacidad_Max`) values (null,'Chase Center','Warriors Way, San Francisco','1','1','18.064 espectadores');
insert into `Sede` (`id_sede`,`Nombre`,`Direccion`,`ID_pais`,`Id_ciudad`,`Capacidad_Max`) values (null,'Parque Naciones Unidas','El Paraiso, Caracas','2','2','6.100 espectadores');
insert into `Sede` (`id_sede`,`Nombre`,`Direccion`,`ID_pais`,`Id_ciudad`,`Capacidad_Max`) values (null,'Luis Ramos','Puerto La Cruz, Estado Anzoátegui','2','3','5.500 espectadores');
insert into `Sede` (`id_sede`,`Nombre`,`Direccion`,`ID_pais`,`Id_ciudad`,`Capacidad_Max`) values (null,'Palau Blaugrana','Av. de Joan XXIII,Barcelona','4','4','7.585 espectadores');
insert into `Sede` (`id_sede`,`Nombre`,`Direccion`,`ID_pais`,`Id_ciudad`,`Capacidad_Max`) values (null,'WiZink Center','Av. Felipe II, Madrid, España','4','5','15.000 espectadores');

#Partido
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'1','2022-01-19');
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'1','2022-01-18');
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'1','2022-01-17');
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'1','2022-01-16');
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'2','2022-01-19');
insert into `Partido` (`id_partido`,`id_sede`,`fechayhora`)  values (null,'2','2022-01-18');

#etadistica_jugador
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'20','5','2','2','2','20:01','1','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'30','6','1','1','1','25:01','1','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'22','5','2','2','2','20:01','2','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'32','6','1','1','1','25:01','2','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'21','5','2','2','2','20:01','3','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'31','6','1','1','1','25:01','3','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'23','5','2','2','2','20:01','4','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'33','6','1','1','1','25:01','4','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'24','5','2','2','2','20:01','5','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'34','6','1','1','1','25:01','5','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'10','5','2','2','2','20:01','6','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'10','6','1','1','1','25:01','6','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'11','5','2','2','2','20:01','7','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'12','6','1','1','1','25:01','7','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'13','5','2','2','2','20:01','8','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'14','6','1','1','1','25:01','8','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'15','5','2','2','2','20:01','9','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'16','6','1','1','1','25:01','9','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'2','5','2','2','2','20:01','10','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'3','6','1','1','1','25:01','10','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'4','5','2','2','2','20:01','11','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'5','6','1','1','1','25:01','11','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'6','5','2','2','2','20:01','12','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'7','6','1','1','1','25:01','12','2');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'8','5','2','2','2','20:01','13','1');
insert into  `estadistica_jugador` (`ID_E_jugador`,`puntos`,`rebotes`,`bloqueos`,`robos`,`Asistencia`,`min_jugados`,`id_jugador`,`id_partido`) values (null,'9','6','1','1','1','25:01','13','2');

#Detalle_partido
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'1','1');
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'1','2');
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'2','3');
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'2','4');
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'3','5');
insert into  `Detalle_partido` (`id_partidodetalle`,`ID_partido`,`ID_equipo`) values (null,'3','6');


#equipo_jugador
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','1');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','2');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','3');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','4');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','5');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','7');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','8');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','10');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','11');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','12');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','13');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','14');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','15');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','16');


#TORNEO
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'NBA','Temp 2022');
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'LPB','Temp 2022');
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'Liga ACB','Temp 2022');

#estadistica_torneo

insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','1');
insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','2');
insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','3');

#torneo_equipo

insert into  `torneo_equipo` (`ID_torneo`,`ID_equipo`) values ('1','1');

## ------------------------------------------------------------------------------------------------


## CREACION DE VISTAS -----------------------------------------------------------------------

CREATE VIEW `Estadisticas_Jugadores` AS
select j.Nombre,j.Apellido,e.puntos,e.rebotes,e.bloqueos,e.robos,e.asistencia,e.min_jugados,e.ID_partido
from estadistica_jugador as e
inner join jugadores as j on e.ID_jugador=j.ID_jugadores;

CREATE VIEW `Equipo_de_Jugador` AS
Select e.nombre as Nombre_equipo,j.nombre,j.apellido,t.ID_equipo,t.Id_jugador from equipo_jugador as t
inner join equipos as e on t.ID_equipo=e.ID_Equipos
inner join jugadores as j on t.Id_jugador=j.ID_JUGADORES
group by t.Id_jugador;



CREATE VIEW `informacion_equipos` AS
select e.nombre,e.año,p.nombre as pais from equipos as e
inner join pais as p on p.ID_pais=e.ID_pais;

CREATE VIEW `informacion_Sedes` AS
select s.nombre,s.direccion,s.capacidad_max,p.nombre as pais,c.nombre as ciudad from sede as s
inner join pais as p on s.ID_pais=p.ID_pais
inner join ciudad as c on s.ID_ciudad=c.ID_ciudad
group by s.nombre;



CREATE VIEW `Resultados_Torneo` AS
select et.j_ganados,et.j_perdidos,et.J_jugados,et.p_favor,et.p_contra,t.nombre,t.edicion_torneo,et.id_torneo
from estadistica_torneo as et
inner join torneo as t on et.ID_torneo=t.ID_torneo
group by t.nombre;


## Creacion de Funciones ------------------------------------------------------------------

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `Promedio_puntos`(`IDjugador` int) RETURNS float
    DETERMINISTIC
BEGIN
    DECLARE Punto FLOAT;
    
   Select AVG(puntos) into punto from estadistica_jugador 
    where IDjugador=ID_jugador;
    
    
RETURN Punto;
END$$



DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `Promedio_rebotes`(`IDjugador` int) RETURNS float
    DETERMINISTIC
BEGIN
    DECLARE rebote FLOAT;
    
   Select AVG(Rebotes) into rebote from estadistica_jugador 
    where IDjugador=ID_jugador;
    
    
    
RETURN rebote;
END$$


## Creacion de Procedimiento de almacenado ---------------------------------------------------------

#primero se pasa el CAMPO que se quiere ordenar 
# Se la pasa ASC o DESC 
#Pasa en que tabla se quiere hacer 

DELIMITER $$
CREATE PROCEDURE ordernar_CAMPO (IN campo VARCHAR(255) , IN tipo_ordenamiento ENUM('ASC','DESC'), IN tabla VARCHAR(255))
BEGIN
IF campo <> '' THEN
		SET @ordenar = CONCAT(' ORDER BY ',campo);
ELSE 
		SET @ordenar ='';
    END IF;
    IF tipo_ordenamiento <> '' THEN
		SET @tipo = CONCAT(' ',tipo_ordenamiento);
	else
		set @tipo ='';
    END IF;
    SET @clausula = CONCAT('SELECT * FROM ', tabla,@ordenar,@tipo );
    PREPARE ejecutarSQL FROM @clausula;
    EXECUTE ejecutarSQL;
    deallocate prepare ejecutarSQL; 
END
$$

## un Ejemplo de como llamarla CALL ordernar_CAMPO ('puntos' ,'asc' ,'estadistica_jugador');




# Este es el procedimento para agregar un Jugador o eliminarlo para que funcione se deben pasar los 7 parametro
# La Accion "A=Agregar E=Eliminar", ID_Jugador,Nombre, Apellido,Altura,Posicion,Peso
DELIMITER $$

CREATE PROCEDURE `Agregar_Eliminar_Jugador`(IN Accion ENUM("A","E") , IN IDjugador int, IN Nombre VARCHAR(45), in Apellido varchar(45), in Altura varchar(45), in Posicion int, in Peso varchar(45))
BEGIN
IF Accion = 'A' THEN
INSERT INTO jugadores (ID_JUGADORES,Nombre,Apellido,Altura,ID_posicion,Peso)
values (IDjugador,Nombre,Apellido,Altura,posicion,Peso);

end IF;

IF Accion = 'E' THEN
delete from jugadores  where IDjugador=ID_JUGADORES;

end IF;

END$$
DELIMITER ;
;


## CREACION DE TRIGGER ---------------------------------------------------------------
-- TRIGGERS 
-- creacion de la tabla LOG de jugadores


CREATE TABLE IF NOT EXISTS LOG_Jugadores(
	id_LOG INT AUTO_INCREMENT PRIMARY KEY,
    ID_Jugadores int,
    nombre VARCHAR(100) ,
    apellido VARCHAR(100) ,
    Altura VARCHAR(100),
    Posicion INT,
    Peso VARCHAR(100),
    Usuario VARCHAR(100),
    Fechayhora VARCHAR(100),
    Tipo_operacion VARCHAR(100)
);

-- CREACION DE TRIGGERS PARA QUE GUARDE CUANDO SE REALICE UN INSERT Y OTRO 
-- PARA CUANDO SE USE UN DELETE GUARDE LA INFO QUE SE BORRO Y QUIEN REALIZO LA ACCION
-- Y LA FECHA Y HORA CUANDO LA REALIZO EN LA TABLA LOG_Jugadores

CREATE TRIGGER `tri_befo_Insert_jugadores`
BEFORE INSERT ON jugadores FOR EACH ROW
INSERT INTO LOG_Jugadores ( ID_Jugadores,nombre,apellido,Altura,Posicion,Peso,Tipo_operacion)
VALUES (NEW.ID_Jugadores,NEW.nombre, NEW.apellido, NEW.Altura,NEW.ID_Posicion,NEW.peso,'INSERT');

CREATE TRIGGER `tri_aft_delete_jugadores`
AFTER DELETE ON jugadores
FOR EACH ROW
INSERT INTO LOG_Jugadores (nombre,apellido,Altura,Posicion,Peso,usuario,fechayhora,Tipo_operacion )
VALUES (OLD.nombre, OLD.apellido, OLD.Altura,OLD.ID_Posicion,OLD.peso,session_user(), now(),'DELETE');



## dejo alguno para probar 
## SELECT * FROM Jugadores;
## SELECT * FROM LOG_Jugadores;
-- DEJO ALFUNOS INSERT

##INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso) VALUES (null,'federico','Bongiovanni','1,90 m','2','90 KG');
##INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso) VALUES (null,'Cristian','Maier','2,00 m','3','100 KG');
## INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso) VALUES (null,'Elysander','Gonzalez','1,80 m','1','110 KG');

-- Y UN DELETE PARA PROBAR SI FUNCIONA 

## Delete from jugadores where ID_JUGADORES=28




-- creacion de la tabla LOG de equipos

CREATE TABLE IF NOT EXISTS LOG_equipos(
	id_LOG INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) ,
    Año VARCHAR(100) ,
    ID_pais INT,
    Usuario VARCHAR(100),
    Fechayhora VARCHAR(100),
    Tipo_operacion VARCHAR(100)
);

-- CREACION DE TRIGGERS PARA QUE GUARDE CUANDO SE REALICE UN INSERT Y OTRO 
-- PARA CUANDO SE USE UN DELETE GUARDE LA INFO QUE SE BORRO Y QUIEN REALIZO LA ACCION
-- Y LA FECHA Y HORA CUANDO LA REALIZO EN LA TABLA LOG_equipos

CREATE TRIGGER `tri_befo_Insert_equipos`
BEFORE INSERT ON equipos FOR EACH ROW
INSERT INTO LOG_equipos ( nombre,año,ID_pais,Tipo_operacion)
VALUES (NEW.nombre, NEW.año, NEW.ID_pais,'INSERT');

CREATE TRIGGER `tri_aft_delete_equipos`
AFTER DELETE ON equipos
FOR EACH ROW
INSERT INTO LOG_equipos (nombre,año,ID_pais,usuario,fechayhora,Tipo_operacion )
VALUES (OLD.nombre, OLD.año, OLD.ID_pais,session_user(), now(),'DELETE');




## SELECT * FROM equipos;
## SELECT * FROM log_equipos;

-- DEJO ALFUNOS INSERT

## INSERT INTO equipos (ID_equipos,nombre,año,ID_pais) VALUES (null,'Guaros de Lara','1983','2');
## INSERT INTO equipos (ID_equipos,nombre,año,ID_pais) VALUES (null,'toros de aragua','1983','2');
## INSERT INTO equipos (ID_equipos,nombre,año,ID_pais) VALUES (null,'Guaros de Lara','1983','2');

-- Y UN DELETE PARA PROBAR SI FUNCIONA 
## Delete from equipos where ID_equipos