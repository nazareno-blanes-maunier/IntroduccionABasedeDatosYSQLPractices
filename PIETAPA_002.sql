DESC CLIENTES_NEPTUNO;
/*5. Llevar a cabo los siguientes cambios en la
tabla CLIENTES importada anteriormente.
Respetar las consignas detalladas a continuación y utiliza el comando ALTER TABLE:
a. Campo Cod_Cliente: debe ser de tipo
VARCHAR, debe admitir hasta 7 caracteres como máximo y debe ser el campo
PRIMARY KEY de la tabla.*/
DESC CLIENTES;

/*b. Campo Empresa: debe ser de tipo
VARCHAR, debe admitir hasta 100
caracteres como máximo y no puede
quedar vacío.*/

/*c. Campo Ciudad: debe ser de tipo
VARCHAR, debe admitir hasta 25 caracteres como máximo y no puede quedar vacío.*/
/*d. Campo Telefono: debe ser de tipo INT y no
debe admitir valores numéricos negativos.
e. Campo Responsable: debe ser de tipo
VARCHAR y debe admitir como máximo
hasta 30 caracteres.*/
ALTER TABLE CLIENTES MODIFY EMPRESA VARCHAR (100) NOT NULL,
MODIFY CIUDAD VARCHAR (25) NOT NULL,
MODIFY TELEFONO INT UNSIGNED,
MODIFY RESPONSABLE VARCHAR (30);

/*6. Importar el archivo CSV con el nombre
PEDIDOS a la base de datos LABORATORIO.
Y tener en cuenta las siguientes indicaciones:
a. Este archivo lo encontrarás disponible en el
área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al
momento de la importación.
7. Llevar a cabo los siguientes cambios en la
tabla PEDIDOS importada anteriormente.
Respetar las consignas detalladas a continuación y utilizar el comando ALTER TABLE:
a. Campo Numero_Pedido: debe ser de tipo
INT, sólo debe aceptar valores numéricos
enteros y debe ser el campo PRIMARY KEY
de la tabla.*//*b. Campo Codigo_Cliente: debe ser de tipo
VARCHAR, debe admitir hasta 7 caracteres como máximo y no puede quedar vacío.*/

/*c. Campo Fecha_Pedido: debe ser de tipo
DATE y su carga es obligatoria.*/
ALTER TABLE PEDIDOS MODIFY NUMERO_PEDIDO INT NOT NULL PRIMARY KEY, 
MODIFY CODIGO_CLIENTE VARCHAR (7) NOT NULL,
MODIFY FECHA_PEDIDO DATE NOT NULL; 
/*d. Campo Forma_Pago: sólo debe admitir la
carga de los valores APLAZADO,
CONTADO o TARJETA.
e. Campo Enviado: sólo debe admitir la carga
de los valores SI o NO.
*/
ALTER TABLE PEDIDOS MODIFY FORMA_PAGO ENUM ('APLAZADO','CONTADO','TARJETA'),
MODIFY ENVIADO ENUM('SI','NO');

/*8. Importar el archivo CSV: PRODUCTOS a la
base de datos LABORATORIO. Y tener en
cuenta las siguientes indicaciones:
a. Este archivo lo encontrarás disponible en
el área de descargas del presente módulo.
b. No cambiar el nombre de la tabla.
c. Mantener los tipos de datos asignados al
momento de la importación./*

/*9. Llevar a cabo los siguientes cambios en la
tabla PRODUCTOS importada en el paso
anterior. Respetar las consignas detalladas a
continuación, utilizando el comando ALTER
TABLE:
a. Campo Cod_Producto: debe ser de tipo
INT, sólo debe aceptar valores numéricos
enteros y debe ser el campo PRIMARY KEY
de la tabla.*//*b. Campo Seccion: debe ser de tipo
VARCHAR, debe admitir hasta 20
caracteres como máximo y no puede
quedar vacío.
c. Campo Nombre: debe ser de tipo VARCHAR, debe
admitir hasta 40 caracteres como máximo y no
puede quedar vacío.
d. Campo Importado: sólo debe admitir la carga de los
valores VERDADERO o FALSO.
e. Campo Origen: debe ser de tipo VARCHAR, admitir
hasta 25 caracteres y ser de carga obligatoria.
f. Campos Dia, Mes y Ano: deben ser de tipo INT,
positivos y de carga obligatoria.*/
ALTER TABLE PRODUCTOS
MODIFY COD_PRODUCTO INT PRIMARY KEY,
MODIFY SECCION VARCHAR (20) NOT NULL,
MODIFY  NOMBRE VARCHAR (40) NOT NULL,
MODIFY IMPORTADO ENUM('VERDADERO', 'FALSO'),
MODIFY ORIGEN VARCHAR (25) NOT NULL,
MODIFY DIA INT UNSIGNED NOT NULL,
MODIFY MES INT UNSIGNED NOT NULL,
MODIFY ANO INT UNSIGNED NOT NULL;

DESC PRODUCTOS;

