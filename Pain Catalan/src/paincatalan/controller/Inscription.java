package paincatalan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		UserDAO dao = new UserDAO();
		User user = new User();
		user.setAdress(adresse);
		user.setEmail(email);
		user.setFirstName(prenom);
		user.setName(nom);
		user.setPassword(password);
		
		dao.create(user);
		
		request.setAttribute("nom", nom);
		request.setAttribute("prenom", prenom);
		request.setAttribute("adresse", adresse);
		request.setAttribute("type", type);
		request.setAttribute("passager", passager);
		
		
		
		dispat = request.getRequestDispatcher("/inscription-ok.jsp");
		dispat.forward(request,  response);
		
	}

}
