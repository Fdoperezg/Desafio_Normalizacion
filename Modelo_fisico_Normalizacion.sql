-- Crear Base de datos
CREATE DATABASE Biblioteca;

-- Creación de tabala "Editoriales"
CREATE TABLE Editoriales(
    id INT,
    nombre VARCHAR (255),
    PRIMARY KEY (id)
);

-- Creación de tabla "Libros"
CREATE TABLE Libros(
    id INT,
    cod_libro INT,
    titulo VARCHAR(255),
    id_editorial INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_editorial) REFERENCES Editoriales (id)
);

-- Creación de la tabla "Autores"
CREATE TABLE Autores(
    id INT,
    apellido VARCHAR(255),
    nombre VARCHAR(255),
    PRIMARY KEY (id)
);

-- Creación de la tabla "Autor_del_libro"
CREATE TABLE Autor_del_libro(
    id INT,
    id_libro INT,
    id_autor INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_libro) REFERENCES Libros (id),
    FOREIGN KEY (id_autor) REFERENCES Autores (id)
);

-- Creación de la tabla "Devoluciones"
CREATE TABLE Devoluciones(
    id INT,
    id_libro INT,
    id_lectores INT,
    fecha_devolucion DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (id_libro) REFERENCES Libros (id),
    FOREIGN KEY (id_lectores) REFERENCES Lectores (id)
);

-- Creación de la tabla "Lectores"
CREATE TABLE Lectores(
    id INT,
    apellido VARCHAR,
    nombre VARCHAR,
    PRIMARY KEY (id)
);