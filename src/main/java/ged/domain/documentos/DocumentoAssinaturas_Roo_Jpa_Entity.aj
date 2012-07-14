// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.DocumentoAssinaturas;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect DocumentoAssinaturas_Roo_Jpa_Entity {
    
    declare @type: DocumentoAssinaturas: @Entity;
    
    declare @type: DocumentoAssinaturas: @Table(schema = "documentos", name = "documento_assinaturas");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DocumentoAssinaturas.id;
    
    @Version
    @Column(name = "version")
    private Integer DocumentoAssinaturas.version;
    
    public Long DocumentoAssinaturas.getId() {
        return this.id;
    }
    
    public void DocumentoAssinaturas.setId(Long id) {
        this.id = id;
    }
    
    public Integer DocumentoAssinaturas.getVersion() {
        return this.version;
    }
    
    public void DocumentoAssinaturas.setVersion(Integer version) {
        this.version = version;
    }
    
}