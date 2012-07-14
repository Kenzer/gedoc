// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.DocumentoPropriedades;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect DocumentoPropriedades_Roo_Jpa_Entity {
    
    declare @type: DocumentoPropriedades: @Entity;
    
    declare @type: DocumentoPropriedades: @Table(schema = "documentos", name = "documento_propriedades");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DocumentoPropriedades.id;
    
    @Version
    @Column(name = "version")
    private Integer DocumentoPropriedades.version;
    
    public Long DocumentoPropriedades.getId() {
        return this.id;
    }
    
    public void DocumentoPropriedades.setId(Long id) {
        this.id = id;
    }
    
    public Integer DocumentoPropriedades.getVersion() {
        return this.version;
    }
    
    public void DocumentoPropriedades.setVersion(Integer version) {
        this.version = version;
    }
    
}