/*1. Mostrar todo el contenido de la tabla
CLIENTES_NEPTUNO importada en el
laboratorio anterior.*/
DESC CLIENTES_NEPTUNO;
/*2. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.*/
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO;
/*3. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Luego, ordenar alfabéticamente el resultado
de la consulta por los nombres de los países.*/
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO ORDER BY PAIS;
/*4. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Ordenar el resultado de la consulta
alfabéticamente por los nombres de los
países. Para aquellos países que se repiten,
ordenar las ciudades alfabéticamente.*/
SELECT  NOMBRECOMPANIA, CIUDAD, PAIS FROM clientes_neptuno ORDER BY PAIS, CIUDAD;
/*Uso de WHERE*/
SELECT * FROM CLIENTES_NEPTUNO WHERE CIUDAD = 'Buenos Aires';
/*5. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.*/
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO;
/*Ordenar de manera alfabética el resultado de
la consulta, por los nombres de los países.
Mostrar únicamente los 10 primeros clientes.*/
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO ORDER BY PAIS, CIUDAD LIMIT 10;
/*6. Mostrar todos los registros de la tabla
CLIENTES_NEPTUNO. En el resultado de la
consulta sólo se deben observar las columnas
NOMBRECOMPANIA, CIUDAD y PAIS.
Ordenar de manera alfabética el resultado de
la consulta, por los nombres de los países.
Mostrar únicamente los clientes ubicados
desde la posición 11 hasta la 15.*/
SELECT NOMBRECOMPANIA, CIUDAD, PAIS FROM CLIENTES_NEPTUNO ORDER BY PAIS LIMIT 5 OFFSET 10;
