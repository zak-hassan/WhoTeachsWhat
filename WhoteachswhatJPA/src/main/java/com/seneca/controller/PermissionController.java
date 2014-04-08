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

import com.seneca.model.AccessLevel;
import com.seneca.service.PermissionService;

/**
 * This class is the controller which regulates all CRUD operations for access level
 * 
 * @author Anil Santokhi <Anil.D.Santokhi@gmail.com>, Zak Hassan <zak.hassan1010@gmail.>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class PermissionController {
	
	@Autowired
	private PermissionService permissionService;

	/**
	 * This method accepts no parameters and maps the URL '/manageAccessLevel' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.AccessLevel
	 * @return
	 * 		The view page to be rendered, along with a List of all AccessLevels through the ModelMap
	 */
	@RequestMapping(value = "/manageAccessLevel", method = RequestMethod.GET)
	public String ViewPermission(ModelMap model) {
		model.addAttribute("entityList", permissionService.getAll());
		return "manageAccessLevel";
	}
	
	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all access levels in the database.
	 * 
	 * @see
	 * 		com.seneca.service.AccessLevelService
	 * @return 
	 * 		HashMap containing the Access level name and id in JSON
	 */
	@RequestMapping(value = "/api/permission", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (AccessLevel c : permissionService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("pname", c.getAccessName() + "");
			map.put("pid", c.getAccessId() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * This method accepts an identifier and returns an AccessLevel object with a matching id
	 * 
	 * @see 
	 * 		com.seneca.service.AccessLevelService
	 * @param id
	 * 		 Uniquely identifies an AccessLevel object
	 * @return 
	 * 		HashMap containing the Access level name and id in JSON
	 */
	@RequestMapping(value = "/api/permission/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listGetOneJSON(@PathVariable("id") Integer id) {
		AccessLevel accesslevel = permissionService.getOne(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("a_Id", accesslevel.getAccessId() + "");
		list.put("a_Name", accesslevel.getAccessName());
		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of an AccessLevel
	 * 
	 * @see 
	 * 		com.seneca.service.AccessLevelService
	 * @param permission_name
	 * 		The name of the access level (user's role)
	 * @return 
	 * 		A HashMap containing the Access level id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/permission", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "permission_name", required = true) String pname) {

		AccessLevel accesslevel = permissionService.add(pname);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", accesslevel.getAccessId() + "");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of an AccessLevel
	 * 
	 * @see 
	 * 		com.seneca.service.AccessLevelService
	 * @param id
	 * 		Uniquely identifies an AccessLevel object
	 * @param permission_name
	 * 		The name of the access level (user's role)
	 * @return 
	 * 		A HashMap containing the Access level id and a message containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/permission/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer pid,
			@RequestParam(value = "permission_name", required = true) String pname) {

		permissionService.update(pid, pname);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of an AccessLevel
	 * 
	 * @see 
	 * 		com.seneca.service.AccessLevelService
	 * @param id
	 * 		 Uniquely identifies an AccessLevel object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/permission/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer pid) {

		permissionService.delete(pid);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
