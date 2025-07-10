package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Dificultad;
import com.dbdGrupo07.dbdGrupo07.repository.DificultadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/dificultades")
@CrossOrigin(origins = "*")
public class DificultadController {
    
    @Autowired
    private DificultadRepository dificultadRepository;
    
    @GetMapping
    public List<Dificultad> getAllDificultades() {
        return dificultadRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Dificultad> getDificultadById(@PathVariable String id) {
        Optional<Dificultad> dificultad = dificultadRepository.findById(id);
        return dificultad.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Dificultad> createDificultad(@Valid @RequestBody Dificultad dificultad) {
        Dificultad savedDificultad = dificultadRepository.save(dificultad);
        return ResponseEntity.ok(savedDificultad);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Dificultad> updateDificultad(@PathVariable String id, @Valid @RequestBody Dificultad dificultad) {
        if (!dificultadRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        dificultad.setIdDificultad(id);
        Dificultad updatedDificultad = dificultadRepository.save(dificultad);
        return ResponseEntity.ok(updatedDificultad);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteDificultad(@PathVariable String id) {
        if (!dificultadRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        dificultadRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
