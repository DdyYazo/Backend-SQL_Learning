/* ----- Creación de las tablas independientes ----- */

-- Active: 1721187318874@@127.0.0.1@3306@metro_cdmx
USE metro_cdmx;


--=========================================================================--
--=========================== CREATE TABLES ===============================--
/* ----- Creación de las tablas independientes ----- */


--- Creación de la tabla `lines`
CREATE TABLE `lines` (
    `id_lines` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(20) NOT NULL,
    `color` VARCHAR(15) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_lines`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--- Creación de la tabla `stations`

CREATE TABLE `stations` (
    `id_station` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `name_station` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_station`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--- Creación de la tabla `drivers`

CREATE TABLE `drivers` (
    `id_driver` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `name_driver` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_driver`)
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

/* ----- Creación de las tablas dependientes ----- */

--- Creación de la tabla `trains`

CREATE TABLE `trains` (
    `serial__number` VARCHAR(10) NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(5) NOT NULL,
    `lines_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`serial__number`),
    CONSTRAINT `trains_lines_id_foreign` 
    FOREIGN KEY (`lines_id`) REFERENCES `lines` (`id_lines`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--- Creación de la tabla `locations`

CREATE TABLE `locations` (
    `id_location` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `location` POINT NOT NULL,
    `stations_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_location`),
    CONSTRAINT `locations_stations_id_foreign` 
    FOREIGN KEY (`stations_id`) REFERENCES `stations` (`id_station`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci;

--- Creación de la tabla `active_drivers`

CREATE TABLE `active_drivers` (
    `id_active_driver` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `driver_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_active_driver`),
    CONSTRAINT `active_drivers_driver_id_foreign` 
    FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id_driver`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4 
COLLATE=utf8mb4_unicode_ci;

--- Creación de la tabla `lines_station`

CREATE TABLE `lines_station` (
    `id_lines_station` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `lines_id` BIGINT(20) UNSIGNED NOT NULL,
    `stations_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_lines_station`),
    CONSTRAINT `lines_station_lines_id_foreign`
    FOREIGN KEY (`lines_id`) REFERENCES `lines` (`id_lines`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `lines_station_stations_id_foreign`
    FOREIGN KEY (`stations_id`) REFERENCES `stations` (`id_station`) ON DELETE NO ACTION ON UPDATE NO ACTION
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `stations_delete` (
    `id_deleted_station` BIGINT(20) UNSIGNED AUTO_INCREMENT NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_deleted_station`)
    /* `station_id` BIGINT(20) UNSIGNED NOT NULL, */
    /* CONSTRAINT `deleted_stations_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id_station`) ON DELETE NO ACTION ON UPDATE NO ACTION */
)
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

--=========================================================================--
--=========================== END CREATE TABLES ===========================--

--=========================================================================--
--=========================== ALTER TABLES ===============================--
ALTER TABLE `lines_station` DROP FOREIGN KEY `lines_station_id_foreign`;

ALTER TABLE `lines_station`
ADD CONSTRAINT `lines_line_id_foreign` FOREIGN KEY (`line_id`) REFERENCES `lines` (`id_lines`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `lines_station` MODIFY `line_id` BIGINT(20) UNSIGNED NOT NULL;

/* -- Consulta para obtener las llaves foráneas de una tabla en este caso la de `lines_station` -- */
SELECT CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'lines_station' AND TABLE_SCHEMA = DATABASE() AND REFERENCED_COLUMN_NAME IS NOT NULL;

--=========================================================================--
--=========================== END ALTER TABLES ===========================--


--=========================================================================--
--=========================== DELETE TABLES ===============================--

DELETE FROM `trains`

DROP TABLE `lines_station`;