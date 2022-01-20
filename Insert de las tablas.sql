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
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','17');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','18');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','19');
insert into  `equipo_jugador` (`id_equipo`,`ID_jugador`) values ('1','20');

#TORNEO
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'NBA','Temp 2022');
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'LPB','Temp 2022');
insert into  `torneo` (`id_TORNEO`,`nombre`,`Edicion_torneo`) values (null,'Liga ACB','Temp 2022');

#estadistica_torneo

insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','1');
insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','2');
insert into  `estadistica_torneo` (`ID_E_Torneo`,`J_ganados`,`j_perdidos`,`j_jugados`,`p_favor`,`p_contra`,`ID_torneo`) values (null,'50','32','82','100','75','3');


#torneo_equipo

insert into  `torneo_equipo` (`ID_torneo`,`ID_equipo`) values ('1','1')