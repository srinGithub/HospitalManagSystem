<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Success</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="w3-container w3-pale-red">
	<div align="center" class="w3-responsive">
		<h4>Patients details</h4>
		<table border=1
			class="w3-table-all w3-table w3-striped w3-bordered w3-border w3-hoverable">
			<tr class="w3-red">
				<th>Patient Id</th>
				<th>Patient FirstName</th>
				<th>Patient LastName</th>
				<th>Patient Dob</th>
				<th>Patient email</th>
				<th>Contact Number</th>
				<th>State</th>
				<th>Insurance Plan</th>
				<th>Patient History</th>
				<th>Add diagnosis details</th>
			</tr>
			<c:forEach items="${patientlist}" var="patient">
				<tr>
					<td>${patient.patientid}</td>
					<td>${patient.patientfirstname}</td>
					<td>${patient.lastname}</td>
					<td>${patient.email}</td>
					<td>${patient.dob}</td>
					<td>${patient.contactnumber}</td>
					<td>${patient.state}</td>
					<td>${patient.insuranceplan}</td>
					<td><a href="<c:url value='/history/${patient.patientid}'/>">View
							History </a></td>
					<td><a
						href="<c:url value='/addDiagnosisDetails/${patient.patientid}'/>">Add
							Diagnosis </a></td>
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