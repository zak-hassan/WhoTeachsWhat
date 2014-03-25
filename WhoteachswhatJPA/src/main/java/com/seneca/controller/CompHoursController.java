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
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhi@gmail.com>
 * @lastmodified Feb 27, 2014
 * @version 0.0.1
 */

@Controller
public class CompHoursController {

	@Autowired
	private CompHoursService compHoursService;

	@RequestMapping(value = "/manageCompHours", method = RequestMethod.GET)
	public String view(ModelMap model) {
		
		model.addAttribute("allComphours", compHoursService.getAll());
		
		return "manageCompHours";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all comp hour types in the
	 * database.
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @return JSON object with a list of course to display in datatable
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
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param id
	 * 		 Uniquely identifies the object
	 * 
	 * @return JSON object with a list of course to display in datatable
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
	 * This method accepts data posted from the AddCompHourTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_code
	 * 		A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 * 		The name of the comp hour type
	 * 
	 * @return A list containing the success of the operation
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
	 * This method accepts data posted from the updateCompHourTypeForm and updates a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param id
	 * 		 Uniquely identifies the object
	 * @param comp_hour_code
	 * 		A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 * 		The name of the comp hour type
	 * 
	 * @return A list containing the success of the operation
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
	 * This method accepts an identifier and deletes a CompHour object with a matching id. Must be accessed through
	 * HTTP DELETE
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param id
	 * 		 Uniquely identifies the object
	 * 
	 * @return A list containing the success of the operation
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
