package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.Docente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

@Repository
public interface DocenteRepository extends JpaRepository<Docente, String> {
    Optional<Docente> findByCorreo(String correo);
    boolean existsByCorreo(String correo);
}
