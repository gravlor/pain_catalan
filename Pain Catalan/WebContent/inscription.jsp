<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="icon" type="image/x-icon" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/favicon.ico">
	<link rel='stylesheet' href='css/styles.css' type='text/css'/>
	<title>Inscription covoiturage | Les pains catalans</title>
	<jsp:include page="headers.jsp" />
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
		(Si utilisateur non inscrit: on affiche )
		<h2>Pas encore membre ? Inscrivez-vous gratuitement</h2>
		<form action="Inscription" method="post">
			<input type="text" name="nom" placeholder="Nom"/>
			<input type="text" name="prenom" placeholder="Prénom"/>
			<input type="text" name="email" placeholder="Email"/>
			<input type="password" name="password" placeholder="Mot de passe" />
			<input type="text" name="adresse" placeholder="Adresse"/>
			<input type="number" name="rayon" placeholder="Distance de recherche en KM"/>
			<input type="radio" name="type" value="P" />Passager
			<input type="radio" name="type" value="C" />Conducteur
			<select name="passager">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
			</select>
			 <input type="submit" value="S'inscrire"/>
			 <input type="button" onClick="location.href='accueil.jsp';" value="Revenir à l'accueil" />
		 </form>
 	</section>
</body>
</html>