<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.image {
	background-image:
		url("https://image.shutterstock.com/image-photo/female-doctor-stethoscope-writing-diagnosis-260nw-307780226.jpg");
	background-repeat: no-repeat;
	height: 600px;
	background-size: cover;
}
</style>
</head>
<body class="image">
	<div align="center" class="container mt-3">
		<h3>Diagnosis Form</h3>
		<c:url var="actionUrl" value="/saveDiagnosisDetails" />
		<form:form action="${actionUrl}" method="post"
			commandName="formOfDiagnosis" noValidate="novalidate">
			<table>
				<tr>
					<td>PatientId</td>
					<td><form:input class="w3-round" path="patient_id"
							value="${formOfDiagnosis.patient_id}" readonly="true" /><font
						color="red"><form:errors path="patient_id" /></font></td>
				</tr>
				<tr>
					<td>Symptoms</td>
					<td><form:input class="w3-round" path="sympotms" /><font
						color="red"><form:errors path="sympotms" /></font></td>
				</tr>
				<tr>
					<td>Diagnosis Provided</td>
					<td><form:input class="w3-round" path="diagnosisprovided" /><font
						color="red"><form:errors path="diagnosisprovided" /></font></td>
				</tr>
				<tr>
					<td>Physician Id</td>
					<td><form:select class="custom-select mb-3"
							path="physician_id">
							<form:option value="NONE" label="Select" />
							<form:options items="${physicianids}" />
						</form:select><font color="red"><form:errors path="physician_id" /></font></td>
				</tr>
				<tr>
					<td>Date Of Diagnosis</td>
					<td><form:input class="w3-round" type="date"
							path="dateofdiagnosis" /><font color="red"><form:errors
								path="dateofdiagnosis" /></font></td>
				</tr>
				<tr>
					<td>Follow Up</td>
					<td>Yes<form:radiobutton class="w3-radio" path="followup"
							value="yes" /> No<form:radiobutton class="w3-radio"
							path="followup" value="no" /><font color="red"><form:errors
								path="followup" /></font></td>
				</tr>
				<tr>
					<td>Follow Up Date</td>
					<td><form:input class="w3-round" type="date"
							path="followupdate" /><font color="red"><form:errors
								path="followupdate" /></font></td>
				</tr>
				<tr>
					<td>Bill Amount</td>
					<td><form:input class="w3-round" path="billamount" /><font
						color="red"><form:errors path="billamount" /></font></td>
				</tr>
				<tr>
					<td>Cardnumber</td>
					<td><form:input class="w3-round" path="cardnumber" /><font
						color="red"><form:errors path="cardnumber" /></font></td>
				</tr>
				<tr>
					<td>Payment Mode</td>
					<td><form:input class="w3-round" path="paymentmode" /><font
						color="red"><form:errors path="paymentmode" /></font></td>
				</tr>
			</table>
			<input class="w3-button w3-blue w3-round-xxlarge" type="submit"
				value="Register">
			<input class="w3-button w3-blue w3-round-xxlarge" type="reset"
				value="Reset">
		</form:form>
		<br />
		<h1 class="w3-hover-text-red">
			<a href="<c:url value='/home'/>"><i class="fa fa-home"></i></a>
		</h1>
	</div>
</body>
</html>