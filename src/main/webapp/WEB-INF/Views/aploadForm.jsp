<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   
   <h3>Welcome, Enter The User Details</h3>
	<form:form method="POST" action="/addUser" modelAttribute="user" enctype="multipart/form-data">
		<table>
			<tr>
				<td><form:label path="Nom">Name</form:label></td>
				<td><form:input  type="text" path="Nom"/></td>
			</tr>
			
			<tr>
				<td><form:label path="E_mail">Email</form:label></td>
				<td><form:input  type="text" path="E_mail"/></td>
			</tr>
			
			<tr>
				<td><form:label path="Password">PassWord</form:label></td>
				<td><form:input  type="password" path="Password"/></td>
			</tr>
			
			<tr><form:input path="profileImage" type="file"/></tr> 
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>
	
</body>
</html>