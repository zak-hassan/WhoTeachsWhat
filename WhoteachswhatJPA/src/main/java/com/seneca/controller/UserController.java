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
 * @author Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @lastmodified Feb 13, 2014
 * @version 0.0.1
 */

@Controller
public class UserController {
	//private static final Logger logger = LoggerFactory
	//		.getLogger(AdminController.class);

	@RequestMapping(value = "/manageUsers", method = RequestMethod.GET)
	public String ViewUsers() {
		//logger.info("WTWNavigator: \t /manageUsers");
		return "Anil_ManageUsers";
	}
	
	/**
	 * This method accepts data posted from the AddUserForm and adds a user using the appropriate
	 * service method
	 * 
	 * @see					com.seneca.service.UserService
	 * 
	 * @param userId		The user id of the new user. Must be unique
	 * 
	 * @return				A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxAddUser", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddUserJSON(
			@RequestParam(value = "userId", required = true) String userId) {

		Map<String, String> list = new HashMap<String, String>();
		list.put("UserId", userId);
		list.put("success", "true");
		
		return list;
	}
}
