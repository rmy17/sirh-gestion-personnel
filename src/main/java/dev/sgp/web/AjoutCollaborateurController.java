package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class AjoutCollaborateurController extends HttpServlet {

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * javax.servlet.http.HttpServlet#doPut(javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse)
	 */

	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dateNaissance = req.getParameter("dateNaissance");
		String adresse = req.getParameter("adresse");
		String numSecu = req.getParameter("numSecu");

		if (numSecu.length() != 15) {
			resp.sendError(400, "Le champ numéro de sécurité social doit etre de 15 charactères");
		}

		if (!"".equals(nom) && !"".equals(prenom) && !"".equals(dateNaissance) && !"".equals(adresse)
				&& !"".equals(numSecu)) {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-d");
			LocalDate dateN = LocalDate.parse(dateNaissance, formatter);
			CollaborateurService collabService = new CollaborateurService();
			Collaborateur collab = new Collaborateur();
			collab.setNom(nom);
			collab.setPrenom(prenom);
			collab.setAdresse(adresse);
			collab.setDateDeNaissance(dateN);
			collab.setNumeroDeSecuriteSociale(numSecu);
			collab.setMatricule("M" + collabService.listerCollaborateur().size() + 1);
			collab.setEmail(prenom + "." + nom + "@societe.com");
			collab.setPhoto("https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png");
			collab.setActif(true);

			collabService.sauvegarderCollaborateur(collab);
			resp.setContentType("text/html");
			req.setAttribute("listCollab", collabService.listerCollaborateur());
			req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		} else {
			resp.sendError(400, "Il faut remplir les champs manquants");
		}

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/collab/ajouterCollaborateur.jsp").forward(req, resp);
	}

}
