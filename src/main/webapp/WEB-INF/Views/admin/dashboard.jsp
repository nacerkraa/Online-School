<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Darck dashboard</title>
     <link href="<c:url value="/resources/css/line-awesome.min.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link href="<c:url value="/resources/css/morris.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/admin/style.css" />" rel="stylesheet">
</head>
<body>

	
	  				
	    					
				
	<label class="hide-dropdown" for="Toggle-dropdown"></label>
	
    <!-- start sidebar -->
    <div class="sidebar">
        <div class="brand">
            <span class="las la-graduation-cap"></span>
            <h3>Formation</h3>
        </div>
        <div class="sidemenu">
            
            <ul>
                <li>
                    <a href="#" class="chiox">
                        <span class="la la-home"></span>
                        <span>Dashboard</span>
                    </a>
                </li>



                <li>
                    <a href="#" class="chiox active">
                        <span class="la la-check-circle"></span>
                        <span>Gere les inscription</span>
                    </a>
                </li>

                <li>
                	<a href="/stat" class="chiox">
                    
                        <span class="la la-chart-pie"></span>
                        <span>Statistiques</span>
                    </a>
                </li>

                

                

            </ul>
        </div>
    </div>


    <!-- start main content -->
    <div class="main-content">

        <header>
            <label for="" class="menu-toggler">
                <span class="las la-bars"></span>
            </label>
            <div class="search">
                <span class="las la-search"></span>
                <input type="search" id="myInput" class="search-item" placeholder="Inter keyword">
            </div>
            
            <div class="head-icons">
                <span class="las la-bell"><c:if test="${nombreEcolesNonValide!=0}"><span class="notification">${nombreEcolesNonValide}</span></c:if></span></span>
                <span class="Profile"><i class="las la-user"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="editAdmin/${sessionScope.nom}">modifier compte</a></li>
                <li><a href="/LogoutAdmin">desinscrire</a></li>
            </div>
        </header>


        <main>
            
            <div class="details">
                <div class="resentOrdres">
                    <div class="card-header">
                        <h2>tous les demandes</h2>
                        <span class="las la-cog"></span>
                    </div>
                    <table>
                    
                        <thead>
                            <tr>
                            	 
                                <td>Name ecole</td>
                                <td>email</td>
                                <td>address</td>
                                <td>description</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        
                        <tbody>
                        <c:forEach var="etablissement" items="${list}">
                            <tr>
                            	
                               <td>${etablissement.nom}</td>
                               <td>${etablissement.email}</td>
							   <td>${etablissement.adress}</td>
							   <td>${etablissement.desc}</td>
                                <td><span class="action ajuter"><a href="valideEtab/${etablissement.email}">Ajouter</a></span><span class="action suprimer"><a href="delete/${etablissement.email}">Suprimer</a></span></td>
                                
                            </tr>
                           
                            </c:forEach>
                        </tbody>
                        
                    </table>
                </div>

                <!-- <div class="chart-">
                    <div class="chart-">
                        <h2>Statistiques General</h2>
                        <span class="las la-ellipsis-"></span>
                    </div>
                </div> -->
            
            </div>
            
            
        </main>
    </div>
    <label class="close-mobile-menu" for="menu-toggle"></label>
	 <script src="<c:url value="/resources/js/morris.js" />"></script>
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script src="<c:url value="/resources/js/admin/script.js" />"></script>
    
</body>

</html>