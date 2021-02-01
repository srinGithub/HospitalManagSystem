package com.main.service;

import java.util.List;

import com.main.model.EnrollPatient;
import com.main.model.PatientDiagnosisDetails;
import com.main.model.Physician;
import com.main.model.SearchPhysician;

public interface PhysicianService {

	public void savePhysician(Physician physician);

	public List<Physician> fetchPhysiciansList();

	public List<Physician> searchPhysician(SearchPhysician searchphysician);

	public void savePatient(EnrollPatient enrollpatient);

	public List<EnrollPatient> fetchPatientList();

	public EnrollPatient fetchPatientById(Integer pid);

	public void saveDiagnosisDetails(PatientDiagnosisDetails patientdiagnosisdetails);

	public List<PatientDiagnosisDetails> fetchDiagnosisdetails();

}
