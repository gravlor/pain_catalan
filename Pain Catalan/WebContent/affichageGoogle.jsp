<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<title>Tutoriel Google Maps</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel= "stylesheet" type = "text/css" href="google.css" />
		<!-- El�ment Google Maps indiquant que la carte doit �tre affich� en plein �cran et
		qu'elle ne peut pas �tre redimensionn�e par l'utilisateur -->
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<!-- Inclusion de l'API Google MAPS -->
		<!-- Le param�tre "sensor" indique si cette application utilise d�tecteur pour d�terminer la position de l'utilisateur -->
		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript">
			function initialiser() {
			
				var depart = new google.maps.LatLng(43.641009, 1.371482);
				var arrive = new google.maps.LatLng(43.644178, 1.386647);
				
				var mapOptions = {
				  zoom: 12,
				  center: depart
				}
				var map = new google.maps.Map(document.getElementById("carte"), mapOptions);

				// To add the marker to the map, use the 'map' property
				var markerDepart = new google.maps.Marker({
				    position: depart,
				    map: map,
				    title:"D�part"
				});
				
				var markerArrive = new google.maps.Marker({
					position: arrive,
					map: map,
					title: "Arriv�!"
				});
			}
					/*test si les variables sont bien initialis�s*/
			calculate = function(){
						if (depart && arrive){
							var request = {
								origin:depart,
								destination:arrivee,
								travelMode: google.maps.DirectionsTravelMode.DRIVING
							};
							var itineraire = new google.maps.DirectionService();
							itineraire.route(request, function(response, status) {
								if (status == google.maps.DirectionsStatus.OK){
									direction.setDirections(response);
								}
							});
						}
					}
		</script>
	</head>

	<body onload="initialiser()">
		
		<div id="carte" style="width:500px; height:500px">
			
		</div>
		<input type="button" value="Calculer l'itin�raire" onclick="javascript:calculate()" style="width:200px; height:20px;">
	</body>
<body>

</body>
</html>