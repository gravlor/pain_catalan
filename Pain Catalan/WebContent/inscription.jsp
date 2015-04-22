<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="icon" type="image/x-icon" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/favicon.ico">
	<link rel='stylesheet' href='css/styles.css' type='text/css'/>
	<title>Inscription</title>
	<jsp:include page="headers.jsp" />
</head>
<body>
	<header>
		<div class="conteneur">
			<nav>
				<ul>
					<a href="accueil.jsp"><h1><span class="blabla-vert">Les</span> <span class="blabla-bleu">pains</span> <span class="blabla-rouge">catalans</span></h1></a>
					<a href="carte.jsp"><li class="menu-carte"></li></a>
					<a href="inscription.jsp"><li class="menu-inscription"></li></a>
					<a href="profile.jsp"><li class="menu-profil"></li></a>
				</ul>
			</nav>
		</div>
	</header>
<!--  Si utilisateur non inscrit: on affiche -->
<h2>Inscription</h2>
<form action="Inscription" method="post">
	<p>Merci de renseigner les renseignements suivants :</p>
	<table>
		<tr>
			<td>Nom</td>
			<td><input type="text" name="nom" /></td>
		</tr>
		<tr>
			<td>Pr�nom</td>
			<td><input type="text" name="prenom" /></td>
		</tr>
		<tr>
			<td>Adresse</td>
			<td><input type="text" name="adresse" /></td>
		</tr>
		<tr>
			<td>Type</td>
		<td>
			<input type="radio" name="type" value="P" />Passager
			<input type="radio" name="type" value="C" />Conducteur
			</td>
		</tr>
		<tr>
			<td>Nombre de passagers</td>
			<td>
				<select name="passager">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</td>
		</tr>
	</table>
	 <input type="submit" value="S'inscrire"/>
	 <input type="button" onClick="location.href='accueil.jsp';" value="Revenir � l'accueil" />
 </form>
<!-- si utilisateur viens de s'inscrire: on affiche -->
<h1>Inscription r�ussie !</h1>
<h2>Votre inscription s'est bien pass�e !</h2>
<p>Nom : ${nom}</p>
<p>Pr�nom :  ${prenom}</p>
<p>Adresse : ${adresse}</p>
<p>Type de passager/conducteur : ${type}</p>
<p>Nombre de passager(s) : ${passager}</p>
Vous pouvez maintenant <a href="Profile">acc�der � votre profil</a> !
</body>
</html>