BEGIN TRANSACTION;

/* Crear tabla de empleados*/
CREATE TABLE empleados (Id integer PRIMARY KEY, nombre text, salario integer, dpto text);

/* Insertar registros en tabla de empleados */
INSERT INTO empleados VALUES(1,'Tom', 2000, 'financiero');
INSERT INTO empleados VALUES(2,'Lucy', 3000, 'ventas');
INSERT INTO empleados VALUES(3,'Frank', 4000, 'financiero');
INSERT INTO empleados VALUES(4,'Jane', 2500, 'ventas');
INSERT INTO empleados VALUES(5,'Robert', 3500, 'financiero');
COMMIT;

/* Crear tabla de ausencias*/
CREATE TABLE ausencias (ausencia_id integer PRIMARY KEY, nombre text, ausencias integer);

INSERT INTO ausencias VALUES(1,'Tom', 1);
INSERT INTO ausencias VALUES(2,'Lucy', 3);
INSERT INTO ausencias VALUES(3,'Frank', 4);
INSERT INTO ausencias VALUES(4,'Jane', 10);



/* Mostrar todos los registros  y campos de la tabla empleados */
--SELECT * FROM empleados;

/* Mostrar todos los empleados que se llaman Tom */
--SELECT * FROM empleados where nombre = 'Tom';

/* Mostrar todos los empleados del dpto. que comienza con 'ven' */
--SELECT * FROM empleados where dpto like 'ven%';

/* Hallar el total de gasto de nómina por cada departamento */
--SELECT dpto, sum(salario) FROM empleados group by dpto;

/* Hallar el salario máximo por cada departamento */
--SELECT dpto, max(salario) FROM empleados group by dpto;

--select empleados.*, ausencias.ausencias from empleados left join ausencias on empleados.nombre = ausencias.nombre


/* Seleccionar los registros de ambas tablas cuyos nombres estén en ambas 
tablas*/

--select * from empleados, ausencias where empleados.nombre = ausencias.nombre

/* ¿Y si borramos el cruce de ambas tablas?*/

--select * from empleados, ausencias 

/* Deme el top 3 de salarios de la empresa*/

select * from empleados order by salario DESC limit 3


