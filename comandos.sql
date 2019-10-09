CREATE TABLE
IF NOT EXISTS libros
(
    id_book INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR
(100) NOT NULL,
    anyo INTEGER UNSIGNED NOT NULL DEFAULT 1900,
    idioma VARCHAR
(2) NOT NULL DEFAULT "es",
    precio DOUBLE
(6,2) NOT NULL DEFAULT 10.0,
    -- tinyint seria un bool --
    sePuedeVender TINYINT
(1) DEFAULT 1,
    -- STOCK --
    copias INTEGER NOT NULL DEFAULT 3,
    descripcion TEXT



);


CREATE TABLE
IF NOT EXISTS autor
(
    id_autor INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    -- dni ??? --
    nombre_autor VARCHAR
(100) NOT NULL,
    nacionalidad VARCHAR
(3)


);


CREATE TABLE
IF NOT EXISTS clientes
(
    id_clientes INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre_cliente VARCHAR
(100) NOT NULL,
    -- ```````````````````````````
    email VARCHAR
(100) NOT NULL UNIQUE,
    nacimiento DATETIME, -- SE PODRIA CAMBIAR POR UN DATE
    genero ENUM
("MASCULINO", "FEMENINO", "NOBINARIO") NOT NULL,
    active TINYINT
(1) NOT null DEFAULT 1,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP

);


# insertar datos mysql CRUD....
CREATE =>
INSERT 
READ =>
SELECT
UPDATE =>
UPDATE
DELETE =>
DELETE


INSERT INTO tabla
    (columna1, columna2, columna3....)
VALUES
    (valordelacoluma1, valordelacolumna2, valordelacolumna3, ....)


UPDATE tabla
set email = "jdskjsdkf@skdjskdf.com"
WHERE empleadoid=2333

DELETE from empleado
WHERE empleadoid=3333

INSERT INTO autor
    (nombre_autor, nacionalidad )
VALUES
    ("jjjjj", "es"),
    ("ivann", "es"),
    ("ssss", "es"),
    ("ssss", "uk");







