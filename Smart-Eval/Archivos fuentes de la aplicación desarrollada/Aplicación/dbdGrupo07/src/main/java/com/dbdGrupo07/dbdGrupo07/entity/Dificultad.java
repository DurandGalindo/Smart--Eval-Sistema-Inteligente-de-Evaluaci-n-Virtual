package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "dificultad")
public class Dificultad {
    
    @Id
    @Column(name = "id_dificultad", length = 8)
    private String idDificultad;
    
    @NotBlank
    @Size(max = 50)
    @Column(name = "descripcion_dificultad", nullable = false)
    private String descripcionDificultad;
    
    // Constructors
    public Dificultad() {}
    
    public Dificultad(String idDificultad, String descripcionDificultad) {
        this.idDificultad = idDificultad;
        this.descripcionDificultad = descripcionDificultad;
    }
    
    // Getters and Setters
    public String getIdDificultad() {
        return idDificultad;
    }
    
    public void setIdDificultad(String idDificultad) {
        this.idDificultad = idDificultad;
    }
    
    public String getDescripcionDificultad() {
        return descripcionDificultad;
    }
    
    public void setDescripcionDificultad(String descripcionDificultad) {
        this.descripcionDificultad = descripcionDificultad;
    }
}
