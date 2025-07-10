package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "detalle_plantilla")
public class DetallePlantilla {
    
    @Id
    @Column(name = "id_detalle_plantilla", length = 8)
    private String idDetallePlantilla;
    
    @NotNull
    @Column(name = "id_plantilla", length = 8, nullable = false)
    private String idPlantilla;
    
    @NotNull
    @Column(name = "id_curso", length = 8, nullable = false)
    private String idCurso;
    
    @NotNull
    @Column(name = "cantidadFaciles", nullable = false)
    private Integer cantidadFaciles;
    
    @NotNull
    @Column(name = "cantidadIntermedias", nullable = false)
    private Integer cantidadIntermedias;
    
    @NotNull
    @Column(name = "cantidadDificiles", nullable = false)
    private Integer cantidadDificiles;
    
    // Constructors
    public DetallePlantilla() {}
    
    public DetallePlantilla(String idDetallePlantilla, String idPlantilla, String idCurso, 
                           Integer cantidadFaciles, Integer cantidadIntermedias, Integer cantidadDificiles) {
        this.idDetallePlantilla = idDetallePlantilla;
        this.idPlantilla = idPlantilla;
        this.idCurso = idCurso;
        this.cantidadFaciles = cantidadFaciles;
        this.cantidadIntermedias = cantidadIntermedias;
        this.cantidadDificiles = cantidadDificiles;
    }
    
    // Getters and Setters
    public String getIdDetallePlantilla() {
        return idDetallePlantilla;
    }
    
    public void setIdDetallePlantilla(String idDetallePlantilla) {
        this.idDetallePlantilla = idDetallePlantilla;
    }
    
    public String getIdPlantilla() {
        return idPlantilla;
    }
    
    public void setIdPlantilla(String idPlantilla) {
        this.idPlantilla = idPlantilla;
    }
    
    public String getIdCurso() {
        return idCurso;
    }
    
    public void setIdCurso(String idCurso) {
        this.idCurso = idCurso;
    }
    
    public Integer getCantidadFaciles() {
        return cantidadFaciles;
    }
    
    public void setCantidadFaciles(Integer cantidadFaciles) {
        this.cantidadFaciles = cantidadFaciles;
    }
    
    public Integer getCantidadIntermedias() {
        return cantidadIntermedias;
    }
    
    public void setCantidadIntermedias(Integer cantidadIntermedias) {
        this.cantidadIntermedias = cantidadIntermedias;
    }
    
    public Integer getCantidadDificiles() {
        return cantidadDificiles;
    }
    
    public void setCantidadDificiles(Integer cantidadDificiles) {
        this.cantidadDificiles = cantidadDificiles;
    }
}
