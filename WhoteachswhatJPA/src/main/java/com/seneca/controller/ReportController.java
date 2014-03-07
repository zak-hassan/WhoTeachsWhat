package com.seneca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified Dec 31, 2013
 * @version 0.0.1
 */

@Controller
public class ReportController {

	@RequestMapping(value = "/whoTeachesWhat", method = RequestMethod.GET)
	public String whoTeachesWhat() {
		return "who_teaches_what";
	}

	@RequestMapping(value = "/coursesOfferingNextSemester", method = RequestMethod.GET)
	public String CourseNextSem() {
		return "Anil_CoursesOfferedNextSemester";
	}

	@RequestMapping(value = "/teachingHistory", method = RequestMethod.GET)
	public String teachingHistory() {
		return "teachinghistory";
	}

}
