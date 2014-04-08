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

import com.seneca.model.CompHour;
import com.seneca.service.CompHoursService;

/**
 * This class is the controller which regulates all complimentary hour CRUD operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhi@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class CompHoursController {

	@Autowired
	private CompHoursService compHoursService;

	/**
	 * This method accepts no parameters and maps the URL '/manageCompHours' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.CompHour
	 * @return
	 * 		The view page to be rendered, along with a List of all CompHours through the ModelMap
	 */
	@RequestMapping(value = "/manageCompHours", method = RequestMethod.GET)
	public String view(ModelMap model) {
		
		model.addAttribute("allComphours", compHoursService.getAll());
		
		return "manageCompHours";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all comp hour types in the database.
	 * 
	 * @see
	 * 		com.seneca.service.CompHoursService
	 * @return 
	 * 		HashMap containing the Comphour name and code in JSON
	 */
	@RequestMapping(value = "/api/comphour", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (CompHour compHour : compHoursService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("name", compHour.getCompHour_name());
			map.put("code", compHour.getCompHour_code());
			items.add(map);
		}
		return items;
	}

	/**
	 * This method accepts an identifier and returns a CompHour object with a matching id
	 * 
	 * @see 
	 * 		com.seneca.service.CompHoursService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return 
	 * 		HashMap containing the Comphour name and code in JSON
	 */
	@RequestMapping(value = "/api/comphour/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listGetOneJSON(@PathVariable("id") Integer id) {

		Map<String, String> list = new HashMap<String, String>();
		CompHour compHour = compHoursService.getOne(id);
		
		list.put("name", compHour.getCompHour_name());
		list.put("code", compHour.getCompHour_code());

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of a CompHour
	 * 
	 * @see 
	 * 		com.seneca.service.CompHoursService
	 * @param comp_hour_code
	 * 		A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 * 		The name of the comp hour type
	 * @return 
	 * 		A HashMap containing the CompHour id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/comphour", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "comp_hour_code", required = true) String comp_hour_code,
			@RequestParam(value = "comp_hour_name", required = true) String comp_hour_name) {

		CompHour comphour = compHoursService
				.add(comp_hour_code, comp_hour_name);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", comphour.getCompHour_id() + "");
		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a CompHour
	 * 
	 * @see 
	 * 		com.seneca.service.CompHoursService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @param comp_hour_code
	 * 		A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 * 		The name of the comp hour type
	 * @return
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/comphour/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "comp_hour_code", required = true) String comp_hour_code,
			@RequestParam(value = "comp_hour_name", required = true) String comp_hour_name) {

		compHoursService.update(id, comp_hour_code, comp_hour_name);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a CompHour
	 * 
	 * @see 
	 * 		com.seneca.service.CompHoursService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/comphours/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		compHoursService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
