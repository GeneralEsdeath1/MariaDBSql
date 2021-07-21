use quickstartdb

CREATE TABLE Cursos
(
	cod_curso            CHAR(18) NOT NULL,
	nombre               CHAR(25) NULL,
	idioma               CHAR(18) NULL,
	periodo              CHAR(8) NULL
);
ALTER TABLE Cursos
ADD PRIMARY KEY (cod_curso);
INSERT INTO Cursos (cod_curso , nombre, idioma, periodo)
VALUES ('cu-101', 'Programacion', 'Ingles', 'Segundo');




CREATE TABLE Estudiantes
(
	id                   NUMERIC(15) NOT NULL,
	nombre               CHAR(18) NULL
);
ALTER TABLE Estudiantes
ADD PRIMARY KEY (id);
INSERT INTO  Estudiantes (id , nombre)
VALUES (101 , 'Lohana');



CREATE TABLE Idiomas
(
	idioma               CHAR(18) NULL,
	idioma1              CHAR(18) NULL,
	idioma2              CHAR(18) NULL,
	idioma3              CHAR(18) NULL,
	idioma4              CHAR(18) NULL,
	id                   NUMERIC(15) NOT NULL
);
ALTER TABLE Idiomas
ADD PRIMARY KEY (id);
INSERT INTO  Idiomas (idioma , idioma1, idioma2, idioma3, idioma4, id )
VALUES ('Ingles', 'Español', 'Portugues', 'Japones', 'Arabe', '101');


CREATE TABLE Matricula
(
	cod_Matricula        NUMERIC(8) NOT NULL,
	cod_curso            NUMERIC(8) NULL,
	nombre_materia       CHAR(30) NULL,
	idioma               CHAR(18) NULL,
	periodo              NUMERIC(8) NULL,
	id                   NUMERIC(15) NULL
);
ALTER TABLE Matricula
ADD PRIMARY KEY (cod_Matricula);
INSERT INTO  Matricula (cod_Matricula, cod_curso, nombre_materia, idioma , periodo, id )
VALUES ('112233', '456', 'Matematica', 'Japones', '2', '101');



ALTER TABLE Idiomas
ADD FOREIGN KEY R_8 (id) REFERENCES Estudiantes (id);



ALTER TABLE Matricula
ADD FOREIGN KEY R_13 (id) REFERENCES Estudiantes (id);



ALTER TABLE Matricula
ADD FOREIGN KEY R_14 (cod_curso) REFERENCES Cursos (cod_curso);

SELECT d.nombre, c.periodo, d.idioma, d.periodo, b.idioma, a.nombre, c.periodo
from estudiantes a, Idiomas b, Matricula c, Cursos d

SELECT a.nombre, b.idioma, b.idioma1, b.idioma2, b.idioma3, b.idioma4
from estudiantes a, Idiomas b
