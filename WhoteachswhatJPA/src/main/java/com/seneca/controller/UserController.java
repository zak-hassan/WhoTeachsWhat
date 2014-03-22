package com.seneca.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.seneca.model.Account;
import com.seneca.service.AccessLevelService;
import com.seneca.service.AccountService;


/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @lastmodified Feb 13, 2014
 * @version 0.0.1
 */

@Controller
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	AccountService accountService;
	
	@Autowired
	AccessLevelService accessLevelService;

	@RequestMapping(value = "/manageUsers", method = RequestMethod.GET)
	public String ViewUsers(ModelMap model) {
		//logger.info("WTWNavigator: \t /manageUsers");
		
		model.addAttribute("allUsers",accountService.getAll());
		model.addAttribute("allRoles",accessLevelService.getAll()); 
		
		return "Anil_ManageUsers";
	}
	
	// REST API ENDPOINTS:
	
	
	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
	 */

	@RequestMapping(value = "/api/account", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Account> accounts = accountService.getAll();
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();

		for (Account account : accounts) {
			Map<String, String> mapAccount = new HashMap<String, String>();
			mapAccount.put("username", account.getUsername());
			mapAccount.put("accessLevel", account.getAccessLevel()
					.getAccessName());
			mapAccount.put("accessLevelID", account.getAccessLevel()
					.getAccessId() + "");
			items.add(mapAccount);

		}
		return items;
	}

	// REST API ENDPOINTS:
		/**
		 * This method accepts no parameters and returns all course in in the
		 * database.
		 * 
		 * @see com.seneca.service.CourseService
		 * 
		 * 
		 * @return JSON object with a list of course to display in datatable
		 */

		@RequestMapping(value = "/api/account/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
		public @ResponseBody
		List<Account> listGetJSON(@PathVariable("id") Integer id) {
			return accountService.getOne(id);
		}

		/**
		 * This method is incomplete
		 * course_code=CPA
		 * &course_name=Computer+Programming+And+Analysis
		 * &simpleSelectBox=1
		 * &course_name=
		 * &dualMultiSem1=DBDA5250&course_name=&dualMultiSem2=BACA3440&dualMultiSem2=DBAA6250&dualMultiSem2=UNXA5110&dualMultiSem2=VBAA5440&dualMultiSem2=WINA2100&dualMultiSem2=WSAA5000&course_name=&dualMultiSem3=DBWA6240&course_name=&dualMultiSem4=DBJA5650&course_name=&dualMultiSem5=DBLA6260&course_name=&dualMultiSem6=NETA6050&course_name=
		 * 
		 * @param responsibility_type
		 * @return
		 */

		
	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a comp hour type using the appropriate
	 * service method
	 * 
	 * @see 							com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type			The name of the comp hour type
	 * 
	 * @return							A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/account", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "username", required = true) String uname, 
			@RequestParam(value = "accessLevel", required = true) Integer level) {
		logger.info("START: Adding Account");
		accountService.add(uname, level);
		logger.info("FINISH: Adding Account");
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a course using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.CourseService
	 * 
	 * @param courseCode			The six to eight digit course code
	 * @param courseName			The name of the course
	 * @param crossoverCourse		The course code that is synonomous with this course code
	 * @param oldCourse				The previous course code of the course, if any
	 * 
	 * @return						A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/account/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(@PathVariable("id") Integer id,
			@RequestParam(value = "username", required = true) String uname, 
			@RequestParam(value = "accessLevel", required = true) Integer level) {

		accountService.update(id,uname, level);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a course using the appropriate
	 * service method
	 * 
	 * @see 						com.seneca.service.CourseService
	 * 
	 * @param courseCode			The six to eight digit course code
	 * @param courseName			The name of the course
	 * @param crossoverCourse		The course code that is synonomous with this course code
	 * @param oldCourse				The previous course code of the course, if any
	 * 
	 * @return						A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/account/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		accountService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
