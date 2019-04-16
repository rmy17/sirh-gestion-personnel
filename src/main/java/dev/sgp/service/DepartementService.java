package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.Departement;

public class DepartementService {

	List<Departement> listeDepartement = new ArrayList<>();
	Departement Comptabilite = new Departement("Compatibilite");
	Departement resHum = new Departement("Resssources Humaines");
	Departement informatique = new Departement("Informatique");
	Departement adminsitratif = new Departement("Adminsitratif");

	public List<Departement> listerCollaborateur() {
		return listeDepartement;
	}

}
