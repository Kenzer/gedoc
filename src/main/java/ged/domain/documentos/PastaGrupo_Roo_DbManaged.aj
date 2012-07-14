// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.PastaGrupo;
import ged.domain.documentos.PastaPropriedades;
import ged.domain.documentos.Pastas;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

privileged aspect PastaGrupo_Roo_DbManaged {
    
    @OneToMany(mappedBy = "grupo")
    private Set<PastaPropriedades> PastaGrupo.pastaPropriedadeses;
    
    @OneToMany(mappedBy = "grupo")
    private Set<Pastas> PastaGrupo.pastass;
    
    @Column(name = "descricao", length = 70)
    @NotNull
    private String PastaGrupo.descricao;
    
    public Set<PastaPropriedades> PastaGrupo.getPastaPropriedadeses() {
        return pastaPropriedadeses;
    }
    
    public void PastaGrupo.setPastaPropriedadeses(Set<PastaPropriedades> pastaPropriedadeses) {
        this.pastaPropriedadeses = pastaPropriedadeses;
    }
    
    public Set<Pastas> PastaGrupo.getPastass() {
        return pastass;
    }
    
    public void PastaGrupo.setPastass(Set<Pastas> pastass) {
        this.pastass = pastass;
    }
    
    public String PastaGrupo.getDescricao() {
        return descricao;
    }
    
    public void PastaGrupo.setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}
