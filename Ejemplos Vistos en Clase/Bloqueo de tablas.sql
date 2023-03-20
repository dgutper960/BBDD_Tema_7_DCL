-- Ejemplo Bloqueo de tablas

use geslibros;

# Creamos un usuario con todos los privilegios
grant all privileges on *.* to DavidGP@localhost with grant option;

# bloqueamos las sig tablas en modo lectura
lock tables libros read, clientes read, autores read;

# Mientras esté activo el bloqueo no podré acceder a otras tablas
select * from ventas;


# Solo podré actuar sobre una de las tablas que están bloquedas
select * from libros;

# Vamos a intenetar insertar un autor
insert into autores values(null, 'Paco Salinas', 'España', 'Pacoespaña@gmail.com', '1960-03-04', 'Planeta');
# no me va a dejar porque el bloqueo es de lectura -- > A otros usuarios tampoco le dejará aunque tengan todos los provilegios

# Desbloqueamos las tablas
unlock tables;

# Bloqueamos la tabla libros a modo escritura
lock tables libros write;

# No funciona
select * from clientes;

# Si funciona
update libros set precio_venta = precio_coste *1.30; -- > Mis libros tienen un veneficio del 30%
-- > Si un usuario bloquea en write no se puede hacer nada con otro usuario en esas tablas




