-- EJEMPLO TRANSACCIONES

-- Varible autocommit
show variables like 'autocomit';

USE TEST;

-- para poner en on/of
SET AUTOCOMMIT = 1;  -- > Se refleja automáticamente todo lo que se hace en la BBDD

-- 2. Creamos una tabla en la BBDD Test, de tipo InnoDB e insertamos --
-- unos datos

CREATE TABLE Transacciones(
IdTransac INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Valor INT);

INSERT INTO Transacciones VALUES
(null, 1),
(null, 2),
(null, 3);


-- Ejemplo de transaccion
start transaction;
insert into Transacciones value
(null, 4);

rollback; -- > para desacer una transaccion


-- Ejemplo transaccion con exito
start transaction;
insert into Transacciones value
(null, 4);
insert into Transacciones value
(null, 5); -- > Si perdemos la conexion en este momento la transaccion se borra

commit; -- > Una vez ejecutado esto la transaccion se mantiene 
