use BDDGRUPO07;
SHOW databases;

-- RESTRICCIONES
-- Añadir RESTRICCIÓN a la tabla ESTUDIANTE:
ALTER TABLE estudiante
ADD CONSTRAINT id_estudiante_ck
CHECK (id_estudiante >= '23200001');


-- Añadir RESTRICCIÓN a la tabla: CURSO
ALTER TABLE curso
ADD CONSTRAINT id_curso_ck
CHECK (id_curso >= '20123001');
#Añadir RESTRICCIÓN a la tabla


-- Añadir RESTRICCIONESs a la tabla: DETALLE_PLANTILLA
ALTER TABLE detalle_plantilla
ADD CONSTRAINT ck_cant_faciles CHECK (cantidadFaciles >= 0),
ADD CONSTRAINT ck_cant_intermedias CHECK (cantidadIntermedias >= 0),
ADD CONSTRAINT ck_cant_dificiles CHECK (cantidadDificiles >= 0);

-- Añadir RESTRICCIONES a la tabla: OPCION_RESPUESTA
ALTER TABLE opcion_respuesta
ADD CONSTRAINT es_correcta_ck 
CHECK (es_correcta IN (0, 1));


-- Añadir RESTRICCIONES a la tabla: EXAMEN
ALTER TABLE examen
ADD CONSTRAINT puntaje_final_ck 
CHECK (puntaje_final BETWEEN 0 AND 20);

-- Añadir RESTRICCION a la tabla RESPUESTA_ESTUDIANTE
ALTER TABLE respuesta_estudiante
ADD CONSTRAINT ck_puntaje_obtenido CHECK (puntaje_obtenido >= 0),
ADD CONSTRAINT ck_correcta CHECK (correcta IN (0, 1));

-- Añadir TRIGGER a la tabla: DIFICULTAD

DELIMITER //
CREATE TRIGGER validar_id_dificultad
BEFORE INSERT ON dificultad
FOR EACH ROW
BEGIN
  IF NEW.id_dificultad < 'DFCT0001' OR NEW.id_dificultad > 'DFCT9999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de dificultad debe estar entre DFCL0001 y DFCT9999';
  END IF;
END;
//

DELIMITER ;

-- Añadir TRIGGER a la tabla: PLANTILLA
DELIMITER //
CREATE TRIGGER validar_id_plantilla
BEFORE INSERT ON plantilla
FOR EACH ROW
BEGIN
  IF NEW.id_plantilla < 'PLANT001' OR NEW.id_plantilla > 'PLANT999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de plantilla debe estar entre PLANT001 y PLANT999';
  END IF;
END;//
DELIMITER ;

-- Añadir TRIGGER a la tabla: DETALLE_PLANTILLA
DELIMITER //
CREATE TRIGGER validar_id_detalle_plantilla
BEFORE INSERT ON detalle_plantilla
FOR EACH ROW
BEGIN
  IF NEW.id_detalle_plantilla < 'DPLT0001' OR NEW.id_detalle_plantilla > 'DPLT0999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de detalle_plantilla debe estar entre DPLT0001 y DPLT0999';
  END IF;
END;
//
DELIMITER ;

-- Añadir TRIGGER a la tabla: PREGUNTA
DELIMITER //
CREATE TRIGGER validar_id_pregunta
BEFORE INSERT ON pregunta
FOR EACH ROW
BEGIN
  IF NEW.id_pregunta < 'PREG0001' OR NEW.id_pregunta > 'PREG9999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de pregunta debe estar entre PREG0001 y PREG9999';
  END IF;
END;//
DELIMITER ;

-- Añadir TRIGGER a la tabla: OPCION_RESPUESTA
DELIMITER //
CREATE TRIGGER validar_id_opcion_respuesta
BEFORE INSERT ON opcion_respuesta
FOR EACH ROW
BEGIN
  IF NEW.id_opcion_respuesta < 'OPC00001' OR NEW.id_opcion_respuesta > 'OPC09999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de opcion debe estar entre OPC00001 y OPC09999';
  END IF;
END;//
DELIMITER ;

-- Añadir TRIGGER a la tabla: EXAMEN
DELIMITER //
CREATE TRIGGER validar_id_examen
BEFORE INSERT ON examen
FOR EACH ROW
BEGIN
  IF NEW.id_examen < 'EXAM0001' OR NEW.id_examen > 'EXAM9999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de examen debe estar entre EXAM0001 y EXAM9999';
  END IF;
END;//
DELIMITER ;

-- Añadir TRIGGER a la tabla: DOCENTE
DELIMITER //
CREATE TRIGGER validar_id_docente
BEFORE INSERT ON docente
FOR EACH ROW
BEGIN
  IF NEW.id_docente < 'DOC00001' OR NEW.id_docente > 'DOC09999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de docente debe estar entre DOC00001 y DOC09999';
  END IF;
END;//
DELIMITER ;

-- Añadir TRIGGER a la tabla: RESPUESTA_ESTUDIANTE
DELIMITER //
CREATE TRIGGER validar_id_respuesta_estudiante
BEFORE INSERT ON respuesta_estudiante
FOR EACH ROW
BEGIN
  IF NEW.id_respuesta_estudiante < 'RESP0001' OR NEW.id_respuesta_estudiante > 'RESP9999' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'El ID de respuesta debe estar entre RESP0001 y RESP9999';
  END IF;
END;//
DELIMITER ;

-- Vista 1: Resumen de Exámenes por Estudiante
CREATE VIEW vista_examen_estudiante AS
SELECT
e.id_examen,
es.id_estudiante,
CONCAT(es.nombre, ' ', es.apellido) AS nombre_estudiante,
p.descripcion_plantilla,
d.nombre AS nombre_docente,
e.fecha,
e.puntaje_final,
e.estado
FROM examen e
JOIN estudiante es ON e.id_estudiante = es.id_estudiante
JOIN plantilla p ON e.id_plantilla = p.id_plantilla
JOIN docente d ON e.id_docente = d.id_docente;

-- Vista 2: Preguntas con Curso y Dificultad
CREATE VIEW vista_preguntas_completas AS
SELECT
p.id_pregunta,
p.enunciado,
p.tipo_pregunta,
p.puntaje_maximo,
c.nombre AS curso,
d.descripcion_dificultad
FROM pregunta p
JOIN curso c ON p.id_curso = c.id_curso
JOIN dificultad d ON p.id_dificultad = d.id_dificultad;

-- Vista 3: Plantillas con detalle de cursos y distribución
CREATE VIEW vista_plantillas_con_detalle AS
SELECT
pl.id_plantilla,
pl.descripcion_plantilla,
c.nombre AS curso,
dp.cantidad_faciles,
dp.cantidad_intermedias,
dp.cantidad_dificiles
FROM plantilla pl
JOIN detalle_plantilla dp ON pl.id_plantilla = dp.id_plantilla
JOIN curso c ON dp.id_curso = c.id_curso;

-- Vista 4: Resumen de respuestas por estudiante
CREATE VIEW vista_respuesta_estudiante_detalle AS
SELECT
re.id_respuesta_estudiante,
re.id_examen,
re.id_pregunta,
p.enunciado,
re.respuesta,
re.correcta,
re.puntaje_obtenido
FROM respuesta_estudiante re
JOIN pregunta p ON re.id_pregunta = p.id_pregunta;

-- Vista 5: Exámenes por docente
CREATE VIEW vista_examenes_docente AS
SELECT
e.id_examen,
d.id_docente,
CONCAT(d.nombre, ' ', d.apellido) AS docente,
p.descripcion_plantilla,
e.fecha,
e.estado
FROM examen e
JOIN docente d ON e.id_docente = d.id_docente
JOIN plantilla p ON e.id_plantilla = p.id_plantilla;

-- Vista 6: Preguntas y sus opciones
CREATE VIEW vista_preguntas_opciones AS
SELECT
p.id_pregunta,
p.enunciado,
o.id_opcion_respuesta,
o.texto_opcion,
o.es_correcta
FROM pregunta p
JOIN opcion_respuesta o ON p.id_pregunta = o.id_pregunta;

-- Vista 7: Resultados Finales por Estudiante
CREATE VIEW vista_resultados_estudiante AS
SELECT
e.id_estudiante,
CONCAT(est.nombre, ' ', est.apellido) AS estudiante,
e.id_examen,
e.fecha,
e.puntaje_final,
e.estado
FROM examen e
JOIN estudiante est ON e.id_estudiante = est.id_estudiante;

-- Vista 8: Preguntas de los examenes y estudiantes:
CREATE VIEW vista_preguntas_examenes_estudiantes AS
SELECT 
  est.nombre, 
  est.apellido, 
  re.id_pregunta, 
  p.enunciado,
  re.puntaje_obtenido,
  p.puntaje_maximo
FROM respuesta_estudiante re
JOIN examen e ON re.id_examen = e.id_examen
JOIN estudiante est ON e.id_estudiante = est.id_estudiante
JOIN pregunta p ON re.id_pregunta = p.id_pregunta;

USE BDDGRUPO07;

-- 1. Insertar examen:
DELIMITER //
CREATE PROCEDURE registrar_examen (
  IN p_id_examen CHAR(8), 
  IN p_id_estudiante CHAR(8),
  IN p_id_plantilla CHAR(8), 
  IN p_id_docente CHAR(8), 
  IN p_puntaje_final INT, 
  IN p_fecha DATE
)
BEGIN
  INSERT INTO examen (id_examen, id_estudiante, id_plantilla, id_docente, puntaje_final, fecha)
  VALUES (p_id_examen, p_id_estudiante, p_id_plantilla, p_id_docente, p_puntaje_final, p_fecha);
END;
//
DELIMITER ;

CALL registrar_examen('EXAM0051', '23200002', 'PLANT002', 'DOC00003', 18, '2023-10-26'); 
SELECT * FROM examen;

-- 2. Registrar una pregunta y su dificultad:
DELIMITER //
CREATE PROCEDURE registrar_pregunta (
  IN p_id_pregunta CHAR(8),
  IN p_id_curso CHAR(8), 
  IN p_id_dificultad CHAR(8), 
  IN p_enunciado VARCHAR(300), 
  IN p_tipo_pregunta ENUM('VF', 'SELECCION', 'RELLENAR'), 
  IN p_puntaje_maximo INT 
)
BEGIN
  INSERT INTO pregunta (id_pregunta, id_curso, id_dificultad, enunciado, tipo_pregunta, puntaje_maximo)
  VALUES (p_id_pregunta, p_id_curso, p_id_dificultad, p_enunciado, p_tipo_pregunta, p_puntaje_maximo);
END;
//
DELIMITER ;

-- Ejemplo de ejecución:
CALL registrar_pregunta('PREG0151', '20123005', 'DFCT0002', '¿Cuál es la fórmula de la energía cinética?', 'RELLENAR', 3);

SELECT * FROM pregunta;

-- 3. Registrar una respuesta de estudiante:
DELIMITER //
CREATE PROCEDURE registrar_respuesta_estudiante (
  IN p_id_respuesta_estudiante CHAR(8), 
  IN p_id_examen CHAR(8), 
  IN p_id_pregunta CHAR(8), 
  IN p_respuesta VARCHAR(250), 
  IN p_correcta BOOLEAN, 
  IN p_puntaje_obtenido INT 
)
BEGIN
  INSERT INTO respuesta_estudiante (id_respuesta_estudiante, id_examen, id_pregunta, respuesta, correcta, puntaje_obtenido)
  VALUES (p_id_respuesta_estudiante, p_id_examen, p_id_pregunta, p_respuesta, p_correcta, p_puntaje_obtenido);
END;
//
DELIMITER ;

-- Ejemplo de ejecución:
CALL registrar_respuesta_estudiante('RESP0019', 'EXAM003', 'PREG0001', 'Fenomeno', FALSE, 0);

SELECT * FROM respuesta_estudiante;



