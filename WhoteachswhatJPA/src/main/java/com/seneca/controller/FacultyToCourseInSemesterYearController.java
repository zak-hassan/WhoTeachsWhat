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

import com.seneca.model.FacultyToCourseInSemesterYear;
import com.seneca.service.FacultyToCourseInSemesterYearService;

@Controller
public class FacultyToCourseInSemesterYearController {

	/**
	 * This class is the controller which regulates all evalfactor operations.
	 * 
	 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
	 *         <anil.d.santokhI@gmail.com>
	 * @lastmodified March 10, 2014
	 * @version 0.0.1
	 */

	@Autowired
	private FacultyToCourseInSemesterYearService facultyToCourseInSemesterYearService;

	@RequestMapping(value = "/viewFacultyToCourseInSemesterYear", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allFacultyToCourseInSemesterYear",
				facultyToCourseInSemesterYearService.getAll());

		return "FacultyToCourseInSemesterYear/viewFacultyToCourseInSemesterYear";
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

	@RequestMapping(value = "/api/facultyToCourseInSemesterYear", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (FacultyToCourseInSemesterYear c : facultyToCourseInSemesterYearService
				.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("additionAttribute", c.getAdditionAttribute() + "");
			map.put("comphourAllowance", c.getCompHour_allowance() + "");
			map.put("comphourAssigned", c.getCompHour_assigned() + "");
			map.put("sectionNumber", c.getSectionNumber() + "");
			map.put("semesterId", c.getSemesterId() + "");
			map.put("year", c.getYear() + "");
			map.put("comphourId", c.getCompHour().getCompHour_id() + "");
			map.put("courseId", c.getCourse().getCourseId() + "");
			map.put("facultyId", c.getFaculty().getFacultyId() + "");
			map.put("prepTypeId", c.getPrepTime().getPrepId() + "");
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

	@RequestMapping(value = "/api/facultyToCourseInSemesterYear", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "additionAttribute", required = true) String addition_attribute,
			@RequestParam(value = "comphourAllowance", required = true) String compHour_allowance,
			@RequestParam(value = "comphourAssigned", required = true) String compHour_assigned,
			@RequestParam(value = "sectionNumber", required = true) Integer section_number,
			@RequestParam(value = "semesterId", required = true) Integer semester_id,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "comphourId", required = true) Integer compHour_id,
			@RequestParam(value = "courseId", required = true) Integer course_id,
			@RequestParam(value = "facultyId", required = true) Integer faculty_id,
			@RequestParam(value = "prepTypeId", required = true) Integer prepType_id) {

		float comphoursAllowance = Float.parseFloat(compHour_allowance);
		float additionAttribute = Float.parseFloat(addition_attribute);
		float comphourAssigned = Float.parseFloat(compHour_assigned);
	 FacultyToCourseInSemesterYear fcsyear=	facultyToCourseInSemesterYearService.add(faculty_id, prepType_id,
				course_id, compHour_id, year, semester_id, section_number,
				comphoursAllowance, additionAttribute, comphourAssigned);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", fcsyear.getCisyId() + "");

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

	@RequestMapping(value = "/api/facultyToCourseInSemesterYear/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "additionAttribute", required = true) String addition_attribute,
			@RequestParam(value = "comphourAllowance", required = true) String compHour_allowance,
			@RequestParam(value = "comphourAssigned", required = true) String compHour_assigned,
			@RequestParam(value = "sectionNumber", required = true) Integer section_number,
			@RequestParam(value = "semesterId", required = true) Integer semester_id,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "comphourId", required = true) Integer compHour_id,
			@RequestParam(value = "courseId", required = true) Integer course_id,
			@RequestParam(value = "facultyId", required = true) Integer faculty_id,
			@RequestParam(value = "prepTypeId", required = true) Integer prepType_id) {

		float comphoursAllowance = Float.parseFloat(compHour_allowance);
		float additionAttribute = Float.parseFloat(addition_attribute);
		float comphourAssigned = Float.parseFloat(compHour_assigned);
		facultyToCourseInSemesterYearService.update(id, faculty_id,
				prepType_id, course_id, compHour_id, year, semester_id,
				section_number, comphoursAllowance, additionAttribute,
				comphourAssigned);

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

	@RequestMapping(value = "/api/facultyToCourseInSemesterYear/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		facultyToCourseInSemesterYearService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
