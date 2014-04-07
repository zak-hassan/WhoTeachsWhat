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
 * This class is the controller which regulates administrative reporting
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class AdminController {
	//private static final Logger logger = LoggerFactory
	//		.getLogger(AdminController.class);

	@Autowired
	FacultyToCourseInSemesterYearService facultyToCourseInSemesterYearService;
	
	
	/**
	 * This method accepts no parameters and maps the URL '/facultyswiftreport' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.FacultyToCourseInSemesterYear.java
	 * @return
	 * 		The view page to be rendered
	 */
	@RequestMapping(value = "/facultyswiftreport", method = RequestMethod.GET)
	public String swiftFaculty(){
		return "Reports/swiftreport";
	}
	
	
	/**
	 * This method returns a faculty member's swift report for a given semester year
	 * 
	 * @see		
	 * 		com.seneca.bireports.Swift.java, com.seneca.service.FacultyToCourseInSemesterYearService.java
	 * @param id	
	 * 		This parameter is an identifier taken from request parameter in the URL.
	 * @param semester
	 * 		This parameter is an identifier for a specific Semester object
	 * @param year
	 * 		This parameter is an Integer denoting a year
	 * @return
	 * 		A map of a Swift List
	 */
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
