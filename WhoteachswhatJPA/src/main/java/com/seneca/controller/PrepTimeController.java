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

import com.seneca.model.PrepTime;
import com.seneca.service.PrepTimeService;

@Controller
public class PrepTimeController {
	/**
	 * This class is the controller which regulates all evalfactor operations.
	 * 
	 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
	 *         <anil.d.santokhI@gmail.com>
	 * @lastmodified March 10, 2014
	 * @version 0.0.1
	 */

	@Autowired
	private PrepTimeService prepTimeService;

	@RequestMapping(value = "/viewPrepTime", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allPreptimes", prepTimeService.getAll());

		return "PrepTime/viewPrepTime";
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

	@RequestMapping(value = "/api/preptime", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (PrepTime c : prepTimeService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("pname", c.getPrepName() + "");
			map.put("pid", c.getPrepId() + "");
			map.put("pfactor", c.getPrepFactor() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/api/preptime/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> getByIDJSON(@PathVariable("id") Integer id) {

		PrepTime prep = prepTimeService.getById(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("preptimeName", prep.getPrepName());
		list.put("preptimeFactor", prep.getPrepFactor() + "");
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
	 *            The course code that is syncronomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/preptime", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "preptimeName", required = true) String preptimeName,
			@RequestParam(value = "preptimeFactor", required = true) String preptimeFactor) {
		Map<String, String> list = new HashMap<String, String>();
		if( preptimeName.length() <= 2 ) {
			float preptimefact = Float.parseFloat(preptimeFactor);
			PrepTime preptime = prepTimeService.add(preptimeName, preptimefact);
			list.put("success", "true");
			list.put("id", preptime.getPrepId() + "");
		} else {
			list.put("success","false");
			list.put("error","preptype name must be less then 2 characters");
		}
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

	@RequestMapping(value = "/api/preptime/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "preptimeName", required = true) String preptimeName,
			@RequestParam(value = "preptimeFactor", required = true) String preptimeFactor) {
		
		Map<String, String> list = new HashMap<String, String>();
		
		if( preptimeName.length() <= 2 ) {
			float preptimefact = Float.parseFloat(preptimeFactor);
			prepTimeService.update(id, preptimeName, preptimefact);
			list.put("success", "true");
		} else {
			list.put("success","false");
			list.put("error","preptype name must be less then 2 characters");
		}
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

	@RequestMapping(value = "/api/preptime/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		prepTimeService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
