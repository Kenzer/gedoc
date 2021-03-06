// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.DocumentoAssunto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DocumentoAssunto_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DocumentoAssunto.entityManager;
    
    public static final EntityManager DocumentoAssunto.entityManager() {
        EntityManager em = new DocumentoAssunto().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DocumentoAssunto.countDocumentoAssuntoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DocumentoAssunto o", Long.class).getSingleResult();
    }
    
    public static List<DocumentoAssunto> DocumentoAssunto.findAllDocumentoAssuntoes() {
        return entityManager().createQuery("SELECT o FROM DocumentoAssunto o", DocumentoAssunto.class).getResultList();
    }
    
    public static DocumentoAssunto DocumentoAssunto.findDocumentoAssunto(Long id) {
        if (id == null) return null;
        return entityManager().find(DocumentoAssunto.class, id);
    }
    
    public static List<DocumentoAssunto> DocumentoAssunto.findDocumentoAssuntoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DocumentoAssunto o", DocumentoAssunto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DocumentoAssunto.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DocumentoAssunto.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DocumentoAssunto attached = DocumentoAssunto.findDocumentoAssunto(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DocumentoAssunto.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DocumentoAssunto.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DocumentoAssunto DocumentoAssunto.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DocumentoAssunto merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
