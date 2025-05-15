CREATE DATABASE carnetsmarino;
USE carnetsmarino;

CREATE TABLE facultades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE carreras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    facultad_id INT,
    FOREIGN KEY (facultad_id) REFERENCES facultades(id)
);

CREATE TABLE carnets (
    codigo VARCHAR(10) PRIMARY KEY,
    dni VARCHAR(15) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    facultad_id INT,
    carrera_id INT,
    FOREIGN KEY (facultad_id) REFERENCES facultades(id),
    FOREIGN KEY (carrera_id) REFERENCES carreras(id)
);
