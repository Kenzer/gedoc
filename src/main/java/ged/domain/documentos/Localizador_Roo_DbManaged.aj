// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.Local;
import ged.domain.documentos.Localizador;
import ged.domain.documentos.Pastas;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect Localizador_Roo_DbManaged {
    
    @OneToMany(mappedBy = "localizador")
    private Set<Pastas> Localizador.pastass;
    
    @ManyToOne
    @JoinColumn(name = "local", referencedColumnName = "id", nullable = false)
    private Local Localizador.local;
    
    @Column(name = "nivel")
    @NotNull
    private Integer Localizador.nivel;
    
    @Column(name = "sub_local")
    @NotNull
    private Integer Localizador.subLocal;
    
    public Set<Pastas> Localizador.getPastass() {
        return pastass;
    }
    
    public void Localizador.setPastass(Set<Pastas> pastass) {
        this.pastass = pastass;
    }
    
    public Local Localizador.getLocal() {
        return local;
    }
    
    public void Localizador.setLocal(Local local) {
        this.local = local;
    }
    
    public Integer Localizador.getNivel() {
        return nivel;
    }
    
    public void Localizador.setNivel(Integer nivel) {
        this.nivel = nivel;
    }
    
    public Integer Localizador.getSubLocal() {
        return subLocal;
    }
    
    public void Localizador.setSubLocal(Integer subLocal) {
        this.subLocal = subLocal;
    }
    
}
