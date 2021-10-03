DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;
USE Juego;
--Tabla Jugador 
CREATE TABLE Jugador(
id INTEGER,
nombre VARCHAR(20),
password VARCHAR(20),
PRIMARY KEY (id),
)ENGINE=InnoDB;
--Tabla Partidas
CREATE TABLE Partidas(
id INTEGER NOT NULL,
fecha INTEGER,   
hora VARCHAR(20),
duracion INTEGER(20),
ganador VARCHAR(20),
PRIMARY KEY (id),
)ENGINE=InnoDB;
--Tabla Datos (N:M)
CREATE TABLE Datos(
idJu INTEGER NOT NULL,
idPa INTEGER NOT NULL,
Puntos INTEGER NOT NULL,
FOREIGN KEY (idJu) REFERENCES   Jugador(id),
FOREIGN KEY (idPa) REFERENCES   Partidas(id),
)ENGINE=InnoDB;

INSERT INTO Jugador(id,nombre,password) VALUES(1,'Juan','perrito1');
INSERT INTO Jugador(id,nombre,password) VALUES(2,'Pablo','compañero1');
INSERT INTO Jugador(id,nombre,password) VALUES(3,'Alberto','anuel');

INSERT INTO Partidas(id,fecha,hora,duracion,ganador) VALUES(1,02,'14:00',47,'Pablo');
INSERT INTO Partidas(id,fecha,hora,duracion,ganador) VALUES(2,05,'18:00',24,'Juan');
INSERT INTO Partidas(id,fecha,hora,duracion,ganador) VALUES(3,10,'19:00',30,'Juan');

-- Jose

SELECT COUNT (*) FROM Partidas WHERE nombre("Juan") AND puntos >=30;