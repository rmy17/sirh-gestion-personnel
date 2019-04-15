package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListerCollaborateursController extends HttpServlet {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		;
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String avecPhotoParam = req.getParameter("avecPhoto");

		// recuperer la valeur d'un parametre dont le nom est departement
		String departementParam = req.getParameter("departement");
		resp.setContentType("text/html");

		// resp.getWriter().write("Hello ListerCollaborateursController");

		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write("<h1>Liste des collaborateurs</h1>" + "<ul>" + "<li>avecPhoto=" + avecPhotoParam
				+ "</li>" + "<li>departement=" + departementParam + "</li>" + "</ul>");
	}

}
