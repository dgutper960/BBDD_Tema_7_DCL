-- Funciones MySQL

# Funciones de lista
select greatest(1, 26, 35, 2, 8, 7);

# Funciones Matemáticas
select radians(28);
select abs(-9);
select cos(30);
select ceiling(33.66); -- > Retorna entero más pequeño no menor a x (redondeo por exeso)
select floor(54.45); -- > Retorna entero más pequeño no mayor a x (Redondeo por defecto)

select mod(9,5); -- > Retorna el resto de una división
select 9 % 5; -- > Retorna el resto de una división
select 9 mod 5; -- > Retorna el resto de una división

select rand(); -- > devuelve un valor aleatorio entre 0 y 1 sinllegar nunca a 1
select rand()*10; -- > devuelve un valor aleatorio entre 0 y 10 sin llegar nunca a 10
select ceiling(rand()*10); -- > devuelve un valor aleatorio entre 0 y 10 Redondea por exeso
select floor(rand()*9); -- > devuelve un valor aleatorio entre 0 y 10 y Redondea por defecto

# Imaginemos que queremos simular el lanzamiento de tres dados:
select ceiling(rand()*6) dado1, ceiling(rand()*6) dado2, ceiling(rand()*6) dado3;

select rund(7.50); -- > Redondea al entero más cercano

# Seno aungulo de 30 grados
-- En OPERACIONES TRIGONOMÉTRICAS primero hay que pasarlo a radiales
select sin(radians(30));


select truncate(5.67596, 2);  -- > El segundo valor es el núm de decimales al que quiero el numero

# FUNCIONES DE CADENA
select ascii('a'); -- > Me devuelve el número correspondiente

select char_length('Hola CaraCola');  -- > Devuelve la longitud de una cadena

select concat('Hola','','me llamo ','Juan');

select concat_ws(', ','David','Gutiérrez'); -- Es más eficiente que concat()

select elt(2, 'jbhdaoiku', 'koopjui', 'lllolllo', 'fraaaaann'); -- > devuelve la cadena de la posisción indicada

select field(2, 'jbhdaoiku', 'koopjui', 'lllolllo', 'fraaaaann');

select find_in_set(5, '2, 45, 9, 5');

select insert('David', 3, 4, 'Espartaco'); -- > Inserta una cadena dentro de otraç
# El primer valor indica a partir de que caracter se sustituye
# El sefundo valor indica cuantos caracteres se sustituyen


select left('David', 4); -- > Elimina caracteres empezando por la izquierda

select ltrim('  Alcahueta'); -- > Elimina espacios en blanco a la izquierda
select rtrim(' Alcahueta blanca flor '); -- > Elimina espacios en blanco tanto por la derecha como por la izquierda

select rpad('90', 5, '*');

select substring_index('Wonderfull.albacete.com', '.', 2);  -- > busca el 2º punto y devuelve hasta ahí
select substring_index('Wonderfull.albacete.com', '.', -2);-- > lo mismo de antes pero empezando por la derecha










