<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel='stylesheet' href='css/styles.css' type='text/css'/>
<title>LES PAINS CATALANS - COVOITURAGE</title>
<jsp:include page="headers.jsp" />
</head>
<body>

<div class="conteneur">
	<header>
		<a href="accueil.jsp"><h1><span class="blabla-vert">Les</span> <span class="blabla-bleu">pains</span> <span class="blabla-rouge">catalans</span></h1></a>
		<nav>
			<ul>
				<a href="carte.jsp"><li class="menu-carte"></li></a>
				<a href="inscription.jsp"><li class="menu-inscription"></li></a>
				<a href="profile.jsp"><li class="menu-profil"></li></a>
			</ul>
		</nav>
	</header>
	<section>
	<h2>Connexion</h2>
	<form action="profile.jsp">
		<label for="utilisateur">Utilisateur :</label><input type="text" name="utilisateur" />
		<label for="password">Mot de passe :</label><input type="password" name="password" />
		<input type="submit" value="OK" />
	</form>
	<!-- test -->
	</section>
	<footer>
			Pas encore inscrit ? Accéder au <a href="inscription.jsp">formulaire d'inscription</a>.
	</footer>
</div>

</body>
</html>
