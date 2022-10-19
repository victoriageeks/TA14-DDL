DROP DATABASE IF EXISTS almacen;
CREATE DATABASE almacen;

USE almacen;

DROP TABLE IF EXISTS almacenes;

CREATE TABLE almacenes (
  codigo int NOT NULL AUTO_INCREMENT,
  lugar varchar(100) DEFAULT NULL,
  capacidad int DEFAULT NULL,
  PRIMARY KEY (codigo)
);

DROP TABLE IF EXISTS cajas;

CREATE TABLE cajas (
  numReferencia char(5) NOT NULL,
  contenido varchar(100) DEFAULT NULL,
  valor int DEFAULT NULL,
  almacen int DEFAULT NULL,
  PRIMARY KEY (numReferencia),
  FOREIGN KEY (almacen) REFERENCES almacenes(codigo) 
  ON DELETE CASCADE ON UPDATE CASCADE
);