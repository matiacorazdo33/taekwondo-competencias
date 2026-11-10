CREATE TABLE club(
    id_club INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(60) NOT NULL,
    direccion VARCHAR(20),
    telefono VARCHAR(20)
);

CREATE TABLE Competidor (
    id_competidor    INT AUTO_INCREMENT PRIMARY KEY,
    cedula           VARCHAR(10) NOT NULL UNIQUE,
    nombres          VARCHAR(100) NOT NULL,
    apellidos        VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    sexo             CHAR(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    peso             DECIMAL(5,2) NOT NULL CHECK (peso > 0),
    grado_cinturon   VARCHAR(30) NOT NULL,
    id_club          INT NOT NULL,
    FOREIGN KEY (id_club) REFERENCES club(id_club)
);


CREATE TABLE Competencia (
    id_competencia INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(50) NOT NULL,
    fecha_inicio   DATE NOT NULL,
    fecha_fin      DATE NOT NULL,
    lugar          TEXT NOT NULL,
    organizador    VARCHAR(100) NOT NULL,
    CHECK (fecha_fin >= fecha_inicio)
);

CREATE TABLE Modalidad (
    id_modalidad INT AUTO_INCREMENT PRIMARY KEY,
    nombre       VARCHAR(30) NOT NULL UNIQUE,
    descripcion  TEXT
);

CREATE TABLE Categoria (
    id_categoria   INT AUTO_INCREMENT PRIMARY KEY,
    nombre         VARCHAR(100) NOT NULL,
    sexo           CHAR(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    peso_minimo    DECIMAL(5,2),
    peso_maximo    DECIMAL(5,2),
    edad_minima    INT NOT NULL,
    edad_maxima    INT NOT NULL,
    id_competencia INT NOT NULL,
    id_modalidad   INT NOT NULL,
    FOREIGN KEY (id_competencia) REFERENCES Competencia(id_competencia),
    FOREIGN KEY (id_modalidad)   REFERENCES Modalidad(id_modalidad),
    CHECK (edad_minima <= edad_maxima),
    CHECK (peso_minimo <= peso_maximo)
);

CREATE TABLE Inscripcion (
    id_competidor     INT NOT NULL,
    id_categoria      INT NOT NULL,
    fecha_inscripcion DATE NOT NULL DEFAULT (CURRENT_DATE),
    PRIMARY KEY (id_competidor, id_categoria),
    FOREIGN KEY (id_competidor) REFERENCES Competidor(id_competidor),
    FOREIGN KEY (id_categoria)  REFERENCES Categoria(id_categoria)
);
