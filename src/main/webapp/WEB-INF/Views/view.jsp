<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet"> 
    <link href="<c:url value="/resources/css/line-awesome.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	
<style type="text/css">
	.home{
	
    background: #f8f8f8;
    
}

.navbar{
    padding: 15px 0;
    background-color: var(--main);
}

.navbar .logo a span{
    color: #fff;
}

.card{
	margin-top:170px;
    color:#8a6d3b;
    background-color: #fcf8e3;
    width: 800px;
    border: 2px solid #faebcc;
    text-align: center;
    font-family: sans-serif;
    margin: auto;
    border-radius: 5px;
    padding:20px;
}
</style>
</head>
<body>

<br/>
	<!--  navbar start -->
	<%@include file="layaout/navbar.jsp" %>
	<!--  navbar end -->
	<section class="home" id="home">
        <div class="max-width">
            
        <div class="card">
	    <h3>Seccufully</h3>
    	<p>${messageObj}</p>
    	</div>

    
               
            
        </div>
    </section>
	<!-- Home section start -->
	
</html>