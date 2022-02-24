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
        <h1>Sign up</h1>
        <form:form method="POST" action="/addUserInDB" modelAttribute="user">
		
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="name"/>
				<span></span>
                <form:label path="name">User Name</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="email"/>
				<span></span>
                <form:label path="email">User Name</form:label>
            </div>

            <div class="txt-fieled">
				<form:input required="required"  type="password" path="pass"/>
				<span></span>
                <form:label path="pass">Password</form:label>
            </div>
            
			<input class="submit" type="submit" name="submit" value="Login" />
           
	</form:form>
	</div>
</body>
</html>