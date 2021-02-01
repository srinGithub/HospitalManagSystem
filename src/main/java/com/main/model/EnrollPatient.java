package com.main.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author chennareddy.gooli
 *
 *         EnrollPatient Class is an Entity class which acts like a template for
 *         PatientEnrollment.jsp page used for registering patient.
 */
@Entity
@Table(name = "patientdetails")
public class EnrollPatient {
	@Id
	private Integer patientid;
	@NotEmpty
	@Size(min = 6, max = 15)
	private String patientfirstname;
	@NotEmpty
	@Size(min = 6, max = 15)
	private String lastname;
	@NotEmpty
	@Size(min = 8, max = 16)
	private String password;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date dob;
	@NotEmpty
	@Email
	private String email;
	@NotNull
	private Long contactnumber;
	@NotEmpty
	private String state;

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@NotEmpty
	private String insuranceplan;

	public Integer getPatientid() {
		return patientid;
	}

	public void setPatientid(Integer patientid) {
		this.patientid = patientid;
	}

	public String getPatientfirstname() {
		return patientfirstname;
	}

	public void setPatientfirstname(String patientfirstname) {
		this.patientfirstname = patientfirstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(Long contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getInsuranceplan() {
		return insuranceplan;
	}

	public void setInsuranceplan(String insuranceplan) {
		this.insuranceplan = insuranceplan;
	}
}
