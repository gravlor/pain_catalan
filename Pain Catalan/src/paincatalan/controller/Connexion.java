package paincatalan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import paincatalan.dao.UserDAO;
import paincatalan.model.User;

/**
 * Servlet implementation class Connexion
 */
@WebServlet("/Connexion")
public class Connexion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connexion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispat;
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserDAO dao = new UserDAO();
		User user = dao.getUserByEmail(email);
		if (user != null && user.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			dispat = request.getRequestDispatcher("/profile.jsp");
			dispat.forward(request,  response);
		} else {
			dispat = request.getRequestDispatcher("/accueil.jsp");
			dispat.forward(request,  response);
		}
	}

}
