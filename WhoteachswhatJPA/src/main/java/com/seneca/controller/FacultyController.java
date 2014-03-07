package com.seneca.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seneca.repository.CourseDao;
import com.seneca.service.FacultyService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @lastmodified February 15, 2014
 * @version 0.0.1
 */

@Controller
public class FacultyController {
//	private static final Logger logger = LoggerFactory
	//		.getLogger(FacultyController.class); 	private CourseDao courseDao;

	@Autowired
	FacultyService facultyService;
	// REST
		@RequestMapping(value = "/addFaculty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
		public @ResponseBody
		Map<String, String> ajaxAddFaculty(
				@RequestParam(value = "fname", required = true) String fname,
				@RequestParam(value = "lname", required = true) String lname,
				@RequestParam(value = "fstatus", required = true) String status,
				HttpSession session) {
			
			facultyService.addFaculty(fname, lname, status);
			
			
			
			Map<String, String> list = new HashMap<String, String>();
			list.put("fname", fname);
			list.put("lname", lname);
			list.put("status", status);
			list.put("success", "true");
		  return list;
		}

	@RequestMapping(value = "/viewFaculty", method = RequestMethod.GET)
	public String viewFaculty() {
	//	logger.info("WTWNavigator: \t /viewFaculty");
		return "Faculty/viewFaculty";
	}

	@RequestMapping(value = "/updateFaculty", method = RequestMethod.GET)
	public String updateFaculty() {
		//logger.info("INFO: NAVIGATING TO FACULTY VIEW ");
		//logger.info("WTWNavigator: \t /updateFaculty");
		return "Faculty/updateFaculty";
	}

	@RequestMapping(value = "/addFaculty", method = RequestMethod.GET)
	public String processAddFaculty() {
		//logger.info("INFO: NAVIGATING TO FACULTY VIEW ");
		//logger.info("WTWNavigator: \t /addFaculty");
		return "Faculty/addFaculty";
	}

	/*
	// REST
	@RequestMapping(value = "/faculty/id", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Faculty> listJSON() {
		FacultyService service = new FacultyService();

		return service.findFacultyByCourse("DBS301");
	}
	*/
	
	/*
	 * @RequestMapping(value = "/faculty/{id}",method=RequestMethod.GET) public
	 * String
	 */
	
	/**
	 * This method accepts data posted from the AddFacultyForm and adds a faculty member using the appropriate
	 * service method
	 * 
	 * @see 							com.seneca.service.FacultyService
	 * 
	 * @param faculty_first_name		The first name of the faculty member
	 * @param faculty_last_name			The last name of the faculty member
	 * @param faculty_status			The status of a faculty member. Can either be part time or full time
	 * 
	 * @return							A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxAddFaculty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddFacultyJSON(
			@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
			@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
			@RequestParam(value = "faculty_status", required = true) String faculty_status) {
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("FacultyFirstName", faculty_first_name);
		list.put("FacultyLastName", faculty_last_name);
		list.put("FacultyStatus", faculty_status);
		list.put("success", "true");
		
		return list;
	}
	
	/**
	 * This method accepts data posted from the UpdateFacultyForm and updates a faculty member using the appropriate
	 * service method
	 * 
	 * @see 							com.seneca.service.FacultyService
	 * 
	 * @param faculty_first_name		The first name of the faculty member
	 * @param faculty_last_name			The last name of the faculty member
	 * @param faculty_status			The status of a faculty member. Can either be part time or full time
	 * 
	 * @return							A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxUpdateFaculty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateFacultyJSON(
			@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
			@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
			@RequestParam(value = "faculty_status", required = true) String faculty_status) {
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("FacultyFirstName", faculty_first_name);
		list.put("FacultyLastName", faculty_last_name);
		list.put("FacultyStatus", faculty_status);
		list.put("success", "true");
		
		return list;
	}
}
