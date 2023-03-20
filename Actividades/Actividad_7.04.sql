-- Actividad 7.04
-- Tema 7 - DCL
-- Curso 1DAW
-- Autor: David Gutiérrez Pérez
-- Fecha: 14/03/23

#  Realizar una transacción sobre la base de datos geslibros.
USE geslibros;

/*
1. Incluye en una transacción un proceso que realice las siguientes actualizaciones:
Todos los libros de tema Novela se ponen en oferta y se decrementa el precio en un 10%;
Los libros de la editorial Anaya se incrementa el precio en un 6% mientras que
el resto de editoriales se reduce en un 4,5% */

start transaction;
UPDATE geslibros.libros 
SET 
    precio_venta = precio_venta - (precio_venta * 0.10)
WHERE
    id IN (SELECT 
            libro_id
        FROM
            libros_temas
        WHERE
            tema_id = 3);
            
UPDATE geslibros.libros 
SET 
    precio_venta = precio_venta + (precio_venta * 0.06)
WHERE
    id IN (SELECT 
            id
        FROM
            editoriales
        WHERE
            nombre = 'Anaya');
            
UPDATE geslibros.libros 
SET 
    precio_venta = precio_venta + (precio_venta * 0.06)
WHERE
    id not in (SELECT 
            id
        FROM
            editoriales
        WHERE
            nombre = 'Anaya');


/*
2. Finalizar la transacción deshaciendo las operaciones anteriores. Comprobar */

rollback;


/*
3. Inicia una nueva transacción que contenga las siguientes operaciones:
Añadir dos nuevos libros
Añadir una venta y 3 líneas de detalle sobre esa venta */

start transaction;
insert into geslibros.libros values(
null,
1252458565425,
6969636963521,
'La Quijota y Sancha Panza',
2,
3,
45.02,
50.59,
4,
1,
1000000,
1468,
default,
default);

insert into geslibros.ventas values(
null,
4,
'1998-02-03',
400.5,
65.3,
465.8,
default,
default);

insert into lineasventas values(
null,
11,
3,
12,
0.04,
2,
26.00,
26.10,
default,
default
);

insert into lineasventas values(
null,
11,
4,
12,
0.04,
1,
13.00,
13.05,
default,
default
);

insert into lineasventas values(
null,
11,
5,
13,
0.04,
4,
48.00,
48.19,
default,
default
);


/*
4. Finalizar la transacción confirmando las operaciones anteriores. */

commit;


/*
5. Incluye en una transacción las siguientes operaciones sobre la base de datos geslibros:

Insertar dos libros
Insertar dos clientes
Crear SAVEPOINT a
Actualizar los precios de todos los libros en 10% de incremento
Crear SAVEPOINT b
Eliminar los libros no vendidos
Deshacer a partir del SAVEPOINT a

Comprobar  */


start transaction;
# Insertar dos libros
insert into libros values(
null,
8963696547545,
5696321454147,
'El empoderamiento de Blancanieves',
6,
7,
10.50,
15.00,
150,
1,
1000,
'2023-02-03',
default,
default
),(
null,
8963645252125,
8151211454147,
'La revelión de Cenicienta',
6,
7,
10.50,
15.00,
150,
1,
1000,
'2022-02-03',
default,
default
);

# Insertar dos clientes
insert into clientes values(
null,
'Agustin',
'Calle la peineta, 3. 1ºB',
'Los molares',
46985,
41,
'569632541l',
956464262,
699326585,
'elreydemolares@hotmail.com',
default,
default
),(
null,
'Jessica',
'Calle Puerto Hurraco, 1. Planta Baja',
'Las Navas de la concepción',
42567,
41,
'96325685p',
null,
612634241,
'lamejon@hotmail.com',
default,
default
);

# Crear SAVEPOINT a

SAVEPOINT a;

# Actualizar los precios de todos los libros en 10% de incremento


UPDATE libros 
SET 
    precio_venta = precio_venta + (precio_venta * 0.10);

# Crear SAVEPOINT b

SAVEPOINT b;

# Eliminar los libros no vendidos


DELETE FROM libros 
WHERE
    id NOT IN (SELECT DISTINCT
        libro_id
    FROM
        lineasventas);

# Deshacer a partir del SAVEPOINT a
ROLLBACK to a; 

commit;

