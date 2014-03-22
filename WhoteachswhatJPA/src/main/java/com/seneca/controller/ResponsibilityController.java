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

import com.seneca.model.Responsibility;
import com.seneca.service.ResponsibilityService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhi@gmail.com>
 * @lastmodified March 11, 2014
 * @version 0.0.1
 */

@Controller
public class ResponsibilityController {

	@Autowired
	ResponsibilityService responsibilityService;

	@RequestMapping(value = "/viewResponsibility", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allRespon", responsibilityService.getAll());
		
		return "manageResponsibilities";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/responsibility", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {

		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (Responsibility c : responsibilityService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("r_name", c.getResponsibilityName() + "");
			map.put("r_code", c.getResponsibilityCode() + "");
			map.put("r_id", c.getResponsibilityId() + "");
			items.add(map);
		}
		return items;
	}

	// REST API ENDPOINTS:
	

	/**
	 * This method accepts an identifier and returns the responsibility object corresponding with that identifier in the
	 * database.
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param id
	 *		Unique identifier
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Responsibility listGetOneJSON(@PathVariable("id") Integer id) {
		return responsibilityService.getOne(id);
	}

	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A list containing the success of the operation
	 */

	@RequestMapping(value = "/api/responsibility", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(@RequestParam(value = "respon_code", required = true) String respon_code,
			@RequestParam(value = "respon_name", required = true) String respon_name) {
		
		responsibilityService.add(respon_code, respon_name);
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateResponsibilityForm and updates a
	 * responsibility using the appropriate service method
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param id
	 * 		Uniquely identifies the object
	 *            
	 * @return A list containing the success of the operation
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(@PathVariable("id") Integer id) {

		responsibilityService.update(id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts an identifier and deletes an object matching said identifier
	 * 
	 * @see com.seneca.service.ResponsibilityService
	 * 
	 * @param id
	 * 			Uniquely identifies the object
	 * 
	 * @return A list containing the success of the operation
	 */

	@RequestMapping(value = "/api/responsibility/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		responsibilityService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
