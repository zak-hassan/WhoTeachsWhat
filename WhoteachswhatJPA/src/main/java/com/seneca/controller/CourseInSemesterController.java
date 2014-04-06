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
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
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
	
	@RequestMapping(value = "/viewCourseInSemester", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("entityList", courseInSemesterService.getAll());
		
		model.addAttribute("allSemesters", semesterService.getAll());
		model.addAttribute("allEvalFactors", evalFactorService.getAll());
		model.addAttribute("allCourses", courseService.getAll());

		return "Course/viewCourseInSemester";
	}

	@RequestMapping(value = "/updateCourseInSemester", method = RequestMethod.GET)
	public String update() {
		return "Course/update_course";
	}

	@RequestMapping(value = "/addCourseInSemester", method = RequestMethod.GET)
	public String add() {
		return "Course/add_course";
	}
	

	// REST API ENDPOINTS:
	
	
	/**
	 * This method accepts no parameters and returns all course in in the
	 * database.
	 * 
	 * @see com.seneca.service.CourseInSemesterService
	 * 
	 * 
	 * @return JSON object with a list of course to display in datatable
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
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseInSemesterService
	 * 
	 * @param courseCode
	 *            The six to eight digit course code
	 * @param courseName
	 *            The name of the course
	 * @param crossoverCourse
	 *            The course code that is syncronomous with this course code
	 * @param oldCourse
	 *            The previous course code of the course, if any
	 * 
	 * @return A String containing the name of the view to render
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
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseInSemesterService
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
	 * This method accepts data posted from the UpdateCourseForm and updates a
	 * course using the appropriate service method
	 * 
	 * @see com.seneca.service.CourseInSemesterService
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

	@RequestMapping(value = "/api/courseinsemester/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {
		courseInSemesterService.delete(id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
