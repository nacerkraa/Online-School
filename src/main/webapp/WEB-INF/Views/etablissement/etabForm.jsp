<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/etab/etabForm.css" />" rel="stylesheet">
</head>
<body>
	<div class="center">
        <h1>login etablissement</h1>
        <form:form method="POST" action="/addEtab" modelAttribute="etablissement">
		
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="nom"/>
				<span></span>
                <form:label path="nom">nom de ecole</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="email"  type="email" path="email"/>
				<span></span>
                <form:label path="email">email</form:label>
            </div>
            
            
            <div class="txt-fieled">
				<form:input required="required"  type="password" path="pass"/>
				<span></span>
                <form:label path="pass">mot passe</form:label>
            </div>
            
            
            
            
			<input class="submit" type="submit" name="submit" value="Login" />
			<a href="/" class="submit">Annuler</a>
            <span>You dount have a count ?</span><a href="/singup">create a count</a>
			</form:form>
	
	</div>
</body>
</html>