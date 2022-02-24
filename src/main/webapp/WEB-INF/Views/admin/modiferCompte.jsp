<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>modifer votre compte</title>
<link href="<c:url value="/resources/css/admin/adminForm.css" />" rel="stylesheet">

</head>
<body>

    
    <div class="center">
        <h1>modifer Compte</h1>
        
		<form:form method="post" commandName="admin"
		action="${pageContext.request.contextPath}/editsaveAdmin">
		
		<table>
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="nom"/>
				<span></span>
                <form:label path="nom">Name</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="prenom"/>
				<span></span>
                <form:label path="prenom">prenom</form:label>
            </div>
            
            
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="motpasse"/>
				<span></span>
                <form:label path="motpasse">motpasse</form:label>
            </div>
            
           

            <div class="txt-fieled">
				<form:input required="required"  type="email" path="email"/>
				<span></span>
                <form:label path="motpasse">Password</form:label>
            </div>
            
			<input class="submit" type="submit" name="save" value="save" />
            
	</form:form>
	</div>
</body>
</html>