-- Creación de llaves foráneas (FK)
-- Añadir FK a la tabla: DETALLE_PLANTILLA
ALTER TABLE detalle_plantilla
ADD CONSTRAINT id_plantilla_fk
FOREIGN KEY (id_plantilla)
REFERENCES plantilla(id_plantilla),

ADD CONSTRAINT id_curso_fk
FOREIGN KEY (id_curso)
REFERENCES curso(id_curso);


-- Añadir FK a la tabla: PREGUNTA
ALTER TABLE pregunta
ADD CONSTRAINT id_curso__fk
FOREIGN KEY (id_curso)
REFERENCES curso(id_curso),

ADD CONSTRAINT id_dificultad_fk_
FOREIGN KEY (id_dificultad)
REFERENCES dificultad(id_dificultad);

-- Añadir FK a la tabla: OPCION_RESPUESTA
ALTER TABLE opcion_respuesta
ADD CONSTRAINT id_pregunta_fk
FOREIGN KEY (id_pregunta)
REFERENCES pregunta(id_pregunta);

-- Añadir FK a la tabla: EXAMEN
ALTER TABLE examen
ADD CONSTRAINT id_estudiante__fk
FOREIGN KEY (id_estudiante)
REFERENCES estudiante(id_estudiante),

ADD CONSTRAINT id_plantilla__fk
FOREIGN KEY (id_plantilla)
REFERENCES plantilla(id_plantilla),

ADD CONSTRAINT id_docente__fk
FOREIGN KEY (id_docente)
REFERENCES docente(id_docente);

-- Añadir FK a la tabla: PREGUNTA_EXAMEN
ALTER TABLE pregunta_examen
ADD CONSTRAINT pregunta_examen_examen_fk
FOREIGN KEY (id_examen) REFERENCES examen(id_examen),


ADD CONSTRAINT pregunta_examen_pregunta_fk
FOREIGN KEY (id_pregunta) REFERENCES pregunta(id_pregunta);

-- Añadir FK a la tabla: RESPUESTA_ESTUDIANTE
ALTER TABLE respuesta_estudiante
ADD CONSTRAINT fk_id_examen
FOREIGN KEY (id_examen)
REFERENCES examen(id_examen),

ADD CONSTRAINT fk_id_pregunta
FOREIGN KEY (id_pregunta)
REFERENCES pregunta(id_pregunta);