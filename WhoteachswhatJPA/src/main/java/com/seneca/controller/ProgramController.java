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
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhi@gmail.com>
 * @lastmodified Feb 20 2014
 * @version 0.0.1
 */

@Controller
public class ProgramController {

	@RequestMapping(value = "/viewProgram", method = RequestMethod.GET)
	public String view() {
		return "Program/view_programs";
	}

	@RequestMapping(value = "/updateProgram", method = RequestMethod.GET)
	public String update() {
		return "Program/update_program";
	}

	@RequestMapping(value = "/addProgram", method = RequestMethod.GET)
	public String add() {
		return "Program/add_program";
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
	
	@RequestMapping(value = "/ajaxAddProgram", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateResponsibiltyJSON(
			@RequestParam(value = "responsibility_type", required = true) String responsibility_type) {
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("ResponsibilityType", responsibility_type);
		list.put("success", "true");
		
		return list;
	}

}
