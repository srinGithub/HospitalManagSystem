package com.main.dao;

import java.util.List;

import com.main.model.EnrollPatient;
import com.main.model.PatientDiagnosisDetails;
import com.main.model.Physician;
import com.main.model.SearchPhysician;

/**
 * @author chennareddy.gooli
 *
 *         This PhysicianDao interface is the one which provides methods for
 *         PhysicianDao class for performing operations on Database.
 */
public interface PhysicianDao {

	void savePhysician(Physician physician);

	List<Physician> fetchPhysiciansList();

	List<Physician> searchPhysician(SearchPhysician searchphysician);

	void savePatient(EnrollPatient enrollpatient);

	List<EnrollPatient> fetchPatientList();

	EnrollPatient fetchPatientById(Integer pid);

	void saveDiagnosisDetails(PatientDiagnosisDetails patientdiagnosisdetails);

	List<PatientDiagnosisDetails> fetchDiagnosisdetails();

}
