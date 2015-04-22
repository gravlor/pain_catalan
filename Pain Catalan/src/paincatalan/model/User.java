package paincatalan.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries(value = 
{ 
	@NamedQuery(name="User.getAllUsers", query="SELECT u FROM User u"),
	@NamedQuery(name="User.getUserByEmail", query="SELECT u FROM User u "
			+ "WHERE u.email = :email"),
	@NamedQuery(name="User.getUserById", query="SELECT u FROM User u "
					+ "WHERE u.id = :id"),
})
public class User implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	private int		id;
	
	private String	name;
	
	private String	firstName;
	
	private String	email;
	
	private String	password;
	
	private String	adress;
	
	private String	type;
	
	private int		places;
	
	private int		radius;

	public User() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getPlaces() {
		return places;
	}

	public void setPlaces(int places) {
		this.places = places;
	}

	public int getRadius() {
		return radius;
	}

	public void setRadius(int radius) {
		this.radius = radius;
	}
}
