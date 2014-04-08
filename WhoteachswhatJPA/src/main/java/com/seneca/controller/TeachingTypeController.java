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

/**
 * This class is the controller which regulates all evalfactor operations.
 * 
 * @author Anil Santokhi <anil.d.santokhI@gmail.com>, Zak Hassan <zak.hassan1010@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class TeachingTypeController {

	@Autowired
	private TeachingTypeService teachingTypeService;

	/**
	 * This method accepts no parameters and maps the URL '/manageTeachingType' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.TeachingType
	 * @return
	 * 		The view page to be rendered, along with a List of all TeachingTypes through the ModelMap
	 */
	@RequestMapping(value = "/manageTeachingType", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allTeachingTypes", teachingTypeService.getAll());

		return "manageTeachingType";
	}

	// REST API ENDPOINTS:

	/**
	 * This method is accessed through a POST request and allows the creation of a TeachingType
	 * 
	 * @see 
	 * 		com.seneca.service.TeachingTypeService
	 * @param teachingType_name
	 * 		The name of the teaching type
	 * @return 
	 * 		A HashMap containing the TeachingType id and a message containing the success of the operation in JSON
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
	 * This method is accessed through a POST request and allows the updating of a TeachingType
	 * 
	 * @see 
	 * 		com.seneca.service.TeachingTypeService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param teachingType_name
	 * 		The name of the teaching type
	 * @return 
	 * 		A HashMap containing the success of the operation in JSON
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
	 * This method is accessed through a DELETE request and allows the deleting of a TeachingType
	 * 
	 * @see 
	 * 		com.seneca.service.TeachingTypeService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
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
