<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Enrollment</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-container w3-pale-red">
	<div class="w3-text-black" align="center">
		<h3 class="w3-text-blue">Patient Registration Form</h3>
		<form:form class="w3-round"
			action="/HospitalManagementPractice/savePatient" method="post"
			commandName="savePatientForm" noValidate="novalidate">
			<table>
				<tr>
					<td>First Name:</td>
					<td><form:input class=" w3-round" path="patientfirstname" /><font
						color="red"><form:errors path="patientfirstname" /></font></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input class=" w3-round" path="lastname" /><font
						color="red"><form:errors path="lastname" /></font></td>
				</tr>
				<tr>
					<td>password:</td>
					<td><form:input class="w3-round" type="password"
							path="password" /><font color="red"><form:errors
								path="password" /></font></td>
				</tr>
				<tr>
					<td>DOB:</td>
					<td><form:input class=" w3-round" type="date" path="dob" /><font
						color="red"><form:errors path="dob" /></font></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input class=" w3-round" type="email" path="email" /><font
						color="red"><form:errors path="email" /></font></td>
				</tr>
				<tr>
					<td>Contact Number:</td>
					<td><form:input class=" w3-round" path="contactnumber" /><font
						color="red"><form:errors path="contactnumber" /></font></td>
				</tr>
				<tr>
					<td>State:</td>
					<td><form:input class=" w3-round" path="state" /><font
						color="red"><form:errors path="state" /></font></td>
				</tr>

				<tr>
					<td>Insurance Plan:</td>
					<td><form:input class="w3-round" path="insuranceplan" /><font
						color="red"><form:errors path="insuranceplan" /></font></td>
				</tr>
			</table>
			<br />
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