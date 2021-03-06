// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.DocumentoPropriedades;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DocumentoPropriedades_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DocumentoPropriedades.entityManager;
    
    public static final EntityManager DocumentoPropriedades.entityManager() {
        EntityManager em = new DocumentoPropriedades().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DocumentoPropriedades.countDocumentoPropriedadeses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DocumentoPropriedades o", Long.class).getSingleResult();
    }
    
    public static List<DocumentoPropriedades> DocumentoPropriedades.findAllDocumentoPropriedadeses() {
        return entityManager().createQuery("SELECT o FROM DocumentoPropriedades o", DocumentoPropriedades.class).getResultList();
    }
    
    public static DocumentoPropriedades DocumentoPropriedades.findDocumentoPropriedades(Long id) {
        if (id == null) return null;
        return entityManager().find(DocumentoPropriedades.class, id);
    }
    
    public static List<DocumentoPropriedades> DocumentoPropriedades.findDocumentoPropriedadesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DocumentoPropriedades o", DocumentoPropriedades.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DocumentoPropriedades.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DocumentoPropriedades.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DocumentoPropriedades attached = DocumentoPropriedades.findDocumentoPropriedades(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DocumentoPropriedades.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DocumentoPropriedades.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DocumentoPropriedades DocumentoPropriedades.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DocumentoPropriedades merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
