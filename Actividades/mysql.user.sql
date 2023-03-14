

SELECT * FROM mysql.user;  -- > Privilegios a nivel global

select * from mysql.tables_priv;  -- > Table de privilegios a nivel usuario

repair table mysql.tables_priv; -- > En caso de que la tabla esté corrupta se repara

select * from mysql.db;

select * from mysql.columns_priv; -- > para ver privilegios a nivel columna