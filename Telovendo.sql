-- CREACION DE TABLA Y ENLACE A LA TABLA CLIENTES
CREATE TABLE Cuentas (
  codigo INT NOT NULL,
  saldo BIGINT DEFAULT 0,
  PRIMARY KEY (codigo),
  FOREIGN KEY (codigo) REFERENCES cliente(id)
);
-- TRANSACCION PARA CADA TRANSFERENCIA CON VALIDACION

DECLARE transferencia INT DEFAULT 0;
DECLARE codigo_origen  ;
DECLARE codigo_destino  ;

SET transferencia = 100;
SET codigo_origen = 001;
SET codigo_destino = 002;

START TRANSACTION;
IF saldo >= transferencia THEN
UPDATE Cuentas SET saldo = saldo - transferencia WHERE codigo = codigo_origen AND saldo >= transferencia;
UPDATE Cuentas SET saldo = saldo + transferencia WHERE codigo = codigo_destino;
ELSE
    SELECT 'Alerta, no dispone de saldo suficiente';
    ROLLBACK;
END IF;
COMMIT;
