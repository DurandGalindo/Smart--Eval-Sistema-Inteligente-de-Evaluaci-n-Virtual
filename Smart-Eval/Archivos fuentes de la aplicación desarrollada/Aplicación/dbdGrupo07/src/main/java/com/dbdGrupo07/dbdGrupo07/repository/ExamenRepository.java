package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.Examen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ExamenRepository extends JpaRepository<Examen, String> {
    List<Examen> findByIdEstudiante(String idEstudiante);
    List<Examen> findByIdDocente(String idDocente);
    List<Examen> findByEstado(Examen.EstadoExamen estado);
}
