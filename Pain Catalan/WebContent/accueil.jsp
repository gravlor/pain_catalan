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
	<section>
		<h2>Connexion</h2>
		<form action="Connexion" method="POST">
			<input type="text" name="email" placeholder="Mon email" />
			<input type="password" name="password" placeholder="Mon mot de passe" />
			<input type="submit" value="Se connecter" />
		</form>
		<div class="lien-inscription">
			Pas encore membre ?<br /><a href="inscription.jsp">Inscrivez-vous gratuitement </a>
		</div>
	</section>
</body>
</html>
