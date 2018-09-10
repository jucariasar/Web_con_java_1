/*
Intrucciones en myql
*/

/*Eliminar una base de datos completa*/
DROP DATABASE nombre_base_datos;

/*Con la sintaxis superior no tendríamos ningún problema en eliminarla siempre y cuando exista. 
Para asegurarnos que la BBDD se elimine y que en caso de que no exista no salgan mensajes 
de error podemos usar la sentencia ‘IF EXIST‘:*/

DROP DATABASE IF EXISTS nombre_base_datos;


SELECT * FROM tabla;        /*Consulta: Mostrar TODOS los datos en la tabla*/

SHOW COLUMNS FROM nombre_tabla;    /*Mostrar la estructura básica de una tabla*/

INSERT INTO nombre_tabla VALUES    /*Insertar valores en una tabla*/
(atr1, atr2, atrn);

DELETE FROM nombre_tabla; /*Borrar TODOS los datos de una tabla*/

DELETE FROM nombre_tabla WHERE condición; /*Borrar datos de una tabla donde la condición se cumpla*/
								  

DROP TABLE nombre_tabla; /*Eliminar tabla*/


DROP TABLE IF EXISTS nombre_tabla;  /*De esta manera solo borraríamos la tabla si esta existe. Es recomendable usar ‘IF EXISTS‘ ya que si la tabla no existe cortaría la ejecución del código MySQL restante.*/


DROP TABLE IF EXISTS nombre_tabla, nombre_tabla2, nombre_tabla3;  /*borrar varias tablas separando el nombre de cada una con una ‘,’*/

/*Cuando en MySql intentamos vaciar una tabla (truncate table) que contiene claves externas a otras tablas de la base de datos, podemos encontrarnos con un error muy parecido a este:*/

TRUNCATE TABLE nombre_tabla;

/*ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint (nombre_tabla, 
CONSTRAINT `FK_2C0BB1B8D48E193` FOREIGN KEY (`external_id`) REFERENCES `OtherTable` (`id`))*/

/*Para solucionarlo, podemos desactivar momentaneamente la comprobación de las claves externas, vaciar las tablas y, de nuevo, activar la comprobación de claves externas.*/

SET FOREIGN_KEY_CHECKS=0;
TRUNCATE TABLE nombre_tabla;
SET FOREIGN_KEY_CHECKS=1;

/*Modificar tabla*/

/*Añadir clave(s) primaria a tabla creada previamente*/
ALTER TABLE nombre_tabla ADD PRIMARY KEY (atr1, atr2, atrn)

/*Añadir clave(s) foraneas a tabla creada previamente*/
ALTER TABLE nombre_tabla  ADD CONSTRAINT


/*Crear un indice*/
CREATE INDEX nombre_del_indice ON nombre_tabla (atr);

/*Crear un indice que no permita valores repetidos*/
CREATE UNIQUE INDEX nombre_del_inice ON nombre_tabla (atr); 
