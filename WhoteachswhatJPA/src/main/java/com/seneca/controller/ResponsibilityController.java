package com.seneca.controller;

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

import com.seneca.model.Responsibility;
import com.seneca.service.ResponsibilityService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified Dec 31, 2013
 * @version 0.0.1
 */

@Controller
public class ResponsibilityController {

	@Autowired
	ResponsibilityService responsibilityService;

	@RequestMapping(value = "/viewResponsibility", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allRespon", responsibilityService.getAll());
		
		return "Anil_ManageResponsibilities";
	}

	@RequestMapping(value = "/updateResponsibility", method = RequestMethod.GET)
	public String update() {
		return "Anil_UpdateResponsibilities";
	}

	/**
	 * This method accepts data posted from the AddResponsibilityForm and adds a
	 * responsibility using the appropriate service method
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param responsibility_type
	 *            The name of the responsibility. Must be unique
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/ajaxAddResponsibilty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddResponsibiltyJSON(
			@RequestParam(value = "responsibility_type", required = true) String responsibility_type) {

		Map<String, String> list = new HashMap<String, String>();
		list.put("ResponsibilityType", responsibility_type);
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateResponsibilityForm and
	 * updates a responsibility using the appropriate service method
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param responsibility_type
	 *            The name of the responsibility to be updated
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/ajaxUpdateResponsibilty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateResponsibiltyJSON(
			@RequestParam(value = "responsibility_type", required = true) String responsibility_type) {

		Map<String, String> list = new HashMap<String, String>();
		list.put("ResponsibilityType", responsibility_type);
		list.put("success", "true");

		return list;
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/responsibility", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Responsibility> listGetJSON() {
		return responsibilityService.getAll();
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Responsibility listGetOneJSON(@PathVariable("id") Integer id) {
		return responsibilityService.getOne(id);
	}

	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/responsibility", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(@RequestParam(value = "respon_code", required = true) String respon_code,
			@RequestParam(value = "respon_name", required = true) String respon_name) {
		
		responsibilityService.add(respon_code, respon_name);
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param id
	 *            Uniquely identifies the object
	 *            
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(@PathVariable("id") Integer id) {

		responsibilityService.update(id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * @param courseCode
	 *            The six to eight digit course code
	 * @param courseName
	 *            The name of the course
	 * @param crossoverCourse
	 *            The course code that is synonomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		responsibilityService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
