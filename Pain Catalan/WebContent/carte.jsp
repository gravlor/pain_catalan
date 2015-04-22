<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="icon" type="image/x-icon" href="https://d1ovtcjitiy70m.cloudfront.net/vi-1/favicon.ico">
	<jsp:include page="headers.jsp" />
	<link rel='stylesheet' href='css/styles.css' type='text/css'/>
	<link rel="stylesheet" href="css/jquery-ui-1.8.12.custom.css" type="text/css" />
	<%@ page import="paincatalan.model.User" %>
	<title>Recherchez un covoiturage | Les pains catalans</title>
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
	    <div id="container">
	        <div id="destinationForm">
	            <form action="" method="get" name="direction" id="direction">
	                <label style="display:none;">Départ:</label>
					<div class="from">
	              	 	<input type="text" value="<%= ((User) request.getSession().getAttribute("user")).getAdress() %>" name="origin" id="origin" placeholder="De">
	                </div>
	                <label style="display:none;">Arrivée :</label>
	                <div class="to">
	               		<input type="text" name="destination" id="destination" placeholder="À">
	               	</div>
	                <input type="button" value="Rechercher" onclick="javascript:calculate()">
	            </form>
	        </div>
	        <div id="map">
	            <p>Veuillez patienter pendant le chargement de la carte...</p>
	        </div>
	        <div style="display:none;" id="panel"></div>
	    </div>
	    
	    <!-- Include Javascript -->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
	    <script type="text/javascript" src="js/jquery-ui-1.8.12.custom.min.js"></script>
	    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=fr"></script>
	    <script type="text/javascript" src="js/functions.js"></script>
</body>
</html>