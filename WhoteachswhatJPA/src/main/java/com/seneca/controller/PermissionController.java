package com.seneca.controller;

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
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @lastmodified Feb 26, 2014
 * @version 0.0.1
 */

@Controller
public class PermissionController {
	
	@Autowired
	private PermissionService permissionService;

	@RequestMapping(value = "/managePermission", method = RequestMethod.GET)
	public String ViewPermission(ModelMap model) {
		model.addAttribute("entityList", permissionService.getAll());
		return "manage_permission";
	}
	
	@RequestMapping(value = "/updatePermission", method = RequestMethod.GET)
	public String UpdatePermission() {
		return "update_permission";
	}
	
	/**
	 * This method accepts data posted from the AddPermissionForm and adds a permission using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.PermissionService
	 * 
	 * @param permissionId			The name of the permission. Must be unique
	 * 
	 * @return						A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxAddPermission", method = RequestMethod.POST)
	public String ajaxAddPermission (
			@RequestParam(value = "permissionId", required = true) String permissionId) {
		
		try {
			permissionService.add(permissionId);
		}
		catch (Exception e) {
			
		}
		
		return "manage_permission";
	}
	
	/**
	 * This method accepts data posted from the UpdatePermissionForm and updates a permission using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.PermissionService
	 * 
	 * @param permissionId			The name of the permission to be updated
	 * 
	 * @return						A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxUpdatePermission", method = RequestMethod.POST)
	public String ajaxUpdatePermission(
			@RequestParam(value = "permissionId", required = true) Integer permissionId,
			@RequestParam(value = "permissionName", required = true) String permissionName) {
		
		try {
			permissionService.update(permissionId, permissionName);
		}
		catch (Exception e) {
			
		}
		
		return "update_permission";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all comp hour types in the
	 * database.
	 * 
	 * @see com.seneca.service.PermissionsService
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/permission", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<AccessLevel> listGetJSON() {

		return permissionService.getAll();
	}

	/**
	 * This method accepts an identifier and returns a Permission object with a
	 * matching id
	 * 
	 * @see com.seneca.service.PermissionsService
	 * 
	 * @param id
	 *            Uniquely identifies the object
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/permission/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	AccessLevel listGetOneJSON(@PathVariable("id") Integer id) {
		return permissionService.getOne(id);
	}

	/**
	 * This method accepts data posted from the AddPermissionTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.PermissionsService
	 * 
	 * @param comp_hour_code
	 *            A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A list containing the success of the operation
	 */

	@RequestMapping(value = "/api/Permission", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "permission_name", required = true) String pname) {

		permissionService.add(pname);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the updatePermissionTypeForm and
	 * updates a comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.PermissionsService
	 * 
	 * @param id
	 *            Uniquely identifies the object
	 * @param comp_hour_code
	 *            A code uniquely identifying the comp hour type
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A list containing the success of the operation
	 */

	@RequestMapping(value = "/api/permission/{id}", method = RequestMethod.PUT, produces = MediaType.APPLICATION_JSON_VALUE)
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
	 * This method accepts an identifier and deletes a Permission object with a
	 * matching id. Must be accessed through HTTP DELETE
	 * 
	 * @see com.seneca.service.PermissionsService
	 * 
	 * @param id
	 *            Uniquely identifies the object
	 * 
	 * @return A list containing the success of the operation
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
