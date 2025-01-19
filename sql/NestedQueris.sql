USE metro_cdmx;


--=========================================================================--
--=========================== Using NESSTED QUERIES ========================--


-- 1. Insert into lines_stations using nested queries by name of line and name of station

INSERT INTO `lines_stations` (line_id, station_id) VALUES(
    (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Línea 9"),
    (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Lázaro Cárdenas")
),
(
    (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Línea 6"),
    (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Ferrería")
),
(
    (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Línea A"),
    (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Pantitlán")
),
(
    (SELECT `lines`.`id` FROM `lines` WHERE `lines`.`name` = "Línea 2"),
    (SELECT `stations`.`id` FROM `stations` WHERE `stations`.`name` = "Tacuba")
);


--- 2. Insert into lines_stations using nested queries by name of line and name of station with a JOINS sentence
--- * UNION CALL is used to insert multiple rows in a single query

INSERT INTO lines_station (lines_id, stations_id)
SELECT
    l.id_lines AS line_id,
    s.id_station AS station_id
FROM (
    SELECT 1, 'Línea 9' AS line_name, 'Lázaro Cárdenas' AS station_name
    UNION ALL
    SELECT 2, 'Línea 6', 'Ferrería'
    UNION ALL
    SELECT 3, 'Línea A', 'Pantitlán'
    UNION ALL
    SELECT 4, 'Línea 2', 'Tacuba'
) AS temporal
INNER JOIN `lines` l ON l.name = temporal.line_name
INNER JOIN `stations` s ON s.name_station = temporal.station_name;


--- 3. Insert into lines_stations using nested queries by name of line and name of station and Functions to simplify the process





CREATE PROCEDURE InsertIntoLinesStation(
    IN p_line_id BIGINT(20) UNSIGNED,
    IN p_station_id BIGINT(20) UNSIGNED
)
BEGIN
    -- Verificar si el line_id existe en la tabla lines
    IF EXISTS (SELECT 1 FROM `lines` WHERE id_lines = p_line_id) THEN
        -- Verificar si el station_id existe en la tabla stations
        IF EXISTS (SELECT 1 FROM stations WHERE id_station = p_station_id) THEN
            -- Insertar los datos en la tabla lines_station
            INSERT INTO lines_station (line_id, station_id)
            VALUES (p_line_id, p_station_id);
        ELSE
            -- Manejar el caso donde station_id no existe
            SELECT 'Error: station_id no existe en la tabla stations' AS ErrorMessage;
        END IF;
    ELSE
        -- Manejar el caso donde line_id no existe
        SELECT 'Error: line_id no existe en la tabla lines' AS ErrorMessage;
    END IF;
END //

DELIMITER ;

CALL InsertIntoLinesStation(9, 19);

SELECT * FROM `lines_station`;

SET @result = insert_lines_stations('Línea 9', 'Lázaro Cárdenas');
SELECT @result;

SHOW FUNCTION STATUS WHERE Db = 'metro_cdmx';



 DELIMITER //

CREATE FUNCTION insert_lines_stations(`line_name` VARCHAR(255), `station_name` VARCHAR(255))
RETURNS INT
BEGIN
    DECLARE `line_id` BIGINT(20);
    DECLARE `station_id` BIGINT(20);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        -- Manejo de errores
        RETURN -1;
    END;

    -- Obtener el id de la línea
    SELECT `metro_cdmx`.`id_lines` INTO `line_id` FROM `lines` WHERE `name` = `line_name`;

    -- Obtener el id de la estación
    SELECT `metro_cdmx`.`id_station` INTO `station_id` FROM `stations` WHERE `name_station` = `station_name`;

    -- Insertar en la tabla lines_station
    INSERT INTO `metro_cdmx`.`lines_station` (`line_id`, `station_id`) VALUES (`line_id`, `station_id`);

    -- Devolver 0 para indicar éxito
    RETURN 0;
END //
DELIMITER ;



DELIMITER //






--=========================================================================--
--======================= Practice example of nested queries ==============--

/* crear una tabla pivote linea_estaciones con las propiedades linea_id y estacion_id. */

CREATE TABLE `linea_estaciones` (
  `id` BIGINT(20) NOT NULL,
  `linea_id` BIGINT(20) NOT NULL,
  `estacion_id` BIGINT(20) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  CONSTRAINT `linea_estaciones_linea_id_foreign`
  FOREIGN KEY (`linea_id`) REFERENCES `lineas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `linea_estaciones_estacion_id_foreign`
  FOREIGN KEY (`estacion_id`) REFERENCES `estaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

 --- Realizado con nested queries y tablas temporales UNION ALL

INSERT INTO `linea_estaciones` (`id`, `linea_id`, `estacion_id`)
SELECT
    tempo.id,
    l.id AS linea_id,
    s.id AS estacion_id
FROM (
    SELECT 1 AS id, 'Linea 1' AS line_name, 'Estacion 1' AS station_name
    UNION ALL
    SELECT 2, 'Linea 2', 'Estacion 2'
    UNION ALL
    SELECT 3, 'Linea 3', 'Estacion 3'
    UNION ALL
    SELECT 4, 'Linea 1', 'Estacion 4'
    UNION ALL
    SELECT 5, 'Linea 2', 'Estacion 5'
) AS tempo
INNER JOIN lineas l ON l.nombre = tempo.line_name
INNER JOIN estaciones s ON s.nombre = tempo.station_name;


SELECT * FROM linea_estaciones;

