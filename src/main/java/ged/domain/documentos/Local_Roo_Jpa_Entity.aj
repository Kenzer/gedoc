// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.Local;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Local_Roo_Jpa_Entity {
    
    declare @type: Local: @Entity;
    
    declare @type: Local: @Table(schema = "documentos", name = "local");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Local.id;
    
    @Version
    @Column(name = "version")
    private Integer Local.version;
    
    public Long Local.getId() {
        return this.id;
    }
    
    public void Local.setId(Long id) {
        this.id = id;
    }
    
    public Integer Local.getVersion() {
        return this.version;
    }
    
    public void Local.setVersion(Integer version) {
        this.version = version;
    }
    
}
