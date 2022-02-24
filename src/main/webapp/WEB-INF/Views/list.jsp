<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

					<table>
                    
                        <thead>
                            <tr>
                            	 <td>id ecole</td>
                                <td>Name ecole</td>
                                <td>address</td>
                                <td>description</td>
                                <td>Action</td>
                            </tr>
                        </thead>
                        
                        <tbody>
                        <c:forEach var="etablissement" items="${list}">
                            <tr>
                            	<td>${etablissement.id}</td>
                               <td>${etablissement.nom}</td>
							   <td>${etablissement.adress}</td>
							   <td>${etablissement.desc}</td>
                                <td><span class="action ajuter"><a href="editItem/${etablissement.id}">Ajouter</a></span><span class="action suprimer"><a href="delete/${etablissement.id}">Suprimer</a></span></td>
                                
                            </tr>
                           
                            </c:forEach>
                        </tbody>
                        
                    </table>
</body>
</html>