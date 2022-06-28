/*1. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
extranjeras. Mostrar todos los campos de la
tabla en el resultado de la consulta.*/
SELECT * FROM NACIMIENTOS WHERE NACIONALIDAD = 'Extranjera';
/*2. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
menores de edad. Mostrar todos los campos
de la tabla en el resultado de la consulta y
ordenar el resultado de menor a mayor por
la edad de las madres.*/
SELECT * FROM NACIMIENTOS WHERE EDAD_MADRE <= 18 ORDER BY EDAD_MADRE;
/*3. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
que tengan la misma edad que el padre.
Mostrar todos los campos de la tabla en
el resultado de la consulta.*/
SELECT * FROM NACIMIENTOS WHERE EDAD_MADRE = EDAD_PADRE;
/*4. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés nacidos de madres
que, con respecto al padre, tengan 40 años o
menos que el padre.*/
SELECT * FROM NACIMIENTOS WHERE EDAD_PADRE - EDAD_MADRE >40;

/* 5. De la tabla CLIENTES_NEPTUNO, obtener
una lista de todos aquellos clientes que
residen en Argentina. Mostrar todos los
campos de la tabla en el resultado de la
consulta.*/
SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS = 'Argentina';
/*6. De la  tabla CLIENTES_NEPTUNO, obtener
una lista de todos los clientes, con excepción
de los que residen en Argentina. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar alfabéticamente
dicho resultado por los nombres de los países.*/
SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS <> 'Argentina' ORDER BY PAIS;
/*7. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés que nacieron con
menos de 20 semanas de gestación. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar dicho resultado de
mayor a menor, por los valores de la columna
SEMANAS.*/
DESC NACIMIENTOS;
SELECT * FROM NACIMIENTOS WHERE SEMANAS < 20 ORDER BY SEMANAS DESC;
/*8. De la tabla NACIMIENTOS, obtener una lista
de todos los bebés de sexo femenino,
nacidos de madres extranjeras solteras, de
más de 40 años. Mostrar todos los campos
de la tabla en el resultado de la consulta.*/
SELECT * FROM NACIMIENTOS WHERE SEXO = 'FEMENINO'  AND NACIONALIDAD = 'EXTRANJERA' 
AND ESTADO_CIVIL_MADRE = 'SOLTERA' AND EDAD_MADRE > 40;

/* De la tabla CLIENTES_NEPTUNO, obtener
una lista de todos aquellos clientes que
residan en países sudamericanos.
Mostrar todos los campos de la tabla en el
resultado de la consulta y ordenar de manera
alfabética los registros, por los nombres de
los países y las ciudades.*/
SELECT * FROM CLIENTES_NEPTUNO WHERE PAIS = 'Argentina' OR PAIS= 'Brasil' OR PAIS = 'Venezuela' 
ORDER BY PAIS, CIUDAD;
/*10. De la tabla NACIMIENTOS, obtener una lista
de todos aquellos bebés que hayan nacido
con una cantidad de semanas de gestación
de entre 20 y 25 semanas, inclusive. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar el resultado según
las semanas de gestación de los recién
nacidos, de menor a mayor.*/
SELECT * FROM NACIMIENTOS WHERE SEMANAS BETWEEN 20 AND 25 ORDER BY SEMANAS;

/*11. De la tabla NACIMIENTOS, utilizar el operador IN y obtener una lista de todos los bebés
que nacieron en las comunas 1101, 3201,
5605, 8108, 9204, 13120 y 15202. Mostrar
todos los campos de la tabla en el resultado
de la consulta y ordenar de menor a mayor
los registros, por los números de comuna.*/

SELECT * FROM NACIMIENTOS WHERE COMUNA IN (1101, 3201,
5605, 8108, 9204, 13120, 15202) ORDER BY COMUNA;

/*12. De la tabla CLIENTES_NEPTUNO, obtener una lista de
todos aquellos clientes cuyo ID comience con la letra
C. Mostrar todos los campos de la tabla, en el
resultado de la consulta.*/
DESC clientes_neptuno;
SELECT * FROM CLIENTES_NEPTUNO WHERE IDCLIENTE LIKE 'C%';
/*13. De la tabla CLIENTES_NEPTUNO, obtener una lista de
todos aquellos clientes que residan en una ciudad que
comience con la letra B y en total posea 5 caracteres.
Mostrar todos los campos de la tabla en el resultado
de la consulta.*/
SELECT * FROM CLIENTES_NEPTUNO WHERE CIUDAD LIKE ('B_____');
/*14. De la tabla NACIMIENTOS, obtener una lista de todos
aquellos padres que tengan más de 10 hijos.*/
SELECT * FROM NACIMIENTOS WHERE HIJOS_TOTAL >= 10;

