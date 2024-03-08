<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
div {
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 20px;
	border: 5px solid olive;
	width: 40%;
	padding: 10px;
}

button {
	background-color: crimson;
	width: 70px;
	border: 2px solid crimson;
	border-radius: 5px;
	font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande',
		'Lucida Sans', Arial, sans-serif;
	font-size: 19px;
	text-decoration: none;
	margin: 15px;
}

h3 {
	font-weight: lighter;
	padding-left: 15px;
}

a {
	text-decoration: none;
	color: white;
}
</style>
</head>
<body>
	<div>
		<form:form action="fetchemp" modelAttribute="employee" method="get">
			<h3 style="text-align: center; color: blue;">Employee Details</h3>
			<h3>Id:${employee.id}</h3>
			<h3>Name:${employee.employeeName}</h3>
			<h3>Address:${employee.employeeAddress}</h3>
			<h3>Phone No:${employee.employeePhone}</h3>
			<h3>Salary:${employee.employeeSalary}</h3>
		</form:form>
	</div>
	<button>
		<a href="list">Back</a>
	</button>
</body>
</html>