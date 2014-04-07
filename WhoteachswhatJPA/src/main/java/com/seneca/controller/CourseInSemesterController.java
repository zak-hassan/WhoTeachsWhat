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

import com.seneca.model.Course;
import com.seneca.model.CoursesInSemester;
import com.seneca.service.CourseInSemesterService;
import com.seneca.service.CourseService;
import com.seneca.service.EvalFactorService;
import com.seneca.service.SemesterService;

/**
 * This class is the controller which regulates all CRUD operations for a course instance in a semester year.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class CourseInSemesterController {

	@Autowired
	private CourseInSemesterService courseInSemesterService;
	
	@Autowired
	private SemesterService semesterService;
	
	@Autowired
	private EvalFactorService evalFactorService;
	
	@Autowired
	private CourseService courseService;
	
	/**
	 * This method accepts no parameters and maps the URL '/viewCourseInSemester' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.CourseInSemester
	 * @return
	 * 		The view page to be rendered, along with a List of all CourseInSemesters through the ModelMap
	 */
	@RequestMapping(value = "/viewCourseInSemester", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("entityList", courseInSemesterService.getAll());
		
		model.addAttribute("allSemesters", semesterService.getAll());
		model.addAttribute("allEvalFactors", evalFactorService.getAll());
		model.addAttribute("allCourses", courseService.getAll());

		return "Course/viewCourseInSemester";
	}

	// REST API ENDPOINTS:
	
	/**
	 * This method accepts no parameters and returns all CourseInSemesters in the database.
	 * 
	 * @see
	 * 		com.seneca.service.CourseInSemesterService
	 * @return 
	 * 		A List of CourseInSemester maps in JSON
	 */
	@RequestMapping(value = "/api/courseinsemester", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (CoursesInSemester c : courseInSemesterService.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("sectionNumber", c.getTotalSection() + "");
			map.put("year", c.getYear() + "");
			map.put("course_id", c.getCisId() + "");
			map.put("semester_id", c.getSemester().getSemesterId() + "");
			map.put("semester_name", c.getSemester().getSemesterName());

			items.add(map);
		}
		return items;
	}
	
	/**
	 * This method is accessed through a POST request and allows the creation of a CourseInSemester
	 * 
	 * @see
	 * 		com.seneca.service.CourseInSemesterService
	 * @param addition_attribute
	 * 		An additional attribution of hours
	 * @param eval_1_ans
	 * 		To be deleted
	 * @param eval_2_ans
	 * 		To be deleted
	 * @param eval_3_ans
	 * 		To be deleted
	 * @param eval_1
	 * 		To be deleted
	 * @param eval_2
	 * 		To be deleted
	 * @param eval_3
	 * 		To be deleted
	 * @param sectionNumbers
	 * 		The number of sections a course has
	 * @param year
	 * 		The year this course occurs in
	 * @param course_id
	 * 		Uniquely identifies a Course object
	 * @param semester_id
	 * 		Uniquely identifies a Semester object
	 * @return
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/courseinsemester", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "addition_attribute", required = true) Integer addition_attribute,
			@RequestParam(value = "eval_1_ans", required = true) String eval_1_ans,
			@RequestParam(value = "eval_2_ans", required = true) String eval_2_ans,
			@RequestParam(value = "eval_3_ans", required = true) String eval_3_ans,
			@RequestParam(value = "eval_1", required = true) Integer eval_1,
			@RequestParam(value = "eval_2", required = true) Integer eval_2,
			@RequestParam(value = "eval_3", required = true) Integer eval_3,
			@RequestParam(value = "sectionNumber", required = true) Integer sectionNumbers,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "course_id", required = true) Integer course_id,
			@RequestParam(value = "semester_id", required = true) Integer semester_id) {

		// TODO: Convert all `string` to `float` ...
		float e1_ans = Float.valueOf(eval_1_ans);
		float e2_ans = Float.valueOf(eval_2_ans);
		float e3_ans = Float.valueOf(eval_3_ans);

		courseInSemesterService.add(addition_attribute, e1_ans, e2_ans, e3_ans,
				eval_1, eval_2, eval_3, sectionNumbers, year, course_id,
				semester_id);
		
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of a CourseInSemester
	 * 
	 * @see
	 * 		com.seneca.service.CourseInSemesterService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param addition_attribute
	 * 		An additional attribution of hours
	 * @param eval_1_ans
	 * 		To be deleted
	 * @param eval_2_ans
	 * 		To be deleted
	 * @param eval_3_ans
	 * 		To be deleted
	 * @param eval_1
	 * 		To be deleted
	 * @param eval_2
	 * 		To be deleted
	 * @param eval_3
	 * 		To be deleted
	 * @param sectionNumbers
	 * 		The number of sections a course has
	 * @param year
	 * 		The year this course occurs in
	 * @param course_id
	 * 		Uniquely identifies a Course object
	 * @param semester_id
	 * 		Uniquely identifies a Semester object
	 * @return
	 * 		A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/courseinsemester/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "addition_attribute", required = true) Integer addition_attribute,
			@RequestParam(value = "eval_1_ans", required = true) String eval_1_ans,
			@RequestParam(value = "eval_2_ans", required = true) String eval_2_ans,
			@RequestParam(value = "eval_3_ans", required = true) String eval_3_ans,
			@RequestParam(value = "eval_1", required = true) Integer eval_1,
			@RequestParam(value = "eval_2", required = true) Integer eval_2,
			@RequestParam(value = "eval_3", required = true) Integer eval_3,
			@RequestParam(value = "sectionNumber", required = true) Integer sectionNumbers,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "course_id", required = true) Integer course_id,
			@RequestParam(value = "semester_id", required = true) Integer semester_id) {
		// TODO: Convert all `string` to `float` ...
		float e1_ans = Float.valueOf(eval_1_ans);
		float e2_ans = Float.valueOf(eval_2_ans);
		float e3_ans = Float.valueOf(eval_3_ans);
		courseInSemesterService.update(id, addition_attribute, e1_ans, e2_ans,
				e3_ans, eval_1, eval_2, eval_3, sectionNumbers, year,
				course_id, semester_id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a CourseInSemester
	 * 
	 * @see 
	 * 		com.seneca.service.CourseInSemesterService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/courseinsemester/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {
		courseInSemesterService.delete(id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
