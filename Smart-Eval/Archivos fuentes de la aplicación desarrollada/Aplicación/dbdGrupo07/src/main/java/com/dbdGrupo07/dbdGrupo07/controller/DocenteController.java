package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Docente;
import com.dbdGrupo07.dbdGrupo07.repository.DocenteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/docentes")
@CrossOrigin(origins = "*")
public class DocenteController {
    
    @Autowired
    private DocenteRepository docenteRepository;
    
    @GetMapping
    public List<Docente> getAllDocentes() {
        return docenteRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Docente> getDocenteById(@PathVariable String id) {
        Optional<Docente> docente = docenteRepository.findById(id);
        return docente.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Docente> createDocente(@Valid @RequestBody Docente docente) {
        if (docenteRepository.existsByCorreo(docente.getCorreo())) {
            return ResponseEntity.badRequest().build();
        }
        Docente savedDocente = docenteRepository.save(docente);
        return ResponseEntity.ok(savedDocente);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Docente> updateDocente(@PathVariable String id, @Valid @RequestBody Docente docente) {
        if (!docenteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        docente.setIdDocente(id);
        Docente updatedDocente = docenteRepository.save(docente);
        return ResponseEntity.ok(updatedDocente);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteDocente(@PathVariable String id) {
        if (!docenteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        docenteRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
    
    @GetMapping("/correo/{correo}")
    public ResponseEntity<Docente> getDocenteByCorreo(@PathVariable String correo) {
        Optional<Docente> docente = docenteRepository.findByCorreo(correo);
        return docente.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
}
