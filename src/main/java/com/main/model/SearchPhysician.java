package com.main.model;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author chennareddy.gooli
 *
 *         SearchPhysician is just a class which acts like template for
 *         SearchPhysician.jsp page for searching physician based on search
 *         criteria.
 */
public class SearchPhysician {

	@NotEmpty
	private String department;
	@NotEmpty
	private String state;
	@NotEmpty
	private String insuranceplan;

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

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

}
