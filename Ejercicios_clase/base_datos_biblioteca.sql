/*Crea la base de datos*/
CREATE DATABASE biblioteca;

/*Seleccionar la base de datos*/
USE biblioteca;

/*Crea la tabla autores*/
CREATE TABLE autores (
  id_autor VARCHAR(10) PRIMARY KEY NOT NULL,
  nombre_autor VARCHAR(100) NOT NULL
);

/* Carga tabla autores */
INSERT INTO autores VALUES('aut_01', 'Antoine de Saint-Exupéry');
INSERT INTO autores VALUES('aut_02', 'Carlos Fuentes');
INSERT INTO autores VALUES('aut_03', 'Charles Dickens');
INSERT INTO autores VALUES('aut_04', 'Fiódor Dostoyevski');
INSERT INTO autores VALUES('aut_05', 'Gabriel García Márquez');
INSERT INTO autores VALUES('aut_06', 'George Orwell');
INSERT INTO autores VALUES('aut_07', 'H. G. Wells');
INSERT INTO autores VALUES('aut_08', 'H. P. Lovecraft');
INSERT INTO autores VALUES('aut_09', 'Jorge Volpi');
INSERT INTO autores VALUES('aut_10', 'José Emilio Pacheco');
INSERT INTO autores VALUES('aut_11', 'Juan Rulfo');
INSERT INTO autores VALUES('aut_12', 'Julio Verne');
INSERT INTO autores VALUES('aut_13', 'Octavio Paz');
INSERT INTO autores VALUES('aut_14', 'Oscar Wilde');
INSERT INTO autores VALUES('aut_15', 'Stephen King');

/*Crea tabla libros*/
CREATE TABLE libros (
  isbn BIGINT UNSIGNED PRIMARY KEY NOT NULL,
  titulo VARCHAR(200) NOT NULL,
  editorial VARCHAR(50),
  año_escritura VARCHAR(4) 
);

/*Carga tabla libros*/
INSERT INTO libros values (9786073803762, 'El Principito', 'Ediciones Salamandra', '1943');
INSERT INTO libros values (9786074451849, 'Aura', 'Ediciones Era', '1962');
INSERT INTO libros values (9786071423047, 'Cuento De Navidad', 'Editores Mexicanos Unidos', '1843');
INSERT INTO libros values (9786077666561, 'Oliver Twist', 'Leyenda', '1838');
INSERT INTO libros values (9789700739229, 'David Copperfield', 'Porrua', '1849');
INSERT INTO libros values (9788413625218, 'Los Hermanos Karamázov', 'Alianza Editorial', '1880');
INSERT INTO libros values (9788413625188, 'Crimen Y Castigo', 'Alianza Editorial', '1866');
INSERT INTO libros values (9791020805096, 'El Jugador', 'Editorial Maxtor', '1866');
INSERT INTO libros values (9786070795473, 'El Coronel No Tiene Quien Le Escriba', 'Diana', '1961');
INSERT INTO libros values (9786070778179, 'Crónica De Una Muerte Anunciada', 'Diana', '1981');
INSERT INTO libros values (9786070737596, 'Cien Años De Soledad', 'Diana', '1967');
INSERT INTO libros values (9786070796197, 'El Amor En Los Tiempos Del Cólera', 'Diana', '1985');
INSERT INTO libros values (9788466357562, '1984', 'Debolsillo', '1949');
INSERT INTO libros values (9786070777240, 'Rebelión En La Granja', 'Booket', '1945');
INSERT INTO libros values (9788483087626, 'El Hombre Invisible', 'Almadraba', '1897');
INSERT INTO libros values (9788413621395, 'La Guerra De Los Mundos', 'Alianza Editorial', '1898');
INSERT INTO libros values (9789709870633, 'La Máquina Del Tiempo', 'Multilibros', '1895');
INSERT INTO libros values (9786071436030, 'La Llamada De Cthulhu', 'Editores Mexicanos Unidos', '1928');
INSERT INTO libros values (9786071434296, 'H.P. Lovecraft. Narraciones De Horror', 'Mirlo', NULL);
INSERT INTO libros values (9786073166072, 'Una Novela Criminal', 'Alfaguara', '2018');
INSERT INTO libros values (9786073156967, 'Oscuro Bosque Oscuro', 'Debolsillo', '2017');
INSERT INTO libros values (9786073147538, 'En Busca De Klingsor', 'Debolsillo', '1999');
INSERT INTO libros values (9786074450552, 'Las batallas en el desierto', 'Ediciones Era', '1981');
INSERT INTO libros values (9789685208581, 'El Llano En Llamas', 'Rm Editorial', '1953');
INSERT INTO libros values (9789685208550, 'Pedro Paramo', 'Rm Editorial', '1955');
INSERT INTO libros values (9786070784811, 'Viaje Al Centro De La Tierra', 'Austral', '1864');
INSERT INTO libros values (9786070781230, 'Veinte Mil Leguas De Viaje Submarino', 'Austral', '1870');
INSERT INTO libros values (9786070758720, 'La Vuelta Al Mundo En Ochenta Dias', 'Austral', '1873');
INSERT INTO libros values (9788437633992, 'El Laberinto De La Soledad', 'Ediciones Catedra', '1950');
INSERT INTO libros values (9788439731603, 'El Retrato De Dorian Gray', 'Literatura Random House', '1890');
INSERT INTO libros values (9788418145728, 'El Fantasma De Canterville', 'Colofon', '1887');
INSERT INTO libros values (9786073814003, 'It (Eso)', 'Debolsillo', '1983');
INSERT INTO libros values (9786073813990, 'El Resplandor', 'Debolsillo', '1977');
INSERT INTO libros values (9786073813983, 'Cementerio De Animales', 'Debolsillo', '1983');

/*Crea tabla personas*/
CREATE TABLE personas (
  dni VARCHAR(20) PRIMARY KEY NOT NULL,
  codigo_socio VARCHAR(10) NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido_paterno VARCHAR(50) NOT NULL,
  apellido_materno VARCHAR(50),
  direccion VARCHAR(150) NOT NULL,
  telefono VARCHAR(20)
);

/*Carga tabla usuarios*/
INSERT INTO personas values ('PELJ870526','SB001','Juan Carlos','Pérez','Lara','Calle 22, número 17, Colonia Pro-Hogar, Alcaldía Azcapotzalco','5548473623');
INSERT INTO personas values ('ALMR900311','SB002','Rosa','Álvarez','Martínez','Avenida Benito Juárez s/n, Colonia San Martín Xochinahuac, Alcaldía Azcapotzalco','5564627835');
INSERT INTO personas values ('ROGG990625','SB003','Guadalupe','Rodríguez','García','Calle Amuzgos s/n, Colonia Tezozomoc, Alcaldía Azcapotzalco','5519624873');
INSERT INTO personas values ('RACJ850707','SB004','José Luis','Ramírez','Cruz','Avenida Hidalgo 15, Colonia San Pedro Xalpa, Alcaldía Azcapotzalco','5548978693');
INSERT INTO personas values ('SAGA860930','SB005','Armando','Sánchez','Gonzáles','Avenida Morelos 163, Colonia San Miguel Amantla, Alcaldía Azcapotzalc','5526745365');
INSERT INTO personas values ('OSEA951210','SB006','Ana Sofía','Osorio','Estrada','Calle Bahía Magdalena s/n, Colonia Coltongo, Alcaldía Azcapotzalco','5510864970');
INSERT INTO personas values ('ZUAE990216','SB007','Eduardo','Zúñiga','Aguilar','Calle Poniente 114 s/n, Colonia Magdalena de las Salinas, Alcaldía Gustavo A. Madero','5537604852');
INSERT INTO personas values ('PIMR891003','SB008','Ricardo','Piña','Martínez','Calle Aretillo 184, Colonia El Arenal, Alcaldía Azcapotzalco','5509834286');
INSERT INTO personas values ('BEPA910922','SB009','Alma','Beltrán','Pérez','Calzada de la naranja 1015, Colonia Ampliación San Pedro Xalpa, Alcaldía Azcapotzalco','5567304811');
INSERT INTO personas values ('LOAA930129','SB010','Ángela','López','Acosta','Cerrada de Cedro s/n, Colonia Atlampa, Alcaldía Cuauhtémoc','5567780539');

/*Crea tabla ejemplar*/
CREATE TABLE ejemplar(
  id_ejemplar VARCHAR(20) PRIMARY KEY NOT NULL,
  isbn BIGINT UNSIGNED NOT NULL,
  condicion VARCHAR(50),
  FOREIGN KEY(isbn) REFERENCES libros(isbn)
);

/*Carga tabla ejemplar*/
INSERT INTO ejemplar values ('L-001-001', 9786073803762, 'Sin deterioro');
INSERT INTO ejemplar values ('L-001-002', 9786073803762, 'Sin deterioro');
INSERT INTO ejemplar values ('L-001-003', 9786073803762, 'Sin deterioro');
INSERT INTO ejemplar values ('L-002-001', 9786074451849, 'Con daño');
INSERT INTO ejemplar values ('L-002-002', 9786074451849, 'Sin deterioro');
INSERT INTO ejemplar values ('L-002-003', 9786074451849, 'Hojas sueltas');
INSERT INTO ejemplar values ('L-003-001', 9786071423047, 'Sin deterioro');
INSERT INTO ejemplar values ('L-003-002', 9786071423047, 'Sin deterioro');
INSERT INTO ejemplar values ('L-003-003', 9786071423047, 'Sin deterioro');
INSERT INTO ejemplar values ('L-004-001', 9786077666561, 'Sin deterioro');
INSERT INTO ejemplar values ('L-004-002', 9786077666561, 'Sin deterioro');
INSERT INTO ejemplar values ('L-004-003', 9786077666561, 'Sin deterioro');
INSERT INTO ejemplar values ('L-005-001', 9789700739229, 'Sin deterioro');
INSERT INTO ejemplar values ('L-005-002', 9789700739229, 'Sin deterioro');
INSERT INTO ejemplar values ('L-005-003', 9789700739229, 'Sin deterioro');
INSERT INTO ejemplar values ('L-006-001', 9788413625218, 'En reparación');
INSERT INTO ejemplar values ('L-006-002', 9788413625218, 'Sin deterioro');
INSERT INTO ejemplar values ('L-006-003', 9788413625218, 'Sin deterioro');
INSERT INTO ejemplar values ('L-007-001', 9788413625188, 'Sin deterioro');
INSERT INTO ejemplar values ('L-007-002', 9788413625188, 'Sin deterioro');
INSERT INTO ejemplar values ('L-007-003', 9788413625188, 'Sin deterioro');
INSERT INTO ejemplar values ('L-008-001', 9791020805096, 'Sin deterioro');
INSERT INTO ejemplar values ('L-008-002', 9791020805096, 'Sin deterioro');
INSERT INTO ejemplar values ('L-008-003', 9791020805096, 'Sin deterioro');
INSERT INTO ejemplar values ('L-009-001', 9786070795473, 'Sin deterioro');
INSERT INTO ejemplar values ('L-009-002', 9786070795473, 'Hojas sueltas');
INSERT INTO ejemplar values ('L-009-003', 9786070795473, 'Sin deterioro');
INSERT INTO ejemplar values ('L-010-001', 9786070778179, 'Sin deterioro');
INSERT INTO ejemplar values ('L-010-002', 9786070778179, 'Sin deterioro');
INSERT INTO ejemplar values ('L-010-003', 9786070778179, 'Sin deterioro');
INSERT INTO ejemplar values ('L-011-001', 9786070737596, 'Sin deterioro');
INSERT INTO ejemplar values ('L-011-002', 9786070737596, 'Sin deterioro');
INSERT INTO ejemplar values ('L-011-003', 9786070737596, 'Sin deterioro');
INSERT INTO ejemplar values ('L-012-001', 9786070796197, 'Sin deterioro');
INSERT INTO ejemplar values ('L-012-002', 9786070796197, 'Sin deterioro');
INSERT INTO ejemplar values ('L-012-003', 9786070796197, 'Sin deterioro');
INSERT INTO ejemplar values ('L-013-001', 9788466357562, 'Sin deterioro');
INSERT INTO ejemplar values ('L-013-002', 9788466357562, 'Hojas sueltas');
INSERT INTO ejemplar values ('L-013-003', 9788466357562, 'Sin deterioro');
INSERT INTO ejemplar values ('L-014-001', 9786070777240, 'Sin deterioro');
INSERT INTO ejemplar values ('L-014-002', 9786070777240, 'Sin deterioro');
INSERT INTO ejemplar values ('L-014-003', 9786070777240, 'Sin deterioro');
INSERT INTO ejemplar values ('L-015-001', 9788483087626, 'Sin deterioro');
INSERT INTO ejemplar values ('L-015-002', 9788483087626, 'Sin deterioro');
INSERT INTO ejemplar values ('L-015-003', 9788483087626, 'Sin deterioro');
INSERT INTO ejemplar values ('L-016-001', 9788413621395, 'Sin deterioro');
INSERT INTO ejemplar values ('L-016-002', 9788413621395, 'Hojas sueltas');
INSERT INTO ejemplar values ('L-016-003', 9788413621395, 'Sin deterioro');
INSERT INTO ejemplar values ('L-017-001', 9789709870633, 'Sin deterioro');
INSERT INTO ejemplar values ('L-017-002', 9789709870633, 'Sin deterioro');
INSERT INTO ejemplar values ('L-017-003', 9789709870633, 'Sin deterioro');
INSERT INTO ejemplar values ('L-018-001', 9786071436030, 'En reparación');
INSERT INTO ejemplar values ('L-018-002', 9786071436030, 'Sin deterioro');
INSERT INTO ejemplar values ('L-018-003', 9786071436030, 'Sin deterioro');
INSERT INTO ejemplar values ('L-019-001', 9786071434296, 'Sin deterioro');
INSERT INTO ejemplar values ('L-019-002', 9786071434296, 'Sin deterioro');
INSERT INTO ejemplar values ('L-019-003', 9786071434296, 'Sin deterioro');
INSERT INTO ejemplar values ('L-020-001', 9786073166072, 'Hojas sueltas');
INSERT INTO ejemplar values ('L-020-002', 9786073166072, 'Sin deterioro');
INSERT INTO ejemplar values ('L-020-003', 9786073166072, 'Sin deterioro');
INSERT INTO ejemplar values ('L-021-001', 9786073156967, 'Sin deterioro');
INSERT INTO ejemplar values ('L-021-002', 9786073156967, 'Sin deterioro');
INSERT INTO ejemplar values ('L-021-003', 9786073156967, 'Sin deterioro');
INSERT INTO ejemplar values ('L-022-001', 9786073147538, 'En reparación');
INSERT INTO ejemplar values ('L-022-002', 9786073147538, 'Sin deterioro');
INSERT INTO ejemplar values ('L-022-003', 9786073147538, 'Sin deterioro');
INSERT INTO ejemplar values ('L-023-001', 9786074450552, 'Sin deterioro');
INSERT INTO ejemplar values ('L-023-002', 9786074450552, 'Sin deterioro');
INSERT INTO ejemplar values ('L-023-003', 9786074450552, 'Sin deterioro');
INSERT INTO ejemplar values ('L-024-001', 9789685208581, 'Sin deterioro');
INSERT INTO ejemplar values ('L-024-002', 9789685208581, 'Sin deterioro');
INSERT INTO ejemplar values ('L-024-003', 9789685208581, 'Sin deterioro');
INSERT INTO ejemplar values ('L-025-001', 9789685208550, 'En reparación');
INSERT INTO ejemplar values ('L-025-002', 9789685208550, 'Sin deterioro');
INSERT INTO ejemplar values ('L-025-003', 9789685208550, 'Sin deterioro');
INSERT INTO ejemplar values ('L-026-001', 9786070784811, 'Sin deterioro');
INSERT INTO ejemplar values ('L-026-002', 9786070784811, 'Sin deterioro');
INSERT INTO ejemplar values ('L-026-003', 9786070784811, 'Sin deterioro');
INSERT INTO ejemplar values ('L-027-001', 9786070781230, 'Sin deterioro');
INSERT INTO ejemplar values ('L-027-002', 9786070781230, 'Sin deterioro');
INSERT INTO ejemplar values ('L-027-003', 9786070781230, 'Sin deterioro');
INSERT INTO ejemplar values ('L-028-001', 9786070758720, 'Sin deterioro');
INSERT INTO ejemplar values ('L-028-002', 9786070758720, 'Sin deterioro');
INSERT INTO ejemplar values ('L-028-003', 9786070758720, 'Sin deterioro');
INSERT INTO ejemplar values ('L-029-001', 9788437633992, 'Con daño');
INSERT INTO ejemplar values ('L-029-002', 9788437633992, 'Sin deterioro');
INSERT INTO ejemplar values ('L-029-003', 9788437633992, 'Sin deterioro');
INSERT INTO ejemplar values ('L-030-001', 9788439731603, 'Sin deterioro');
INSERT INTO ejemplar values ('L-030-002', 9788439731603, 'Sin deterioro');
INSERT INTO ejemplar values ('L-030-003', 9788439731603, 'Sin deterioro');
INSERT INTO ejemplar values ('L-031-001', 9788418145728, 'Sin deterioro');
INSERT INTO ejemplar values ('L-031-002', 9788418145728, 'Sin deterioro');
INSERT INTO ejemplar values ('L-031-003', 9788418145728, 'Sin deterioro');
INSERT INTO ejemplar values ('L-032-001', 9786073814003, 'Sin deterioro');
INSERT INTO ejemplar values ('L-032-002', 9786073814003, 'Sin deterioro');
INSERT INTO ejemplar values ('L-032-003', 9786073814003, 'Con daño');
INSERT INTO ejemplar values ('L-033-001', 9786073813990, 'Sin deterioro');
INSERT INTO ejemplar values ('L-033-002', 9786073813990, 'Sin deterioro');
INSERT INTO ejemplar values ('L-033-003', 9786073813990, 'Sin deterioro');
INSERT INTO ejemplar values ('L-034-001', 9786073813983, 'En reparación');
INSERT INTO ejemplar values ('L-034-002', 9786073813983, 'Sin deterioro');
INSERT INTO ejemplar values ('L-034-003', 9786073813983, 'Sin deterioro');

/*Crea tabla prestamos*/
CREATE TABLE prestamos(
  id_prestamos INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  fecha_prestamo DATE NOT NULL,
  fecha_lim_entrega DATE NOT NULL,
  fecha_devolucion DATE,
  dni VARCHAR(20) NOT NULL,
  id_ejemplar VARCHAR(20) NOT NULL,
  FOREIGN KEY(dni) REFERENCES personas(dni),
  FOREIGN KEY(id_ejemplar) REFERENCES ejemplar(id_ejemplar)
);

/*Carga tabla prestamos*/
INSERT INTO prestamos values (NULL, '2022-10-01', '2022-10-16', '2022-10-10', 'ROGG990625', 'L-024-003');
INSERT INTO prestamos values (NULL, '2022-11-05', '2022-11-20', '2022-11-17', 'ROGG990625', 'L-033-003');
INSERT INTO prestamos values (NULL, '2022-11-11', '2022-11-26', '2022-11-24', 'OSEA951210', 'L-014-003');
INSERT INTO prestamos values (NULL, '2022-11-20', '2022-12-05', '2022-12-03', 'PIMR891003', 'L-016-001');
INSERT INTO prestamos values (NULL, '2022-11-25', '2022-12-10', NULL, 'PELJ870526', 'L-033-001');
INSERT INTO prestamos values (NULL, '2022-12-02', '2022-12-17', NULL, 'ZUAE990216', 'L-003-003');
INSERT INTO prestamos values (NULL, '2022-12-05', '2022-12-20', NULL, 'PIMR891003', 'L-003-001');

/*Crea tabla de relación Autor-Libro*/
CREATE TABLE autor_libro(
  id_autor VARCHAR(10) NOT NULL,
  isbn BIGINT UNSIGNED NOT NULL,
  FOREIGN KEY(id_autor) REFERENCES autores(id_autor),
  FOREIGN KEY(isbn) REFERENCES libros(isbn)  
);

/*Carga tabla de relación Autor-Libro*/
INSERT INTO autor_libro values ('aut_01', 9786073803762);
INSERT INTO autor_libro values ('aut_02', 9786074451849);
INSERT INTO autor_libro values ('aut_03', 9786071423047);
INSERT INTO autor_libro values ('aut_03', 9786077666561);
INSERT INTO autor_libro values ('aut_03', 9789700739229);
INSERT INTO autor_libro values ('aut_04', 9788413625218);
INSERT INTO autor_libro values ('aut_04', 9788413625188);
INSERT INTO autor_libro values ('aut_04', 9791020805096);
INSERT INTO autor_libro values ('aut_05', 9786070795473);
INSERT INTO autor_libro values ('aut_05', 9786070778179);
INSERT INTO autor_libro values ('aut_05', 9786070737596);
INSERT INTO autor_libro values ('aut_05', 9786070796197);
INSERT INTO autor_libro values ('aut_06', 9788466357562);
INSERT INTO autor_libro values ('aut_06', 9786070777240);
INSERT INTO autor_libro values ('aut_07', 9788483087626);
INSERT INTO autor_libro values ('aut_07', 9788413621395);
INSERT INTO autor_libro values ('aut_07', 9789709870633);
INSERT INTO autor_libro values ('aut_08', 9786071436030);
INSERT INTO autor_libro values ('aut_08', 9786071434296);
INSERT INTO autor_libro values ('aut_09', 9786073166072);
INSERT INTO autor_libro values ('aut_09', 9786073156967);
INSERT INTO autor_libro values ('aut_09', 9786073147538);
INSERT INTO autor_libro values ('aut_10', 9786074450552);
INSERT INTO autor_libro values ('aut_11', 9789685208581);
INSERT INTO autor_libro values ('aut_11', 9789685208550);
INSERT INTO autor_libro values ('aut_12', 9786070784811);
INSERT INTO autor_libro values ('aut_12', 9786070781230);
INSERT INTO autor_libro values ('aut_12', 9786070758720);
INSERT INTO autor_libro values ('aut_13', 9788437633992);
INSERT INTO autor_libro values ('aut_14', 9788439731603);
INSERT INTO autor_libro values ('aut_14', 9788418145728);
INSERT INTO autor_libro values ('aut_15', 9786073814003);
INSERT INTO autor_libro values ('aut_15', 9786073813990);
INSERT INTO autor_libro values ('aut_15', 9786073813983);
