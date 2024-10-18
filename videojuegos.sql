DROP DATABASE IF EXISTS videojuegos;
CREATE DATABASE videojuegos;
USE videojuegos;

CREATE TABLE desarrolladora (
  nombre VARCHAR(50) PRIMARY KEY
);

CREATE TABLE juego (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  fk_desarrolladora VARCHAR(50), 
  FOREIGN KEY (fk_desarrolladora) 
    REFERENCES desarrolladora(nombre)
    ON DELETE CASCADE
);

CREATE TABLE personaje (
  nombre VARCHAR(50) PRIMARY KEY,
  vida FLOAT,
  fk_juego INT,
  FOREIGN KEY (fk_juego) REFERENCES juego(id)
    ON DELETE SET NULL
);

INSERT INTO desarrolladora VALUES ('Buggy Soft');
INSERT INTO juego VALUES 
  (0, 'Las aventuras del capitán Salami', 'Buggy Soft'),
  (1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
INSERT INTO personaje VALUES 
  ('Cap. Salami',       10.0, 0),
  ('Señor Cuchiller',   10.0, 0),
  ('Cap. Seitán',       10.0, 1),
  ('Señor Chucharilla', 10.0, 1);

SELECT * FROM personaje;
SELECT * FROM juego;
SELECT * FROM desarrolladora;

-- DELETE FROM juego WHERE id=0;
DELETE FROM desarrolladora WHERE nombre='Buggy Soft';
SELECT * FROM juego;
SELECT * FROM personaje;






