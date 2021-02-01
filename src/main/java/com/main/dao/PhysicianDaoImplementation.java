package com.main.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.main.model.EnrollPatient;
import com.main.model.PatientDiagnosisDetails;
import com.main.model.Physician;
import com.main.model.SearchPhysician;

/**
 * @author chennareddy.gooli
 * 
 *         This PhysicianDao Will be providing the implementation for various
 *         database operations by using both SQL and HQL queries.
 */
@Repository
public class PhysicianDaoImplementation implements PhysicianDao {

	private static Logger log = Logger.getLogger(PhysicianDaoImplementation.class);
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void savePhysician(Physician physician) {
		log.info("Inside SavePhysician Method of Dao layer");
		sessionFactory.getCurrentSession().save(physician);
	}

	@Override
	public List<Physician> fetchPhysiciansList() {
		log.info("Inside fetchPhysiciansList Method of Dao layer");
		Query query = sessionFactory.getCurrentSession().createQuery("from Physician p");
		List<Physician> physicianlist = query.list();
		return physicianlist;
	}

	@Override
	public List<Physician> searchPhysician(SearchPhysician searchphysician) {
		log.info("Inside SearchPhysician Method of Dao layer");
		Query query = sessionFactory.getCurrentSession().createQuery(
				"from Physician p where p.department=:pdepartment and p.state=:pstate and p.insuranceplan=:pinsurance");
		query.setParameter("pdepartment", searchphysician.getDepartment());
		query.setParameter("pstate", searchphysician.getState());
		query.setParameter("pinsurance", searchphysician.getInsuranceplan());
		List<Physician> physicianlist = query.list();
		return physicianlist;
	}

	@Override
	public void savePatient(EnrollPatient enrollpatient) {
		log.info("Inside SavePatient Method of Dao layer");
		sessionFactory.getCurrentSession().save(enrollpatient);
	}

	@Override
	public List<EnrollPatient> fetchPatientList() {
		log.info("Inside fetchPatientList Method of Dao layer");
		Query query = sessionFactory.getCurrentSession().createQuery("from EnrollPatient ep");
		List<EnrollPatient> patientlist = query.list();
		return patientlist;
	}

	@Override
	public EnrollPatient fetchPatientById(Integer pid) {
		log.info("Inside fethPatient by id Method of Dao layer");
		EnrollPatient patient = (EnrollPatient) sessionFactory.getCurrentSession().get(EnrollPatient.class, pid);
		return patient;
	}

	@Override
	public void saveDiagnosisDetails(PatientDiagnosisDetails patientdiagnosisdetails) {
		log.info("Inside SavePhysician Method of Dao layer");
		sessionFactory.getCurrentSession().save(patientdiagnosisdetails);
	}

	@Override
	public List<PatientDiagnosisDetails> fetchDiagnosisdetails() {
		log.info("Inside fetchDiagnosisList Method of Dao layer");
		Query query = sessionFactory.getCurrentSession().createQuery("from PatientDiagnosisDetails pdd");
		List<PatientDiagnosisDetails> diagnosislist = query.list();
		return diagnosislist;
	}

}
