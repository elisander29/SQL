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

CALL ordernar_CAMPO ('puntos' ,'asc' ,'estadistica_jugador');

# Este es el procedimento para agregar un Jugador o eliminarlo para que funcione se deben pasar los 7 parametro
# La Accion "A=Agregar E=Eliminar", ID_Jugador,Nombre, Apellido,Altura,Posicion,Peso
DELIMITER $$
CREATE PROCEDURE Agregar_Eliminar_Jugador (IN Accion VARCHAR(1) , IN IDjugador int, IN Nombre VARCHAR(45), in Apellido varchar(45), in Altura varchar(45), in Posicion int, in Peso varchar(45))
BEGIN
IF Accion = 'A' THEN # A para Agregar un Jugador
INSERT INTO jugadores (ID_JUGADORES,Nombre,Apellido,Altura,ID_posicion,Peso)
values (IDjugador,Nombre,Apellido,Altura,posicion,Peso);

end IF;

IF Accion = 'E' THEN # E para Eliminar un jugagor
delete from jugadores  where IDjugador=ID_JUGADORES;

end IF;


END
$$

CALL Agregar_Eliminar_Jugador2 ;
CALL Agregar_Eliminar_Jugador2('A',null,'elysaccnder','goccnzalez','1,80 ','1','110 kg');

select * from jugadores 

