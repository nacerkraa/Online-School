<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
    <head>
      <meta charset="ISO-8859-1">
<title>Insert title here</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="OffresEmploi.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <script src="https://kit.fontawesome.com/479d8482d2.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
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
<style>

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
</style>


    </head>



    <body>
        
       
        
        
        
											<!--         Table               -->
        <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>Liste <b> Des Offres d'Emploi</b></h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Ajouter</span></a>
						<a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Supprimer</span></a>						
						<a href="#editEmployeeModal" class="btn btn-edit" data-toggle="modal"><i class="far fa-edit"></i> <span>Modifier</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>Id</th>
					<!--	<th>E_mail d'etablisement</th>  -->
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
</div>
</div>
</div>	
<!-- Add Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">						
					<h4 class="modal-title">Ajouter</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<form:form method="POST" action="/addemp" modelAttribute="emploi">
				
				<div class="modal-body">					
					<div class="form-group">
						<label>Id</label>
						<form:input path="id_offer" type="text" class="form-control" name="id" required="required" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>E_mail d'etablisement</label>
						<form:input path="Email_etab" type="text" class="form-control" name="E_mail_d'etablisement" required="required" autocomplete="pff"  />
					</div>
					<div class="form-group">
						<label>Type d'omploi</label>
						<form:input path="Type_emp" type="text" class="form-control" name="Type_d'omploi" required="required" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>Description</label>
						<form:textarea path="Description" class="form-control" name="Description" required="required" autocomplete="pff" ></form:textarea>
					</div>
					<div class="form-group">
						<label>Date Debut</label>
						<form:input path="Date_deb" type="date" class="form-control" name="Date_Debut" required="required" autocomplete="pff" />
					</div>
					
					<div class="form-group">
						<label>Date Fin</label>
						<form:input path="Date_fin" type="date" class="form-control" name="Date Fin" required="required" autocomplete="pff" />
					</div>

					<div class="form-group">
						<label>Prix</label>
						<form:input path="Salary" type="text" class="form-control" name="Prix" required="required" autocomplete="pff" />
					</div>
					
					
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-success" value="Ajouter">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
				</div>
			</form:form>
		</div>
	</div>
</div>

<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">						
					<h4 class="modal-title">Supprimer</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
			<form:form method="POST" action="/delemp" modelAttribute="emploi">
				<div class="modal-body">
				<div class="form-group">
						<label>Id</label>
						<form:input path="id_offer" type="text" class="form-control" required="required" name="id" autocomplete="pff" />
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-danger" value="Suppremier" />
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel" />

				</div>
			</form:form>
		</div>
	</div>
</div>
        

<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form:form method="POST" action="/mdfemp" modelAttribute="emploi" >
				<div class="modal-header">						
					<h4 class="modal-title">Modifier</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Votre Id</label>
						<form:input path="id_offer" type="text" class="form-control" required="required" name="id" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>La nouvelle durée</label>
						<form:input path="Date_fin" type="date" class="form-control" required="required" name="date_f" autocomplete="pff" />
					</div>
					<div class="form-group">
						<label>Le nouveau prix</label>
						<form:input path="Salary" type="text" class="form-control" required="required" name="prix" autocomplete="pff" />
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


    </body>
</html>