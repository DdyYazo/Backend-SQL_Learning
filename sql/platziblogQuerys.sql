/* ----- USOS DE SELECT ----- */

--- Consulta para traer todos los campos de la tabla `posts`
SELECT * FROM platziblog.posts;

--- Traer solo los campos titulo, fecha_publicacion y estatus
SELECT titulo, fecha_publicacion, status FROM platziblog.posts;

--- Cambiar el nombre o asignar un alias a los campos que se traen en la consulta

SELECT titulo AS encabezado, fecha_publicacion AS publicado, status AS estado FROM platziblog.posts;

--- Contar la cantidad de registros de la tabla `posts`
SELECT COUNT(*) FROM platziblog.posts;

--- Ponerle un alias a este nuevo dato COUNT(*)
SELECT COUNT(*) AS cantidad_registros FROM platziblog.posts;

--- Consulta todos los post menores a la fecha 2024

SELECT * FROM platziblog.posts WHERE year(fecha_publicacion) < '2024';

/* ----- USOS DE FROM CON JOIN ----- */

-- Todos los usuarios tengan o no un post relacionado (LEFT JOIN con la intersección)

SELECT * 
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id;

-- Todos los usuarios que no tengan un post relacionado (LEFT JOIN sin la intersección)

SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id
WHERE posts.user_id IS NULL;

-- Todos los post esten o no asociados con un usuario (RIGHT JOIN con la intersección)

SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id;

-- Todos los post que no esten asociados con un usuario (RIGHT JOIN sin la intersección)

SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id
WHERE usuarios.id IS NULL;

-- Todos los post que sí hayan hecho posts, con su respectivo post (INNER JOIN)

SELECT *
FROM usuarios
INNER JOIN posts ON usuarios.id = posts.user_id;


-- Conjunto universo UNION (algunas BD usan FULL OUTER JOIN)

SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id;

--- En algunas BD soportan el uso de FULL OUTER JOIN

SELECT *
FROM usuarios
FULL OUTER JOIN posts ON usuarios.id = posts.user_id;

-- Conjunto universo UNION sin la intersección

SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.user_id
WHERE posts.user_id IS NULL
UNION
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.user_id
WHERE usuarios.id IS NULL;

/* ----- USOS DE WHERE ----- */

/* ----- Operadores de comparación */

-- Traer los post donde id sea menor a 50
SELECT *
FROM posts
WHERE id < 50;

-- Taer los posts donde estatos sea inactivo
SELECT *
FROM posts
WHERE status = 'inactivo';

-- Traer los posts donde fecha de publicación sea mayor a 2025-01-01
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';

/* ----- Operadores LIKE */

-- Traer los posts donde en el título esté la palabra escandalo
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';

-- Traer los posts donde el titulo no contenga la palabra escandalo
SELECT *
FROM posts
WHERE titulo NOT LIKE '%escandalo%';

/* ----- Operador BETWEEN */

-- Traer los posts donde fecha de publicación este entre 2023-01-01 y 2025-12-31
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2025-12-31';

-- Traer los posts donde fecha de publicación este entre 2023 y 2024
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2023' AND '2024';

-- Traer los posts donde fecha de publicación el mes de publicación sea 04
SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '04';

-- Traer los post donde la fecha_publicacion no esté entre 2019-01-01 y 2019-01-10

SELECT *
FROM posts
WHERE fecha_publicacion NOT BETWEEN '2019-01-01' AND '2019-01-10';

/* ----- Operador IN */

-- Traer los posts donde el status sea activo o inactivo
SELECT *
FROM posts
WHERE status IN ('activo', 'inactivo');

-- Traer los posts donde el status no sea activo o inactivo
SELECT *
FROM posts
WHERE status NOT IN ('activo', 'inactivo');

/* ----- Operador IS NULL */

-- Traer los posts donde el id del usuario sea NOT NULL

SELECT *
FROM posts
WHERE user_id IS NOT NULL;


-- Traer los posts donde el id del usuario sea NULL

SELECT *
FROM posts
WHERE user_id IS NULL;

/* ----- Operador AND y OR con NULL */

-- Traer los posts donde el id del usuario sea NULL y el id del post sea menor a 50 y el categoria_id sea igual a 2 y el status sea activo

SELECT *
FROM posts
WHERE user_id IS NULL 
AND id < 50 
AND categoria_id = 2 
AND status = 'activo';

-- Traer los posts donde el status no sea activo y el id del post no sea mayor a 50 y el año de la fecha de publicación no sea 2023

SELECT *
FROM posts
WHERE status != 'activo'
AND NOT id > 50
AND NOT YEAR(fecha_publicacion) = 2023;

/* ----- CAMBIAR EL ORDEN DE EJECUCIÓN DE LOS OPERADORES LOGICOS MEDIANTE EL ()*/

-- Traer los posts donde el titulo contenga la palabra se y el id sea menor a 60 o el status sea inactivo

SELECT *
FROM posts 
WHERE titulo like "%se%" 
AND (id < 60 OR estatus = 'inactivo')


/* ----- USOS DE GROUP BY ----- */

-- Agrupar la cantidad de posts por status

SELECT status, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY status;

-- Agrupar la cantidad de posts por el año de la fecha de publicación

SELECT YEAR(fecha_publicacion) AS año, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY año;

-- Agrupar la cantidad de posts por el nombre del mes de fecha_publicacion

SELECT MONTHNAME(fecha_publicacion) AS mes, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY mes;

-- Agrupar la cantidad de posts por el status y el nombre del mes de fecha_publicacion

SELECT status, MONTHNAME(fecha_publicacion) AS mes, COUNT(*) AS cantidad_posts
FROM posts
GROUP BY status, mes;

