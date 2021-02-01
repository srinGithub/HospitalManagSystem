<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Physician Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.image {
	background-image:
		url("https://nimshospitalfbd.in/dist/images/66578dd6354934c.jpg");
	background-repeat: no-repeat;
	height: 600px;
	background-size: cover;
}

.image2 {
	background-image:
		url("https://icon-library.com/images/add-person-icon/add-person-icon-4.jpg");
	background-repeat: no-repeat;
	background-size: contain;
	opacity: 50%;
}

.float {
	float: left;
	height: 70%;
	weight: 50%
}
</style>
</head>
<body class="image">
	<img class="float"
		src="https://icon-library.com/images/add-person-icon/add-person-icon-4.jpg" />
	<div align="center">
		<h3>Physician Registration Form</h3>
		<br />
		<c:url var="actionUrl" value="/savePhysician" />
		<form:form action="${actionUrl}" method="post"
			commandName="savePhysicianForm" noValidate="novalidate">
			<table>
				<tr>
					<td>First Name:</td>
					<td><form:input class="w3-round" path="physicianfirstname" /><font
						color="red"><form:errors path="physicianlastname" /></font></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input class="w3-round" path="physicianlastname" /><font
						color="red"><form:errors path="physicianlastname" /></font></td>
				</tr>
				<tr>
					<td>Department:</td>
					<td><form:input class="w3-round" path="department" /><font
						color="red"><form:errors path="department" /></font></td>
				</tr>
				<tr>
					<td>Education Qualification:</td>
					<td><form:input class="w3-round" path="educationqualification" /><font
						color="red"><form:errors path="educationqualification" /></font></td>
				</tr>
				<tr>
					<td>Years of experiance:</td>
					<td><form:input class="w3-round" path="yearsofexperiance" /><font
						color="red"><form:errors path="yearsofexperiance" /></font></td>
				</tr>
				<tr>
					<td>State:</td>
					<td><form:input class="w3-round" path="state" /><font
						color="red"><form:errors path="state" /></font></td>
				</tr>
				<tr>
					<td>Insurance plan:</td>
					<td><form:input class="w3-round" path="insuranceplan" /><font
						color="red"><form:errors path="insuranceplan" /></font></td>
				</tr>
			</table>
			<br />
			<input class="w3-button w3-blue w3-round-xxlarge" type="submit"
				value="Register">
			<input class="w3-button w3-blue w3-round-xxlarge" type="reset"
				value="Reset">
			<br />
			<h1 class="w3-hover-text-red">
				<a href="<c:url value='/home'/>"><i class="fa fa-home"></i></a>
			</h1>
		</form:form>
	</div>
</body>
</html>