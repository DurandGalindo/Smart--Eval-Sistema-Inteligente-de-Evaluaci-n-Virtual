package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "estudiante")
public class Estudiante {
    
    @Id
    @Column(name = "id_estudiante", length = 8)
    private String idEstudiante;
    
    @NotBlank
    @Size(max = 100)
    @Column(name = "nombre", nullable = false)
    private String nombre;
    
    @NotBlank
    @Size(max = 100)
    @Column(name = "apellido", nullable = false)
    private String apellido;
    
    @Email
    @NotBlank
    @Size(max = 250)
    @Column(name = "correo", nullable = false, unique = true)
    private String correo;
    
    // Constructors
    public Estudiante() {}
    
    public Estudiante(String idEstudiante, String nombre, String apellido, String correo) {
        this.idEstudiante = idEstudiante;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
    }
    
    // Getters and Setters
    public String getIdEstudiante() {
        return idEstudiante;
    }
    
    public void setIdEstudiante(String idEstudiante) {
        this.idEstudiante = idEstudiante;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellido() {
        return apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String getCorreo() {
        return correo;
    }
    
    public void setCorreo(String correo) {
        this.correo = correo;
    }
}
