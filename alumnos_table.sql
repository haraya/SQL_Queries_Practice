-- DELETE TABLE SUPERMARKET
DROP TABLE supermarket;


-- CREATE TABLE FROM SCRACTCH
CREATE TABLE alumnos(
	alumno_id INTEGER PRIMARY KEY,
	nombre VARCHAR(150), 
	apellido VARCHAR(150),
	Edad INTEGER,
	pais VARCHAR(150),
	telefono VARCHAR(150)
);

-- INSERT DATA INTO TABLE
INSERT INTO alumnos VALUES(1, 'Pedro', 'Fonseca', 20, 'Bolivia', '2224');
INSERT INTO alumnos VALUES(2, 'Dayana', 'Marin', 45, 'Italia', '5220');
INSERT INTO alumnos VALUES(3, 'Estela', 'Araya', 19, 'Alemania', '1530');
INSERT INTO alumnos VALUES(4, 'Marisol', 'Lopez', 20, 'Bolivia', '2580');
INSERT INTO alumnos VALUES(5, 'Jose', 'Algomez', 35, 'Costa Rica', '6585');
INSERT INTO alumnos VALUES(6, 'Sofia', 'Almirano', 25, 'Argentina', '9856');
INSERT INTO alumnos VALUES(7, 'Pablo', 'Alvarez', 18, 'Brasil', '6530');

-- SELECT ALL DATA
SELECT * FROM alumnos;

-- SELECT edad column
SELECT edad FROM alumnos;

-- SELECT COUNT DATA
SELECT COUNT(*) FROM alumnos;

--SELECT COUNT edad DATA - the same
SELECT COUNT(edad) FROM alumnos;

-- SELECT DATA WHERE COUNTRY IS BOLIVIA
SELECT nombre, edad, pais 
FROM alumnos
WHERE pais = 'Bolivia';


-- SELECT DATA WHERE edad MAJOR TO 25
SELECT nombre, edad
FROM alumnos
WHERE edad > 25;

-- SELECT DATA edad BETWEEN 18 to 25 -option 1
SELECT nombre, edad
FROM alumnos
WHERE edad >= 18 AND edad <= 25;

-- SELECT DATA edad BETWEEN 18 to 25 -option 2
SELECT nombre, edad
FROM alumnos
WHERE edad BETWEEN 18 AND 25;

-- SELECT DATA edad BETWEEN 18 to 25 AND ORDER TO edad ASC
SELECT nombre, edad
FROM alumnos
WHERE edad BETWEEN 18 AND 25
ORDER BY edad ASC;


-- SELECT DATA edad BETWEEN 18 to 25 AND ORDER TO edad DESC
SELECT nombre, edad
FROM alumnos
WHERE edad BETWEEN 18 AND 25
ORDER BY edad DESC;


-- SELECT PEOPLE FROM DIFFERENTS COUNTRIES option -1
SELECT nombre, pais, edad
FROM alumnos
WHERE pais = 'Alemania' OR pais = 'Bolivia';


-- SELECT PEOPLE FROM DIFFERENTS COUNTRIES option -2
SELECT nombre, pais, edad
FROM alumnos
WHERE pais IN ('Alemania', 'Bolivia');

-- SELECT PEOPLE FROM COUNTRIES BUT NOT ARGENTINA AND BOLIVIA
SELECT nombre, pais, edad
FROM alumnos
WHERE pais NOT IN ('Argentina', 'Bolivia');

-- SELECT PEOPLE FROM COUNTRIES BUT NOT 45, 35 - option 1
SELECT nombre, pais, edad
FROM alumnos
WHERE edad < 45 AND edad < 35;

-- SELECT PEOPLE FROM COUNTRIES BUT NOT 45, 35 - option 2
SELECT nombre, pais, edad
FROM alumnos
WHERE edad NOT IN (35, 45);

-- ORDER DATA FROM nombre
SELECT nombre, pais, edad
FROM alumnos
ORDER BY nombre DESC;

-- SELECT DATA WHERE pais is not Bolivia
SELECT nombre, pais, edad
FROM alumnos
WHERE pais <> 'Bolivia';

-- LIKE in DATA the name have a in the name
SELECT nombre, edad FROM alumnos
WHERE nombre LIKE 'So%a';
