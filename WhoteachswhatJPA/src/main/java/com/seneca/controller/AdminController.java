package com.seneca.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seneca.bireports.Swift;
import com.seneca.model.CompHour;
import com.seneca.service.FacultyToCourseInSemesterYearService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified Dec 31, 2013
 * @version 0.0.1
 */

// This controller is not needed. It does nothing but call on actions that other controllers
// should manage


@Controller
public class AdminController {
	//private static final Logger logger = LoggerFactory
	//		.getLogger(AdminController.class);

	@Autowired
	FacultyToCourseInSemesterYearService facultyToCourseInSemesterYearService;
	
	
	@RequestMapping(value = "/manageCourseSection", method = RequestMethod.GET)
	public String updateFaculty() {
		return "Anil_ManageCourseSections";
	}
	
	@RequestMapping(value = "/facultyswiftreport", method = RequestMethod.GET)
	public String swiftFaculty(){
		return "Reports/swiftreport";
	}
	
	@RequestMapping(value = "/api/facultyswiftreport", method = RequestMethod.GET,  produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Map<String, List<Swift>> swiftFaculty(@RequestParam(value = "id", required = true) Integer id,
			@RequestParam(value = "semester",required=true) Integer semester,
			@RequestParam(value = "year",required=true) Integer year){
		List<Swift> s= 	facultyToCourseInSemesterYearService.getAllSwifts(id,semester,year);
		Map<String, List<Swift>> map=new HashMap<String, List<Swift>>();
		map.put("swift", s);
		return map;
	}
	
}
