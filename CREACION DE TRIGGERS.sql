-- TRIGGERS 
​-- creacion de la tabla LOG de jugadores
​
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
​

​
-- CREACION DE TRIGGERS PARA QUE GUARDE CUANDO SE REALICE UN INSERT Y OTRO 
-- PARA CUANDO SE USE UN DELETE GUARDE LA INFO QUE SE BORRO Y QUIEN REALIZO LA ACCION
-- Y LA FECHA Y HORA CUANDO LA REALIZO EN LA TABLA LOG_Jugadores
​
CREATE TRIGGER `tri_befo_Insert_jugadores`
BEFORE INSERT ON jugadores FOR EACH ROW
INSERT INTO LOG_Jugadores ( ID_Jugadores,nombre,apellido,Altura,Posicion,Peso,Tipo_operacion)
VALUES (NEW.ID_Jugadores,NEW.nombre, NEW.apellido, NEW.Altura,NEW.ID_Posicion,NEW.peso,'INSERT');

CREATE TRIGGER `tri_aft_delete_jugadores`
AFTER DELETE ON jugadores
FOR EACH ROW
INSERT INTO LOG_Jugadores (nombre,apellido,Altura,Posicion,Peso,usuario,fechayhora,Tipo_operacion )
VALUES (OLD.nombre, OLD.apellido, OLD.Altura,OLD.ID_Posicion,OLD.peso,session_user(), now(),'DELETE');



​
SELECT * FROM Jugadores;
SELECT * FROM LOG_Jugadores;
​-- DEJO ALFUNOS INSERT

INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso)
VALUES (null,'federico','Bongiovanni','1,90 m','2','90 KG');

INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso)
VALUES (null,'Cristian','Maier','2,00 m','3','100 KG');

INSERT INTO jugadores (ID_jugadores,nombre,apellido,Altura,ID_posicion,peso)
VALUES (null,'Elysander','Gonzalez','1,80 m','1','110 KG');

-- Y UN DELETE PARA PROBAR SI FUNCIONA 

Delete from jugadores where ID_JUGADORES=28


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
​
​-- CREACION DE TRIGGERS PARA QUE GUARDE CUANDO SE REALICE UN INSERT Y OTRO 
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



​
SELECT * FROM equipos;
SELECT * FROM log_equipos;

​​-- DEJO ALFUNOS INSERT

INSERT INTO equipos (ID_equipos,nombre,año,ID_pais)
VALUES (null,'Guaros de Lara','1983','2');

INSERT INTO equipos (ID_equipos,nombre,año,ID_pais)
VALUES (null,'toros de aragua','1983','2');

INSERT INTO equipos (ID_equipos,nombre,año,ID_pais)
VALUES (null,'Guaros de Lara','1983','2');

-- Y UN DELETE PARA PROBAR SI FUNCIONA 
Delete from equipos where ID_equipos=9


