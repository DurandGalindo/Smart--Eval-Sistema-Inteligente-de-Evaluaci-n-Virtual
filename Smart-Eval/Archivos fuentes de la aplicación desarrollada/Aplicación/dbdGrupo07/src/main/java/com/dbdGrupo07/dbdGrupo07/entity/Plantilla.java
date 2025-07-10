package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "plantilla")
public class Plantilla {
    
    @Id
    @Column(name = "id_plantilla", length = 8)
    private String idPlantilla;
    
    @NotBlank
    @Size(max = 250)
    @Column(name = "descripcion_plantilla", nullable = false)
    private String descripcionPlantilla;
    
    // Constructors
    public Plantilla() {}
    
    public Plantilla(String idPlantilla, String descripcionPlantilla) {
        this.idPlantilla = idPlantilla;
        this.descripcionPlantilla = descripcionPlantilla;
    }
    
    // Getters and Setters
    public String getIdPlantilla() {
        return idPlantilla;
    }
    
    public void setIdPlantilla(String idPlantilla) {
        this.idPlantilla = idPlantilla;
    }
    
    public String getDescripcionPlantilla() {
        return descripcionPlantilla;
    }
    
    public void setDescripcionPlantilla(String descripcionPlantilla) {
        this.descripcionPlantilla = descripcionPlantilla;
    }
}
