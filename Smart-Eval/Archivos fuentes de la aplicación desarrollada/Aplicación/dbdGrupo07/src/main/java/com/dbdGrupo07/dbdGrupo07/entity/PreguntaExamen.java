package com.dbdGrupo07.dbdGrupo07.entity;

import jakarta.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "pregunta_examen")
@IdClass(PreguntaExamen.PreguntaExamenId.class)
public class PreguntaExamen {
    
    @Id
    @Column(name = "id_examen", length = 8)
    private String idExamen;
    
    @Id
    @Column(name = "id_pregunta", length = 8)
    private String idPregunta;
    
    // Constructors
    public PreguntaExamen() {}
    
    public PreguntaExamen(String idExamen, String idPregunta) {
        this.idExamen = idExamen;
        this.idPregunta = idPregunta;
    }
    
    // Getters and Setters
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
    
    // Composite Key Class
    public static class PreguntaExamenId implements Serializable {
        /**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		private String idExamen;
        private String idPregunta;
        
        public PreguntaExamenId() {}
        
        public PreguntaExamenId(String idExamen, String idPregunta) {
            this.idExamen = idExamen;
            this.idPregunta = idPregunta;
        }
        
        // Getters, Setters, equals, and hashCode
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
        
        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            PreguntaExamenId that = (PreguntaExamenId) o;
            return idExamen.equals(that.idExamen) && idPregunta.equals(that.idPregunta);
        }
        
        @Override
        public int hashCode() {
            return idExamen.hashCode() + idPregunta.hashCode();
        }
    }
}
