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
<div class="tabs">
   
   <div class="tab1">
    <form:form id="form1" method="POST" action="/addform" modelAttribute="formation">
    <ol>
      <li>
        <label for="name_form" class="details">Nom de formation</label>
        <form:input path="name" type="text" name="name_form" id="name_form" />  
      </li>
      <li>
        <label for="niveau" class="details" >Niveau</label>
        <form:select path="niveau" name="niveau" id="niveau">
           <form:option path="niveau" value="facile">Facile</form:option>
           <form:option path="niveau" value="moyen">Moyen</form:option>
           <form:option path="niveau" value="deficile">Deficile</form:option>
        </form:select>
      </li>
      <li>
         <label for="description" class="details">Description</label>
         <form:textarea path="description" id="description" rows="4" cols="50"></form:textarea>
      </li>
      <li>
          <label for="email">E_mail de formateur</label>
          <form:input path="E_mail" type="email" id="email" name="email" />
        </li>
        <li>
            <label for="email">E_mail de Etablisement</label>
          <form:input path="email" type="email" id="email" name="email" />
        
        </li>
      
       <li><input type="submit" /></li>
    </ol>
    </form:form>
 
   
</div>

</body>
</html>