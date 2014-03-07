package com.seneca.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified Dec 31, 2013
 * @version 0.0.1
 */

@Controller
public class ResponsibilityController {

	@RequestMapping(value = "/viewResponsibility", method = RequestMethod.GET)
	public String view() {
		return "Anil_ManageResponsibilities";
	}

	@RequestMapping(value = "/updateResponsibility", method = RequestMethod.GET)
	public String update() {
		return "Anil_UpdateResponsibilities";
	}
	
	/**
	 * This method accepts data posted from the AddResponsibilityForm and adds a responsibility using the appropriate
	 * service method
	 * 
	 * @see							com.seneca.service.ResponsibilityService
	 * 
	 * @param responsibility_type	The name of the responsibility. Must be unique
	 * 
	 * @return						A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxAddResponsibilty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddResponsibiltyJSON(
			@RequestParam(value = "responsibility_type", required = true) String responsibility_type) {
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("ResponsibilityType", responsibility_type);
		list.put("success", "true");
		
		return list;
	}
	
	/**
	 * This method accepts data posted from the UpdateResponsibilityForm and updates a responsibility using the appropriate
	 * service method
	 * 
	 * @see							com.seneca.service.ResponsibilityService
	 * 
	 * @param responsibility_type	The name of the responsibility to be updated
	 * 
	 * @return						A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxUpdateResponsibilty", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateResponsibiltyJSON(
			@RequestParam(value = "responsibility_type", required = true) String responsibility_type) {
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("ResponsibilityType", responsibility_type);
		list.put("success", "true");
		
		return list;
	}

}
