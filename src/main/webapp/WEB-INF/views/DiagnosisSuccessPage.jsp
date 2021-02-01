<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis Success</title>
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
<body>
	<div align="center" class="w3-responsive">
		<h4>Patient Diagnosis details</h4>
		<table border=1
			class="w3-table-all w3-table w3-striped w3-bordered w3-border w3-hoverable">
			<tr class="w3-pink">
				<th>Patient_Id</th>
				<th>Diagnosis_Id</th>
				<th>Symptoms</th>
				<th>dDiagnosis Provided</th>
				<th>physician Id</th>
				<th>Date Of Diagnosis</th>
				<th>Follow Up</th>
				<th>Follow Update</th>
				<th>Bill Amount</th>
				<th>Cardnumber</th>
				<th>Payment Mode</th>
			</tr>
			<c:forEach items="${diagnosisSuccess}" var="details">
				<tr>
					<td>${details.patient_id}</td>
					<td>${details.diagnosis_id}</td>
					<td>${details.sympotms}</td>
					<td>${details.diagnosisprovided}</td>
					<td>${details.physician_id}</td>
					<td>${details.dateofdiagnosis}</td>
					<td>${details.followup}</td>
					<td>${details.followupdate}</td>
					<td>${details.billamount}</td>
					<td>${details.cardnumber}</td>
					<td>${details.paymentmode}</td>
			</c:forEach>
		</table>
		<br />
		<h1 class="w3-hover-text-red">
			<a href="<c:url value='/home'/>"><i class="fa fa-home"></i></a>
		</h1>
	</div>
</body>
</html>