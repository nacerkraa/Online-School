<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brand</title>
    <link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/owl.carousel.min.css" />" rel="stylesheet"> 
    <link href="<c:url value="/resources/css/line-awesome.css" />" rel="stylesheet"> 
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
	
	<!--  navbar start -->
	<%@include file="layaout/navbar.jsp" %>
	<!--  navbar end -->
	
	<!-- Home section start -->
    <section class="home" id="home">
        <div class="max-width">
            
                <div class="home-content">
                    <div class="text-1">Bienvenue,dans</div>
                    <div class="text-2">L'ÉCOLE DU FORMATION</div>
                    <div class="text-3">Vous trouverez ici : <span class="typing"></span> </div>
                    <a href="#formation">commencez maintenant</a>
                </div>
    
               
            
        </div>
    </section>
    
    <!-- about section start -->
    <section class="about" id="about">
        <div class="max-width">
            <h1 class="title">À propos de nous</h1>
            <div class="about-content">
                <div class="column left">
                <img src='<c:url value="/resources/images/formation-dz.png"></c:url>' /> 
                    
                </div>

                <div class="column right">
                   <div class="text">Nous Sommes FORMATION-DZ Nous Sommes  <span>Ecole Du Formation</span></div>
                   <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo facilis earum vitae libero enim, ex adipisci quibusdam nihil, debitis, impedit ipsam vel aspernatur. Molestias consectetur inventore odit aperiam soluta voluptas temporibus! Aliquam itaque omnis culpa cupiditate fuga! Sapiente quod neque labore unde? Nam eaque saepe consectetur recusandae quam incidunt ea, illum commodi ullam? Iste, id. Dolor placeat beatae amet eos!</p>
                   <!-- <a href="#">Contect Us</a> -->
                </div>
            </div>
        </div>
    </section>

   <!--  les offres des formation -->
   
	<section class="formation" id="formation">
		
			<h2 class="title">Les formation </h2>
			
   			
				
			
				<div class="cards-grid">
					<div class="max-width">  
				 		
						<c:if test="${sessionScope.User == null}">
	  					<div class="owl-carousel owl-theme">
						   	<c:forEach var="formation" items="${list1}">
						   	
							   
							   <div class="item card">
							   
								   	<a href="/Login">
									   	<div class="header">${formation.name}</div>
									   	<div>${formation.description}</div>
									   	<div>${formation.niveau}</div>
								   	</a>
						   		</div>
							   	
							   	 
						   	</c:forEach>
						   	
					   	</div>
	    		</c:if>
	    		
	    		<c:if test="${sessionScope.User != null}">
	  					<div class="owl-carousel owl-theme">
						   	<c:forEach var="formation" items="${list1}">
						   	
							   
							   <div class="item card">
							   
								   	<a href="/payment">
									   	<div class="header">${formation.name}</div>
									   	<div>${formation.description}</div>
									   	<div>${formation.niveau}</div>
								   	</a>
						   		</div>
							   	
							   	 
						   	</c:forEach>
						   	
					   	</div>
	    		</c:if>
						
					   
					</div>
				</div>
			
			
			
	</section>
	
	<!-- les offres d'emploi section start -->
 <section class="offres" id="offres">
        <div class="max-width">
            <h2 class="title">Offers D'emploi</h2>
            
    		
            <div class="offres-content">
                

                <div class="column right">
                
                   <c:forEach items="${listE}" var="listE">
                   
                   <a href="/Login">
					<div class="offre-card">
	                      <div class="head-card">
	                           <span class="calnder"><i class="far fa-calendar-alt"></i><span> ${listE.getDate_deb()} jusqua ${listE.getDate_fin()}</span></span>
	                           <span class="type-offre">${listE.getType_emp()}</span>
	                       </div>
	                       <div class="offre-desc">${listE.getDescription()}</div>
	                       <div class="footer-card">
	                           <span class="ecole-profile">Salary: ${listE.getSalary()}DA</span>
	                           <span class="position"><i class="fas fa-map-marker-alt"> </i><span>Alger center 16rue ,block 8</span></span>
	                        </div>
	                </div>
	               </a>
					</c:forEach>
                    
                  <!--  <div class="load-more"><a href="#"><span>Load more </span><i class="fas fa-long-arrow-alt-right"></i></a></div> --> 
                    

                    
                </div>
            </div>
        </div>
    </section>
    
    <!--<c:forEach items="${listE}" var="listE">
					<div class="offre-card">
	                      <div class="head-card">
	                           <span class="calnder"><i class="far fa-calendar-alt"></i><span> ${listE.getDate_deb()} jusqua ${listE.getDate_fin()}</span></span>
	                           <span class="type-offre">${listE.getType_emp()}</span>
	                       </div>
	                       <div class="offre-desc">${listE.getDescription()}</div>
	                       <div class="footer-card">
	                           <span class="ecole-profile">Dev Tech</span>
	                           <span class="position"><i class="fas fa-map-marker-alt"> </i><span>Salary: ${listE.getSalary()}</span></span>
	                        </div>
	                     </div>
					</c:forEach>-->
    
     <!-- Les Ecoles section start -->
    <section class="ecoles" id="ecoles">
        <div class="max-width">
            <h2 class="title">Les Ecoles </h2>
            
            <div class="carousel owl-carousel owl-theme">
            
            <c:forEach var="etablissement" items="${list2}">
						   	
							   
							   <div class="item card">
							   		
								   		<a href="/Login">
								   			<div class=" box">
								   		
										   		<div class="head">
				                               		<div class=".text">${etablissement.nom}</div>
				                               </div>
				                               <div class="content">
				                               		<div>${etablissement.desc}</div>
												   	<div class="posistion">${etablissement.adress}</div>
												   <div class="email">${etablissement.email}</div>
											   </div>
								   			</div>
								   		</a>
								   
						   		</div>
							   	
							   	 
						   	</c:forEach>
                

                

               

                

                
            </div>
        </div>
    </section>

	
	<!--  contact start -->
	<%@include file="layaout/contact.jsp" %>
	<!--  contact end -->
	
	<!--  footer start -->
	<%@include file="layaout/footer.jsp" %>
	<!--  footer end -->
	
	<script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/typed.min.js" />"></script>
    <script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
    <script src="<c:url value="/resources/js/owl.carousel.js"/>"></script>
	<script src="<c:url value="/resources/js/script.js" />"></script>
</body>
</html>