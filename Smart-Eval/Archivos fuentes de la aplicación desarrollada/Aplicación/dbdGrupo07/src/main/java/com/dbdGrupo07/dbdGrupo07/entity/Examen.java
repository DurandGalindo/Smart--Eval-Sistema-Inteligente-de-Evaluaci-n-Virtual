package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDate;

@Entity
@Table(name = "examen")
public class Examen {
    
    @Id
    @Column(name = "id_examen", length = 8)
    private String idExamen;
    
    @NotNull
    @Column(name = "id_estudiante", length = 8, nullable = false)
    private String idEstudiante;
    
    @NotNull
    @Column(name = "id_plantilla", length = 8, nullable = false)
    private String idPlantilla;
    
    @NotNull
    @Column(name = "id_docente", length = 8, nullable = false)
    private String idDocente;
    
    @NotNull
    @Column(name = "fecha", nullable = false)
    private LocalDate fecha;
    
    @NotNull
    @Column(name = "puntaje_final", nullable = false)
    private Integer puntajeFinal;
    
    @Enumerated(EnumType.STRING)
    @Column(name = "estado")
    private EstadoExamen estado = EstadoExamen.Pendiente;
    
    public enum EstadoExamen {
        Pendiente, Terminado, Calificado
    }
    
    // Constructors
    public Examen() {}
    
    public Examen(String idExamen, String idEstudiante, String idPlantilla, String idDocente, 
                 LocalDate fecha, Integer puntajeFinal, EstadoExamen estado) {
        this.idExamen = idExamen;
        this.idEstudiante = idEstudiante;
        this.idPlantilla = idPlantilla;
        this.idDocente = idDocente;
        this.fecha = fecha;
        this.puntajeFinal = puntajeFinal;
        this.estado = estado;
    }
    
    // Getters and Setters
    public String getIdExamen() {
        return idExamen;
    }
    
    public void setIdExamen(String idExamen) {
        this.idExamen = idExamen;
    }
    
    public String getIdEstudiante() {
        return idEstudiante;
    }
    
    public void setIdEstudiante(String idEstudiante) {
        this.idEstudiante = idEstudiante;
    }
    
    public String getIdPlantilla() {
        return idPlantilla;
    }
    
    public void setIdPlantilla(String idPlantilla) {
        this.idPlantilla = idPlantilla;
    }
    
    public String getIdDocente() {
        return idDocente;
    }
    
    public void setIdDocente(String idDocente) {
        this.idDocente = idDocente;
    }
    
    public LocalDate getFecha() {
        return fecha;
    }
    
    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }
    
    public Integer getPuntajeFinal() {
        return puntajeFinal;
    }
    
    public void setPuntajeFinal(Integer puntajeFinal) {
        this.puntajeFinal = puntajeFinal;
    }
    
    public EstadoExamen getEstado() {
        return estado;
    }
    
    public void setEstado(EstadoExamen estado) {
        this.estado = estado;
    }
}
