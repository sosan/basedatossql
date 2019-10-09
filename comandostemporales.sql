-- PRIMERO creacion de la base de datos fuera de este script. TERMINAL POR EJEMPLO
-- CREATE DATABASE centromedico;
USE centromedico; -- AQUI DARA ERROR SI NO ESTA CREADA LA DB....

-- Tabla con los facultativos --
CREATE TABLE IF NOT EXISTS facultativos
(
    -- informacion de facultatviso --
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    especialidad ENUM("enfermero/a", "doctor/a", "quiropractico/a", "Otros") NOT NULL,
    sala INTEGER UNIQUE


);

-- tabla con pacientes --
CREATE TABLE IF NOT EXISTS pacientes
(

    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    dni VARCHAR(8) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    poblacion ENUM("poblacion1", "poblacion2", "poblacion3") NOT NULL,
    codigopostal VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    fecha_alta DATE NOT NULL

);


-- tabla citas --
CREATE TABLE IF NOT EXISTS citas
(
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    idfacultativo INTEGER UNSIGNED,
    idpaciente INTEGER UNSIGNED,
    fecha DATETIME NOT NULL,
    tipo ENUM("Operacion", "Consulta", "Otros") NOT NULL,
    description TEXT,
    -- CLAVE FK idfacultativo CON REFERENCIA A TABLA facultativos Y SU CAMPO id DE facultativos
    FOREIGN KEY (idfacultativo) REFERENCES facultativos(id), 
    -- CLAVE FK idpaciente CON REFERENCIA A TABLA pacientes Y SU CAMPO id DE pacientes
    FOREIGN KEY (idpaciente) REFERENCES pacientes(id)

);

CREATE TABLE IF NOT EXISTS prescripcion
(
    id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    idcita INTEGER UNSIGNED,
    medicamento VARCHAR(100) NOT NULL,
    descripcion TEXT,
    FOREIGN KEY (idcita) REFERENCES citas(id)

);

-- insercion de valores

INSERT INTO facultativos
    (nombre, apellidos, especialidad, sala)
VALUES
    ("pepe", "apellidos", "Otros", 23),
    ("pepe123", "apellidos123", "Otros", 2322);



-- AÑO / MES / DIA
INSERT INTO pacientes
    (
    apellidos,
    codigopostal,
    direccion,
    dni,
    email,
    fecha_alta,
    fecha_nacimiento,
    nombre,
    poblacion,
    telefono
    )
VALUES
    (
        "apellido1",
        "08008",
        "sdfjklsjdf lksjdf",
        "4783745",
        "sjskdjf@sdkjsf.com",
        "1979/04/23",
        "1980/04/4",
        "nombreinten",
        "poblacion1",
        "756564747"
);


INSERT INTO citas
    (
    description,
    fecha,
    idfacultativo,
    idpaciente,
    tipo
    )
VALUES
    (
        'HOLAKKKK',
        '1980/05/20',
        1,
        1,
        'Consulta'
);



INSERT INTO prescripcion
    (descripcion, idcita, medicamento)
VALUES
    (
        'OOOOO',
        1,
        'GJGJGJGJGJ'
);
