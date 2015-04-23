package paincatalan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import paincatalan.dao.UserDAO;
import paincatalan.model.User;

/**
 * Servlet implementation class Inscription
 */
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
    public Inscription() {
        super();
        // TODO Auto-generated constructor stub
       
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		RequestDispatcher dispat;
		dispat = request.getRequestDispatcher("/inscription.jsp");		
		//String message = "Transmission de variables : OK !";		
	    //request.setAttribute( "test", message );
	    dispat.forward(request,  response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispat;
		
		String nom = request.getParameter("nom" );
		String prenom = request.getParameter("prenom");
		String adresse = request.getParameter("adresse");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		String passager = request.getParameter("passager");
		String radius = request.getParameter("rayon");
		
		UserDAO dao = new UserDAO();
		User user = new User();
		user.setFirstName(prenom);
		user.setName(nom);
		user.setEmail(email);
		user.setPassword(password);
		user.setAdress(adresse);
		user.setType(type);
		user.setPlaces(Integer.valueOf(passager));
		user.setRadius(Integer.valueOf(radius));
		dao.create(user);
		
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		
		dispat = request.getRequestDispatcher("/profile.jsp");
		dispat.forward(request,  response);
		
	}

}
