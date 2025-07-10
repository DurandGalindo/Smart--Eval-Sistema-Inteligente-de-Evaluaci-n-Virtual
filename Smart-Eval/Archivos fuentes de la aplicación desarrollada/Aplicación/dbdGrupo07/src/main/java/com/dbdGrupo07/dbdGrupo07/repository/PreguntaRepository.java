package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.Pregunta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface PreguntaRepository extends JpaRepository<Pregunta, String> {
    List<Pregunta> findByIdCurso(String idCurso);
    List<Pregunta> findByIdDificultad(String idDificultad);
}
