-- Actividad 7.03
-- Tema 7 - DCL
-- Curso 1DAW
-- Autor: David Gutiérrez Pérez
-- Fecha: 11/03/23


/*
1. Revocar Privilegios.

Para poder asignar todos estos privilegios deberá hacerse desde la conexión del root o superadministrador de la base de datos. 
Una vez realizado cada ejercicio deberá activarse su conexión para comprobar su correcto funcionamiento.

Todos los usuarios aquí indicados deben estar creados a partir de la actividad 7.2.  */

   # 1 Revocar a Juan todos los privilegios a nivel global
   
  REVOKE ALL on *.* from juan_01@localhost;
   
   
   # 2 Revocar a pedro el privilegio de poder acceder en modo consulta (SELECT) a la base de datos geslibros.
   
   revoke select on geslibros.* from pedro_01@localhost;
   
   # 3 Revocar maria privilegios de acceso a las bases de datos geslibros y maratoon para los comandos ALTER, CREATE y UPDATE.
   
   revoke all on geslibros.* from maria_03@localhost;
   revoke all on maratoon.* from maria_03@localhost;
   
   # 4 Revocar roberto privilegios de GRANT OPTIONS
   
   revoke all privileges, grant option from roberto_67@localhost;
   
   # 5 Revocar rocio el privilegio INSERT sobre la base de datos geslibros
   
   revoke insert on geslibros.* from rocio_69@localhost;
   
   # 6 Revocar carlos privilegios sobre las tablas editoriales y clientes de la base de datos geslibros,
   --  también el privilegio UPDATE.
   
   revoke all on geslibros.editoriales from carlos_90@localhost;
   revoke all on geslibros.clientes from carlos_90@localhost;
   
   # 7 Revocar anamari privilegios para acceder a las columnas 
   --  titulo, ean, isbn y precio_venta de la tabla libros de la base de datos geslibros para consultar.
   
   drop user anamari_2000@localhost;
   create user anamari_2000@localhost;

   
   revoke select (titulo, ean, precio_venta) on geslibros.libros from anamari_2000@localhost;
   
   # 8 Revocar anamari privilegios para acceder a las columnas
   --  nombre, telefono, email de la tabla clientes de la base de datos geslibros para consultar.
   
   revoke select (nombre, telefono, email) on geslibros.clientes from anamari_2000@localhost;
   