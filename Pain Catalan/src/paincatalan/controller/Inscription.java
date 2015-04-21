package paincatalan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Inscription
 */
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	 String nom = "";
     String prenom = "";
     String adresse = "";
     String type = "";
     String passager = "";
	
	
	
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
		
		this.nom = request.getParameter("nom" );
		this.prenom = request.getParameter("prenom");
		this.adresse = request.getParameter("adresse");
		this.type = request.getParameter("type");
		this.passager = request.getParameter("passager");
		
		
		
		request.setAttribute("nom", this.nom);
		request.setAttribute("prenom", this.prenom);
		request.setAttribute("adresse", this.adresse);
		request.setAttribute("type", this.type);
		request.setAttribute("passager", this.passager);
		
		
		
		dispat = request.getRequestDispatcher("/inscription-ok.jsp");
		dispat.forward(request,  response);
		
	}

}
