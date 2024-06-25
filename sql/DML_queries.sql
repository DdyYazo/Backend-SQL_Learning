---- Conusultar registros SELECT

SELECT * FROM people;

SELECT first_name, last_name FROM people;

---- Insertar registros INSERT INTO
INSERT INTO platziblog.people (last_name, first_name, address, city)
VALUES ('Hernandez', 'Laura', 'Calle 21', 'Monterrey'),
       ('Alanis', 'Edgar', 'Central 1', 'Mexico');


---- Actualizar registros UPDATE
UPDATE people
SET last_name = 'Chavez', city = 'Merida'
WHERE person_id = 1;


--- UPDATES Inseguros

 UPDATE people 
 SET first_name = 'Juan' 
 WHERE city = 'Merida';

 UPDATE people
 SET first_name = 'Juan';

--- Eliminar registros DELETE

DELETE FROM people
WHERE person_id = 1;

--- Eliminar inseguro

DELETE FROM people;
