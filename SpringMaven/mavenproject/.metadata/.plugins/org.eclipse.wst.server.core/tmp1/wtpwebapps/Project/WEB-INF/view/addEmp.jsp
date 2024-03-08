<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>
<style type="text/css">
.main {
	border: 5px double black;
	border-radius: 9px;
	width: 500px;
	padding: 25px;
	margin: 150px 400px 150px 500px;
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
	width: 500px;
}

input[placeholder] {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 18px;
	height: 30px;
	width: 450px;
	margin-top: 5px;
}

.btn-submit {
	background-color: buttonface;
	width: 70px;
	border: 2px solid black;
	border-radius: 5px;
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 20px;
}

.btn-reset {
	background-color: buttonface;
	width: 70px;
	border: 2px solid black;
	border-radius: 5px;
	color: black;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 20px;
}
.btn-reset:hover,.btn-submit:hover{
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
		<form:form action="add" method="post" modelAttribute="employee">
			<div class="form-style">
				Employee Name:<br>
				<form:input path="employeeName" placeholder="Enter Name" />
			</div>
			<div class="form-style">
				Employee Address:<br>
				<form:input path="employeeAddress" placeholder="Enter Address" />
			</div>
			<div class="form-style">
				Employee Phone:<br>
				<form:input path="employeePhone" placeholder="Enter Phone No." />
			</div>
			<div class="form-style">
				Employee Salary:<br>
				<form:input path="employeeSalary" placeholder="Enter Salary" />
			</div>
			<div class="form-style">
				<input type="submit" value="Save" class="btn-submit"> &ensp;
				&ensp; &ensp; <input type="reset" value="Reset" class="btn-reset">
			</div>

		</form:form>
	</div>
</body>
</html>