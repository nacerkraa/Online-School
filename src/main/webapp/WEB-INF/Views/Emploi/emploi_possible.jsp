<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Offres d'emploi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/css/line-awesome.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/all.min.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/formateur/style.css" />" rel="stylesheet">
<style>

a:hover{
	text-decoration: none;
}

.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	
a.btn.btn-edit {
    background-color: orange;
}

.table2{
	border:1px solid red;
	
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	
}

.table2 th{
	
	width:70px;
}
</style>


    </head>



    <body>
    
    <label class="hide-dropdown" for="Toggle-dropdown"></label>
	
    <!-- start sidebar -->
    <div class="sidebar">
        <div class="brand">
            <span class="las la-graduation-cap"></span>
            <h3>Formation</h3>
        </div>
        <div class="sidemenu">
            
            <ul>
                <li>
                    <a href="#" class="chiox">
                        <span class="fas fa-chalkboard-teacher"></span>
                        <span>Formateur</span>
                    </a>
                </li>



                <li>
                    <a href="/listet" class="chiox">
                        <span class="la la-users"></span>
                        <span>Gerer les Condidats</span>
                    </a>
                </li>

                <li>
                	<a href="/listf" class="chiox">
                    
                        <span class="la la-chart-pie"></span>
                        <span>propose formation</span>
                    </a>
                </li>
                  <li>
                	<a href="#" class="chiox active">
                    
                        <span class="fab fa-creative-commons-by"></span>
                        <span>Les emploi possible</span>
                    </a>
                </li>
                
                

                

            </ul>
        </div>
    </div>


    <!-- start main content -->
    <div class="main-content">

        <header>
            <label for="" class="menu-toggler">
                <span class="las la-bars"></span>
            </label>
            <div class="search">
                <span class="las la-search"></span>
                <input type="search" id="myInput" class="search-item" placeholder="Inter keyword">
            </div>
            
            <div class="head-icons">
            
            	<span><a href="/proposeOffre"><i class="far fa-plus-square"></i></a></span>
            	<span><a href="/msgEmail"><i class="far fa-envelope"></i></a></span>
                <span class="las la-bell"></span>
                <span class="Profile"><i class="fas fa-user"></i>&nbsp;&nbsp;<i>${sessionScope.nom}</i></span>
            </div>
            
            <div class="dropDown">
            
                <li><a href="/modiferCompteFormateur">modifier compte</a></li>
                <li><a href="/Logout">desinscrire</a></li>
            </div>
        </header>


        <main>
        
        <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Liste <b> des emploi</b></h2>
					</div>
					<div class="col-sm-6">
								
						<a href="#editEmployeeModal" class="btn btn-edit" data-toggle="modal"><i class="far fa-edit"></i> <span>Dommander</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Type d'omploi</th>
						<th>Description</th>
						<th>Date Debut</th>
						<th>Date Fin</th>
						<th>Prix</th>
					</tr>
				</thead>
				<tbody>
					
						 <c:forEach items="${listE}" var="listE">
					<tr>
						
						<td>${listE.getId_offer()}</td>
						<td>${listE.getType_emp()}</td>
						<td>${listE.getDescription()}</td>
                        <td>${listE.getDate_deb()}</td>
                        <td>${listE.getDate_fin()}</td>
                        <td>${listE.getSalary()}</td>

						
					</tr>
					</c:forEach>
				</tbody>
	</table>
	<table class="table2">
				<thead>
					<tr>
						<th>Id </th>
						<th> E-mail d'établissement</th>
					</tr>
				</thead>
				<tbody>
					
						 <c:forEach items="${lism}" var="lis">
					<tr>
						
						<td>${lis.getId_offer()}</td>
						<td>${lis.getEmail_etab()}</td>
						
					</tr>
					</c:forEach>
				</tbody>
	</table>
</div>
</div>
</div>	


        

<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form:form method="POST" action="/dmnd" modelAttribute="emploi">
				<div class="modal-header">						
					<h4 class="modal-title">Dommander</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label> Id</label>
						<form:input path="id_offer" type="text" class="form-control" required="required" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>E-mail Formateur</label>
						<form:input path="Email_etab" type="text" class="form-control" required="required" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>E-mail Etablisement</label>
						<form:input path="Email_frm" class="form-control" required="required" autocomplete="pff" />
					</div>
					
									
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel" />
					<input type="submit" class="btn btn-info" value="Save" />
				</div>
			</form:form>
		</div>
	</div>
</div>
</main>
    </div>
    <label class="close-mobile-menu" for="menu-toggle"></label>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="<c:url value="/resources/js/jquery-3.5.1.min.js" />"></script>
    
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/479d8482d2.js" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
<script src="<c:url value="/resources/js/admin/script.js" />"></script>
    </body>
</html>