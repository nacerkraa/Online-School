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
   
   <!--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css"> --> 
   <link href="<c:url value="/resources/css/line-awesome.min.css" />" rel="stylesheet">
   
    <link href="<c:url value="/resources/css/morris.css" />" rel="stylesheet">
    
    <link href="<c:url value="/resources/css/admin/style.css" />" rel="stylesheet">
</head>
<body>

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
                    <a href="/listetab" class="chiox">
                        <span class="la la-check-circle"></span>
                        <span>Gere les inscription</span>
                    </a>
                </li>

                <li>
                    <a href="#" class="chiox  active">
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
                <input type="search" placeholder="Inter keyword">
            </div>
            <div class="head-icons">
                <a href="/listetab" ><span class="las la-bell"><c:if test="${nombreEcolesNonValide!=0}"><span class="notification">${nombreEcolesNonValide}</span></c:if></span></a>
                <span class="Profile"><i class="las la-user"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="editAdmin/${sessionScope.nom}">modifier compte</a></li>
                <li><a href="/LogoutAdmin">desinscrire</a></li>
            </div>
        </header>


        <main>
            <div class="cards">
                <div class="card">
                    <div class="card-icon follow">
                        <span class="las la-users"></span>
                    </div>
                    <div class="card-info">
                        <h2>${nombreApprenant}</h2>
                        <small>Total Apprennant</small>
                    </div>

                <!--   <div class="card-images">
                        <div style="background-image: url(img/1.jpeg);"></div>
                        <div style="background-image: url(img/2.jpeg);"></div>
                        <div style="background-image: url(img/3.jpeg);"></div>
                        <div style="background-image: url(img/4.jpeg);"></div>
                        <div style="background-image: url(img/5.jpeg);"></div>
                    </div> -->  
                </div>

                <div class="card">
                    <div class="card-icon ecoles">
                        <span class="las la-university"></span>
                    </div>
                    <div class="card-info">
                        <h2>${totalEcoles}</h2>
                        <small>Total Ecoles</small>
                    </div>

                   <!--   <div class="card-images">
                        <div style="background-image: url(img/1.jpeg);"></div>
                        <div style="background-image: url(img/2.jpeg);"></div>
                        <div style="background-image: url(img/3.jpeg);"></div>
                        <div style="background-image: url(img/4.jpeg);"></div>
                        <div style="background-image: url(img/5.jpeg);"></div>
                    </div> --> 
                </div>

                <div class="card">
                    <div class="card-icon formateur">
                        <span class="las la-chalkboard-teacher"></span>
                    </div>
                    <div class="card-info">
                        <h2>${nombreFormateur}</h2>
                        <small>Total Formateur</small>
                    </div>

				<!--   <div class="card-images">
                        <div style="background-image: url(img/1.jpeg);"></div>
                        <div style="background-image: url(img/2.jpeg);"></div>
                        <div style="background-image: url(img/3.jpeg);"></div>
                        <div style="background-image: url(img/4.jpeg);"></div>
                        <div style="background-image: url(img/5.jpeg);"></div>
                    </div> --> 
                </div>

                
            </div>

            <div class="chart-grid">
                <div class="chat-follow">
                    <div class="chart-head">
                        <h2>les Apprenant</h2>
                        <span class="las la-cog"></span>
                    </div>
                    <div id="myfirstchart" style="height: 350px;"></div>
                </div>

                <div class="chart-sales">
                    <div class="chart-head">
                        <h2>Statistiques General</h2>
                        <span class="las la-ellipsis-"></span>
                    </div>
                    <div id="donut-example" style="height: 350px;"></div>
                </div>
                <div id="bar-example" style="height: 350px;"></div>
            </div>
        </main>
    </div>
    <label class="close-mobile-menu" for="menu-toggle"></label>
    
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
    <script src="<c:url value="/resources/js/raphael-min.js" />"></script>
   <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>-->
    
    <script src="<c:url value="/resources/js/morris.js" />"></script>
    <script src="<c:url value="/resources/js/admin/script.js" />"></script>
    <script type="text/javascript">
    Morris.Donut({
        element: 'donut-example',
        data: [
        {label: "Nombre des Ecoles", value: ${totalEcoles}},
        {label: "Nombre des Apprenant", value: ${nombreApprenant}},
        {label: "Nombre des Formateur", value: ${nombreFormateur}}
        ],colors:['#ffb606','#0072f2','#f42a26'],
        labelColor: '#ffffff'
        
      });
    </script>
</body>
</html>