package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "respuesta_estudiante")
public class RespuestaEstudiante {
    
    @Id
    @Column(name = "id_respuesta_estudiante", length = 8)
    private String idRespuestaEstudiante;
    
    @NotNull
    @Column(name = "id_examen", length = 8, nullable = false)
    private String idExamen;
    
    @NotNull
    @Column(name = "id_pregunta", length = 8, nullable = false)
    private String idPregunta;
    
    @Size(max = 250)
    @Column(name = "respuesta")
    private String respuesta;
    
    @Column(name = "correcta")
    private Boolean correcta;
    
    @NotNull
    @Column(name = "puntaje_obtenido", nullable = false)
    private Integer puntajeObtenido;
    
    // Constructors
    public RespuestaEstudiante() {}
    
    public RespuestaEstudiante(String idRespuestaEstudiante, String idExamen, String idPregunta, 
                              String respuesta, Boolean correcta, Integer puntajeObtenido) {
        this.idRespuestaEstudiante = idRespuestaEstudiante;
        this.idExamen = idExamen;
        this.idPregunta = idPregunta;
        this.respuesta = respuesta;
        this.correcta = correcta;
        this.puntajeObtenido = puntajeObtenido;
    }
    
    // Getters and Setters
    public String getIdRespuestaEstudiante() {
        return idRespuestaEstudiante;
    }
    
    public void setIdRespuestaEstudiante(String idRespuestaEstudiante) {
        this.idRespuestaEstudiante = idRespuestaEstudiante;
    }
    
    public String getIdExamen() {
        return idExamen;
    }
    
    public void setIdExamen(String idExamen) {
        this.idExamen = idExamen;
    }
    
    public String getIdPregunta() {
        return idPregunta;
    }
    
    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }
    
    public String getRespuesta() {
        return respuesta;
    }
    
    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }
    
    public Boolean getCorrecta() {
        return correcta;
    }
    
    public void setCorrecta(Boolean correcta) {
        this.correcta = correcta;
    }
    
    public Integer getPuntajeObtenido() {
        return puntajeObtenido;
    }
    
    public void setPuntajeObtenido(Integer puntajeObtenido) {
        this.puntajeObtenido = puntajeObtenido;
    }
}
