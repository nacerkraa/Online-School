<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	   <label class="hide-dropdown" for="Toggle-dropdown"></label>

    <nav class="navbar">
        <div class="max-width">
            <div class="logo"><a href="/"><span class="las la-graduation-cap"></span>  Formation</a></div>
            <ul class="menu">
                <li><a href="#home" class="menu-btn">Accueil</a></li>
                <li><a href="#formation" class="menu-btn">Les Formations</a></li>
                <li><a href="#offres" class="menu-btn">Les Offres </a></li>
                <li><a href="#ecoles" class="menu-btn">Les Ecoles</a></li>
                
                
                
                
	    		
	    		
	    		<c:if test="${sessionScope.User != null}">
					<li><a href="#contact" class="menu-btn">Contact Etablissement</a></li>
					<li class="Profile"><a href="#"><i class="fas fa-user"></i>&nbsp;&nbsp;&nbsp;<span>Hi :  ${sessionScope.nom } </span><i class="fas fa-sort-down"></i> </a></li>
				</c:if>
				
				
		
	     
	  			<c:if test="${sessionScope.User == null}">
	  				<li><a href="/etab" class="menu-btn">Espace Etablissement</a></li>
					<li><a href="/Login"><i class="fas fa-user-plus"></i></a></li>
	    		</c:if>
	    		
	    		
	    		
                
            </ul>
             
            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>

            <div class="dropDown">
            
                <li><a href="editUser/${sessionScope.email}">modifier compte</a></li>
                <li><a href="/Logout">desinscrire</a></li>
            </div>
            
        </div>
    </nav>
</body>
</html>