# Actividad 7.05

# Ususario ubrique01@localhost


# 2. Usar geslibros

use geslibros;

/*
3. Usuario ubrique01

El usuario ubrique01 bloquea la tabla clientes para lectura
Muestra todos los registros de la tabla libros (acción no permitida comprobar) */

lock tables clientes read;

select * from libros;

/*
5. Usuario ubrique01

Desbloquea la tabla clientes */

unlock tables;


/*
7. usuario ubrique01

Muestra todos los registros de la tabla libros (no debe permitirlo)
Intenta bloquear la tabla para lectura (no debe permitirlo) */

select * from libros;  

lock tables libros read;  








