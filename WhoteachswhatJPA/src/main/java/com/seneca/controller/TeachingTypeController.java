package com.seneca.controller;

import java.util.HashMap;
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

import com.seneca.model.TeachingType;
import com.seneca.service.TeachingTypeService;

@Controller
public class TeachingTypeController {

	/**
	 * This class is the controller which regulates all evalfactor operations.
	 * 
	 * @author Anil Santokhi <anil.d.santokhI@gmail.com>
	 * @lastmodified March 24, 2014
	 * @version 0.0.1
	 */

	@Autowired
	private TeachingTypeService teachingTypeService;

	@RequestMapping(value = "/manageTeachingType", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allTeachingTypes", teachingTypeService.getAll());

		return "manageTeachingType";
	}

	// REST API ENDPOINTS:

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

	@RequestMapping(value = "/api/teachingType", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "teachingType_name", required = true) String teachingType_name) {

		TeachingType teachingType = teachingTypeService.add(teachingType_name);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", teachingType.getTeachingType_id() + "");

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

	@RequestMapping(value = "/api/teachingType/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "teachingType_name", required = true) String teachingType_name) {
		teachingTypeService.update(id, teachingType_name);
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

	@RequestMapping(value = "/api/teachingType/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		teachingTypeService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
