<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/user/paymentForm.css" />" rel="stylesheet">
</head>
<body>
	 <div class="container">
        <div class="form">

            <h2>Mode De Payment</h2>
                <div class="payment">
                <img  src="/resources/images/Visacard.jpg">
                <img  src="/resources/images/PayPal-Logo.jpg">
                </div>

            <div class="filed">
                
                <label for="Nom">Nom Sur Carte</label>
                <input type="text" name="Nom" id="nom">
 
            </div>

            <div class="filed pass">
                <div>
                    <label for="Numéro">Numéro Sur Carte</label>
                    <input type="password" name="Nom" id="nom">
                </div>

                <div>
                    <label for="CCV">CCV</label>
                    <input type="password" name="Nom" id="nom">
                </div>
            </div>

            <div class="filed">
                <div>
                    <label for="Date">Date d'expiration</label>
                    <input type="date" name="date" id="date">
                </div>
  
            </div>

            <div class="footer">
                <a href="/">Anuller</a>
                <input class="submit" type="submit" name="date" id="date">
            
            </div>
        </div>
    </div>
</body>
</html>