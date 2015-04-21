package paincatalan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Profile
 */

public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	String nom = "Nom base";
    String prenom = "Prénom base";
    String adresse = "Adresse base";
    String type = "Type base";
    String passager = "passager base";
	
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher dispat;
		dispat = request.getRequestDispatcher("/profile.jsp");		
				
	    request.setAttribute( "nom", this.nom );
	    request.setAttribute( "prenom", this.prenom );
	    request.setAttribute( "adresse", this.adresse );
	    request.setAttribute( "type", this.type );
	    request.setAttribute( "passager", this.passager );
	    
	    dispat.forward(request,  response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
