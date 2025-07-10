package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "pregunta")
public class Pregunta {
    
    @Id
    @Column(name = "id_pregunta", length = 8)
    private String idPregunta;
    
    @NotNull
    @Column(name = "id_curso", length = 8, nullable = false)
    private String idCurso;
    
    @NotNull
    @Column(name = "id_dificultad", length = 8, nullable = false)
    private String idDificultad;
    
    @NotBlank
    @Size(max = 300)
    @Column(name = "enunciado", nullable = false)
    private String enunciado;
    
    @Enumerated(EnumType.STRING)
    @Column(name = "tipo_pregunta")
    private TipoPregunta tipoPregunta;
    
    @NotNull
    @Column(name = "puntaje_maximo", nullable = false)
    private Integer puntajeMaximo;
    
    public enum TipoPregunta {
        VF, SELECCION, RELLENAR
    }
    
    // Constructors
    public Pregunta() {}
    
    public Pregunta(String idPregunta, String idCurso, String idDificultad, String enunciado, 
                   TipoPregunta tipoPregunta, Integer puntajeMaximo) {
        this.idPregunta = idPregunta;
        this.idCurso = idCurso;
        this.idDificultad = idDificultad;
        this.enunciado = enunciado;
        this.tipoPregunta = tipoPregunta;
        this.puntajeMaximo = puntajeMaximo;
    }
    
    // Getters and Setters
    public String getIdPregunta() {
        return idPregunta;
    }
    
    public void setIdPregunta(String idPregunta) {
        this.idPregunta = idPregunta;
    }
    
    public String getIdCurso() {
        return idCurso;
    }
    
    public void setIdCurso(String idCurso) {
        this.idCurso = idCurso;
    }
    
    public String getIdDificultad() {
        return idDificultad;
    }
    
    public void setIdDificultad(String idDificultad) {
        this.idDificultad = idDificultad;
    }
    
    public String getEnunciado() {
        return enunciado;
    }
    
    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }
    
    public TipoPregunta getTipoPregunta() {
        return tipoPregunta;
    }
    
    public void setTipoPregunta(TipoPregunta tipoPregunta) {
        this.tipoPregunta = tipoPregunta;
    }
    
    public Integer getPuntajeMaximo() {
        return puntajeMaximo;
    }
    
    public void setPuntajeMaximo(Integer puntajeMaximo) {
        this.puntajeMaximo = puntajeMaximo;
    }
}
