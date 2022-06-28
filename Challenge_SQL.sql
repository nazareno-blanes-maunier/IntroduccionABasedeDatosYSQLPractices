/*1. Crear una base de datos con el nombre
BONUS_TRACK.
2. Poner en uso la base de datos generada en el
paso anterior.*/
CREATE DATABASE  BONUS_TRACK;
USE BONUS_TRACK;
/*3. Crear una tabla con el nombre “AGENDA”
dentro de la base de datos, con la estructura
que se muestra en la siguiente diapositiva.*/
CREATE TABLE AGENDA (
IDCONTACTO INTEGER,
NOMBRE VARCHAR (20) NOT NULL,
APELLIDO VARCHAR (15) NOT NULL,
DOMICILIO VARCHAR (50),
TELEFONO INTEGER NOT NULL,
PRIMARY KEY (IDCONTACTO) ); 


/*4. Comentar el código SQL generado para la
creación de la tabla “AGENDA”.
5. Visualizar las tablas existentes en la base de
datos para verificar la creación de la tabla
“AGENDA”.
6. Visualizar la estructura de la tabla
“AGENDA”.*/
DESCRIBE AGENDA;

/*7. Agregar el campo MAIL a la tabla. Este
campo deberá contener como máximo 50
caracteres y su carga es obligatoria.
8. Insertar 4 registros en la tabla “AGENDA”.*/

ALTER TABLE AGENDA
ADD MAIL VARCHAR (50) NOT NULL;

DESC AGENDA; 

INSERT INTO AGENDA VALUES (
789, 'Nazareno', 'Blanes',' ' , '351239871', 'maunier20@gmail.com'),
(785, 'Nadia', 'Frias', 'Avellaneda 450', '29987755', 'nadia.frias@hotmail.com');

INSERT INTO AGENDA VALUES(
542, 'Manuel', 'Chatruc', 'Chatruc 4840', '351265487', 'manuel.chatruc@gmail.com'),
(412, 'Jose', 'Fargas', 'Isla norte', '01121212', 'jose_fargas@hotmail.cmcm') ;

SELECT  MAIL FROM AGENDA WHERE MAIL LIKE ('M%');


