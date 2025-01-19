/* ----- Creación de la base de datos del proyecto "metro_CMDX" ----- */

CREATE DATABASE metro_cdmx;

USE metro_cdmx;


/* ----- Creación del usuario secundario para la base de datos ----- */


--- Sintaxis para crear un usuario (CREATE USER 'nombreUsuario'@'localhost' IDENTIFIED BY 'contraseña';)
CREATE USER 'tydomex'@'localhost' IDENTIFIED BY '123';

/* ----- Eliminición de un usuario ----- */

DROP USER 'tydomex'@'localhost';

/* ----- Otorgar todos los permisos al usuario ----- */

--- Sintaxis para otorgar todos los permisos a un usuario (GRANT ALL PRIVILEGES ON * . * TO 'nombreUsuario'@'localhost';)

GRANT ALL PRIVILEGES ON * . * TO 'tydomex'@'localhost'; 

--- Otorgar permisos al usuario para una tabla específica

GRANT PRIVILEGES ON metro_cdmx.estaciones TO 'tydomex'@'localhost';

--- Activar los permisos

FLUSH PRIVILEGES;

--- Ingresar a la base de datos con el usuario creado

mysql -u tydomex -p metro_cdmx