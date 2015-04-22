<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Carte | Les pains catalans</title>
	<jsp:include page="headers.jsp" />
	<link rel='stylesheet' href='css/styles.css' type='text/css'/>
	<link rel="stylesheet" href="css/jquery-ui-1.8.12.custom.css" type="text/css" />
</head>
	<style type="text/css">
	  #container #map{width:700px;height:500px;margin:auto;}
	  #container #panel{width:700px;margin:auto;}
	  #container #destinationForm{margin:0px 0px 20px 0px;background:#EEEEEE;padding:10px 20px;border:solid 1px #C0C0C0;}
	  #container #destinationForm input[type=text]{border:solid 1px #C0C0C0;}
	</style>
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
	    <div id="container">
	        <div id="destinationForm">
	            <form action="" method="get" name="direction" id="direction">
	                <label>Départ:</label>
	                <input type="text" name="origin" id="origin">
	                <label>Arrivée :</label>
	                <input type="text" name="destination" id="destination">
	                <input type="button" value="Calculer l'itinéraire" onclick="javascript:calculate()">
	            </form>
	        </div>
	        <div id="map">
	            <p>Veuillez patienter pendant le chargement de la carte...</p>
	        </div>
	        <div id="panel"></div>
	    </div>
	    
	    <!-- Include Javascript -->
	    <script type="text/javascript" src="js/jquery.min.js"></script>
	    <script type="text/javascript" src="js/jquery-ui-1.8.12.custom.min.js"></script>
	    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=fr"></script>
	    <script type="text/javascript" src="js/functions.js"></script>

<button>Réserver !</button>

</body>
</html>