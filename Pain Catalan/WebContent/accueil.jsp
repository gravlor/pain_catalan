<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" type="image/x-icon" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/favicon.ico">
<link rel='stylesheet' href='css/styles.css' type='text/css'/>
<title>Voyagez moins cher en covoiturage | Les pains catalans</title>
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
		<h2>Connexion</h2>
		<form action="profile.jsp">
			<input type="text" name="utilisateur" placeholder="Mon email" />
			<input type="password" name="password" placeholder="Mon mot de passe" />
			<input type="submit" value="Se connecter" />
		</form>
		(si non connecté: afficher)
		<div class="lien-inscription">
			Pas encore membre ?<br /><a href="inscription.jsp">Inscrivez-vous gratuitement </a>
		</div>
	</section>
</body>
</html>
