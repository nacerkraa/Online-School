<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <title>Spring MVC Email Example</title>
	    <link href="<c:url value="/resources/css/etab/sendEmailForm.css" />" rel="stylesheet">
	</head>

	<body>
	   <section class="contact" id="contact">
        <div class="max-width">
                
                
					<div class="column right">
                    <div class="text">modifier Compte </div>
                    <form id="sendEmailForm" method="post" action="sendEmail" >
                        <div class="fields">
                            
                            <div class="field email">
                                <input id="receiverMail" type="text" name="mailTo" placeholder="Nom" required>
                            </div>
                        </div>
                        <div class="field">
                            <input id="mailSubject" type="text" name="subject" placeholder="Prenom" required>
                        </div>
                        <div class="field">
                            <input id="mailSubject" type="text" name="subject" placeholder="Email" required>
                        </div>
                        <div class="field">
                            <input id="mailSubject" type="text" name="subject" placeholder="Password" required>
                        </div>
                        <div class="field">
                            <input id="mailSubject" type="text" name="subject" placeholder="Tel" required>
                        </div>
                        
                        
                        <div class="button">
                        	<a href="/listet">Anuller</a>
                            <button  type="submit" value="">Enregistrer</button>
                        </div>
                        
                        
                    </form>
                	</div>
	    		
                
            </div>
        </div>
    </section>
	</body>
</html>