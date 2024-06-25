---- Crear una tabla CREATE TABLE
CREATE TABLE people (
    person_id INT AUTO_INCREMENT NOT NULL,
    last_name VARCHAR(255) NULL,
    first_name VARCHAR(255) NULL,
    address VARCHAR(255) NULL,
    city VARCHAR(255) NULL,
    PRIMARY KEY (`person_id`) 
);

---- Insertar registros INSERT INTO
INSERT INTO `platziblog`.`people` (`person_id`, `last_name`, `first_name`, `address`, `city`) 
VALUES ('1', 'Vásquez', 'Israel', 'Calle Famosa Num 1', 'México'),
	       ('2', 'Hernández', 'Mónica', 'Reforma 222', 'México'),
	       ('3', 'Alanis', 'Edgar', 'Central 1', 'Monterrey');


---- Crear vista VIEW
CREATE VIEW people_view AS
SELECT person_id, last_name, first_name, address, city
FROM people WHERE city = 'México';


---- Alterar tabla ALTER TABLE
--- Alterar tabla agregando columna
ALTER TABLE people
ADD COLUMN email VARCHAR(255) NULL;

--- Alterar tabla alterando columna
ALTER TABLE people
MODIFY COLUMN email VARCHAR(255) NOT NULL;

--- Alterar tabla cambiando tanto el nombre como el tipo de dato
ALTER TABLE people
CHANGE COLUMN email email VARCHAR(255) NOT NULL;

--- Eliminar columna
ALTER TABLE people
DROP COLUMN email;
