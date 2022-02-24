<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	    <!-- contact section start -->

    <section class="contact" id="contact">
        <div class="max-width">
        	<c:if test="${sessionScope.User != null}">
					<h2 class="title">Contactez Etablissement</h2>
			</c:if>
			
			<c:if test="${sessionScope.User == null}">
					<h2 class="title">Autre Lien</h2>
			</c:if>
            
            <div class="contact-content">
                <div class="column left">
                    <div class="text">contacter nous</div>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos harum corporis fuga corrupti. Doloribus quis soluta nesciunt veritatis vitae nobis?</p>
                    <div class="icons">
                        <div class="row">
                            <i class="fas fa-user"></i>
                            <div class="info">
                                <div class="head">nom</div>
                                <div class="sub-title">admin admin</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="info">
                                <div class="head">Algeria</div>
                                <div class="sub-title">User, User</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-envelope"></i>
                            <div class="info">
                                <div class="head">Email</div>
                                <div class="sub-title">abc@gmail.com</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <c:if test="${sessionScope.User  !=  null}">
					<div class="column right">
                    <div class="text">Contactez Votre Etablissement</div>
                    <form id="sendEmailForm" method="post" action="sendEmail" >
                        <div class="fields">
                            <div class="field name">
                                <input type="text" placeholder="Nom" required>
                            </div>
                            <div class="field email">
                                <input id="receiverMail" type="text" name="mailTo" placeholder="Email" required>
                            </div>
                        </div>
                        <div class="field">
                            <input id="mailSubject" type="text" name="subject" placeholder="Sujet" required>
                        </div>
                        <div class="field textarea">
                            <textarea id="mailMessage" cols="30" rows="10" name="message" placeholder="Message.." required></textarea>
                        </div>
                        <div class="button">
                            <button id="sendEmailBtn" type="submit" value="Send Email">Send message</button>
                        </div>
                    </form>
                	</div>
	    		</c:if>
                
            </div>
        </div>
    </section>
</body>
</html>