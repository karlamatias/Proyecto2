CREATE SCHEMA IF NOT EXISTS Revistas;

USE Revistas;

CREATE TABLE IF NOT EXISTS Rol(
id INT NOT NULL AUTO_INCREMENT,
nombreRol VARCHAR(45) NOT NULL,
PRIMARY KEY(id)

);


CREATE TABLE IF NOT EXISTS Editor(
usuario VARCHAR(45) NOT NULL,
contraseña VARCHAR(15) NOT NULL,
PRIMARY KEY(usuario)

);

CREATE TABLE IF NOT EXISTS Revista(
codigo INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
etiqueta VARCHAR(45) NOT NULL,
costo DECIMAL(5,2) NOT NULL,
fechaCreacion DATE NOT NULL,
categoria VARCHAR(45) NOT NULL,
autor VARCHAR(45) NOT NULL,
descripcion VARCHAR(100) NOT NULL,
cantMegusta INT(20) NOT NULL,
PRIMARY KEY(codigo),
FOREIGN KEY(autor) REFERENCES Editor(usuario)

);

CREATE TABLE IF NOT EXISTS Usuario(
usuario VARCHAR(45) NOT NULL,
contraseña VARCHAR(15) NOT NULL,
TarjetaCD INT(16) NOT NULL,
revista INT(100) NOT NULL,
rol INT NOT NULL AUTO_INCREMENT
PRIMARY KEY(usuario),
FOREIGN KEY(rol) REFERENCES Rol (Id),
FOREIGN KEY(revista) REFERENCES Revista (codigo)

);

CREATE TABLE IF NOT EXISTS Pefil(
nombre VARCHAR(45) NOT NULL,
etiqueta VARCHAR(45) NOT NULL,
fechaNacimiento DATE NOT NULL,
PRIMARY KEY(nombre)
);

CREATE TABLE IF NOT EXISTS Suscribe(
codigoSuscripcion INT NOT NULL AUTO_INCREMENT,
fechaSuscripcion DATE NOT NULL,
costoSuscripcion INT(20) NOT NULL,
PRIMARY KEY(codigoSuscripcion)

);

CREATE TABLE IF NOT EXISTS Administrador(
usuario VARCHAR(45) NOT NULL,
contraseña VARCHAR(15) NOT NULL,
PRIMARY KEY(usuario)

);
