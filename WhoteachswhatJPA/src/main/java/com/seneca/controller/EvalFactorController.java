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

import com.seneca.model.EvalFactor;
import com.seneca.service.EvalFactorService;

@Controller
public class EvalFactorController {
	/**
	 * This class is the controller which regulates all evalfactor operations.
	 *
	 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
	 *         <anil.d.santokhI@gmail.com>
	 * @lastmodified March 10, 2014
	 * @version 0.0.1
	 */

	@Autowired
	private EvalFactorService evalFactorService;

	@RequestMapping(value = "/viewEvalFactor", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allEvalFactors", evalFactorService.getAll());

		return "EvalFactor/viewEvalFactor";
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

	@RequestMapping(value = "/api/evalfactor", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (EvalFactor c : evalFactorService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("efName", c.getEvalName() + "");
			map.put("efId", c.getEvalId() + "");
			map.put("efFactor", c.getEvalFactor() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/evalfactor/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetOneJSON(@PathVariable("id") Integer id) {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		EvalFactor c = evalFactorService.getOne(id);
			Map<String, String> map = new HashMap<String, String>();
			map.put("efName", c.getEvalName() + "");
			map.put("efId", c.getEvalId() + "");
			map.put("efFactor", c.getEvalFactor() + "");
			items.add(map);
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

	@RequestMapping(value = "/api/evalfactor", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "evalName", required = true) String evalName,
			@RequestParam(value = "evalFactor", required = true) String evalFactor) {
		float efact = Float.parseFloat(evalFactor);
		EvalFactor ef = evalFactorService.add(evalName, efact);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", ef.getEvalId() + "");
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

	@RequestMapping(value = "/api/evalfactor/{id}", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "evalName", required = true) String evalName,
			@RequestParam(value = "evalFactor", required = true) String evalFactor) {
		float efact = Float.parseFloat(evalFactor);
		evalFactorService.update(id, evalName, efact);
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

	@RequestMapping(value = "/api/evalfactor/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		evalFactorService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
