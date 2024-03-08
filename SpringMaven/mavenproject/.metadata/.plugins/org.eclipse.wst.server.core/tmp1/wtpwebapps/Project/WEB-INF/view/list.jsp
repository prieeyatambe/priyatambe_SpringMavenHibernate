<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style type="text/css">
body {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	align-content: center;
	margin-left: 25px;
	margin-top: 25px;
}

a {
	font-size: 20px;
	text-decoration: none;
	margin-bottom: 30px;
	margin-top: 40px;
}

table {
	width: 90%;
	padding: 10px;
	border-collapse: collapse;
	font-size: 18px;
	margin-top: 30px;
}

th, tr {
	text-align: center;
	padding: 9px;
}

th {
	background-color: black;
	color: white;
}

td {
	background-color: whitesmoke;
	padding: 9px;
}

.link-button {
	background-color: whitesmoke;
	padding: 5px;
	color: teal;
	border: 5px outset teal;
	border-radius: 5px;
	font-weight: bold;
}
.link-button:hover{
	background-color: teal;
	color: whitesmoke;
	
}
.btn-delete {
	background-color: crimson;
	width: 70px;
	border: 2px solid crimson;
	border-radius: 5px;
	color: white;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 17px;
}
.btn-delete:hover{
	background-color: white;
	color: crimson;
}

.btn-update {
	background-color: green;
	width: 70px;
	border: 2px solid green;
	border-radius: 5px;
	color: white;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 17px;
}
.btn-update:hover{
	background-color: white;
	color: green;
}
.fetch{
	background-color: green;
	width: 70px;
	border: 2px solid blue;
	border-radius: 5px;
	color: white;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 17px;
}
.fetch:hover{
	background-color: white;
	color: blue;
}
.fetch-emp {
	margin-top: 20px;
}
</style>
</head>
<body>

	<a href="addEmp" class="link-button">Add Employee</a>
	<br>

	<div class="fetch-emp">
		<form action="fetchEmp" method="get">
			<label for="employeeId">Enter Employee ID:</label> <input type="text"
				id="employeeId" name="id"> <input type="submit"
				value="Fetch" class="fetch">
		</form>
	</div>
	<hr>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Employee Name</th>
			<th>Employee Address</th>
			<th>Employee Phone No.</th>
			<th>Employee Salary</th>
			<th colspan="2">Action</th>
		</tr>
		<c:forEach items="${emplist}" var="employee">
			<tr>
				<td>${employee.id}</td>
				<td>${employee.employeeName}</td>
				<td>${employee.employeeAddress}</td>
				<td>${employee.employeePhone}</td>
				<td>${employee.employeeSalary}</td>
				<td>
					<form action="update" method="get">
						<input type="hidden" name="id" value="${employee.id}"> <input
							type="submit" value="Update" class="btn-update">
					</form>
				</td>
				<td>
					<form action="delete" method="get">
						<input type="hidden" name="id" value="${employee.id}"> <input
							type="submit" value="Delete" class="btn-delete">
					</form>
				</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>