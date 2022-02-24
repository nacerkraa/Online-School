	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Darck dashboard</title>
    
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/formateur/style.css" />" rel="stylesheet">
     <link href="<c:url value="/resources/css/formateur/formPropose.css" />" rel="stylesheet">
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
                    <a href="/listet" class="chiox">
                        <span class="la la-users"></span>
                        <span>Gerer les Condidats</span>
                    </a>
                </li>

                <li>
                	<a href="/listf" class="chiox active">
                    
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
            
            	<span><a href="/proposeOffre"><i class="far fa-plus-square"></i></a></span>
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
                        
                        <span class="las la-cog"></span>
                    </div>
    <form:form id="form1" method="POST" action="/addform" modelAttribute="formation">
   		<h2>Proposer formation</h2>
   		<div class="filed">
        
        <form:input placeholder="Nom de formation"  path="name" type="text" name="name_form" id="name_form" />  
		</div>
 
 		<div class="filed">
        
        <form:select path="niveau" name="niveau" id="niveau">
           <form:option path="niveau" value="facile">Facile</form:option>
           <form:option path="niveau" value="moyen">Moyen</form:option>
           <form:option path="niveau" value="deficile">Deficile</form:option>
        </form:select>
		</div>
		
		
		
		<div class="filed">
          
          <form:input placeholder="Email de formateur " path="E_mail" type="email" id="email" name="email" />
		</div>
 			
 			<div class="filed">
            
          <form:input placeholder="Email de Etablisement " path="email" type="email" id="email" name="email" />
			</div>
			<div class="filed">
         <label for="description" class="details"></label>
         <form:textarea  placeholder="Description de formation" path="description" id="description" rows="15"></form:textarea>
		</div>
      	<div class="filed">
       <input class="submit" type="submit" />
    	</div>
    </form:form>
			
			
                        
                        
                </div>

 
            
            </div>
            
            
        </main>
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