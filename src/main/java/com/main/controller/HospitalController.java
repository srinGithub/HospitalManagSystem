package com.main.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.main.model.EnrollPatient;
import com.main.model.PatientDiagnosisDetails;
import com.main.model.Physician;
import com.main.model.SearchPhysician;
import com.main.service.PhysicianService;

/**
 * Controller is used for mapping the forms and also passes the Entity classes
 * as a template for the forms.
 * 
 * @author chennareddy.gooli We are using Annotations for identifying Methods
 *         and Controller
 */
@Controller
public class HospitalController {

	private static Logger log = Logger.getLogger(HospitalController.class);

	@Autowired
	private PhysicianService physicianservice;

	@RequestMapping(value = "/home")
	public String home() {
		log.info("Inside Home");
		return "Home";
	}

	@RequestMapping(value = "/addPhysician", method = RequestMethod.GET)
	public String addPhysiciandetails(ModelMap map) {
		log.info("Inside addPhysician method in controller class");
		Physician physician = new Physician();
		map.addAttribute("savePhysicianForm", physician);
		return "PhysicianRegister";
	}

	@RequestMapping(value = "/savePhysician", method = RequestMethod.POST)
	public String savePhysicianDetails(@Validated @ModelAttribute("savePhysicianForm") Physician physician,
			BindingResult result, ModelMap map) {
		log.info("Inside savePhysicianDetails Method");
		String viewname;
		if (result.hasErrors()) {
			log.info("Error whiling Passing Physician Details to Service layer from Controller");
			viewname = "PhysicianRegister";
		} else {
			log.info("Passing Physician Details to Service layer from Controller");
			Random r = new Random();
			int phyid = r.nextInt(899) + 100;
			String pid = "PR" + phyid;
			physician.setPhysicianid(pid);
			physicianservice.savePhysician(physician);
			List<Physician> physicianlist = physicianservice.fetchPhysiciansList();
			map.addAttribute("physicianlist", physicianlist);
			viewname = "PhysicianSuccess";
		}
		return viewname;
	}

	@RequestMapping(value = "/searchPhysician")
	public String searchPhysician(ModelMap map) {
		log.info("Inside searchPhysician Method");
		SearchPhysician searchphysician = new SearchPhysician();
		map.addAttribute("searchPhysicianForm", searchphysician);
		return "SearchPhysician";
	}

	@RequestMapping(value = "/searchPhysicianBasedOnCriteria", method = RequestMethod.POST)
	public String searchPhysicianByCriteria(
			@Validated @ModelAttribute("searchPhysicianForm") SearchPhysician searchphysician, BindingResult result,
			ModelMap map) {
		log.info("Inside search By Criteria Method of controller class");
		String viewname;
		if (result.hasErrors()) {
			log.info("Error whiling Passing Physician Details to Service layer from Controller");
			viewname = "SearchPhysician";
		} else {
			log.info("Passing PhysicianSearch Details to Service layer from Controller");
			List<Physician> physicianlist = physicianservice.searchPhysician(searchphysician);
			map.addAttribute("physicianlist", physicianlist);
			viewname = "PhysicianSearchSuccess";
		}
		return viewname;
	}

	@RequestMapping(value = "/enrollPatient")
	public String enrollPatient(ModelMap map) {
		log.info("Enrolling Patient information");
		EnrollPatient enrollpatient = new EnrollPatient();
		map.addAttribute("savePatientForm", enrollpatient);
		return "PatientEnrollment";
	}

	@RequestMapping(value = "/savePatient", method = RequestMethod.POST)
	public String savePatient(@Validated @ModelAttribute("savePatientForm") EnrollPatient enrollpatient,
			BindingResult result, ModelMap map) {
		log.info("Inside save patient method of controller class");
		String viewname;
		if (result.hasErrors()) {
			log.info("Error whiling Passing Physician Details to Service layer from Controller");
			viewname = "PatientEnrollment";
		} else {
			log.info("Passing patient Details to Service layer from Controller");
			Random r = new Random();
			int pid = r.nextInt(899) + 100;
			enrollpatient.setPatientid(pid);
			physicianservice.savePatient(enrollpatient);
			List<EnrollPatient> patientlist = physicianservice.fetchPatientList();
			map.addAttribute("patientlist", patientlist);
			viewname = "PatientSuccess";
		}
		return viewname;
	}

	@RequestMapping(value = "/addDiagnosisDetails/{pid}", method = RequestMethod.GET)
	public String addDiagnosisDetails(@PathVariable("pid") Integer pid, ModelMap map) {
		log.info("Inside addDiagnosis Details Method");
		PatientDiagnosisDetails diagnosisdetails = new PatientDiagnosisDetails();
		diagnosisdetails.setPatient_id(pid);
		map.addAttribute("formOfDiagnosis", diagnosisdetails);
		return "DiagnosisRegistration";
	}

	/*
	 * @RequestMapping(value="/saveDiagnosisDetails",method=RequestMethod.POST)
	 * public String
	 * saveDiagnosisDetails(@Validated @ModelAttribute("formOfDiagnosis")
	 * PatientDiagnosisDetails patientdiagnosisdetails,BindingResult result,ModelMap
	 * map) { String viewname; if(result.hasErrors()) {
	 * System.out.println("Inside if");
	 * log.info("Errors in saveDiagnosisDetails Method");
	 * viewname="DiagnosisRegistration"; } else { System.out.println("Inside else");
	 * log.info("Inside saveDiagnosisDetails Method"); Random r1 = new Random(); int
	 * pid = r1.nextInt(999); patientdiagnosisdetails.setPatient_id(pid);
	 * patientdiagnosisdetails.setPhysician_id("abcd"); Random r = new Random(); int
	 * did = r.nextInt(9999); patientdiagnosisdetails.setDiagnosis_id(did);
	 * physicianservice.saveDiagnosisDetails(patientdiagnosisdetails);
	 * List<PatientDiagnosisDetails>
	 * diagnosislist=physicianservice.fetchDiagnosisdetails();
	 * map.addAttribute("diagnosisSuccess", diagnosislist);
	 * viewname="DiagnosisSuccessPage"; } return viewname; }
	 */
	@RequestMapping(value = "/saveDiagnosisDetails", method = RequestMethod.POST)
	public String addDiagnosisdetails(
			@Validated @ModelAttribute("formOfDiagnosis") PatientDiagnosisDetails patientdiagnosisdetails,
			BindingResult result, ModelMap map) {
		String viewname;
		if (result.hasErrors()) {
			log.info("has some errors in diagnosis form");
			viewname = "DiagnosisRegistration";
		} else {
			log.info("Fetching patient info and assigning a doctor");
			System.out.println("patientid1  :" + patientdiagnosisdetails.getPatient_id());
			Random r1 = new Random();
			int did = r1.nextInt(9999) + 1000;
			patientdiagnosisdetails.setDiagnosis_id(did);
			physicianservice.saveDiagnosisDetails(patientdiagnosisdetails);
			List<PatientDiagnosisDetails> diagnosispatientlist = physicianservice.fetchDiagnosisdetails();
			map.addAttribute("diagnosisSuccess", diagnosispatientlist);
			viewname = "DiagnosisSuccessPage";
		}
		return viewname;
	}

	@RequestMapping(value = "/history/{patientid}")
	public String patientHistory(@PathVariable("patientid") Integer patientid, ModelMap map) {
		log.info("Inside Patient History");
		EnrollPatient patient = physicianservice.fetchPatientById(patientid);
		map.addAttribute("patientlist", patient);
		return "ViewHistory";
	}

	@ModelAttribute("physicianids")
	public List<String> getListofPhysicians() {
		List<String> physicianids = new ArrayList<>();
		List<Physician> physicianlist = physicianservice.fetchPhysiciansList();
		for (Physician physician : physicianlist) {
			physicianids.add(physician.getPhysicianid());
		}
		return physicianids;
	}

	@RequestMapping(value = "/fetchDiagnosisDetails")
	public String fetchDiagnosisDetails(ModelMap map) {
		log.info("Inside fetchDiagnosis Details method");
		List<PatientDiagnosisDetails> diagnosislist = physicianservice.fetchDiagnosisdetails();
		map.addAttribute("diagnosisSuccess", diagnosislist);
		return "DiagnosisSuccessPage";
	}
	
	@RequestMapping(value="/fetchRegisteredPatients")
	public String fetchRegisterdPatients(ModelMap map) {
		List<EnrollPatient> patientlist=physicianservice.fetchPatientList();
		map.addAttribute("patientlist", patientlist);
		return "PatientSuccess";
	}
}
