package com.dbdGrupo07.dbdGrupo07.repository;

import com.dbdGrupo07.dbdGrupo07.entity.Curso;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CursoRepository extends JpaRepository<Curso, String> {
}
