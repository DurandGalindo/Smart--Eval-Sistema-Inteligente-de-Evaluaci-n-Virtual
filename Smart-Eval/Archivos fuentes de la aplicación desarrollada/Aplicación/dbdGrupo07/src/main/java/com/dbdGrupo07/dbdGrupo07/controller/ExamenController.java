package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Examen;
import com.dbdGrupo07.dbdGrupo07.repository.ExamenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/examenes")
@CrossOrigin(origins = "*")
public class ExamenController {
    
    @Autowired
    private ExamenRepository examenRepository;
    
    @GetMapping
    public List<Examen> getAllExamenes() {
        return examenRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Examen> getExamenById(@PathVariable String id) {
        Optional<Examen> examen = examenRepository.findById(id);
        return examen.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Examen> createExamen(@Valid @RequestBody Examen examen) {
        Examen savedExamen = examenRepository.save(examen);
        return ResponseEntity.ok(savedExamen);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Examen> updateExamen(@PathVariable String id, @Valid @RequestBody Examen examen) {
        if (!examenRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        examen.setIdExamen(id);
        Examen updatedExamen = examenRepository.save(examen);
        return ResponseEntity.ok(updatedExamen);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteExamen(@PathVariable String id) {
        if (!examenRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        examenRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
    
    @GetMapping("/estudiante/{idEstudiante}")
    public List<Examen> getExamenesByEstudiante(@PathVariable String idEstudiante) {
        return examenRepository.findByIdEstudiante(idEstudiante);
    }
    
    @GetMapping("/docente/{idDocente}")
    public List<Examen> getExamenesByDocente(@PathVariable String idDocente) {
        return examenRepository.findByIdDocente(idDocente);
    }
    
    @GetMapping("/estado/{estado}")
    public List<Examen> getExamenesByEstado(@PathVariable String estado) {
        try {
            Examen.EstadoExamen estadoExamen = Examen.EstadoExamen.valueOf(estado);
            return examenRepository.findByEstado(estadoExamen);
        } catch (IllegalArgumentException e) {
            return List.of();
        }
    }
}
