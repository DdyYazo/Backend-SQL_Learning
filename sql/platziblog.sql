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

--- Creación de las tablas dependientes

CREATE TABLE posts (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    fecha_publicacion TIMESTAMP ,
    contenido TEXT NOT NULL,
    status CHAR(8) DEFAULT 'activo',
    user_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE comentarios (
    id INT NOT NULL AUTO_INCREMENT,
    comentario TEXT NOT NULL,
    user_id INT NOT NULL,
    post_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES usuarios(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

--- Creación de las tablas transitivas

CREATE TABLE post_etiqueta (
    id_post_etiqueta INT NOT NULL AUTO_INCREMENT,s
    post_id INT NOT NULL,
    etiqueta_id INT NOT NULL,
    PRIMARY KEY (id_post_etiqueta),
    FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE NO ACTION ON UPDATE CASCADE,
    FOREIGN KEY (etiqueta_id) REFERENCES etiquetas(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
