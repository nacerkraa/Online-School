	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>dashboard etablissement</title>
    
    <link href="<c:url value="/resources/css/line-awesome.min.css" />" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/etab/style.css" />" rel="stylesheet">
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
                        <span class="fas fa-university"></span>
                        <span>Etablissement</span>
                    </a>
                </li>



                <li>
                    <a href="#" class="chiox active">
                        <span class="la la-users"></span>
                        <span>Tretement condidateurs</span>
                    </a>
                </li>

                <li>
                	<a href="/Result" class="chiox">
                    
                        <span class="la la-school"></span>
                        <span>Gere les offres des formations</span>
                    </a>
                </li>
                 <li>
                	<a href="/empl" class="chiox">
                    
                        <span class="la la-dashboard"></span>
                        <span>Gere les offres d'emploi</span>
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
            
            	
                <span class="las la-bell"></span>
                <span class="Profile"><i class="fas fa-school"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="modiferCompteEtab/${sessionScope.nom}">modifier compte</a></li>
                <li><a href="/LogoutEtab">desinscrire</a></li>
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
                            	 <td>Nom</td>
                                <td>Prenom</td>
                                <td>email</td>
                                <td>tel</td>
                                <td>Gender</td>
                                <td>CV</td>
                                 <td>Id_offre</td>
                                <td>Action</td>
                            </tr>
                        </thead>

                       <tbody>
                        <c:forEach var="lism3" items="${lism3}">
                            <tr>
                            	<td>${lism3.getNom()}</td>
                            	<td>${lism3.getPrenom()}</td>
                            	<td>${lism3.getEmail_frm()}</td>
                            	<td>${lism3.getTel()}</td>
                            	<td>${lism3.getGender()}</td>
                            	<td><a href="download/pdf/${lism3.getFile()}">Download Cv :<i class="fas fa-download"></i></a></td>
                            	<td>${lism3.getId_offer()}</td>
                          
                            	
                            	<td>
                            	<a href="validedmd/${lism3.getEmail_frm()}" ><i class="fas fa-user-plus" ></i></a>
							    <a href="deletedmd/${lism3.getEmail_frm()}" ><i class="fas fa-user-times" ></i></a>
                            	</td>
                            	
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

    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script src="<c:url value="/resources/js/admin/script.js" />"></script>
    
</body>

</html>