package dev.sgp.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

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
		// resp.sendError(400, "Un matricule est attendu");

		String matricule = req.getParameter("matricule");

		resp.getWriter().write("<h1>Edition de callaborateur</h1> " + "<br></br>" + "Matricule : " + matricule);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		List<String> parametres = new ArrayList<>();

		parametres.add(matricule);
		parametres.add(titre);
		parametres.add(nom);
		parametres.add(prenom);

		List<String> params = new ArrayList<>();
		params.add("matricule");
		params.add("titre");
		params.add("nom");
		params.add("prenom");

		String msg = "les element suivants sont incorrects : ";
		int i = 0;

		if (!"".equals(matricule) && !"".equals(titre) && !"".equals(nom) && !"".equals(prenom)) {
			resp.setStatus(201);
			resp.setContentType("text/html");
			resp.getWriter()
					.write("<p> Creation d'un collaborateur avec les informations suivantes : </p>" + "<ul>"
							+ "<li> matricule=" + matricule + ",titre=" + titre + "nom=" + nom + "prenom=" + prenom
							+ "</li>" + "</ul>");

		} else {
			for (String p : parametres) {
				if (p == null) {
					msg += params.get(i) + ", ";
					i++;
				}
			}
			resp.sendError(400, msg);
		}
	}

}
