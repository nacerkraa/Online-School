<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/etab/etabForm.css" />" rel="stylesheet"></head>
<body>
	<div class="center">
        <h1>Etablissement</h1>
        <form:form method="POST" action="/AddEtabInDB" modelAttribute="etablissement">
			
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="nom"/>
				<span></span>
                <form:label path="nom">nom ecole</form:label>
            </div>
            
           

            <div class="txt-fieled">
				<form:input required="required"  type="email" path="email"/>
				<span></span>
                <form:label path="email">email</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="password" path="pass"/>
				<span></span>
                <form:label path="pass">password</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="adress" path="adress"/>
				<span></span>
                <form:label path="adress">adress</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="desc"/>
				<span></span>
				
                <form:label path="desc">desciption</form:label>
            </div>
            
            
			<input class="submit" type="submit" name="submit" value="Sign Up" />
			<a href="/" class="submit">Annuler</a>
            <span>You have a count ?</span><a href="/etab">Login</a>
	</form:form>
	
	</div>
</body>
</html>