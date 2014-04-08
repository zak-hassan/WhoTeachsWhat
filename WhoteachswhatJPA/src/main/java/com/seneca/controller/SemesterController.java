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

import com.seneca.model.Semester;
import com.seneca.service.SemesterService;

/**
 * This class is the controller which regulates all evalfactor operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class SemesterController {

	@Autowired
	private SemesterService semesterService;

	/**
	 * This method accepts no parameters and maps the URL '/viewSemester' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.Semester
	 * @return
	 * 		The view page to be rendered, along with a List of all Semesters through the ModelMap
	 */
	@RequestMapping(value = "/viewSemester", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allSemesters", semesterService.getAll());

		return "Semester/viewSemester";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all Semesters in the database.
	 * 
	 * @see
	 * 		com.seneca.service.SemesterService
	 * @return 
	 * 		HashMap containing the Semester name and code in JSON
	 */
	@RequestMapping(value = "/api/semester", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (Semester c : semesterService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", c.getSemesterName() + "");
			map.put("id", c.getSemesterId() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of a Semester
	 * 
	 * @see 
	 * 		com.seneca.service.SemesterService
	 * @param semesterName
	 * 		The name of the semester
	 * @return 
	 * 		A HashMap containing the Semester id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/semester", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "semesterName", required = true) String semesterName) {

		Semester semester = semesterService.add(semesterName);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", semester.getSemesterId() + "");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a Semester
	 * 
	 * @see 
	 * 		com.seneca.service.SemesterService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param semesterName
	 * 		The name of the semester
	 * @return 
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/semester/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "semesterName", required = true) String semesterName) {
		semesterService.update(id, semesterName);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a Semester
	 * 
	 * @see 
	 * 		com.seneca.service.SemesterService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/semester/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		semesterService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
