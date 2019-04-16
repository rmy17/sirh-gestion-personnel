package dev.sgp.service;

import java.util.ArrayList;
import java.util.List;

import dev.sgp.entite.VisiteWeb;

public class visiteWebService {

	List<VisiteWeb> visiteWebs = new ArrayList<>();

	public List<VisiteWeb> listerVisiteWeb() {
		return visiteWebs;
	}

	public void sauvegarderVisiteWeb(VisiteWeb visiteWeb) {
		visiteWebs.add(visiteWeb);
	}

}
