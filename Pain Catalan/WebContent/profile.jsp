<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<jsp:include page="headers.jsp" />
</head>
<body>
<h1>Covoiturage du pain catalan</h1>
<h3>Votre profil</h3>
<hr />

<table>

<tr>
<td>Nom</td>
<td>${nom}</td>
</tr>

<tr>
<td>Prénom</td>
<td>${prenom}</td>
</tr>

<tr>
<td>Adresse</td>
<td>${adresse}</td>
</tr>

<tr>
<td>Type</td>
<td>${type}</td>
</tr>

<tr>
<td>Nombre de passagers</td>
<td>${passager}</td>
</tr>

</table>


<button onClick="location.href='results.jsp';">Chercher un passager</button>


</body>
</html>