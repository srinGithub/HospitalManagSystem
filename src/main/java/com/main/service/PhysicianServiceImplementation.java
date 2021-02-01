package com.main.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.dao.PhysicianDao;
import com.main.model.EnrollPatient;
import com.main.model.PatientDiagnosisDetails;
import com.main.model.Physician;
import com.main.model.SearchPhysician;

@Service
@Transactional
public class PhysicianServiceImplementation implements PhysicianService {

	private static Logger log = Logger.getLogger(PhysicianServiceImplementation.class);
	@Autowired
	private PhysicianDao physiciandao;

	@Override
	public void savePhysician(Physician physician) {
		log.info("Passing Physician Information to Dao Layer from Service Layer");
		physiciandao.savePhysician(physician);

	}

	@Override
	public List<Physician> fetchPhysiciansList() {
		log.info("Getting Physician Information from Dao Layer to Service Layer");
		List<Physician> physicianlist = physiciandao.fetchPhysiciansList();
		return physicianlist;
	}

	@Override
	public List<Physician> searchPhysician(SearchPhysician searchphysician) {
		log.info("Passing PhysicianSearch Information to Dao Layer from Service Layer");
		List<Physician> physicianlist = physiciandao.searchPhysician(searchphysician);
		return physicianlist;
	}

	@Override
	public void savePatient(EnrollPatient enrollpatient) {
		log.info("Passing Patient Information to Dao Layer from Service Layer");
		physiciandao.savePatient(enrollpatient);
	}

	@Override
	public List<EnrollPatient> fetchPatientList() {
		log.info("Getting Patient Information from Dao Layer to Service Layer");
		List<EnrollPatient> patientlist = physiciandao.fetchPatientList();
		return patientlist;
	}

	@Override
	public EnrollPatient fetchPatientById(Integer pid) {
		log.info("Inside fetch by id method of service layer");
		EnrollPatient patientdetails = physiciandao.fetchPatientById(pid);
		return patientdetails;
	}

	@Override
	public void saveDiagnosisDetails(PatientDiagnosisDetails patientdiagnosisdetails) {
		log.info("Inside Save Diagnosis details of patient of service layer");
		physiciandao.saveDiagnosisDetails(patientdiagnosisdetails);
	}

	@Override
	public List<PatientDiagnosisDetails> fetchDiagnosisdetails() {
		log.info("Fetching diagnosis details");
		List<PatientDiagnosisDetails> diagosisdetails = physiciandao.fetchDiagnosisdetails();
		return diagosisdetails;
	}

}
