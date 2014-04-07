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


/**
 * This class is the controller which regulates all CRUD operations for an evaluation factor
 *
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April, 7 2014
 * @version 1.0
 */

@Controller
public class EvalFactorController {
	@Autowired
	private EvalFactorService evalFactorService;

	/**
	 * This method accepts no parameters and maps the URL '/viewEvalFactor' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.EvalFactor
	 * @return
	 * 		The view page to be rendered, along with a List of all EvalFactors through the ModelMap
	 */
	@RequestMapping(value = "/viewEvalFactor", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allEvalFactors", evalFactorService.getAll());

		return "EvalFactor/viewEvalFactor";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all EvalFactors in the database.
	 * 
	 * @see
	 * 		com.seneca.service.EvalFactorService
	 * @return 
	 * 		HashMap containing the EvalFactor name and id in JSON
	 */
	@RequestMapping(value = "/api/evalfactor", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (EvalFactor c : evalFactorService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("efName", c.getEvalName() + "");
			map.put("efId", c.getEvalId() + "");
			map.put("efFactor", c.getFactorVal() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * This method accepts no parameters and returns all EvalFactors in the database.
	 * 
	 * @param id
	 * 		Uniquely identifies the object
	 * @see
	 * 		com.seneca.service.EvalFactorService
	 * @return 
	 * 		HashMap containing the EvalFactor name and id in JSON
	 */
	@RequestMapping(value = "/api/evalfactor/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listGetOneJSON(@PathVariable("id") Integer id) {
		Map<String, String> list = new HashMap<String, String>();
		EvalFactor c = evalFactorService.getOne(id);
		
		list.put("efName", c.getEvalName() + "");
		list.put("efId", c.getEvalId() + "");
		list.put("efFactor", c.getFactorVal() + "");
		
		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of an EvalFactor
	 * 
	 * @see
	 * 		com.seneca.service.EvalFactorService
	 * @param evalName
	 * 		The name of the evaluation
	 * @param evalFactor
	 * 		To be deleted
	 * @return
	 * 		A HashMap containing the EvalFactor id and a message containing the success of the operation in JSON
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
	 * This method is accessed through a POST request and allows the updating of an EvalFactor
	 * 
	 * @see
	 * 		com.seneca.service.EvalFactorService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param evalName
	 * 		The name of the evaluation
	 * @param evalFactor
	 * 		To be deleted
	 * @return
	 * 		A HashMap containing the containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/evalfactor/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
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
	 * This method is accessed through a DELETE request and allows the deleting of a EvalFactor
	 * 
	 * @see 
	 * 		com.seneca.service.EvalFactorService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
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
