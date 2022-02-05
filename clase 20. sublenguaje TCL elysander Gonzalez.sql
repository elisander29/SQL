select * from jugadores;

Select @@autocommit;

Set @@autocommit=0;

select * from jugadores;


START TRANSACTION;
delete from jugadores WHERE ID_JUGADORES= 31; -- elimino el registro
rollback; -- volvemos el registro que eliminamos anteriormente
commit;


select * from ciudad;
START TRANSACTION;
-- INSERT en la tabla Jugadores 
insert into ciudad (ID_ciudad,Nombre) values (null,'valencia');
insert into ciudad (ID_ciudad,Nombre) values (null,'zulia');
insert into ciudad (ID_ciudad,Nombre) values (null,'Coro');
insert into ciudad (ID_ciudad,Nombre) values (null,'Tachira');
savepoint lote1;
insert into ciudad (ID_ciudad,Nombre) values (null,'merida');
insert into ciudad (ID_ciudad,Nombre) values (null,'trujillo');
insert into ciudad (ID_ciudad,Nombre) values (null,'barinas');
insert into ciudad (ID_ciudad,Nombre) values (null,'nueva esparta');
savepoint lote2;
insert into ciudad (ID_ciudad,Nombre) values (null,'lara');
savepoint lote3;

rollback TO lote1;

RELEASE SAVEPOINT lotex1; -- eliminamos el savepoint

