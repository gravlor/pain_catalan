package paincatalan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NamedQuery;
import javax.persistence.PersistenceContext;

import paincatalan.model.User;

public class UserDAO extends GenericDAO<User> {

	public UserDAO() {
		super(User.class);
	}
	
	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		return (List<User>) getEntityManager().createNamedQuery("User.getAllUsers")
				.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public User getUserByEmail(String email){
		return (User) getEntityManager().createNamedQuery("User.getUserByEmail").
				setParameter("email", email).getSingleResult();
	}
	
	@SuppressWarnings("unchecked")
	public User getUserById(int id){
		return (User) getEntityManager().createNamedQuery("Article.getUserByEmail").
				setParameter("id", id).getSingleResult();
	}
	
}
