<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View History</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.background {
	background-color: blue;
}
</style>
</head>
<body class="w3-container w3-pale-red" class="background">
	<div align="center" class="w3-responsive">
		<h4>Patients details</h4>
		<table border=1
			class="w3-table-all w3-table w3-striped w3-bordered w3-border w3-hoverable">
			<tr>
				<th>Patient Id</th>
				<th>Patient FirstName</th>
				<th>Patient LastName</th>
				<th>Patient Dob</th>
				<th>Patient email</th>
				<th>Contact Number</th>
				<th>State</th>
				<th>Insurance Plan</th>
			</tr>
			<tr>
				<td>${patientlist.patientid}</td>
				<td>${patientlist.patientfirstname}</td>
				<td>${patientlist.lastname}</td>
				<td>${patientlist.email}</td>
				<td>${patientlist.dob}</td>
				<td>${patientlist.contactnumber}</td>
				<td>${patientlist.state}</td>
				<td>${patientlist.insuranceplan}</td>
			</tr>
		</table>
		<h1 class="w3-hover-text-red">
			<a href="<c:url value='/home'/>"><i class="fa fa-home"></i></a>
		</h1>
	</div>

</body>
</html>