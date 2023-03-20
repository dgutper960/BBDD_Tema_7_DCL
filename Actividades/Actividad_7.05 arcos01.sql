# Actividad 7.05

# Ususario arcos01@localhost

# 2. Usar geslibros

use geslibros;


/*
4. usuario arcos01
Selecciona todos los clientes de la provincia de Guadalajara (acción permitida comprobar)
Inserta un cliente y asignar datos a vuestro criterio (acción no permitida comprobar) */

SELECT 
    *
FROM
    clientes
WHERE
    provincia_id in (SELECT 
            id
        FROM
            provincias
        WHERE
            provincia = 'Guadalajara');

insert into clientes values(null, 'Librería Nueva', 'Paseo del Prado, 59', 'Ubrique', '11600', 11, '98525648K', '956466996', '966987462', 'nuevalibreria@granmail.com', '2019-07-14');


/*
6. usuario arcos01

Comprobar que ha conseguido insertar el cliente anterior.
Bloquea la tabla libros a modo escritura.
Inserta un nuevo libro (debe permitir la acción) */

insert into clientes values(null, 'Librería Nueva', 'Paseo del Prado, 59', 'Ubrique', '11600', 11, '98525648K', '956466996', '966987462', 'nuevalibreria@granmail.com', '2019-07-14');

lock tables libros read;

insert into libros values (null, '4596369885475', NULL, 'Lo que el viento no se pudo llevar', 3, 2,  12.30, 30.50, 100, 1, 1000, '2002-02-11'); -- > Error Code: 1100. Table 'libros_temas' was not locked with LOCK TABLES

/*
8. usuario arcos01

Desbloquea la tabla libros */

unlock tables;

/*
9. Transacciones

El usuario arcos01 realizará la siguiente transacción:

Realizar un bloqueo compartido de todos los registros de la tabla editoriales y autores
Debe añadir dos libros con datos válidos a su criterio
Terminar correctamente la transacción
El usuario ubrique01 debe ralizar la siguiente transacción

Bloqueo exclusivo del campo precio_venta de la tabla libros
Debido a la crisis sanitaria se decrementará el precio de los libros en un 30%
Confirmar transacción
*/

start transaction;
# Realizar un bloqueo compartido de todos los registros de la tabla editoriales y autores
lock tables editoriales write, autores write;
# Debido a la crisis sanitaria se decrementará el precio de los libros en un 30%
update libros set precio_venta = (precio_venta + precio_venta * 0.30);
# Confirmar transacción
commit;

unlock tables;



