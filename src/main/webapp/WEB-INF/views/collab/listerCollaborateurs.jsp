<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css" %>
</head>

<body>
	<h1>Les collaborateurs</h1>
	

	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Menu</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
		 aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Collaborateurs
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Statistiques</a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row justify-content-end">
			<div class="col-ml-auto">
					<a href="creer-collab.html" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ajouter un nouveau collaborateur</a>
			
			</div>
		</div>
		<div class="row">
			<div class="col">
				<h1>Les Collaborateurs</h1>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p>Rechercher un nom ou un prénom qui commence par :</p>
			</div>
			<div class="col">
				<form>
					<div class="form-group mx-sm-2 mb-2">
						<input type="search" class="form-control" aria-describedby="Rechercher" >
						<button type="submit">Rechercher</button>
					</div>

			</div>
			<div class="col">
				<div class="form-check">
					<input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
				</div>
				<p>Voir les collaborateurs desactivés</p>
			</div>
		</div>
		<div class="Container-fluid">
		<div class="col-4">
			<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Filter par département :</label>
			<select class="custom-select my-1 mr-sm-2 float-center" id="inlineFormCustomSelectPref">
				<option selected>Tous</option>
				<option value="1">Comptabilité</option>
				<option value="2">Ressources humaines</option>
				<option value="3">Informatique</option>
			</select>
		</div>
		</div>
		</form>
		<div class="row">
			<div class="card-deck m-5">
				<c:forEach var="col" items="${listCollab}">
		
	
		<div class="card border-secondary mb-3">
<div class="card-header bg-transparent">${col.nom} ${col.prenom}</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img-top" alt="..." style="width:25%">
						<div class="card-body ml-auto">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
					<div class="text-right">

						<button type="button" class="btn btn-primary">Editer</button>
					</div>
				</div>
		
		</c:forEach>	
					
				<div class="card border-secondary mb-3">
					<div class="card-header bg-transparent ">Nom Prénom</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img-top" alt="..." style="width:25%">
						<div class="card-body">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
						<div class="text-right">

							<button type="button" class="btn btn-primary">Editer</button>
						</div>
					
				</div>
				<div class="card border-secondary mb-3">
					<div class="card-header bg-transparent ">Nom Prénom</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img" alt="..." style="width:25%">
						<div class="card-body ">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
						<div class="text-right">

							<button type="button" class="btn btn-primary">Editer</button>
						</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="card-deck m-5">
				<div class="card border-secondary mb-3">
					<div class="card-header bg-transparent ">Nom Prénom</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img-top" alt="..." style="width:25%">
						<div class="card-body">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
						<div class="text-right">

							<button type="button" class="btn btn-primary">Editer</button>
						</div>
					
				</div>
				<div class="card border-secondary mb-3">
					<div class="card-header bg-transparent">Nom Prénom</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img-top" alt="..." style="width:25%">
						<div class="card-body">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
						<div class="text-right">

							<button type="button" class="btn btn-primary">Editer</button>
						</div>
					
				</div>
				<div class="card border-secondary mb-3">
					<div class="card-header bg-transparent">Nom Prénom</div>
					<div class="row no-gutters">
						<img src="https://cdn.pixabay.com/photo/2017/01/25/17/33/camera-2008479_960_720.png" class="card-img-top" alt="..." style="width:25%">
						<div class="card-body">
							<p class="card-text">Fonction</p>
							<p class="card-text">Departement</p>
							<p class="card-text">Email</p>
							<p class="card-text">Telephone</p>
						</div>
					</div>
						<div class="text-right">

							<button type="button" class="btn btn-primary">Editer</button>
						</div>
				</div>
			</div>
		</div>
</body>
</html>