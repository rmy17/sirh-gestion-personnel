<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootsteap-3.3.7-dist/css/bootstrap.css" %>
</head>

<body>
	<h1>Les collaborateurs</h1>
	<ul>
		<%
	List<String> listeNoms =(List<String>)request.getAttribute("listeNoms");
	for(String nom : listeNoms){
		%>
		<li><%=nom%></li>
		<%
	}
		%>
	</ul>
</body>
</html>