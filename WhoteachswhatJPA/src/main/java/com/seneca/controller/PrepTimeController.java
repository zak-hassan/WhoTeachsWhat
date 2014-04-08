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
	 * This class is the controller which regulates all CRUD operations for PrepTime
	 * 
	 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
	 * @lastmodified April 7, 2014
	 * @version 1.0
	 */

	@Autowired
	private PrepTimeService prepTimeService;

	/**
	 * This method accepts no parameters and maps the URL '/viewPrepTime' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.PrepTime
	 * @return
	 * 		The view page to be rendered, along with a List of all PrepTimes through the ModelMap
	 */
	@RequestMapping(value = "/viewPrepTime", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allPreptimes", prepTimeService.getAll());

		return "PrepTime/viewPrepTime";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all prep times in the database.
	 * 
	 * @see
	 * 		com.seneca.service.PrepTimeService
	 * @return 
	 * 		HashMap containing the Prep Time name, id and factor in JSON
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
	 * This method accepts an identifier and returns an PrepTime object with a matching id
	 * 
	 * @see 
	 * 		com.seneca.service.PrepTimeService
	 * @param id
	 * 		 Uniquely identifies an PrepTime object
	 * @return 
	 * 		HashMap containing the Prep time name and factor in JSON
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
	 * This method is accessed through a POST request and allows the creation of a PrepTime
	 * 
	 * @see
	 * 		com.seneca.service.PrepTimeService
	 * @param preptimeName
	 * 		The name of the prep time. Can only be 1-2 characters
	 * @param preptimeFactor
	 * 		The applied factor
	 * @return
	 * 		A HashMap containing the Prep Time id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/preptime", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "preptimeName", required = true) String preptimeName,
			@RequestParam(value = "preptimeFactor", required = true) String preptimeFactor) {

		float preptimefact = Float.parseFloat(preptimeFactor);

		PrepTime preptime = prepTimeService.add(preptimeName, preptimefact);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", preptime.getPrepId() + "");
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
		float preptimefact = Float.parseFloat(preptimeFactor);
		prepTimeService.update(id, preptimeName, preptimefact);
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

	@RequestMapping(value = "/api/preptime/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		prepTimeService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
