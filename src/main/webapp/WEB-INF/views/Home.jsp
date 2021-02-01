<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style type="text/css">
.image {
	background-image:
		url("https://nimshospitalfbd.in/dist/images/66578dd6354934c.jpg");
	background-repeat: no-repeat;
	height: 600px;
	background-size: cover;
}

.header {
	padding: 20px;
	text-align: center;
}

.topnav {
	overflow: hidden;
	background-color: lightblue;
	opacity: 50%;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}
</style>
</head>
<body class="image">
	<h1 class="header">Hospital Management Portal</h1>
	<div class="topnav">
		<div class="tooltip">
			<h4>
				<a class="w3-hover-text-red" href="<c:url value='/'/>"><i
					class="fa fa-home"></i></a>
			</h4>
		</div>
		<a class="w3-hover-text-red" href="<c:url value='/addPhysician'/>">Add
			Physician</a> <a class="w3-hover-text-red"
			href="<c:url value='/searchPhysician'/>">Search Physician</a> <a
			class="w3-hover-text-red" href="<c:url value='/enrollPatient'/>">Enroll
			Patient</a> <a class="w3-hover-text-red"
			href="<c:url value='/fetchDiagnosisDetails'/>">Diagnosis Details</a>
		<a class="w3-hover-text-red"
			href="<c:url value='/fetchRegisteredPatients'/>">Registered
			Patient Details</a>
	</div>
	<h3 class="w3-xlarge" align="center">About Us</h3>
	<p class="w3-container">A hospital is a health care institution
		providing patient treatment with specialized medical and nursing staff
		and medical equipment. The best-known type of hospital is the general
		hospital, which typically has an emergency department to treat urgent
		health problems ranging from fire and accident victims to a sudden
		illness. A district hospital typically is the major health care
		facility in its region, with many beds for intensive care and
		additional beds for patients who need long-term care. Specialized
		hospitals include trauma centers, rehabilitation hospitals, children's
		hospitals, seniors' (geriatric) hospitals, and hospitals for dealing
		with specific medical needs such as psychiatric treatment (see
		psychiatric hospital) and certain disease categories. Specialized
		hospitals can help reduce health care costs compared to general
		hospitals. Hospitals are classified as general, specialty, or
		government depending on the sources of income received. A teaching
		hospital combines assistance to people with teaching to medical
		students and nurses. A medical facility smaller than a hospital is
		generally called a clinic. Hospitals have a range of departments (e.g.
		surgery and urgent care) and specialist units such as cardiology. Some
		hospitals have outpatient departments and some have chronic treatment
		units. Common support units include a pharmacy, pathology, and
		radiology.</p>
</body>
</html>