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

// This controller is not needed. It does nothing but call on actions that other controllers
// should manage


@Controller
public class AdminController {
	//private static final Logger logger = LoggerFactory
	//		.getLogger(AdminController.class);

	@RequestMapping(value = "/manageCourseSection", method = RequestMethod.GET)
	public String updateFaculty() {
		//logger.info("WTWNavigator: \t /manageCourseSection");
		return "Anil_ManageCourseSections";
	}
}
