DROP DATABASE IF EXISTS libreria;
CREATE DATABASE libreria;
USE libreria;

CREATE TABLE Autor (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  dni VARCHAR(10) UNIQUE KEY
);

CREATE TABLE Tienda (
  cif VARCHAR(10) PRIMARY KEY,
  ubicacion VARCHAR(255),
  web VARCHAR(255)
);

CREATE TABLE Libro (
  isbn INT PRIMARY KEY,
  titulo VARCHAR(255),
  precio DOUBLE CHECK (precio > 50),
  fecha_publicacion DATE,
  id_autor INT,
  cif_tienda VARCHAR(10)
);

