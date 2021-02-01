<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Physicians list</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.background {
	background-color: lightblue;
}
</style>
</head>
<body class="background">
	<div align="center" class="w3-responsive">
		<h1 class="w3-container">Physician list</h1>
		<table border=1 class="w3-table-all"
			class="w3-table w3-striped w3-border">
			<tr class="w3-red">
				<th>Physician Id</th>
				<th>Physician FirstName</th>
				<th>Physician LastName</th>
				<th>Department</th>
				<th>Education Qualification</th>
				<th>Years Of Experiance</th>
				<th>State</th>
				<th>Insurance Plan</th>
			</tr>
			<c:forEach items="${physicianlist}" var="physician">
				<tr>
					<td>${physician.physicianid}</td>
					<td>${physician.physicianfirstname}</td>
					<td>${physician.physicianlastname}</td>
					<td>${physician.department}</td>
					<td>${physician.educationqualification}</td>
					<td>${physician.yearsofexperiance}</td>
					<td>${physician.state}</td>
					<td>${physician.insuranceplan}</td>
				</tr>
			</c:forEach>
		</table>
		<br />
		<h1 class="w3-hover-text-red">
			<a href="<c:url value='/home'/>"><i class="fa fa-home"></i></a>
		</h1>
	</div>
</body>
</html>