// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ged.domain.documentos;

import ged.domain.documentos.PastaGrupo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PastaGrupo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PastaGrupo.entityManager;
    
    public static final EntityManager PastaGrupo.entityManager() {
        EntityManager em = new PastaGrupo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PastaGrupo.countPastaGrupoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PastaGrupo o", Long.class).getSingleResult();
    }
    
    public static List<PastaGrupo> PastaGrupo.findAllPastaGrupoes() {
        return entityManager().createQuery("SELECT o FROM PastaGrupo o", PastaGrupo.class).getResultList();
    }
    
    public static PastaGrupo PastaGrupo.findPastaGrupo(Long id) {
        if (id == null) return null;
        return entityManager().find(PastaGrupo.class, id);
    }
    
    public static List<PastaGrupo> PastaGrupo.findPastaGrupoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PastaGrupo o", PastaGrupo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PastaGrupo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PastaGrupo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PastaGrupo attached = PastaGrupo.findPastaGrupo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PastaGrupo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PastaGrupo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PastaGrupo PastaGrupo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PastaGrupo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
