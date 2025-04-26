INSERT INTO estudiantes(nombre, edad)
VALUES("Fiorella", 21),
	  ("Felipe", 21),
      ("Andrés", 20),
      ("Daniel", 29),
      ("Martín", 21);

INSERT INTO cursos(nombre, duracion)
VALUES("HTML, CSS y JavaScript", 2),
	  ("Java POO", 4),
	  ("Bases de Datos", 4),
      ("Spring y SpringBoot", 4);

INSERT INTO inscripciones(id_estudiante, id_curso)
VALUES(1, 1),
	  (1, 3),
      (2, 2),
      (2, 4),
      (3, 2),
      (3, 3),
      (4, 1),
      (4, 2);
      
SELECT estudiantes.nombre, cursos.nombre
FROM inscripciones
INNER JOIN cursos
	ON inscripciones.id_curso = cursos.id
INNER JOIN estudiantes
	ON inscripciones.id_estudiante = estudiantes.id
ORDER BY estudiantes.id DESC;
    
SELECT estudiantes.nombre, cursos.nombre
FROM inscripciones
INNER JOIN cursos
	ON inscripciones.id_curso = cursos.id
INNER JOIN estudiantes
	ON inscripciones.id_estudiante = estudiantes.id
WHERE cursos.nombre LIKE "Java POO";

SELECT estudiantes.nombre, cursos.nombre
FROM inscripciones
INNER JOIN cursos
	ON inscripciones.id_curso = cursos.id
INNER JOIN estudiantes
	ON inscripciones.id_estudiante = estudiantes.id
WHERE estudiantes.nombre LIKE "Felipe";

SELECT COUNT(estudiantes.nombre) AS total_alumnos, cursos.nombre
FROM inscripciones
INNER JOIN cursos
	ON inscripciones.id_curso = cursos.id
INNER JOIN estudiantes
	ON inscripciones.id_estudiante = estudiantes.id
GROUP BY cursos.nombre
ORDER BY total_alumnos DESC;

SELECT estudiantes.nombre
FROM estudiantes
LEFT JOIN inscripciones 
	ON estudiantes.id = inscripciones.id_estudiante
WHERE inscripciones.id_estudiante IS NULL;


