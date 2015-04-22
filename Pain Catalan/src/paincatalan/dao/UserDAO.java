package paincatalan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import paincatalan.model.User;

public class UserDAO extends GenericDAO<User> {

	public UserDAO() {
		super(User.class);
	}
	
	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<String> getAllCategories() {
		return (List<String>) getEntityManager().createNamedQuery("Article.findAllCategories")
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<User> getAllProductsPerCategory(String categorie){
		return (List<User>) getEntityManager().createNamedQuery("Article.findAllArticleByCategories").
				setParameter("category",categorie).getResultList();
	}

}
