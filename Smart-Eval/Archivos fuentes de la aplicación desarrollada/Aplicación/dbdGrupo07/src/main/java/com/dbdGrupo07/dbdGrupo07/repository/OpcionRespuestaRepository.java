package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.OpcionRespuesta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface OpcionRespuestaRepository extends JpaRepository<OpcionRespuesta, String> {
    List<OpcionRespuesta> findByIdPregunta(String idPregunta);
}
