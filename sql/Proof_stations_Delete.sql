
--=========================================================================--
--=========================== PROOF OF DELETE STATIONS =====================--


INSERT INTO `stations_delete` (`name`) 
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


--- 1. Delete all stations from table `stations_delete` whithout any condition WHERE

DELETE FROM `stations_delete`;


-- 2. Reload number of `ids` from table `stations_delete` with the sentence TRUNCATE


/* First must be truncate the table `stations_delete` to reset the `ids` at the beginning 
with number 1 if the table has the sentence AUTO_INCREMENT, in addition to delete all records. */

TRUNCATE TABLE `stations_delete`;

--- Insert some new stations in the table `stations_delete` to test the next sentence
INSERT INTO `stations_delete` (`name`) 
VALUES("Lázaro Cárdens"), -- Lázaro Cárdenas
      ("Ferería"), -- Ferrería 
      ("Pnttlán"), -- Pantitlán
      ("Tauga"), -- Tacuba
      ("MartínCrrera"); -- Martín Carrera

/* 3. Delete all stations but safely form using TCL (Transaction Control Language) 
with the sentences BEGIN, ROLLBACK and COMMIT */

START TRANSACTION;

DELETE FROM `stations_delete`;
SELECT * FROM `stations_delete`;

ROLLBACK;
SELECT * FROM `stations_delete`;