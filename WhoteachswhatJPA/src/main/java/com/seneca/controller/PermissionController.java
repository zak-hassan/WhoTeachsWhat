package com.seneca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	private PermissionService pc = new PermissionService();

	@RequestMapping(value = "/managePermission", method = RequestMethod.GET)
	public String ViewPermission() {
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
			pc.addPermission(permissionId);
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
			@RequestParam(value = "permissionId", required = true) String permissionId) {
		
		try {
			pc.updatePermission(permissionId);
		}
		catch (Exception e) {
			
		}
		
		return "update_permission";
	}
}
