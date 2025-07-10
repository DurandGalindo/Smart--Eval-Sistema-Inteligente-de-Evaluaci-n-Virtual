package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Estudiante;
import com.dbdGrupo07.dbdGrupo07.repository.EstudianteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/estudiantes")
@CrossOrigin(origins = "*")
public class EstudianteController {
    
    @Autowired
    private EstudianteRepository estudianteRepository;
    
    @GetMapping
    public List<Estudiante> getAllEstudiantes() {
        return estudianteRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Estudiante> getEstudianteById(@PathVariable String id) {
        Optional<Estudiante> estudiante = estudianteRepository.findById(id);
        return estudiante.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Estudiante> createEstudiante(@Valid @RequestBody Estudiante estudiante) {
        if (estudianteRepository.existsByCorreo(estudiante.getCorreo())) {
            return ResponseEntity.badRequest().build();
        }
        Estudiante savedEstudiante = estudianteRepository.save(estudiante);
        return ResponseEntity.ok(savedEstudiante);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Estudiante> updateEstudiante(@PathVariable String id, @Valid @RequestBody Estudiante estudiante) {
        if (!estudianteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        estudiante.setIdEstudiante(id);
        Estudiante updatedEstudiante = estudianteRepository.save(estudiante);
        return ResponseEntity.ok(updatedEstudiante);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteEstudiante(@PathVariable String id) {
        if (!estudianteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        estudianteRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
    
    @GetMapping("/correo/{correo}")
    public ResponseEntity<Estudiante> getEstudianteByCorreo(@PathVariable String correo) {
        Optional<Estudiante> estudiante = estudianteRepository.findByCorreo(correo);
        return estudiante.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
}
