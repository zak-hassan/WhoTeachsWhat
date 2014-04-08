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

import com.seneca.model.Factor;
import com.seneca.repository.FactorDao;
import com.seneca.service.FactorService;

/**
 * This class is the controller which regulates all CRUD operations for a factor
 *
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April, 7 2014
 * @version 1.0
 */

@Controller
public class FactorController {
	
	/**
	 * This method accepts no parameters and maps the URL '/viewFactor' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.Factor
	 * @return
	 * 		The view page to be rendered, along with a List of all Factors through the ModelMap
	 */
	@Autowired
	FactorService factorService;
	
	@RequestMapping(value = "/viewFactor", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allFactors", factorService.getAll());

		return "Factor/viewFactor";
	}
	
	/**
	 * This method is accessed through a POST request and allows the creation of a Factor
	 * 
	 * @see
	 * 		com.seneca.service.FactorService
	 * @param factorName
	 * 		The name of the factor
	 * @param factorValue
	 * 		The value of the factor used to multiply comp hour value
	 * @return
	 * 		A HashMap containing the Factor id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/factor", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "factorName", required = true) String factorName,
			@RequestParam(value = "factorValue", required = true) String factorValue) {
		Map<String, String> list = new HashMap<String, String>();
		float f= Float.parseFloat(factorValue);
		factorService.add(factorName,f);
		list.put("success", "true");
		list.put("id", null);
		return list;
	}
	
	/**
	 * This method is accessed through a POST request and allows the updating of a Factor
	 * 
	 * @see
	 * 		com.seneca.service.FactorService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param factorName
	 * 		The name of the factor
	 * @param factorValue
	 * 		The value of the factor used to multiply comp hour value
	 * @return
	 * 		A HashMap containing the containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/factor/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "factorName", required = true) String factorName,
			@RequestParam(value = "factorValue", required = true) String factorValue) {
		Map<String, String> list = new HashMap<String, String>();
			float f= Float.parseFloat(factorValue);
			factorService.update(id, factorName,f);
			list.put("success", "true");
			
		return list;
	}
	
	/**
	 * This method is accessed through a DELETE request and allows the deleting of a Factor
	 * 
	 * @see 
	 * 		com.seneca.service.FactorService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/factor/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		Map<String, String> list = new HashMap<String, String>();
		factorService.delete(id);
		list.put("success", "true");
		return list;
	}
}
