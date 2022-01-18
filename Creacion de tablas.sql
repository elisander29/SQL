QUERYS PARA LA CREACION DE LAS TABLAS

CREATE TABLE `jugadores` (
  `ID_JUGADORES` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Altura` varchar(45) NOT NULL,
  `ID_posicion` int NOT NULL,
  `Peso` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_JUGADORES`)

CREATE TABLE `baloncesto`.`posicion` (
  `ID_posicion` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_posicion`));


CREATE TABLE `baloncesto`.`equipos` (
  `ID_Equipos` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Año` VARCHAR(45) NOT NULL,
  `ID_pais` INT NOT NULL,
  PRIMARY KEY (`ID_Equipos`));


CREATE TABLE `baloncesto`.`equipo_jugador` (
  `ID_equipo` INT NOT NULL,
  `Id_jugador` INT NOT NULL);



CREATE TABLE `baloncesto`.`pais` (
  `ID_pais` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_pais`));


CREATE TABLE `baloncesto`.`ciudad` (
  `ID_ciudad` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_ciudad`));


CREATE TABLE `baloncesto`.`sede/estadio` (
  `ID_sede` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `ID_pais` INT NOT NULL,
  `ID_ciudad` INT NOT NULL,
  `Capacidad_max` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_sede`));


CREATE TABLE `baloncesto`.`partido` (
  `ID_partido` INT NOT NULL AUTO_INCREMENT,
  `ID_sede` INT NOT NULL,
  `FechayHora` DATETIME NOT NULL,
  PRIMARY KEY (`ID_partido`));




CREATE TABLE `baloncesto`.`detalle_partido` (
  `ID_partidodetalle` INT NOT NULL AUTO_INCREMENT,
  `ID_partido` INT NOT NULL,
  `ID_equipo` INT NOT NULL,
  PRIMARY KEY (`ID_partidodetalle`));


CREATE TABLE `baloncesto`.`torneo` (
  `ID_torneo` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,	
  `Edicion_torneo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID_torneo`));

CREATE TABLE `baloncesto`.`estadistica_jugador` (
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







CREATE TABLE `baloncesto`.`estadistica_torneo` (
  `ID_E_torneo` INT NOT NULL AUTO_INCREMENT,
  `J_ganados` VARCHAR(45) NOT NULL,
  `J_perdidos` VARCHAR(45) NOT NULL,
  `J_jugados` VARCHAR(45) NOT NULL,
  `P_favor` VARCHAR(45) NOT NULL,
  `P_contra` VARCHAR(45) NOT NULL,
  `ID_torneo` INT NOT NULL,
  PRIMARY KEY (`ID_E_torneo`));

CREATE TABLE `baloncesto`.`torneo_equipo` (
  `ID_torneo` INT NOT NULL,
  `ID_equipo` INT NOT NULL);

Las claves foráneas 

ALTER TABLE `baloncesto`.`detalle_partido` 
ADD INDEX `Partido_J_idx` (`ID_partido` ASC) VISIBLE,
ADD INDEX `Equipo_J_idx` (`ID_equipo` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`detalle_partido` 
ADD CONSTRAINT `Partido_J`
  FOREIGN KEY (`ID_partido`)
  REFERENCES `baloncesto`.`partido` (`ID_partido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `Equipo_J`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `baloncesto`.`equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `baloncesto`.`equipo_jugador` 
ADD INDEX `FK_Equipo_P_idx` (`ID_equipo` ASC) VISIBLE,
ADD INDEX `FK__Jugador_P_idx` (`Id_jugador` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`equipo_jugador` 
ADD CONSTRAINT `FK_Equipo_P`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `baloncesto`.`equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK__Jugador_P`
  FOREIGN KEY (`Id_jugador`)
  REFERENCES `baloncesto`.`jugadores` (`ID_JUGADORES`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `baloncesto`.`equipos` 
ADD INDEX `FK_Pais_idx` (`ID_pais` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`equipos` 
ADD CONSTRAINT `FK_Pais`
  FOREIGN KEY (`ID_pais`)
  REFERENCES `baloncesto`.`pais` (`ID_pais`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;






ALTER TABLE `baloncesto`.`estadistica_jugador` 
ADD INDEX `FK_Jugador_P_idx` (`ID_jugador` ASC) VISIBLE,
ADD INDEX `FK_Partido_J_idx` (`ID_partido` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`estadistica_jugador` 
ADD CONSTRAINT `FK_Jugador_P`
  FOREIGN KEY (`ID_jugador`)
  REFERENCES `baloncesto`.`jugadores` (`ID_JUGADORES`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Partido_J`
  FOREIGN KEY (`ID_partido`)
  REFERENCES `baloncesto`.`partido` (`ID_partido`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `baloncesto`.`estadistica_torneo` 
ADD INDEX `FK_torneo_p_idx` (`ID_torneo` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`estadistica_torneo` 
ADD CONSTRAINT `FK_torneo_p`
  FOREIGN KEY (`ID_torneo`)
  REFERENCES `baloncesto`.`torneo` (`ID_torneo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;






ALTER TABLE `baloncesto`.`torneo_equipo` 
ADD INDEX `FK_Torneo_E_idx` (`ID_torneo` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`torneo_equipo` 
ADD CONSTRAINT `FK_Torneo_E`
  FOREIGN KEY (`ID_torneo`)
  REFERENCES `baloncesto`.`torneo` (`ID_torneo`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `baloncesto`.`partido` 
ADD INDEX `FK_sede_idx` (`ID_sede` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`partido` 
ADD CONSTRAINT `FK_sede`
  FOREIGN KEY (`ID_sede`)
  REFERENCES `baloncesto`.`sede/estadio` (`ID_sede`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;












ALTER TABLE `baloncesto`.`sede/estadio` 
ADD INDEX `INDEX_pais_idx` (`ID_pais` ASC) VISIBLE,
ADD INDEX `INDEX_ciudad_idx` (`ID_ciudad` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`sede/estadio` 
ADD CONSTRAINT `FK_pais_s`
  FOREIGN KEY (`ID_pais`)
  REFERENCES `baloncesto`.`pais` (`ID_pais`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_ciudad`
  FOREIGN KEY (`ID_ciudad`)
  REFERENCES `baloncesto`.`ciudad` (`ID_ciudad`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `baloncesto`.`jugadores` 
ADD INDEX `FK_posicion_idx` (`ID_posicion` ASC) VISIBLE;
;
ALTER TABLE `baloncesto`.`jugadores` 
ADD CONSTRAINT `FK_posicion`
  FOREIGN KEY (`ID_posicion`)
  REFERENCES `baloncesto`.`posicion` (`ID_posicion`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `baloncesto`.`torneo_equipo` 
ADD INDEX `FK_equipo_E_idx` (`ID_equipo` ASC) VISIBLE;
;



ALTER TABLE `baloncesto`.`torneo_equipo` 
ADD CONSTRAINT `FK_equipo_E`
  FOREIGN KEY (`ID_equipo`)
  REFERENCES `baloncesto`.`equipos` (`ID_Equipos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `baloncesto`.`sede/estadio` 
RENAME TO  `baloncesto`.`sede` ;
