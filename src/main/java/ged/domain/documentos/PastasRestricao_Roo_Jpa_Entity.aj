// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.PastasRestricao;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect PastasRestricao_Roo_Jpa_Entity {
    
    declare @type: PastasRestricao: @Entity;
    
    declare @type: PastasRestricao: @Table(schema = "documentos", name = "pastas_restricao");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PastasRestricao.id;
    
    @Version
    @Column(name = "version")
    private Integer PastasRestricao.version;
    
    public Long PastasRestricao.getId() {
        return this.id;
    }
    
    public void PastasRestricao.setId(Long id) {
        this.id = id;
    }
    
    public Integer PastasRestricao.getVersion() {
        return this.version;
    }
    
    public void PastasRestricao.setVersion(Integer version) {
        this.version = version;
    }
    
}
