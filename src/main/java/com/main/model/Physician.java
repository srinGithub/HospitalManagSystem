package com.main.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author chennareddy.gooli
 *
 *         Physician class acts as a template for PhysicianRegister.jsp page for
 *         registering physicians in a Hospital.
 */
@Entity
@Table(name = "physician")
public class Physician {
	@Id
	private String physicianid;
	@NotEmpty
	@Size(min = 6, max = 15)
	private String physicianfirstname;
	@NotEmpty
	@Size(min = 6, max = 15)
	private String physicianlastname;
	@NotEmpty
	private String department;
	@NotEmpty
	private String educationqualification;
	@NotNull
	private Integer yearsofexperiance;
	@NotEmpty
	private String state;
	@NotEmpty
	private String insuranceplan;

	public String getPhysicianid() {
		return physicianid;
	}

	public void setPhysicianid(String physicianid) {
		this.physicianid = physicianid;
	}

	public String getPhysicianfirstname() {
		return physicianfirstname;
	}

	public void setPhysicianfirstname(String physicianfirstname) {
		this.physicianfirstname = physicianfirstname;
	}

	public String getPhysicianlastname() {
		return physicianlastname;
	}

	public void setPhysicianlastname(String physicianlastname) {
		this.physicianlastname = physicianlastname;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEducationqualification() {
		return educationqualification;
	}

	public void setEducationqualification(String educationqualification) {
		this.educationqualification = educationqualification;
	}

	public Integer getYearsofexperiance() {
		return yearsofexperiance;
	}

	public void setYearsofexperiance(Integer yearsofexperiance) {
		this.yearsofexperiance = yearsofexperiance;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getInsuranceplan() {
		return insuranceplan;
	}

	public void setInsuranceplan(String insuranceplan) {
		this.insuranceplan = insuranceplan;
	}

}
