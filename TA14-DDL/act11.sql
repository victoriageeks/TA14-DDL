
DROP DATABASE IF EXISTS investigacion;

CREATE DATABASE investigacion;

USE investigacion;

DROP TABLE IF EXISTS facultad;

CREATE TABLE facultad (
  codigo int NOT NULL AUTO_INCREMENT,
  nombre varchar(100) DEFAULT NULL,
  PRIMARY KEY (codigo)
);

DROP TABLE IF EXISTS investigadores;

CREATE TABLE investigadores (
  DNI varchar(8) NOT NULL,
  nomApels varchar(255) DEFAULT NULL,
  facultad int DEFAULT NULL,
  PRIMARY KEY (DNI),
  FOREIGN KEY (facultad) REFERENCES facultad(codigo) 
  ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS equipos;

CREATE TABLE equipos (
  numSerie char(4) NOT NULL,
  nombre varchar(100) DEFAULT NULL,
  facultad int DEFAULT NULL,
  PRIMARY KEY (numSerie),
  FOREIGN KEY (facultad) REFERENCES facultad(codigo) 
  ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS reserva;

CREATE TABLE reserva (
  DNI varchar(8) NOT NULL,
  numSerie char(4) NOT NULL,
  comienzo datetime DEFAULT NULL,
  fin datetime DEFAULT NULL,
  PRIMARY KEY (DNI,numSerie),
  FOREIGN KEY (DNI) REFERENCES investigadores(DNI) 
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (numSerie) REFERENCES equipos(numSerie) 
  ON DELETE CASCADE ON UPDATE CASCADE
);
