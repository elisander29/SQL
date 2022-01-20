#cracion de funciones
delimiter $$
CREATE FUNCTION `Promedio_puntos` (`IDjugador` int)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE Punto FLOAT;
    
   Select AVG(puntos) into punto from estadistica_jugador 
    where IDjugador=ID_jugador;
    
    
    
RETURN Punto;
END$$


delimiter $$
CREATE FUNCTION `Promedio_rebotes` (`IDjugador` int)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    DECLARE rebote FLOAT;
    
   Select AVG(Rebotes) into rebote from estadistica_jugador 
    where IDjugador=ID_jugador;
    
    
    
RETURN rebote;
END$$




