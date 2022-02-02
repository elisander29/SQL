use baloncesto;
## creacion del primer usuario ------------------------------

CREATE USER 'Primer'@'localhost' identified BY '12345678';


## El usuario primer solo tiene permisos de consulta (select) sobre todas la tablas

GRANT SELECT ON baloncesto.* TO 'Primer'@'localhost';


## creacion del Segundo usuario -------------------

CREATE USER 'Segundo'@'localhost' identified BY '12345678';

## El usuario Segundo tiene permisos de insert y update sobre todas la tablas

GRANT UPDATE, insert ON baloncesto.* TO 'Segundo'@'localhost';




