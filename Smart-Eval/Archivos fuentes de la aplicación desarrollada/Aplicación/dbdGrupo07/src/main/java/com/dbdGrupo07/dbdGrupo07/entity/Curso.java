package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "curso")
public class Curso {
    
    @Id
    @Column(name = "id_curso", length = 8)
    private String idCurso;
    
    @NotBlank
    @Size(max = 100)
    @Column(name = "nombre", nullable = false)
    private String nombre;
    
    // Constructors
    public Curso() {}
    
    public Curso(String idCurso, String nombre) {
        this.idCurso = idCurso;
        this.nombre = nombre;
    }
    
    // Getters and Setters
    public String getIdCurso() {
        return idCurso;
    }
    
    public void setIdCurso(String idCurso) {
        this.idCurso = idCurso;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
