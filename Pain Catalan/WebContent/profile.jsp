<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="icon" type="image/x-icon" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/favicon.ico">
	<link rel='stylesheet' href='css/styles.css' type='text/css'/>
	<title>Votre profil | Les pains catalans</title>
	<jsp:include page="headers.jsp" />
	<%@ page import="paincatalan.model.User" %>
</head>
<body>
	<header>
		<div class="conteneur">
			<nav>
				<ul>
					<a href="accueil.jsp"><h1><span class="blabla-vert">Les</span> <span class="blabla-bleu">pains</span> <span class="blabla-rouge">catalans</span></h1></a>
					<div class="conteneur-menu">
						<a href="carte.jsp"><li class="menu-carte"></li></a>
						<a href="inscription.jsp"><li class="menu-inscription"></li></a>
						<a href="profile.jsp"><li class="menu-profil"></li></a>
					</div>
				</ul>
			</nav>
		</div>
	</header>
	<section>
	
		<p>Nom : <%= ((User) request.getSession().getAttribute("user")).getName() %></p>
		<p>Pr�nom :  <%= ((User) request.getSession().getAttribute("user")).getFirstName() %></p>
		<p>Adresse : <%= ((User) request.getSession().getAttribute("user")).getAdress() %></p>
		<p>Type de passager/conducteur : <%= ((User) request.getSession().getAttribute("user")).getType() %></p>
		<p>Nombre de passager(s) : <%= ((User) request.getSession().getAttribute("user")).getPlaces() %></p>
		
	</section>
</body>
</html>