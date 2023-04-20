-- CREACION DE TABLA Y ENLACE A LA TABLA CLIENTES
CREATE TABLE Cuentas (
  codigo INT NOT NULL,
  saldo BIGINT DEFAULT 0,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo) REFERENCES cliente(id)
);
-- TRANSACCION PARA CADA TRANSFERENCIA CON VALIDACION
START TRANSACTION;
IF saldo >= cantidad_a_transferir THEN
UPDATE Cuentas SET saldo = saldo - cantidad_a_transferir WHERE codigo = codigo_origen AND saldo >= cantidad_a_transferir;
UPDATE Cuentas SET saldo = saldo + cantidad_a_transferir WHERE codigo = codigo_destino;
ELSE
    ROLLBACK;
END IF;
COMMIT;
