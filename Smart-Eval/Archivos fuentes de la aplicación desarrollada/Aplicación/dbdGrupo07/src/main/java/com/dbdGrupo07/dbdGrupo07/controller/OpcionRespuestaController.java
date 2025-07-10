package com.dbdGrupo07.dbdGrupo07.controller;

import com.dbdGrupo07.dbdGrupo07.entity.OpcionRespuesta;
import com.dbdGrupo07.dbdGrupo07.repository.OpcionRespuestaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import jakarta.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/opciones-respuesta")
@CrossOrigin(origins = "*")
public class OpcionRespuestaController {
    
    @Autowired
    private OpcionRespuestaRepository opcionRespuestaRepository;
    
    @GetMapping
    public List<OpcionRespuesta> getAllOpciones() {
        return opcionRespuestaRepository.findAll();
    }
    
    @GetMapping("/{id}")
    public ResponseEntity<OpcionRespuesta> getOpcionById(@PathVariable String id) {
        Optional<OpcionRespuesta> opcion = opcionRespuestaRepository.findById(id);
        return opcion.map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public ResponseEntity<OpcionRespuesta> createOpcion(@Valid @RequestBody OpcionRespuesta opcion) {
        OpcionRespuesta savedOpcion = opcionRespuestaRepository.save(opcion);
        return ResponseEntity.ok(savedOpcion);
    }
    
    @GetMapping("/pregunta/{idPregunta}")
    public List<OpcionRespuesta> getOpcionesByPregunta(@PathVariable String idPregunta) {
        return opcionRespuestaRepository.findByIdPregunta(idPregunta);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOpcion(@PathVariable String id) {
        if (!opcionRespuestaRepository.existsById(id)) {
            return ResponseEntity.notFound().build();
        }
        opcionRespuestaRepository.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
