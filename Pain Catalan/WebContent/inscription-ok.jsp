<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
<jsp:include page="headers.jsp" />
</head>
<body>
<h1>Inscription réussie !</h1>
<hr />

Votre inscription s'est bien passée !


<h3>Nom : ${nom}</h3>
<h3>Prénom :  ${prenom}</h3>
<h3>Adresse : ${adresse}</h3>
<h3>Type de passager/conducteur : ${type}</h3>
<h3>Nombre de passager(s) : ${passager}</h3>

<hr />
Vous pouvez maintenant <a href="Profile">accéder à votre profil</a> !


</body>
</html>