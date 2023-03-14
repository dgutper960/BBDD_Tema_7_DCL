-- Actividad_7.1
-- Tema 7 - DCL
-- Curso 1DAW
-- Autor: David Gutiérrez Pérez
-- Fecha 10/03/23

/*
1. Crear usuarios

En el script de creación de usuario ha de mostrarse encriptado el password

        juan/juan_01
        pedro/pedro_01
        maria/maria_03
        miguel/miguel_04
        rocio/rocio_05  */
        
        
create user juan_01@localhost identified by password '*A4B6157319038724E3560894F7F932C8886EBFCF';
-- > Previamente hemos hecho en otra pestaña lo siguiente --> select password(1234);

create user pedro_01@localhost identified by password '*A4B6157319038724E3560894F7F932C8886EBFCF';
														 -- > PedroUno1234

create user maria_03@localhost identified by password '*A4B6157319038724E3560894F7F932C8886EBFCF';
														-- > MariaTres1234

create user miguel_04@localhost identified by password '*A4B6157319038724E3560894F7F932C8886EBFCF';
														-- > MiguelCuatro1234
                                                        
create user rocio_05@localhost identified by password '*A4B6157319038724E3560894F7F932C8886EBFCF';
														-- > RocioCinco1234
        
/*
2. Crear Conexión

Crear una conexión para cada uno de los usuarios anteriores y comprobar acceso.
Sólo tendrán privilegios sobre la base de datos de prueba test.  */

-- > Ir a Home, en + indicar nombre conexión y nombre usuario. Luego ingresar, pide contraseña. Acceso solo a test 


/*
3. Crear Usuario tabla mysql.user

Crear el usuario roberto/roberto_79 insertando directamente los valores en la tabla users de mysql.
Comprobar conexión y funcionamiento. */

insert into mysql.user(Host, User, Password) values('localhost','roberto' '*A4B6157319038724E3560894F7F932C8886EBFCF');
-- > por motivos de seguridad mysql no permite insertar registros en esta tabla

/*
4. Eliminar usuario

Eliminar los usuarios miguel y rocio. Eliminar también sus correspondientes conexiones. */

drop user miguel_04@localhost;
drop user rocio_05@localhost;
