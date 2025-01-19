

USE metro_cdmx;

--=========================================================================--
--=========================== INSERT INTO =================================--

-- Insert into lines
INSERT INTO `lines` ( `name`, `color`) 
VALUES("Linea 1", "Rosa"),
      ("Linea 2", "Azul"),
      ("Linea 3", "Verde olivo"),
      ("Linea 4", "Cian"),
      ("Linea 5", "Amarillo"),
      ("Linea 6", "Rojo"),
      ("Linea 7", "Naranja"),
      ("Linea 8", "Verde"),
      ("Linea 9", "Café"),
      ("Linea A", "Morado"),
      ("Linea B", "Verde y gris"),
      ("Linea 12", "Oro");

-- Insert into trains

INSERT INTO `trains` (`serial__number`, `lines_id`, `type`, `year`) 
VALUES('0JFxafE4q8', 1, 1, 1963),
      ('2e5v4FHs0T', 3, 2, 1984),
      ('5xPdsZ1x9L', 3, 2, 1948),
      ('7csbz2qteT', 1, 1, 1971),
      ('8PwCI0CC6n', 4, 1, 1990),
      ('9ilxeEwlnH', 4, 2, 1994),
      ('aWDpmlRsOG', 4, 2, 1998),
      ('ax5jrpNIWG', 4, 2, 1952),
      ('B83fPCVFbH', 1, 1, 1990),
      ('Bv1MN0DuUm', 2, 2, 1952),
      ('D9m2gBhBJw', 2, 1, 1969),
      ('EDUumFCvJl', 2, 1, 1967),
      ('ejN3a4CsDC', 3, 2, 1997),
      ('f49Bk0GzBi', 4, 2, 1967),
      ('Ge92a6hVX8', 3, 2, 1967),
      ('Huz9yGcao5', 2, 1, 1980),
      ('Hvhw9vxUaH', 3, 1, 1983),
      ('JO5UinVh7B', 2, 1, 1956),
      ('MPbPGQfWxT', 2, 2, 1982),
      ('mS0SY0eScA', 3, 2, 1986),
      ('oCut3fDYXE', 3, 2, 1987),
      ('oRyT0nwjUn', 2, 1, 1988),
      ('OtmhQxSRpS', 3, 2, 1956),
      ('Pazz9JGCbJ', 1, 2, 1988),
      ('pBnf2N5Ncc', 4, 1, 1981),
      ('pMldxCQ2sS', 3, 1, 1984),
      ('q92m0d8aWM', 1, 1, 1979),
      ('QJ22USb3ry', 2, 1, 1949),
      ('rnpVQQPs5b', 4, 1, 1984),
      ('S06Q7kXYrP', 1, 1, 1990),
      ('s0QypBy7cJ', 2, 2, 1958),
      ('S6R4dX4THI', 2, 2, 1994),
      ('t8HhPpvYbU', 1, 2, 1996),
      ('U9xuOQl3kh', 3, 1, 1982),
      ('uibQ7F5VE7', 4, 1, 1961),
      ('Uj5G2Bodtk', 4, 2, 1985),
      ('VjPElNnH29', 3, 2, 1964),
      ('vOv1sCgHoa', 1, 1, 1947),
      ('VViBQInzq3', 4, 2, 1959),
      ('wGweNe36QH', 1, 2, 1987),
      ('Wh09mwE4yn', 4, 1, 1968),
      ('XE89MYo0IU', 3, 1, 1986),
      ('Z5qAgGpFTj', 1, 1, 1971),
      ('ZbX2yY5Wyz', 1, 2, 1966),
      ('zeaEgOCuYl', 2, 2, 1997),
      ('ZHA4kQokXG', 2, 1, 1977),
      ('zpO3I3tS4e', 1, 2, 1995),
      ('zpYnPq7vmN', 4, 2, 1976);

-- Insert into stations

INSERT INTO `stations` (`name_station`) 
VALUES("Lázaro Cárdens"), -- Lázaro Cárdenas
      ("Ferería"), -- Ferrería 
      ("Pnttlán"), -- Pantitlán
      ("Tauga"), -- Tacuba
      ("MartínCrrera"), -- Martín Carrera
      ("Santa Anita"),
      ("Villa de Aragón"),
      ("Tezozómoc"),
      ("Tecnológico"),
      ("Colegio Militar"),
      ("Chapultepec"),
      ("Calle 11"),
      ("Constitución de 1917"),
      ("Copilco"),
      ("Talismán"),
      ("Terminal Aérea"),
      ("Tepito"),
      ("Hospital 20 de Nov."),
      ("Eugenia"),
      ("Lomas Estrella"),
      ("Tlatelolco"),
      ("Atlalilco"),
      ("Blvd. Puerto Aéreo"),
      ("Chilpancingo"),
      ("Ciudad Azteca"),
      ("Niños Héroes"),
      ("Popotla"),
      ("San Joaquín"),
      ("Universidad"),
      ("Instituto del Petróleo"),
      ("Escuadrón 201"),
      ("Iztacalco"),
      ("Juárez"),
      ("Chabacano"),
      ("Azcapotzalco"),
      ("Bosque de Aragón"),
      ("Tlaltenco"),
      ("Jamaica"),
      ("Oceanía"),
      ("Iztapalapa"),
      ("Mixhuca"),
      ("Centro Médico"),
      ("Balderas"),
      ("Salto del Agua"),
      ("Insurgentes"),
      ("Guelatao"),
      ("Morelos"),
      ("Moctezuma"),
      ("Normal"),
      ("Zapata"),
      ("Zaragoza"),
      ("La Raza"),
      ("Constituyentes"),
      ("Múzquiz"),
      ("Romero Rubio"),
      ("San Cosme"),
      ("Portales"),
      ("Puebla"),
      ("Santa Marta"),
      ("Tasqueña"),
      ("Xola"),
      ("Canal del Norte"),
      ("Buenavista"),
      ("Balbuena"),
      ("Ermita"),
      ("Aragón"),
      ("Deportivo 18 de Marzo"),
      ("Auditorio"),
      ("Culhuacán"),
      ("El Rosario"),
      ("Guerrero"),
      ("Hospital General"),
      ("Fray Servando"),
      ("Patriotismo"),
      ("Observatorio"),
      ("La Paz"),
      ("Valle Gómez"),
      ("Tezonco"),
      ("Candelaria"),
      ("Aquiles Serdán"),
      ("La Viga"),
      ("Olímpica"),
      ("Mexicaltzingo"),
      ("Politécnico"),
      ("Periférico Ote"),
      ("San Lázaro"),
      ("San Antonio"),
      ("Zapotitlán"),
      ("Tláhuac"),
      ("Hidalgo"),
      ("Etiopía / Plaza de la Transpatencia"),
      ("Deportivo Oceanía"),
      ("Impulsora"),
      ("Consulado"),
      ("Camarones"),
      ("Allende"),
      ("San Juan de Letrán"),
      ("Viaducto"),
      ("Vallejo"),
      ("Doctores"),
      ("Los Reyes"),
      ("Bellas Artes"),
      ("Autobuses del Norte"),
      ("Acatitla"),
      ("Revolución"),
      ("Polanco"),
      ("San Andrés Tomatlán"),
      ("Garibaldi"),
      ("Eduardo Molina"),
      ("Coyuya"),
      ("Coyoacán"),
      ("Norte 45"),
      ("Lindavista"),
      ("Tacubaya"),
      ("Mixcoac"),
      ("Hangares"),
      ("Nopalera"),
      ("UAM-I"),
      ("Velódromo"),
      ("Cuauhtémoc"),
      ("Apatlaco"),
      ("Aculco"),
      ("Agrícola Oriental"),
      ("Eje Central"),
      ("Pino Suárez"),
      ("Río de los Remedios"),
      ("Potrero"),
      ("Sevilla"),
      ("General Anaya"),
      ("Indios Verdes"),
      ("La Villa - Basílica"),
      ("Parque de los Venados"),
      ("Juanacatlán"),
      ("Nativitas"),
      ("Misterios"),
      ("Barranca del Muerto"),
      ("Miguel Ángel de Quevedo"),
      ("Lagunilla"),
      ("Olivos"),
      ("Tepalcates"),
      ("Zócalo"),
      ("Gómez Farías"),
      ("San Pedro de Los Pinos"),
      ("Refinería"),
      ("Villa de Cortés"),
      ("R. Flores Magón"),
      ("Insurgentes Sur"),
      ("Viveros"),
      ("Cerro de la Estrella"),
      ("Bondojito"),
      ("Canal de San Juan"),
      ("San Antonio Abad"),
      ("Obrera"),
      ("Plaza Aragón"),
      ("Panteones"),
      ("Peñón Viejo"),
      ("División del Norte"),
      ("Cuitláhuac"),
      ("Ciudad Deportiva"),
      ("Cuatro Caminos"),
      ("Isabel la Católica"),
      ("Nezahualcóyotl"),
      ("Merced"),
        -- A partir de aquí serán retos para eliminar registros
      ("Merced"),
      ("Lázaro de Guerrero"),
      ("Benito Cárdenas");

--=========================================================================--
--=========================== UPDATE =======================================--

-- Update stations names
UPDATE `stations`
SET name_station = "Lázaro Cárdenas" 
WHERE id_station = 19;

UPDATE `stations`
SET name_station = "Ferrería" 
WHERE id_station = 20;

UPDATE `stations`
SET name_station = "Pantitlán" 
WHERE id_station = 21;

UPDATE `stations`
SET name_station = "Tacuba" 
WHERE id_station = 22;

UPDATE `stations`
SET name_station = "Martín Carrera" 
WHERE id_station = 23;


--=========================================================================--
--=========================== DELETE =======================================--

-- Delete stations

DELETE FROM `stations`
WHERE id_station IN (116, 117, 118);