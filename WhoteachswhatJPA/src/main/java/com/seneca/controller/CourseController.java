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

import com.seneca.model.Course;
import com.seneca.service.CourseService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "/viewCourse", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("entityList", courseService.getAll());

		return "Course/view_courses";
	}

	@RequestMapping(value = "/updateCourse", method = RequestMethod.GET)
	public String update() {
		return "Course/update_course";
	}

	@RequestMapping(value = "/addCourse", method = RequestMethod.GET)
	public String add() {
		return "Course/add_course";
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

	@RequestMapping(value = "/api/course", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Course> listGetJSON() {
		return courseService.getAll();
	}
	
	
	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a course using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.CourseService
	 * 
	 * @param courseCode			The six to eight digit course code
	 * @param courseName			The name of the course
	 * @param crossoverCourse		The course code that is syncronomous with this course code
	 * @param oldCourse				The previous course code of the course, if any
	 * 
	 * @return						A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/course", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse) {

		courseService.add(courseCode, courseName);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a course using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.CourseService
	 * 
	 * @param courseCode			The six to eight digit course code
	 * @param courseName			The name of the course
	 * @param crossoverCourse		The course code that is synonomous with this course code
	 * @param oldCourse				The previous course code of the course, if any
	 * 
	 * @return						A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/course/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse) {

		courseService.update( id, courseName, courseCode );
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a course using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.CourseService
	 * 
	 * @param courseCode			The six to eight digit course code
	 * @param courseName			The name of the course
	 * @param crossoverCourse		The course code that is synonomous with this course code
	 * @param oldCourse				The previous course code of the course, if any
	 * 
	 * @return						A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/course/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		courseService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
	
}
