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


@Controller
public class FactorController {
	
	@RequestMapping(value = "/viewFactor", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allFactors", null);

		return "Factor/viewFactor";
	}
	
	@RequestMapping(value = "/api/factor", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "factorName", required = true) String factorName,
			@RequestParam(value = "factorValue", required = true) String factorValue) {
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", null);
		return list;
	}
	
	@RequestMapping(value = "/api/factor/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "factorName", required = true) String factorName,
			@RequestParam(value = "factorValue", required = true) String factorValue) {
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
	
	@RequestMapping(value = "/api/factor/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
