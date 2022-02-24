	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Etablissememnt</title>  
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/etab/gereOffreFormation.css" />" rel="stylesheet">
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
                    <a href="/listF" class="chiox ">
                        <span class="la la-check-circle"></span>
                        <span>Tretement condidateurs</span>
                    </a>
                </li>

                <li>
                	<a href="#" class="chiox active">
                    
                        <span class="la la-chart-pie"></span>
                        <span>Gere les offres des formations</span>
                    </a>
                </li>
                <li>
                	<a href="/empl" class="chiox">
                    
                        <span class="la la-chart-pie"></span>
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
            
            	<span><a href="/proposeOffre"><i class="far fa-plus-square"></i></a></span>
            	<span><a href="/msgEmail"><i class="far fa-envelope"></i></a></span>
                <span class="las la-bell"></span>
                <span class="Profile"><i class="fas fa-school"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="modiferCompteEtab/${sessionScope.nom}">modifier compte</a></li>
                <li><a href="/LogoutEtab">desinscrire</a></li>
            </div>
        </header>


        		<main>
		            
		             <div class="chart-grid">
		                <div class="chat-follow">
		                    <div class="chart-head">
		                        <h2>les Offre des formations</h2>
		                        <span class="las la-cog"></span>
		                    </div>
		                    <table class="table table-striped table-hover">
						<thead>
							<tr>
								
								<th>ID</th>
								<th>Name</th>
								<th>Niveau</th>
								<th>prix</th>
		                        <th>description</th>                   
		                        <th>Action</th>
							</tr>
						</thead>
						<tbody>
						  <c:forEach items="${ls}" var="ls">
							<tr>
						
								<td>${ls.getId_formation()}</td>
								<td>${ls.getName()}</td>
								<td>${ls.getNiveau()}</td>
		                        <td>${ls.getPrix()}</td>
		                        <td>${ls.getDescription()}</td>
                      
								<td>
									<span class=" action edit"><a href="valideform/${ls.getId_formation()}"  data-toggle="modal"><i class="far fa-plus-square"></i></a></span>
									<span class="action delete"><a href="deleteform/${ls.getId_formation()}"  data-toggle="modal"><i class="far fa-trash-alt"></i></a></span>
								</td>
						
							</tr>
							</c:forEach>
						</tbody>	
					</table>
                </div>
				<div class="chart-sales">
				<div class="chart-head">
                        <h2>Historique General</h2>
                        <span class="las la-ellipsis-"></span>
                    </div>
                <table class="table table-striped table-hover">
				<thead>
					<tr>
						
						<th>E_mail</th>
						<th>ID</th>
                        
					</tr>
				</thead>
				<tbody>
				  <c:forEach items="${tl}" var="tl">
					<tr>
						<td>${tl.getE_mail_formateur()}</td>
						<td>${tl.getId_formation()}</td>
	
					</tr>
					</c:forEach>
				</tbody>	
			</table>
            
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