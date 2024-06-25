--- Creación de la base de datos
CREATE SCHEMA platziblog DEFAULT CHARACTER SET utf8;

--- Creación de las tablas independientes

CREATE TABLE categorias (
    id INT NOT NULL ,
    nombre_categoria VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE etiquetas (
    id INT NOT NULL AUTO_INCREMENT,
    nombre_etiqueta VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE Usuarios (
    id INT NOT NULL AUTO_INCREMENT,
    login VARCHAR(32) NOT NULL,
    password VARCHAR(32) NOT NULL,
    nickname VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL UNIQUE, /* UNIQUE es un Constraint */
    PRIMARY KEY (id)
);