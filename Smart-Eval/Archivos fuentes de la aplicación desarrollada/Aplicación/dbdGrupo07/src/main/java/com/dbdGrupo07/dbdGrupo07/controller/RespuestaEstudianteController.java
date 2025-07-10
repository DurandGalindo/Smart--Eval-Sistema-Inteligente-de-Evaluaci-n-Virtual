package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.RespuestaEstudiante;
import com.dbdGrupo07.dbdGrupo07.repository.RespuestaEstudianteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/respuestas-estudiante")
@CrossOrigin(origins = "*")
public class RespuestaEstudianteController {
    
    @Autowired
    private RespuestaEstudianteRepository respuestaEstudianteRepository;
    
    @GetMapping
    public List<RespuestaEstudiante> getAllRespuestas() {
        return respuestaEstudianteRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<RespuestaEstudiante> getRespuestaById(@PathVariable String id) {
        Optional<RespuestaEstudiante> respuesta = respuestaEstudianteRepository.findById(id);
        return respuesta.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<RespuestaEstudiante> createRespuesta(@Valid @RequestBody RespuestaEstudiante respuesta) {
        RespuestaEstudiante savedRespuesta = respuestaEstudianteRepository.save(respuesta);
        return ResponseEntity.ok(savedRespuesta);
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<RespuestaEstudiante> updateRespuesta(@PathVariable String id, @Valid @RequestBody RespuestaEstudiante respuesta) {
        if (!respuestaEstudianteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        respuesta.setIdRespuestaEstudiante(id);
        RespuestaEstudiante updatedRespuesta = respuestaEstudianteRepository.save(respuesta);
        return ResponseEntity.ok(updatedRespuesta);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteRespuesta(@PathVariable String id) {
        if (!respuestaEstudianteRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        respuestaEstudianteRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
    
    @GetMapping("/examen/{idExamen}")
    public List<RespuestaEstudiante> getRespuestasByExamen(@PathVariable String idExamen) {
        return respuestaEstudianteRepository.findByIdExamen(idExamen);
    }
    
    @GetMapping("/pregunta/{idPregunta}")
    public List<RespuestaEstudiante> getRespuestasByPregunta(@PathVariable String idPregunta) {
        return respuestaEstudianteRepository.findByIdPregunta(idPregunta);
    }
}
