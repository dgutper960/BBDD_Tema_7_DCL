-- Actividad 7.02
-- Tema 7 - DCL
-- Curso 1DAW
-- Autor: David Gutiérrez Pérez
-- Fecha: 11/03/23


# Cambiar las contraseñas de los usuarios
-- ALTER USER roberto_79@localhost IDENTIFIED BY '*A4B6157319038724E3560894F7F932C8886EBFCF';


/*
1. Asignación de Privilegios.

Para poder asignar todos estos privilegios deberá hacerse desde la conexión del root o superadministrador de la base de datos.
Una vez realizado cada ejercicio deberá activarse su conexión para comprobar su correcto funcionamiento.

En caso de no estar creado el usuario se creará en la misma sentencia GRANT.
A los usuarios no creados se les asignará el @localhost. */

   # Asignar al usuario juan todos los privilegios a nivel global.
   -- > Para ver la lista de usuarios, abrimos en otra pestaña --> SELECT * FROM mysql.user
   
   GRANT ALL PRIVILEGES ON *.* TO juan_01@localhost;
   
   -- Compruebo la tabla  mysql.user
   
   
   -- Asignar al usuario pedro el privilegio de poder acceder a todas las bases de datos pero sólo para consultar (SELECT)
   
   GRANT SELECT ON *.* TO pedro_01@localhost;
   
   -- Asignar al usuario maria privilegios de acceso a las bases de datos gestlibros y maratoon
   -- sólo para ejecutar los comandos ALTER, CREATE, UPDATE Y SELECT.
   
   grant select, create, update, alter ON geslibos.* to maria_03@localhost;
   grant select, create, update, alter ON maratoon.* to maria_03@localhost;
   revoke select, create, update, alter ON maratoon.* from maria_03@localhost;
   
   
   -- Asignar  al nuevo usuario roberto/roberto_67 privilegios de super administrador.
   
   grant all privileges on *.* to roberto_67@localhost with grant option; -- > NO DEBE HACERSE
   
   -- Asignar al nuevo usuario rocio/rocio_69 todos los privilegios sobre la base de datos geslibros
   -- > SE RECOMIENDA PRIMERO CREAR EL USUARIO Y LUEGO ASIGNAR PRIVILEGIOS
   grant all privileges on geslibros.* to rocio_69@localhost;
   
   -- Asignar al nuevo usuario carlos/carlos_90 privilegios sobre la tabla libros, editoriales 
   -- y clientes de la base de datos geslibros, además sólo podrá realizar consultas y actualizaciones.
   
   -- > DEBE DE SER UN COMANDO DIFERENTE PARA CADA TABLA
   grant all privileges on geslibros.libros to carlos_90@localhost;
   grant all privileges on geslibros.editoriales to carlos_90@localhost;
   
   -- Asignar al nuevo usuario anamari/anamari_2000 privilegios para acceder a las columnas 
   -- titulo, ean, isbn y precio_venta de la tabla libros de la base de datos geslibros sólo para consultar.
   
   grant select (titulo, ean, precio_venta) on geslibros.libros to anamari_2000@localhost;
   
   -- Asignar al usuario anamari privilegios para acceder a las columnas
   -- nombre, telefono, email de la tabla clientes de la base de datos geslibros sólo para consultar y actualizar.
   
   -- > Este si se puede hacer con un solo comando.
   grant select (nombre, telefono, email) on geslibros.clientes to anamari_2000@localhost;
   grant update (nombre, telefono, email) on geslibros.clientes to anamari_2000@localhost;

     
     
     