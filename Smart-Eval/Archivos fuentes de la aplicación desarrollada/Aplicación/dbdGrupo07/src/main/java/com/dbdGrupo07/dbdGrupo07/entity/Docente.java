package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "docente")
public class Docente {
    
    @Id
    @Column(name = "id_docente", length = 8)
    private String idDocente;
    
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
    @Size(max = 150)
    @Column(name = "correo", nullable = false, unique = true)
    private String correo;
    
    @Size(max = 100)
    @Column(name = "especialidad")
    private String especialidad;
    
    @Size(max = 20)
    @Column(name = "telefono")
    private String telefono;
    
    // Constructors
    public Docente() {}
    
    public Docente(String idDocente, String nombre, String apellido, String correo, String especialidad, String telefono) {
        this.idDocente = idDocente;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.especialidad = especialidad;
        this.telefono = telefono;
    }
    
    // Getters and Setters
    public String getIdDocente() {
        return idDocente;
    }
    
    public void setIdDocente(String idDocente) {
        this.idDocente = idDocente;
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
    
    public String getEspecialidad() {
        return especialidad;
    }
    
    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
    
    public String getTelefono() {
        return telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}
