<!-- Latest compiled and minified CSS -->
 
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">-->

<!-- Optional theme -->
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">-->

<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>-->

<!-- Latest compiled and minified JavaScript -->
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="paincatalan.model.User" %>
<% User user = ((User) request.getSession().getAttribute("user")); %>
	<header>
		<div class="conteneur">
			<nav>
				<ul>
					<a href="accueil.jsp"><h1><span class="blabla-vert">Les</span> <span class="blabla-bleu">pains</span> <span class="blabla-rouge">catalans</span></h1></a>
					<div class="conteneur-menu">
						<a href="carte.jsp"><li class="menu-carte"></li></a>
						<c:choose>
      						<c:when test="${user == null}">
      							<a href="inscription.jsp"><li class="menu-inscription"></li></a>
      						</c:when>
      						<c:otherwise>
      							<a href="profile.jsp"><li class="menu-profil"></li></a>
      						</c:otherwise>
						</c:choose>
						
						
					</div>
				</ul>
			</nav>
		</div>
	</header>