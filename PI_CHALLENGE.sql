/*1. Importar el archivo CSV llamado TOP_SPOTIFY*
a la base de datos con el nombre BONUS TRACK.
Tener en cuenta las siguientes indicaciones:
a. No cambies el nombre de la tabla.
b. Elimina la tabla en el caso de que ya exista
dentro de la base de datos.
c. Mantén los tipos de datos asignados al
momento de la importación.
2. Luego, debes mostrar todo el contenido de
la tabla TOP_SPOTIFY importada en el paso anterior.
3. En el resultado de la consulta, sólo se deben observar
las columnas ARTISTA, TÍTULO y GÉNERO.
4. Ordenar alfabéticamente el resultado de la consulta
según los géneros musicales.
5. En el caso de aquellos géneros que se repiten, ordenar
alfabéticamente los nombres de los artistas.
*/
CREATE DATABASE BONUSTRACK;
USE BONUSTRACK;
DESC TOP_SPOTIFY;
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY ORDER BY GENERO, ARTISTA;

/*Ejercicio 2
1. En base al ejercicio anterior, mostrar todos
los registros de la tabla TOP_SPOTIFY. En
el resultado, sólo se deben observar las
columnas ARTISTA, TÍTULO y GÉNERO.
Ordenar el resultado alfabéticamente según
los nombres de los artistas y el nombre de
las canciones. Mostrar únicamente las 10
primeras canciones.*/
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY
ORDER BY ARTISTA, TITULO LIMIT 10;
/*2. Modificar la consulta anterior para mostrar
únicamente las canciones ubicadas desde
la posición 11 hasta la 15 inclusive.*/
SELECT ARTISTA, TITULO, GENERO FROM TOP_SPOTIFY
ORDER BY ARTISTA, TITULO LIMIT 5 OFFSET 10 ;

/*3. Dada la tabla TOP_SPOTIFY, obtener una
lista de todas aquellas canciones pertenecientes a la cantante Madonna. Debes mostrar
todos los campos de la tabla en el resultado
de la consulta.*/
SELECT * FROM TOP_SPOTIFY WHERE ARTISTA = 'MADONNA';
/*4. A partir de la tabla TOP_SPOTIFY, obtener
una lista de todas aquellas canciones pertenecientes al género Pop. Mostrar todos los
campos de la tabla en el resultado de la
consulta y ordenar alfabéticamente el
resultado según el nombre de las canciones*/
SELECT * FROM TOP_SPOTIFY WHERE GENERO ='POP' ORDER BY TITULO;

/*5. De la tabla TOP_SPOTIFY, obtener una lista de todas
las canciones pertenecientes al género Pop lanzadas
durante el año 2015. Mostrar todos los campos de la
tabla en el resultado de la consulta y ordenar dicho
resultado alfabéticamente según los nombres de los
artistas y los nombres de las canciones.
*/
SELECT * FROM TOP_SPOTIFY WHERE GENERO ='POP' AND ANO = 2015 
ORDER BY ARTISTA, TITULO;
/*6. A partir de la tabla TOP_SPOTIFY, obtener una lista de
todas aquellas canciones lanzadas antes del año 2011
y que pertenezcan al género Dance Pop. Mostrar todos
los campos de la tabla en el resultado de la consulta y
ordenar dicho resultado alfabéticamente según los
nombres de las canciones.
*/
SELECT * FROM TOP_SPOTIFY WHERE GENERO = 'Dance Pop' AND ANO < 2011 
ORDER BY TITULO;
