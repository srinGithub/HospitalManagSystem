package com.main.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author chennareddy.gooli
 *
 *         PatientDiagnosisDetails Entity Class acts as a template for
 *         DiagnosisRegister.jsp Page for registering diagnosis for patients.
 */
@Entity
@Table(name = "diagnosispatients")
public class PatientDiagnosisDetails {
	private Integer patient_id;
	@Id
	private Integer diagnosis_id;
	@NotEmpty
	private String sympotms;
	@NotEmpty
	private String diagnosisprovided;
	private String physician_id;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateofdiagnosis;
	private FollowUp followup;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date followupdate;
	@NotNull
	private Double billamount;
	@NotNull
	private Long cardnumber;
	@NotEmpty
	private String paymentmode;

	public Integer getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}

	public Integer getDiagnosis_id() {
		return diagnosis_id;
	}

	public void setDiagnosis_id(Integer diagnosis_id) {
		this.diagnosis_id = diagnosis_id;
	}

	public String getSympotms() {
		return sympotms;
	}

	public void setSympotms(String sympotms) {
		this.sympotms = sympotms;
	}

	public String getDiagnosisprovided() {
		return diagnosisprovided;
	}

	public void setDiagnosisprovided(String diagnosisprovided) {
		this.diagnosisprovided = diagnosisprovided;
	}

	public String getPhysician_id() {
		return physician_id;
	}

	public void setPhysician_id(String physician_id) {
		this.physician_id = physician_id;
	}

	public Date getDateofdiagnosis() {
		return dateofdiagnosis;
	}

	public void setDateofdiagnosis(Date dateofdiagnosis) {
		this.dateofdiagnosis = dateofdiagnosis;
	}

	public FollowUp getFollowup() {
		return followup;
	}

	public void setFollowup(FollowUp followup) {
		this.followup = followup;
	}

	public Date getFollowupdate() {
		return followupdate;
	}

	public void setFollowupdate(Date followupdate) {
		this.followupdate = followupdate;
	}

	public Double getBillamount() {
		return billamount;
	}

	public void setBillamount(Double billamount) {
		this.billamount = billamount;
	}

	public Long getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(Long cardnumber) {
		this.cardnumber = cardnumber;
	}

	public String getPaymentmode() {
		return paymentmode;
	}

	public void setPaymentmode(String paymentmode) {
		this.paymentmode = paymentmode;
	}

}
