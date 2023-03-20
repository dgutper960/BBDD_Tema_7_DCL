-- Actividad 7.06
-- Tema 7 - DCL

/*
Práctica 7.6 - Funciones Matemáticas




/*
1. Crear Base de Datos
Crear la base de datos fmatematicas 
Dentro de esta base de datos crear la tabla Angulos con las siguientes columnas:

id - es la clave principal
grados - unidad del ángulo se expresa en grados sus valores van desde 0 a 360
radianes - unidad también de ángulo los valores van de [0 a 1] con máxima precisión
seno - valores van de [0 a 1] con máxima precisión
coseno - valores van de [0 a 1] con máxima precisión
tangente - valores van de [0 a 1] con  máxima precisión
Las columnas radianes, seno, coseno y tangente han de almacenar los valores
con la máxima precisión posible. Los cuatro valores están comprendidos entre 0 y 1,
se trata que se almacenen con el máximo número de dicimales.

Nota

Cuando se especifique máxima precisión tenemos que usar el tipo de dato que permita 
almacenar el mayor número de decimales, por lo tanto el tipo de dato que tendremos que usar es
double(31, 30) permitiendo almacenar hasta 30 decimales.  */

drop database if exists fmatematicas;
create database if not exists fmatematicas;

use fmatematicas;

drop table if exists angulos;
create table if not exists angulos(
	id int unsigned auto_increment primary key,
    grados smallint unsigned,
    radianes double(31, 30),
    seno double(31, 30),
    coseno double(31, 30),
    tangente double(31, 30)
    );

/*
2. Añadir registros

Añadir a la tabla anterior los registros correspondientes a los siguientes ángulos dados en grados:
0
45
90
135
180
225
270
315
360
*/
    
    
    
insert into angulos(grados) values(0), (45), (90), (135), (180), (225), (270), (315), (360);


/*
3. Actualizar Radianes.

En este apartado mediante un comando UPDATE se deberá actualizar la columna radianes de la tabla angulos, a partirr del valor de la columna grados.
*/
update angulos set radianes = radians(grados);


/*
4. Actualizar Seno, Coseno y Tangente

Mediante un UPDATE se deberá actualizar las columnas
Seno, Coseno y Tangente de la tabla angulos,
usando la función correspondiente a partir del valor del ángulo en radianes.  */



update angulos set senos = sin(radianes);
update angulos set coseno = radians(coseno);
update angulos set radianes = radians(tangente);


/*
Observaciones

Para calcular los valores de cada registro se usarán las funciones matemáticas SQL correspondientes.
Parar calculas las funciones trigonométricas se debe usar el valor del ángulo en radianes y no en grados.
*/