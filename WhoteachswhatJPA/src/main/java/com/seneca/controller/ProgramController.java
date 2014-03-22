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

import com.seneca.model.Program;
import com.seneca.service.ProgramService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
 *         <anil.d.santokhi@gmail.com>
 * @lastmodified Feb 20 2014
 * @version 0.0.1
 */

@Controller
public class ProgramController {

	@Autowired
	ProgramService programService;

	@RequestMapping(value = "/viewProgram", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allPrograms", programService.getAll());
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

	@RequestMapping(value = "/api/program", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (Program c : programService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("program_name", c.getProgramName() + "");
			map.put("program_id", c.getProgramId() + "");
			map.put("pTotalSemester", c.getTotalSemester() + "");
			items.add(map);
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

	@RequestMapping(value = "/api/program/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Program listGetJSON(@PathVariable("id") Long id) {
		return programService.getOne(id);
	}

	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/program", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "pcode", required = true) String pcode,
			@RequestParam(value = "pname", required = true) String pname,
			@RequestParam(value = "pnumSemester", required = true) int num) {

		 programService.add(pcode, pname, num);
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a
	 * comp hour type using the appropriate service method
	 * 
	 * @see com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type
	 *            The name of the comp hour type
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/programCourse", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddCourseJSON(
			@RequestParam(value = "pcode", required = true) String pcode,
			@RequestParam(value = "pname", required = true) String pname,
			@RequestParam(value = "pnumSemester", required = true) int num,
			@RequestParam(value = "semester1", required = true) String semOne,
			@RequestParam(value = "semester2", required = true) String semTwo,
			@RequestParam(value = "semester3", required = true) String semThree,
			@RequestParam(value = "semester4", required = true) String semFour,
			@RequestParam(value = "semester5", required = true) String semFive,
			@RequestParam(value = "semester6", required = true) String semSix,
			@RequestParam(value = "semester7", required = true) String semSeven,
			@RequestParam(value = "semester8", required = true) String semEight) {

		List<String> sem = new ArrayList<String>();
		if (!semOne.isEmpty())
			sem.add(semOne);
		if (!semTwo.isEmpty())
			sem.add(semTwo);
		if (!semThree.isEmpty())
			sem.add(semThree);
		if (!semFour.isEmpty())
			sem.add(semFour);
		if (!semFive.isEmpty())
			sem.add(semFive);
		if (!semSix.isEmpty())
			sem.add(semSix);
		if (!semSeven.isEmpty())
			sem.add(semSeven);
		if (!semEight.isEmpty())
			sem.add(semEight);

		programService.addCourseToProgram(pcode, pname, num, sem);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * @param courseCode
	 *            The six to eight digit course code
	 * @param courseName
	 *            The name of the course
	 * @param crossoverCourse
	 *            The course code that is synonomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/program/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(@PathVariable("id") Long id,
			@RequestParam(value = "pcode", required = true) String pcode,
			@RequestParam(value = "pname", required = true) String pname,
			@RequestParam(value = "pnumSemester", required = true) int num) {

		programService.update(id, pcode, pname, num);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseService
	 * 
	 * @param courseCode
	 *            The six to eight digit course code
	 * @param courseName
	 *            The name of the course
	 * @param crossoverCourse
	 *            The course code that is synonomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
	 */

	@RequestMapping(value = "/api/program/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Long id) {

		programService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

}
