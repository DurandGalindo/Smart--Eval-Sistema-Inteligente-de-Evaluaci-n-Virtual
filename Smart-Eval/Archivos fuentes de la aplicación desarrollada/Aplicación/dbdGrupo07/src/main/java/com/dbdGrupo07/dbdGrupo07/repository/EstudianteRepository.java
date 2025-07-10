package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.Estudiante;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface EstudianteRepository extends JpaRepository<Estudiante, String> {
    Optional<Estudiante> findByCorreo(String correo);
    boolean existsByCorreo(String correo);
}
