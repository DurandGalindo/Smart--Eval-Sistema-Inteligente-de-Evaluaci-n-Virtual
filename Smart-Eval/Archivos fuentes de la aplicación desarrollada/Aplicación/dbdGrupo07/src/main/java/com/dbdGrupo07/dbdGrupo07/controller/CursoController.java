package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Curso;
import com.dbdGrupo07.dbdGrupo07.repository.CursoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/cursos")
@CrossOrigin(origins = "*")
public class CursoController {
    
    @Autowired
    private CursoRepository cursoRepository;
    
    @GetMapping
    public List<Curso> getAllCursos() {
        return cursoRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Curso> getCursoById(@PathVariable String id) {
        Optional<Curso> curso = cursoRepository.findById(id);
        return curso.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Curso> createCurso(@Valid @RequestBody Curso curso) {
        Curso savedCurso = cursoRepository.save(curso);
        return ResponseEntity.ok(savedCurso);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Curso> updateCurso(@PathVariable String id, @Valid @RequestBody Curso curso) {
        if (!cursoRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        curso.setIdCurso(id);
        Curso updatedCurso = cursoRepository.save(curso);
        return ResponseEntity.ok(updatedCurso);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCurso(@PathVariable String id) {
        if (!cursoRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        cursoRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
