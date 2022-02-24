<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
color:#fff;
}
</style>
</head>
<body>
	    <div align="center">
	<h3>Update Product</h3>
	<s:form method="post" commandName="user"
		action="${pageContext.request.contextPath}/editsave">
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>nom</td>
				<td>
					<s:input path="Nom"/>
				</td>
			</tr>
			
			<tr>
				<td>Prenom</td>
				<td>
					<s:input path="Prenom"/>
				</td>
			</tr>
			
			<tr>
				<td>E_mail</td>
				<td>
					<s:input path="E_mail"/>
				</td>
			</tr>
			
			
			
			<tr>
				<td>Password</td>
				<td>
					<s:input path="Password"/>
				</td>
			</tr>
			
			
			<tr>
				<td>Telephone : </td>
				<td>
					<s:input path="Tel"/>
				</td>
			</tr>
			<tr>
				<td>Etablissement : </td>
				<td>
					<s:input path="Etab"/>
				</td>
			</tr>

			<tr>
				<td>Formation</td>
				<td>
					<s:input path="Form"/>
				</td>
			</tr>
			
			<tr>
				<td>Type</td>
				<td>
					<s:input path="T_inscrire"/>
				</td>
			</tr>
			
			<tr>
				<td>Gender :</td>
				<td>
					<s:input path="Gender"/>
				</td>
			</tr>
			
			

			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="submit" value="Save"/>
				</td>
			</tr>
		</table>
	</s:form>
    </div>
</body>
</html>