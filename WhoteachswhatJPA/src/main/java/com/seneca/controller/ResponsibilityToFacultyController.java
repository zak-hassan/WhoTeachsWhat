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

import com.seneca.model.ResponsibilityToFaculty;
import com.seneca.service.FacultyService;
import com.seneca.service.ResponsibilityService;
import com.seneca.service.ResponsibilityToFacultyService;
import com.seneca.service.SemesterService;

/**
 * This class is the controller which regulates all CRUD operations for adding a responsibility to a faculty member.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class ResponsibilityToFacultyController {

	@Autowired
	private ResponsibilityToFacultyService responsibilityToFacultyService;

	@Autowired
	private ResponsibilityService responsibilityService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private SemesterService semesterService;

	
	/**
	 * This method accepts no parameters and maps the URL '/viewResponsibilityToFaculty' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.ResponsibilityToFaculty
	 * @return
	 * 		The view page to be rendered, along with a List of all ResponsibilityToFaculty through the ModelMap
	 */
	@RequestMapping(value = "/viewResponsibilityToFaculty", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allResponsibilityToFaculty",
				responsibilityToFacultyService.getAll());
		model.addAttribute("allResponsibility", responsibilityService.getAll());
		model.addAttribute("allFaculty", facultyService.getAllFaculty());
		model.addAttribute("allSemesters", semesterService.getAll());

		return "ResponsibilityToFaculty/viewResponsibilityToFaculty";
	}
	
	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all ResponsibilityToFaculty in the database.
	 * 
	 * @see
	 * 		com.seneca.service.ResponsibilityToFacultyService
	 * @return 
	 * 		HashMap containing ResponsibilityToFaculty data in JSON
	 */
	@RequestMapping(value = "/api/ResponsibilityToFaculty", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (ResponsibilityToFaculty c : responsibilityToFacultyService
				.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("facultyId", c.getFaculty().getFacultyId() + "");
			map.put("responsibilityId", c.getResponsibility()
					.getResponsibilityId() + "");
			map.put("id", c.getRepToFac_id() + "");
			// map.put("year", c.getYear() + "");
			map.put("semesterId", c.getSemester().getSemesterId() + "");
			map.put("hoursperweek", c.getHoursPerWeek() + "");
			items.add(map);
		}
		return items;
	}
	
	/**
	 * This method is accessed through a POST request and allows the creation of a ResponsibilityToFaculty
	 * 
	 * @see
	 * 		com.seneca.service.ResponsibilityToFacultyService
	 * @param facultyId
	 * 		Uniquely identifies a Faculty object
	 * @param responsibilityId
	 * 		Uniquely identifies a Responsibility object
	 * @param year
	 * 		The year of this object's instance
	 * @param semesterId
	 * 		Uniquely identifies a Semester object
	 * @param hoursperweek
	 * 		The hours per week the faculty member is required to work
	 * @return
	 * 		HashMap containing the success of the operation along with the id in JSON
	 */
	@RequestMapping(value = "/api/ResponsibilityToFaculty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "facultyId", required = true) Integer facultyId,
			@RequestParam(value = "responsibilityId", required = true) Integer responsibilityId,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "semesterId", required = true) Integer semesterId,
			@RequestParam(value = "hoursperweek", required = true) String hoursperweek) {

		float hours = Float.parseFloat(hoursperweek);
		ResponsibilityToFaculty rToFaculty = responsibilityToFacultyService
				.add(facultyId, responsibilityId, year,
				semesterId, hours);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		// TODO: MUST RETURN THE ID
		list.put("id", rToFaculty.getRepToFac_id() + "");
		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a ResponsibilityToFaculty
	 * 
	 * @see
	 * 		com.seneca.service.ResponsibilityToFacultyService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param facultyId
	 * 		Uniquely identifies a Faculty object
	 * @param responsibilityId
	 * 		Uniquely identifies a Responsibility object
	 * @param year
	 * 		The year of this object's instance
	 * @param semesterId
	 * 		Uniquely identifies a Semester object
	 * @param hoursperweek
	 * 		The hours per week the faculty member is required to work
	 * @return
	 * 		HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/ResponsibilityToFaculty/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "facultyId", required = true) Integer facultyId,
			@RequestParam(value = "responsibilityId", required = true) Integer responsibilityId,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "semesterId", required = true) Integer semesterId,
			@RequestParam(value = "hoursperweek", required = true) String hoursperweek) {

		float hours = Float.valueOf(hoursperweek);

		responsibilityToFacultyService.update(id, facultyId, responsibilityId,
				year, semesterId, hours);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a ResponsibilityToFaculty
	 * 
	 * @see 
	 * 		com.seneca.service.ResponsibilityToFacultyService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/ResponsibilityToFaculty/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		responsibilityToFacultyService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
