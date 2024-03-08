<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>
<style type="text/css">
.main {
	border: 5px double black;
	border-radius: 9px;
	width: 300px;
	padding: 25px;
	margin: 150px 500px 150px 580px;
}

.main:hover {
	background-color: #ccffff;
}

.form-style {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 20px;
	padding: 7px;
	margin: 5px;
	width: 350px;
}

form[input]{
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 20px;
	height: 20px;
	width: 250px;
	margin-top: 5px;
}

.btn-update {
	background-color: buttonface;
	width: 80px;
	border: 2px solid black;
	border-radius: 5px;
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 19px;
}
.btn-update:hover{
	background-color: purple;
	color: white;
}
input:hover {
	box-shadow: 2px 2px 2px 2px;
}
</style>
</head>
<body>
	<div class="main">
		<form:form action="updateEmp" method="post" modelAttribute="employee">
			<div class="form-style">
				<form:hidden path="id" />
			</div>
			<div class="form-style">
				Employee Name:<br>
				<form:input path="employeeName" />
			</div>
			<div class="form-style">
				Employee Address:<br>
				<form:input path="employeeAddress" />
			</div>
			<div class="form-style">
				Employee Phone:<br>
				<form:input path="employeePhone" />
			</div>
			<div class="form-style">
				Employee Salary:<br>
				<form:input path="employeeSalary" />
			</div>
			<div class="form-style">
				<input type="submit" value="Update" class="btn-update">
			</div>
		</form:form>
	</div>
</body>
</html>