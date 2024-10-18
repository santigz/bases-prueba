DROP DATABASE IF EXISTS tipos_datos;
CREATE DATABASE tipos_datos;
USE tipos_datos;

-- Comentario
CREATE TABLE TiposDatos (
  flotante FLOAT(5,2),
  decimales DECIMAL(7,3),
  codigo CHAR(4) DEFAULT 'ABCD',
  texto TEXT,
  dia DATE NULL DEFAULT '2024-01-01',
  momento DATETIME NULL DEFAULT '2024-01-01 00:00:00',
  hora TIME NULL DEFAULT '00:00:00',
  color ENUM('Rojo', 'Verde', 'Azul') DEFAULT 'Rojo'
);

INSERT INTO TiposDatos VALUES
(23.1, 77.12, 'ABCD',
 'Texto largooooooooo',
 '2024-09-04', '2024-09-04 11:59:00',
 '11:59:27', 'Turquesa')
;
