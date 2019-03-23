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
