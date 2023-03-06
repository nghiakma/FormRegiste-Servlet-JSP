package edu.poly;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.getRequestDispatcher("/views/Register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usernameString = request.getParameter("username");
		String passwordString = request.getParameter("password");
		String genderString = request.getParameter("gender");
		String marriedString = request.getParameter("married");
		String nationalityString = request.getParameter("nationality");
		
		String[] favoriteStrings = request.getParameterValues("favorites");
		String noteString = request.getParameter("note");
		
		request.setAttribute("username", usernameString);
		request.setAttribute("password", passwordString);
		request.setAttribute("gender", genderString);
		request.setAttribute("married", marriedString);
		request.setAttribute("nationality", nationalityString);
		StringBuilder sBuilder = new StringBuilder();
        for(String itemString : favoriteStrings) {
        	sBuilder.append(itemString).append(", ");
        }
	    request.setAttribute("favorites", sBuilder.toString());
		request.setAttribute("note",noteString);
		request.getRequestDispatcher("/views/Register.jsp").forward(request, response);
	}

}
