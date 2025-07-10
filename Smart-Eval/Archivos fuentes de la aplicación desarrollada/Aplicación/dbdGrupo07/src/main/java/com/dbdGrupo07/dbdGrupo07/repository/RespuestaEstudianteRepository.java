package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.RespuestaEstudiante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface RespuestaEstudianteRepository extends JpaRepository<RespuestaEstudiante, String> {
    List<RespuestaEstudiante> findByIdExamen(String idExamen);
    List<RespuestaEstudiante> findByIdPregunta(String idPregunta);
    List<RespuestaEstudiante> findByIdExamenAndIdPregunta(String idExamen, String idPregunta);
}
