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
                    <div class="text">Contactez </div>
                    <form id="sendEmailForm" method="post" action="sendEmail" >
                        <div class="fields">
                            
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
                        	<a href="/list">Anuller</a>
                            <button id="sendEmailBtn" type="submit" value="Send Email">Send message</button>
                        </div>
                        
                        
                    </form>
                	</div>
	    		
                
            </div>
        </div>
    </section>
	</body>
</html>