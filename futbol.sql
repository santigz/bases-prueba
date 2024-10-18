DROP DATABASE IF EXISTS futbol;
CREATE DATABASE futbol;
USE futbol;

-- CREAMOS TABLAS
CREATE TABLE equipo (
  id INT PRIMARY KEY,
  nombre VARCHAR(255),
  ciudad VARCHAR(255)
);
CREATE TABLE jugador (
  dni VARCHAR(15) PRIMARY KEY,
  nombre VARCHAR(100),
  nacionalidad VARCHAR(100),
  dorsal INT,
  altura FLOAT,
  id_equipo INT,
  FOREIGN KEY (id_equipo) REFERENCES equipo(id)
);

-- INTRODUCIMOS VALORES/DATOS
INSERT INTO equipo VALUES
(1, 'Mi equipo', 'Madrid');

INSERT INTO jugador VALUES
('123', 'Pepe', 'Francia', 5, 1.90, 1);
