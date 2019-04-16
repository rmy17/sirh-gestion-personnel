<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css"%>
</head>

<body>
	<h1>Statistiques</h1>

	<div class="container-">
		<div class="row">
			<div class="col-sm">Chemin</div>
			<div class="col-sm">Nombre de visites</div>
			<div class="col-sm">Min(ms)</div>
			<div class="col-sm">Max(ms)</div>
			<div class="col-sm">Moyenne(ms)</div>
		</div>
		<c:forEach var="visite" items="${listCollab}">
		<div class="row">
			<div class="col-sm"></div>
			<div class="col-sm">${visite.nbVisites}</div>
			<div class="col-sm">${visite.min}</div>
			<div class="col-sm">${visite.max}</div>
			<div class="col-sm">${visite.moyenne}</div>
		</div>
		</c:forEach>
	</div>

</body>
</html>