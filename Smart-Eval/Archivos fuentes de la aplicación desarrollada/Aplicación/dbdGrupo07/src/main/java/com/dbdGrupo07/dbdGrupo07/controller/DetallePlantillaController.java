package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.DetallePlantilla;
import com.dbdGrupo07.dbdGrupo07.repository.DetallePlantillaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/detalle-plantillas")
@CrossOrigin(origins = "*")
public class DetallePlantillaController {
    
    @Autowired
    private DetallePlantillaRepository detallePlantillaRepository;
    
    @GetMapping
    public List<DetallePlantilla> getAllDetalles() {
        return detallePlantillaRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<DetallePlantilla> getDetalleById(@PathVariable String id) {
        Optional<DetallePlantilla> detalle = detallePlantillaRepository.findById(id);
        return detalle.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<DetallePlantilla> createDetalle(@Valid @RequestBody DetallePlantilla detalle) {
        DetallePlantilla savedDetalle = detallePlantillaRepository.save(detalle);
        return ResponseEntity.ok(savedDetalle);
    }
    
    @GetMapping("/plantilla/{idPlantilla}")
    public List<DetallePlantilla> getDetallesByPlantilla(@PathVariable String idPlantilla) {
        return detallePlantillaRepository.findByIdPlantilla(idPlantilla);
    }
}
