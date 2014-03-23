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
import com.seneca.service.ResponsibilityService;
import com.seneca.service.ResponsibilityToFacultyService;
import com.seneca.service.SemesterService;

@Controller
public class ResponsibilityToFacultyController {

	/**
	 * This class is the controller which regulates all evalfactor operations.
	 * 
	 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
	 *         <anil.d.santokhI@gmail.com>
	 * @lastmodified March 10, 2014
	 * @version 0.0.1
	 */

	@Autowired
	private ResponsibilityToFacultyService responsibilityToFacultyService;

	@Autowired
	private ResponsibilityService responsibilityService;
	
	@Autowired
	private SemesterService semesterService;

	@RequestMapping(value = "/viewResponsibilityToFaculty", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allResponsibilityToFaculty",
				responsibilityToFacultyService.getAll());
		model.addAttribute("allResponsibility", responsibilityService.getAll());
		model.addAttribute("allSemesters", semesterService.getAll());

		return "ResponsibilityToFaculty/viewResponsibilityToFaculty";
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
			map.put("id", c.getId().getResponsibilityId() + "");
			// map.put("year", c.getYear() + "");
			map.put("semesterId", c.getSemester().getSemesterId() + "");
			map.put("hoursperweek", c.getHoursPerWeek() + "");
			items.add(map);
		}
		return items;
	}
	
	@RequestMapping(value = "/api/ResponsibilityToFaculty/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetOneJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (ResponsibilityToFaculty c : responsibilityToFacultyService
				.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("facultyId", c.getFaculty().getFacultyId() + "");
			map.put("responsibilityId", c.getResponsibility()
					.getResponsibilityId() + "");
			// map.put("year", c.getYear() + "");
			map.put("semesterId", c.getSemester().getSemesterId() + "");
			map.put("hoursperweek", c.getHoursPerWeek() + "");
			items.add(map);
		}
		return items;
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
	 *            The course code that is syncronomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
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
		list.put("id", rToFaculty.getId().getResponsibilityId() + "");
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
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.ser ourseService
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

	@RequestMapping(value = "/api/ResponsibilityToFaculty/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		responsibilityToFacultyService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
