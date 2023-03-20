-- Actividad 7.5 - Bloqueos de tablas
-- Tema 7 - DCL
-- Curso 1DAW
-- Autor: David Gutiérrez Pérez
-- Fecha: 16/03/23



/*
1. Usuarios
Crear los siguientes usuarios aplicando todos los privilegios
ubrique01 contraseña 'ubrique01'
arcos01 contraseña 'arcos01'
Una vez creados los usuarios anteriores crear una conexión y abrir una sesión para cada uno de ellos. 
En workbench debo tener dos pestañas una para el usuario ubrique01 y otra con el usuario arcos01 */

create user ubrique01@localhost identified by password '*EC0574FECB8D62FA502D1BC2165A7BBE8754D0F7';
create user arcos01@localhost identified by password '*9D46406132E2344139C9028FFEA6CE31213E83F2';

grant all privileges on *.* to ubrique01@localhost with grant option;
grant all privileges on *.* to arcos01@localhost with grant option;

/* A partir de ahora las acciones asociadas a cada usuario se ejecutarán desde su pestaña.
A veces cuando intento realizar una operación para la que estoy bloqueado aborta la conexión
y tengo que iniciarla de nuevo.  */

/*
2. Usar geslibros
Los dos usuarios usaran la base de datos geslibros */

use geslibros;


/*
3. Usuario ubrique01

El usuario ubrique01 bloquea la tabla clientes para lectura
Muestra todos los registros de la tabla libros (acción no permitida comprobar) */


/*
4. usuario arcos01

Selecciona todos los clientes de la provincia de Guadalajara (acción permitida comprobar)
Inserta un cliente y asignar datos a vuestro criterio (acción no permitida comprobar) */


/*
5. Usuario ubrique01

Desbloquea la tabla clientes */


/*
6. usuario arcos01

Comprobar que ha conseguido insertar el cliente anterior.
Bloquea la tabla libros a modo escritura.
Inserta un nuevo libro (debe permitir la acción) */


/*
7. usuario ubrique01

Muestra todos los registros de la tabla libros (no debe permitirlo)
Intenta bloquear la tabla para lectura (no debe permitirlo) */


/*
8. usuario arcos01

Desbloquea la tabla libros */


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