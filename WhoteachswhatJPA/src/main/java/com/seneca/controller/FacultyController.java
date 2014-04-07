package com.seneca.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seneca.model.Faculty;
import com.seneca.service.FacultyService;
import com.seneca.service.TeachingTypeService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class FacultyController {
	// private static final Logger logger = LoggerFactory
	// .getLogger(FacultyController.class); private CourseDao courseDao;

	// DISPLAY UI PAGES:
	
	@Autowired
	private FacultyService facultyService;

	@Autowired 
	private TeachingTypeService teachingTypeService;

	/**
	 * This method accepts no parameters and maps the URL '/viewFaculty' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.Faculty
	 * @return
	 * 		The view page to be rendered, along with a List of all Faculty through the ModelMap
	 */
	@RequestMapping(value = "/viewFaculty", method = RequestMethod.GET)
	public String viewFaculty(ModelMap model) {
		// logger.info("WTWNavigator: \t /viewFaculty");
		model.addAttribute("allFaculty", facultyService.getAllFaculty() );
		model.addAttribute("allStatus", teachingTypeService.getAll() );
		/*
		 * .getTeachingType_id()
		 * .getTeachingType_name()
		 * 
		 * */
		return "Faculty/viewFaculty";
	}

	// REST API ENDPOINTS:
		
	/**
	 * This method accepts no parameters and returns a single Faculty in the database based on the passed id
	 * 
	 * @see
	 * 		com.seneca.service.FacultyService
	 * @param
	 * 		Uniquely identifies the object
	 * @return 
	 * 		HashMap containing faculty first name, last name, id, teaching hours and teaching type in JSON
	 */
	@RequestMapping(value = "/api/faculty/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetOneFacultyJSON(
			@PathVariable("id") Integer id) {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		Faculty c = facultyService.getOne(id);
			Map<String, String> map = new HashMap<String, String>();
			map.put("fname", c.getFacultyFirstName() + "");
			map.put("lname", c.getFacultyLastName());
			map.put("fid", c.getFacultyId() + "");
			map.put("teachingHours", c.getHoursToTeach() + "");
			map.put("teachingTypeName", c.getTeachingType()
					.getTeachingType_name());
			items.add(map);
		return items;
	}
	
	/**
	 * This method accepts no parameters and returns a single Faculty in the database based on the passed id
	 * 
	 * @see
	 * 		com.seneca.service.FacultyService
	 * @return 
	 * 		A List containing faculty first name, last name, id, teaching hours and teaching type in JSON
	 */
	@RequestMapping(value = "/api/faculty", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetFacultyJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (Faculty c : facultyService.getAllFaculty()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("fname", c.getFacultyFirstName() + "");
			map.put("lname", c.getFacultyLastName());
			map.put("fid", c.getFacultyId() + "");
			map.put("teachingHours", c.getHoursToTeach() + "");
			map.put("teachingTypeName", c.getTeachingType()
					.getTeachingType_name());
			items.add(map);
		}
		return items;
	}
	
	/**
	 * This method is accessed through a POST request and allows the creation of a Faculty
	 * 
	 * @see
	 * 		com.seneca.service.FacultyService
	 * @param faculty_first_name
	 * 		Faculty member's first name
	 * @param faculty_last_name
	 * 		Faculty member's last name
	 * @param status
	 * 		The current status of the faculty member
	 * @return
	 * 		A HashMap containing the Faculty id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/faculty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddFacultyJSON(
			@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
			@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
			@RequestParam(value = "faculty_status", required = true) Integer status) {

		Faculty faculty = facultyService.addFaculty(faculty_first_name,
				faculty_last_name, status);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", faculty.getFacultyId() + "");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a Faculty
	 * 
	 * @see
	 * 		com.seneca.service.FacultyService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param faculty_first_name
	 * 		Faculty member's first name
	 * @param faculty_last_name
	 * 		Faculty member's last name
	 * @param status
	 * 		The current status of the faculty member
	 * @return
	 * 		A HashMap containing the message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/faculty/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateFacultyJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "faculty_first_name", required = true) String faculty_first_name,
			@RequestParam(value = "faculty_last_name", required = true) String faculty_last_name,
			@RequestParam(value = "faculty_status", required = true) Integer status) {

		facultyService.update(id, faculty_first_name, faculty_last_name, status);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a Faculty
	 * 
	 * @see 
	 * 		com.seneca.service.FacultyService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/faculty/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteFacultyJSON(@PathVariable("id") Integer id) {

		facultyService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
