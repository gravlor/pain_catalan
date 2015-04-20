<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<h1>Inscription sur le covoiturage du pain catalan</h1>
<hr />

<form action="profile.jsp">

<table>

<tr>
<td>Nom</td>
<td><input type="text" name="nom" /></td>
</tr>

<tr>
<td>Prénom</td>
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
	<select name="nbr">
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
	</select>
</td>
</tr>

</table>
 
 <input type="submit" />
 </form>

</body>
</html>