package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Plantilla;
import com.dbdGrupo07.dbdGrupo07.repository.PlantillaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/plantillas")
@CrossOrigin(origins = "*")
public class PlantillaController {
    
    @Autowired
    private PlantillaRepository plantillaRepository;
    
    @GetMapping
    public List<Plantilla> getAllPlantillas() {
        return plantillaRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Plantilla> getPlantillaById(@PathVariable String id) {
        Optional<Plantilla> plantilla = plantillaRepository.findById(id);
        return plantilla.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Plantilla> createPlantilla(@Valid @RequestBody Plantilla plantilla) {
        Plantilla savedPlantilla = plantillaRepository.save(plantilla);
        return ResponseEntity.ok(savedPlantilla);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Plantilla> updatePlantilla(@PathVariable String id, @Valid @RequestBody Plantilla plantilla) {
        if (!plantillaRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        plantilla.setIdPlantilla(id);
        Plantilla updatedPlantilla = plantillaRepository.save(plantilla);
        return ResponseEntity.ok(updatedPlantilla);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePlantilla(@PathVariable String id) {
        if (!plantillaRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        plantillaRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
