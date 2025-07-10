package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.PreguntaExamen;
import com.dbdGrupo07.dbdGrupo07.repository.PreguntaExamenRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/pregunta-examen")
@CrossOrigin(origins = "*")
public class PreguntaExamenController {
    
    @Autowired
    private PreguntaExamenRepository preguntaExamenRepository;
    
    @GetMapping
    public List<PreguntaExamen> getAllPreguntaExamen() {
        return preguntaExamenRepository.findAll();
    }
    
    @PostMapping
    public ResponseEntity<PreguntaExamen> createPreguntaExamen(@Valid @RequestBody PreguntaExamen preguntaExamen) {
        PreguntaExamen saved = preguntaExamenRepository.save(preguntaExamen);
        return ResponseEntity.ok(saved);
    }
    
    @GetMapping("/examen/{idExamen}")
    public List<PreguntaExamen> getPreguntasByExamen(@PathVariable String idExamen) {
        return preguntaExamenRepository.findByIdExamen(idExamen);
    }
    
    @DeleteMapping("/examen/{idExamen}/pregunta/{idPregunta}")
    public ResponseEntity<Void> deletePreguntaExamen(@PathVariable String idExamen, @PathVariable String idPregunta) {
        PreguntaExamen.PreguntaExamenId id = new PreguntaExamen.PreguntaExamenId(idExamen, idPregunta);
        if (!preguntaExamenRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        preguntaExamenRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
