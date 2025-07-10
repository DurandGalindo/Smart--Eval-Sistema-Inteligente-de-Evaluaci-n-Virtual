package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.DetallePlantilla;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface DetallePlantillaRepository extends JpaRepository<DetallePlantilla, String> {
    List<DetallePlantilla> findByIdPlantilla(String idPlantilla);
}
