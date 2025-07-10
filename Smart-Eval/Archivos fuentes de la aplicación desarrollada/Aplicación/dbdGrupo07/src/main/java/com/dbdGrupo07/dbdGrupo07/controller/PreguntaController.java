package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.Pregunta;
import com.dbdGrupo07.dbdGrupo07.repository.PreguntaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/preguntas")
@CrossOrigin(origins = "*")
public class PreguntaController {
    
    @Autowired
    private PreguntaRepository preguntaRepository;
    
    @GetMapping
    public List<Pregunta> getAllPreguntas() {
        return preguntaRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<Pregunta> getPreguntaById(@PathVariable String id) {
        Optional<Pregunta> pregunta = preguntaRepository.findById(id);
        return pregunta.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<Pregunta> createPregunta(@Valid @RequestBody Pregunta pregunta) {
        Pregunta savedPregunta = preguntaRepository.save(pregunta);
        return ResponseEntity.ok(savedPregunta);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Pregunta> updatePregunta(@PathVariable String id, @Valid @RequestBody Pregunta pregunta) {
        if (!preguntaRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        pregunta.setIdPregunta(id);
        Pregunta updatedPregunta = preguntaRepository.save(pregunta);
        return ResponseEntity.ok(updatedPregunta);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePregunta(@PathVariable String id) {
        if (!preguntaRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        preguntaRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
    
    @GetMapping("/curso/{idCurso}")
    public List<Pregunta> getPreguntasByCurso(@PathVariable String idCurso) {
        return preguntaRepository.findByIdCurso(idCurso);
    }
    
    @GetMapping("/dificultad/{idDificultad}")
    public List<Pregunta> getPreguntasByDificultad(@PathVariable String idDificultad) {
        return preguntaRepository.findByIdDificultad(idDificultad);
    }
}
