CREATE VIEW `Estadisticas_Jugadores` AS
select j.Nombre,j.Apellido,e.puntos,e.rebotes,e.bloqueos,e.robos,e.asistencia,e.min_jugados
from estadistica_jugador as e
inner join jugadores as j on e.ID_jugador=j.ID_jugadores
group by j.ID_jugadores;


CREATE VIEW `Equipo_de_Jugador` AS
Select e.nombre as Nombre_equipo,j.nombre,j.apellido,ej.ID_equipo,ej.ID_jugador from equipo_jugador as ej
inner join equipos as e on ej.ID_equipo=e.ID_Equipos
inner join jugadores as j on ej.Id_jugador=j.ID_JUGADORES
group by e.nombre;




CREATE VIEW `informacion_equipos` AS
select e.nombre,e.año,p.nombre as pais from equipos as e
inner join pais as p on p.ID_pais=e.ID_pais;

CREATE VIEW `informacion_Sedes` AS
select s.nombre,s.direccion,s.capacidad_max,p.nombre as pais,c.nombre as ciudad,s.ID_pais,s.ID_ciudad from sede as s
inner join pais as p on s.ID_pais=p.ID_pais
inner join ciudad as c on s.ID_ciudad=c.ID_ciudad
group by s.nombre;


CREATE VIEW `Resultados_Torneo` AS
select et.j_ganados,et.j_perdidos,et.J_jugados,et.p_favor,et.p_contra,t.nombre,t.edicion_torneo,et.id_torneo
from estadistica_torneo as et
inner join torneo as t on et.ID_torneo=t.ID_torneo
group by t.nombre;

