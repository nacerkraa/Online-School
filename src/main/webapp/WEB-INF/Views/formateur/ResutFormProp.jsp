<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped table-hover">
				<thead>
					<tr>
						
						<th>ID</th>
						<th>Name</th>
						<th>Niveau</th>
						<th>prix</th>
                        <th>description</th>
                      
                        <th>Action</th>
					</tr>
				</thead>
				<tbody>
				  <c:forEach items="${ls}" var="ls">
					<tr>
						
						<td>${ls.getId_formation()}</td>
						<td>${ls.getName()}</td>
						<td>${ls.getNiveau()}</td>
                        <td>${ls.getPrix()}</td>
                        <td>${ls.getDescription()}</td>
                      
						<td>
							<a href="valideform/${ls.getId_formation()}" class="edit" data-toggle="modal">valid</a>
							<a href="deleteform/${ls.getId_formation()}" class="delete" data-toggle="modal">supppremer</a>
						</td>
						
					</tr>
					</c:forEach>
				</tbody>	
			</table>
			
			
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						
						<th>E_mail</th>
						<th>ID</th>
                        
					</tr>
				</thead>
				<tbody>
				  <c:forEach items="${tl}" var="tl">
					<tr>
						<td>${tl.getE_mail_formateur()}</td>
						<td>${tl.getId_formation()}</td>
	
					</tr>
					</c:forEach>
				</tbody>	
			</table>
			

</body>
</html>