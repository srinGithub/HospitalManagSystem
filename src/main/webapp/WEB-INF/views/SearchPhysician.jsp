<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Physician Search Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.background {
	background-image:
		url("https://assets.weforum.org/article/image/large_i3YSkS6RReKpMnkmh3mwFt-nRvs8Ow_s7pRYSXybZvE.jpg");
	background-repeat: no-repeat;
	height: 610px;
	background-size: cover;
}

.margin {
	margin-left: 35%;
	margin-right: auto;
	margin-top: 15%;
	margin-bottom: auto;
}
</style>
</head>
<body class="background">
	<div align="center">
		<h1 class="w3-container">Physician Search Form</h1>
		<form:form
			action="/HospitalManagementPractice/searchPhysicianBasedOnCriteria"
			method="post" commandName="searchPhysicianForm"
			noValidate="novalidate">
			<table class="margin">
				<tr>
					<td>Department:</td>
					<td><form:input class="w3-round" path="department" /><font
						color="red"><form:errors path="department" /></font></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td>State:</td>
					<td><form:input class="w3-round" path="state" /><font
						color="red"><form:errors path="state" /></font></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td>Insuranceplan:</td>
					<td><form:input class="w3-round" path="insuranceplan" /><font
						color="red"><form:errors path="insuranceplan" /></font></td>
				</tr>
			</table>
			<br />
			<input class="w3-button w3-blue w3-round-xxlarge" type="submit"
				value="Search">
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