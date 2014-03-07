package com.seneca.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seneca.model.Course;
import com.seneca.service.CourseService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <Anil.D.SantokhI@gmail.com>
 * @lastmodified Feb 26, 2014
 * @version 0.0.1
 */

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "/viewCourse", method = RequestMethod.GET)
	public String view() {
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
	
	/**
	 * This method accepts data posted from the AddCourseForm and creates a course using the appropriate
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
	
	// Method call changes URL
	@RequestMapping(value = "/ajaxAddCourse", method = RequestMethod.POST)
	public String ajaxAddCourse(
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse) {

		try {
			courseService.addCourse(courseCode, courseName, crossoverCourse, oldCourse);

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		// TODO: Success or failure response to client
		
		return "Course/add_course"; 
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
	
	@RequestMapping(value = "/ajaxUpdateCourse", method = RequestMethod.POST)
	public String ajaxUpdateCourse(
			@RequestParam(value = "course_code", required = true) String courseCode,
			@RequestParam(value = "course_name", required = true) String courseName,
			@RequestParam(value = "crossover_input", required = false) String crossoverCourse,
			@RequestParam(value = "reference_input", required = false) String oldCourse) {
		
		try {
			courseService.updateCourse(courseCode, courseName, crossoverCourse, oldCourse);

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		// TODO: Success or failure response to client
		
		return "Course/update_course";
	}
	
	/**
	 * This method accepts data posted from the AddUserForm and adds a user using the appropriate
	 * service method
	 * 
	 * @see					com.seneca.service.CourseController
	 * 
	 * @param N/A 			
	 * 
	 * @return				Json array of all courses in the database.
	 */
	
	@RequestMapping(value = "/courses", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Course> listAddUserJSON() {
		return courseService.allCourses();
	}
}
