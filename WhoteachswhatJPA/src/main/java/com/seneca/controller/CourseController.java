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

import com.seneca.model.Course;
import com.seneca.service.CourseService;

/**
 * This class is the controller which regulates all course CRUD operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	/**
	 * This method accepts no parameters and maps the URL '/viewCourse' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.Course
	 * @return
	 * 		The view page to be rendered, along with a List of all Courses through the ModelMap
	 */
	@RequestMapping(value = "/viewCourse", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allCourses", courseService.getAll());

		return "Course/view_courses";
	}

	// REST API ENDPOINTS:
	
	/**
	 * This method accepts no parameters and returns all courses in the database.
	 * 
	 * @see
	 * 		com.seneca.service.CourseService
	 * @return 
	 * 		A List of HashMaps containing course code and name in JSON
	 */
	@RequestMapping(value = "/api/course", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (Course c : courseService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", c.getCourseName());
			map.put("code", c.getCourseCode());
			map.put("crossOver", c.getCrossoverCourse());
			map.put("oldname", c.getOldCourse());
			items.add(map);
		}
		return items;
	}
	
	/**
	 * This method accepts no parameters and returns a single course in the database based on the passed id
	 * 
	 * @see
	 * 		com.seneca.service.CourseService
	 * @param
	 * 		Uniquely identifies the object
	 * @return 
	 * 		HashMap containing course code and name in JSON
	 */
	@RequestMapping(value = "/api/course/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetOneJSON(@PathVariable("id") Integer id) {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		Course c = courseService.getById(id);
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", c.getCourseName());
			map.put("code", c.getCourseCode());
			items.add(map);
		return items;
	}
	
	/**
	 * This method is accessed through a POST request and allows the creation of a Course
	 * 
	 * @see
	 * 		com.seneca.service.CourseService
	 * @param courseCode
	 * 		The six to eight digit course code
	 * @param courseName
	 * 		The name of the course
	 * @param crossoverCourse
	 * 		The course code that is synonymous with this course code
	 * @param oldCourse
	 * 		The previous course code of the course, if any
	 * @return
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/course", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse,
			@RequestParam(value = "evalFactor1", required = true) String evalFactor1,
			@RequestParam(value = "evalFactor2", required = true) String evalFactor2,
			@RequestParam(value = "evalFactor3", required = true) String evalFactor3) {

		Float eval1 = Float.parseFloat(evalFactor1);
		Float eval2 = Float.parseFloat(evalFactor2);
		Float eval3 = Float.parseFloat(evalFactor3);
		
		Course course = courseService.add(courseCode, courseName,
				crossoverCourse, oldCourse, eval1, eval2, eval3);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a Course
	 * 
	 * @see
	 * 		com.seneca.service.CourseService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param courseCode
	 * 		The six to eight digit course code
	 * @param courseName
	 * 		The name of the course
	 * @param crossoverCourse
	 * 		The course code that is synonymous with this course code
	 * @param oldCourse
	 * 		The previous course code of the course, if any
	 * @return
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/course/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse,
			@RequestParam(value = "evalFactor1", required = true) String evalFactor1,
			@RequestParam(value = "evalFactor2", required = true) String evalFactor2,
			@RequestParam(value = "evalFactor3", required = true) String evalFactor3) {

		Float eval1 = Float.parseFloat(evalFactor1);
		Float eval2 = Float.parseFloat(evalFactor2);
		Float eval3 = Float.parseFloat(evalFactor3);
		
		courseService.update(id, courseCode, courseName, crossoverCourse,
				oldCourse, eval1, eval2, eval3);
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a Course
	 * 
	 * @see 
	 * 		com.seneca.service.CourseService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
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
