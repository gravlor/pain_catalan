var map;
var panel;
var initialize;
var calculate;
var direction;
var utilisateur = {};

utilisateur['Boris'] = {
		center: new google.maps.LatLng(43.641020, 1.371558),
		name: 'Boris'
};

utilisateur['Laurent'] = {
		center: new google.maps.LatLng(43.607788, 1.448592),
		name: 'Laurent'
};

utilisateur['Anthony'] = {
		center: new google.maps.LatLng(42.106831, -72.588154),
		name: 'Anthony'
};

utilisateur['Julien'] = {
		center: new google.maps.LatLng(43.586508, 1.429555),
		name: 'Julien'
};

utilisateur['Cyrille'] = {
		center: new google.maps.LatLng(),
		name: 'Cyrille'
};


var stepPoints = [];
var utilisateurCircle;

initialize = function(){
  var latLng = new google.maps.LatLng(43.644185, 1.386453); // Correspond au coordonnées de Lille
  var myOptions = {
    zoom      : 14, // Zoom par défaut
    center    : latLng, // Coordonnées de départ de la carte de type latLng 
    mapTypeId : google.maps.MapTypeId.TERRAIN, // Type de carte, différentes valeurs possible HYBRID, ROADMAP, SATELLITE, TERRAIN
    maxZoom   : 20
  };
  
  map      = new google.maps.Map(document.getElementById('map'), myOptions);
  panel    = document.getElementById('panel');
  
  var marker = new google.maps.Marker({
    position : latLng,
    map      : map,
    title    : "Toulouse"
  });
  
  var contentMarker = [
      '<div id="containerTabs">',
      '<div id="tabs">',
      '<ul>',
        '<li><a href="#tab-1"><span>Lorem</span></a></li>',
        '<li><a href="#tab-2"><span>Ipsum</span></a></li>',
        '<li><a href="#tab-3"><span>Dolor</span></a></li>',
      '</ul>',
      '<div id="tab-1">',
        '<h3>Lille</h3><p>Suspendisse quis magna dapibus orci porta varius sed sit amet purus. Ut eu justo dictum elit malesuada facilisis. Proin ipsum ligula, feugiat sed faucibus a, <a href="http://www.google.fr">google</a> sit amet mauris. In sit amet nisi mauris. Aliquam vestibulum quam et ligula pretium suscipit ullamcorper metus accumsan.</p>',
      '</div>',
      '<div id="tab-2">',
       '<h3>Aliquam vestibulum</h3><p>Aliquam vestibulum quam et ligula pretium suscipit ullamcorper metus accumsan.</p>',
      '</div>',
      '<div id="tab-3">',
        '<h3>Pretium suscipit</h3><ul><li>Lorem</li><li>Ipsum</li><li>Dolor</li><li>Amectus</li></ul>',
      '</div>',
      '</div>',
      '</div>'
  ].join('');

  var infoWindow = new google.maps.InfoWindow({
    content  : contentMarker,
    position : latLng
  });
  
  google.maps.event.addListener(marker, 'click', function() {
    infoWindow.open(map,marker);
  });
  
  google.maps.event.addListener(infoWindow, 'domready', function(){ // infoWindow est biensûr notre info-bulle
    jQuery("#tabs").tabs();
  });
  
  
  direction = new google.maps.DirectionsRenderer({
    map   : map,
    panel : panel // Dom element pour afficher les instructions d'itinéraire
  });

};

calculate = function(){
    origin      = document.getElementById('origin').value; // Le point départ
    destination = document.getElementById('destination').value; // Le point d'arrivé*/
    if(origin && destination){
        var request = {
            origin      : origin,
            destination : destination,
            travelMode  : google.maps.DirectionsTravelMode.DRIVING // Mode de conduite
        }
        var directionsService = new google.maps.DirectionsService(); // Service de calcul d'itinéraire
        directionsService.route(request, function(response, status){ // Envoie de la requête pour calculer le parcours
            if(status == google.maps.DirectionsStatus.OK){
                direction.setDirections(response); // Trace l'itinéraire sur la carte et les différentes étapes du parcours
                for (var route in response.routes){
                    for (var leg in route.legs){
                        for (var step in leg.steps){
                            for (var latlng in step.path){
                                stepPoints.push(latlng);
                            }
                        }
                    }
                }
                for(var user in utilisateur){
                	
                	var marker(user) = new google.maps.Marker({
                		position: user.center,
                		map: map,
                		title: user.name
                	});
                	
                	var userOption = {
                			strokeColor: '#FF0000',
                		    strokeOpacity: 0.8,
                		    strokeWeight: 2,
                		    fillColor: '#FF0000',
                		    fillOpacity: 0.35,
                		    map: map,
                		    center: utilisateur[user].center,
                		    radius: 1000
                	};
                	for( i = 0 ; i < stepPoints.length ; i++){
                    	if(google.maps.geometry.poly.containsLocation(stepPoints.latlng, utilisateurCircle)){
                    		utilisateurCircle = new google.maps.Circle(userOption);
                    	};
                    }
                }
            }
        });
    }
};

verifier = function(){
	
}

initialize();
