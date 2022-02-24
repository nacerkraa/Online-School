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
    <link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/formateur/style.css" />" rel="stylesheet">
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
                        <span class="fas fa-chalkboard-teacher"></span>
                        <span>Formateur</span>
                    </a>
                </li>



                <li>
                    <a href="#" class="chiox active">
                        <span class="la la-users"></span>
                        <span>Gerer les Condidats</span>
                    </a>
                </li>

                <li>
                	<a href="/listf" class="chiox">
                    
                        <span class="la la-chart-pie"></span>
                        <span>propose formation</span>
                    </a>
                </li>
                  <li>
                	<a href="/emplpr" class="chiox">
                    
                        <span class="fab fa-creative-commons-by"></span>
                        <span>Les emploi possible</span>
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
            
            	<span><a href="/aploadFile"><i class="far fa-plus-square"></i></a></span>
            	<span><a href="/msgEmail"><i class="far fa-envelope"></i></a></span>
                <span class="las la-bell"></span>
                <span class="Profile"><i class="fas fa-user"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="/modiferCompteFormateur">modifier compte</a></li>
                <li><a href="/Logout">desinscrire</a></li>
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
						
						<th>Name</th>
						<th>Email</th>
						<th>Phone</th>
						<th>Etab</th>
                        <th>form</th>
                        <th>gender</th>
                        <th>Action</th>
					</tr>
				</thead>
				<tbody>
				  <c:forEach items="${us}" var="us">
					<tr>
						
						<td>${us.getNom()} ${us.getPrenom()}</td>
						<td>${us.getE_mail()}</td>
						<td>(+213)${us.getTel()}</td>
                        <td>${us.getEtab()}</td>
                        <td>${us.getForm()}</td>
                        <td>${us.getGender()}</td>
						<td>
							<a href="valideAp/${us.getE_mail()}" ><i class="fas fa-user-plus" ></i></a>
							<a href="DeleteOffreFormation" ><i class="fas fa-user-times" ></i></a>
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
    
     <!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">						
					<h4 class="modal-title">Supprimer</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
			<form action="DeleteOffreFormation" method="POST">
				<div class="modal-body">
				<div class="form-group">
						<label>Id</label>
						<input type="text" class="form-control" required name="id">
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-danger" value="Suppremier">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">

				</div>
			</form>
		</div>
	</div>
</div>
            
    <label class="close-mobile-menu" for="menu-toggle"></label>
	<script src="js/jquery-3.5.1.min.js"></script>
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    <script src="<c:url value="/resources/js/admin/script.js" />"></script>
    
</body>

</html>