<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/admin/adminForm.css" />" rel="stylesheet">
</head>
<body>
	<div class="center">
        <h1>login admin</h1>
        <form:form method="POST" action="/addAdmin" modelAttribute="admin">
		
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="nom"/>
				<span></span>
                <form:label path="nom">Name</form:label>
            </div>
            
           

            <div class="txt-fieled">
				<form:input required="required"  type="password" path="motpasse"/>
				<span></span>
                <form:label path="motpasse">Password</form:label>
            </div>
            
			<input class="submit" type="submit" name="submit" value="Login" />
            
	</form:form>
	</div>
</body>
</html>