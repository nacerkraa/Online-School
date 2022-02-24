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
        <h1>ajouter Offre D'emploi</h1>
        <form:form method="POST" action="/AddOffrebInDB" modelAttribute="offre">
		
           

            <div class="txt-fieled">
				<form:input required="required"  type="text" path="idEtab"/>
				<span></span>
                <form:label path="idEtab">idEtab</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="text" path="nom"/>
				<span></span>
                <form:label path="nom">nom Offre</form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="date" path="date_deb"/>
				<span></span>
                <form:label path="date_deb"></form:label>
            </div>
            
            <div class="txt-fieled">
				<form:input required="required"  type="date" path="date_fin"/>
				<span></span>
                <form:label path="date_fin"></form:label>
            </div>
            
            
			<input class="submit" type="submit" name="submit" value="Ajouter" />
            
	</form:form>
	
	</div>
</body>
</html>