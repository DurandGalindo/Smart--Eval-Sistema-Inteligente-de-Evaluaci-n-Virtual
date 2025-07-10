package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "opcion_respuesta")
public class OpcionRespuesta {
    
    @Id
    @Column(name = "id_opcion_respuesta", length = 8)
    private String idOpcionRespuesta;
    
    @NotNull
    @Column(name = "id_pregunta", length = 8, nullable = false)
    private String idPregunta;
    
    @NotBlank
    @Size(max = 300)
    @Column(name = "texto_opcion", nullable = false)
    private String textoOpcion;
    
    @Column(name = "es_correcta")
    private Boolean esCorrecta;
    
    // Constructors
    public OpcionRespuesta() {}
    
    public OpcionRespuesta(String idOpcionRespuesta, String idPregunta, String textoOpcion, Boolean esCorrecta) {
        this.idOpcionRespuesta = idOpcionRespuesta;
        this.idPregunta = idPregunta;
        this.textoOpcion = textoOpcion;
        this.esCorrecta = esCorrecta;
    }
    
    // Getters and Setters
    public String getIdOpcionRespuesta() {
        return idOpcionRespuesta;
    }
    
    public void setIdOpcionRespuesta(String idOpcionRespuesta) {
        this.idOpcionRespuesta = idOpcionRespuesta;
    }
    
    public String getIdPregunta() {
        return idPregunta;
    }
    
    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }
    
    public String getTextoOpcion() {
        return textoOpcion;
    }
    
    public void setTextoOpcion(String textoOpcion) {
        this.textoOpcion = textoOpcion;
    }
    
    public Boolean getEsCorrecta() {
        return esCorrecta;
    }
    
    public void setEsCorrecta(Boolean esCorrecta) {
        this.esCorrecta = esCorrecta;
    }
}
