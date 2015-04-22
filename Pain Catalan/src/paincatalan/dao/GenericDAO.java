package paincatalan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;


public abstract class GenericDAO<T> {
	
	private Class<T> entityClass;
	
    private Class<T> getEntityClass(){
    	return entityClass;
    }

    public GenericDAO(Class<T> entityClass) {
        this.entityClass = entityClass;
    }
    
    @PersistenceContext
    private EntityManager em;
   
    protected EntityManager getEntityManager() {
    	if(em==null){
    		EntityManagerFactory emf=Persistence.createEntityManagerFactory("pain_catalan");
    		em=emf.createEntityManager();
    	}
		return em;
	}

	public void create(T entity) {
		getEntityManager().getTransaction().begin();
		getEntityManager().persist(entity);
		getEntityManager().getTransaction().commit();
    }

    public void edit(T entity) {
        getEntityManager().merge(entity);
    }

    public void remove(T entity) {
        getEntityManager().remove(getEntityManager().merge(entity));
    }

    public T find(Object id) {
        return getEntityManager().find(getEntityClass(), id);
    }

    public List<T> findAll() {
    	
    	CriteriaQuery<T> cq = (CriteriaQuery<T>) em.getCriteriaBuilder().createQuery();
       cq.select(cq.from(entityClass));
       return em.createQuery(cq).getResultList();
    }

}
