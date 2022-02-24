
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

     
<!DOCTYPE html>
<html>
<head>
   <meta charset="ISO-8859-1">
    <title>Formulaire</title>
   <link href="<c:url value="/resources/css/user/userForm.css" />" rel="stylesheet">
   
</head>
<body>
<div class="container">
    <h2>Inscrire</h2>
    <div class="slide-controls">
        <input type="radio" name="slider" id="login" checked />
        <input type="radio" name="slider" id="signup" />
        <label for="login" class="slide login">Login</label>
        <label for="signup" class="slide signup">Signup</label>
        <div class="slide-tab"></div>
    </div>
<div class="inner">  
<form:form class="login" method="POST" action="/AddUser" modelAttribute="user">

<div  class="user-details">
 <div class="input-box">
<label for="nom" class="details">Nom :</label>
<form:input path="Nom" type="text" name="Nom" id="nom" required="required" autocomplete="off" minlength="3" maxlength="10" />
</div> 
<div class="input-box">
<label for="prenom" class="details">Prenom :</label>
<form:input path="Prenom" type="text" name="Prenom" id="prenom" required="required" autocomplete="off" minlength="4" maxlength="10" />
</div> 
<div class="input-box">
    <label for="Email" class="details">Email :</label>
    <form:input path="E_mail" type="email" name="Email" id="Email" required="required" autocomplete="off"  />
</div> 
<div class="input-box">
        <label for="Passwor" class="details">Password</label>
        <form:input path="Password" type="password" name="Password" id="Passwor" required="required" autocomplete="off" minlength="5" maxlength="8" />
</div> 

<div class="input-box">
        <label for="Tel" class="details">Tel :</label>
        <form:input path="Tel" type="tel" name="Tel" id="Tel" required="required" autocomplete="off" minlength="10" maxlength="10" />
         <p id="demo1"></p>
</div> 

<div class="input-box">
<label for="inscrire" class="details">Inscrire comme :</label>
<form:select path="T_inscrire" name="inscrire" id="inscrire" required="required" autocomplete="off"  >
   <form:option path="T_inscrire" value="">--</form:option>
   <form:option path="T_inscrire" value="Apprenant"  class="inscrire_app" >Apprenant</form:option>
   <form:option path="T_inscrire" value="Formateur" id="inscrire_for" >Formateur</form:option>
</form:select>
</div> 

<div class="input-box">
<label for="gender" class="details">Gender :</label>
<form:select path="Gender" name="gender" id="gender" required="required" autocomplete="off" >
   <form:option path="Gender" value="">--</form:option>
   <form:option path="Gender" value="Male">Male</form:option>
   <form:option path="Gender" value="Female">Female</form:option>
</form:select>
</div> 



<div class="input-box_f">
    <label for="file" class="details">upload:</label>
    <input path="file" type="file" name="file" value ="Upload CV" placeholder="Upload CV"  id="File"  />
</div> 


<div class="button">
    <input type="submit" value="valid" />
</div>

<div class="button">
    <a href="/">Annuler</a>
</div>
</div>

</form:form>
</div> 
<div class="container2">
    <form:form class="signup" method="POST" action="/signup" modelAttribute="user">
        <div class="input-box">
            <label for="Email" class="details">Email :</label>
            <form:input path="E_mail" type="email" name="Email" id="Email" required="required" autocomplete="off" />
        </div> 
        <div class="input-box">
                <label for="Passwor" class="details">Password</label>
                <form:input path="Password" type="password" name="Password" id="Passwor" required="required" autocomplete="off" />
        </div> 
        <div class="buttn">
            <input type="submit" value="valid" required="required" />
            <a href="/">Annuler</a>
        </div>
        
        
    </form:form>
    </div>

</div>

<script>
    const loginform = document.querySelector("form.login");
    const signupform = document.querySelector("form.signup");
    const loginbtn = document.querySelector("label.login");
    const signupbtn = document.querySelector("label.signup");
    const innerbtn = document.querySelector("div.inner");
    const contform = document.querySelector("div.container2");
    const contform0 = document.querySelector("div.container");
    const inscFor = document.getElementById("inscrire");
    const file_show = document.querySelector("div.input-box_f");
    const botton = document.querySelector("div.button");
    const cart_num = document.querySelector("div.input-box_N");
    const bfunc = document.getElementById("funct");
    
    loginbtn.onclick = (()=>{
        innerbtn.style.marginLeft = "-120%";
        contform.style.display ="block";
        contform.style.marginRight = "113px";
        innerbtn.style.display="none";
        contform0.style.maxWidth= "404px";
        contform.style.width= "111%";
        contform.style.marginLeft ="-10px";
    });
    signupbtn.onclick = (()=>{
        
        contform.style.marginRight = "-430px";
        contform.style.display="none";
        innerbtn.style.display="block";
        innerbtn.style.marginLeft = "0%";
        contform0.style.maxWidth= "700px";
        contform.style.width= "64%";
        contform.style.marginLeft ="146px";
        
    });
    inscFor.addEventListener ('change', function() {
        var index =  inscFor.options[inscFor.selectedIndex].value;
        if(index == "Formateur"){
        file_show.style.display="block";
        botton.style.marginLeft="254px";
        cart_num.style.display="none"; 
        }else{
            if(index == "Apprenant"){
        //file_show.style.display="none";
        //botton.style.marginLeft="254px";
        //cart_num.style.display="block"; 
            	 file_show.style.display="none";
                 botton.style.marginLeft="1px";
                 cart_num.style.display="none"; 
        }else{
        file_show.style.display="none";
        botton.style.marginLeft="1px";
        cart_num.style.display="none"; 
        }}
    });
    
   
</script>
</body>

</html>