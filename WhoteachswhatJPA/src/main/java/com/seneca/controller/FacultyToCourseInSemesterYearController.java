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

import com.seneca.model.FacultyToCourseInSemesterYear;
import com.seneca.service.CompHoursService;
import com.seneca.service.CourseService;
import com.seneca.service.FactorService;
import com.seneca.service.FacultyService;
import com.seneca.service.FacultyToCourseInSemesterYearService;
import com.seneca.service.PrepTimeService;
import com.seneca.service.SemesterService;

/**
 * This class is the controller which regulates all CRUD operations for faculty to a course in a semester year
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified April 7, 2014
 * @version 1.0
 */

@Controller
public class FacultyToCourseInSemesterYearController {
	@Autowired
	private FacultyToCourseInSemesterYearService facultyToCourseInSemesterYearService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private SemesterService semesterService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private PrepTimeService prepTimeService;
	
	@Autowired
	private CompHoursService compHoursService;
	
	@Autowired
	private FactorService factorService;

	/**
	 * This method accepts no parameters and maps the URL '/viewFacultyToCourseInSemesterYear' to a view page
	 * 
	 * @see
	 * 		com.seneca.model.FacultyToCourseInSemesterYear
	 * @return
	 * 		The view page to be rendered, along with a List of all FacultyToCourseInSemesterYear through the ModelMap
	 */
	@RequestMapping(value = "/viewFacultyToCourseInSemesterYear", method = RequestMethod.GET)
	public String view(ModelMap model) {
		model.addAttribute("allFacultyToCourseInSemesterYear",
				facultyToCourseInSemesterYearService.getAll());
		
		model.addAttribute("allFaculty", facultyService.getAllFaculty());
		model.addAttribute("allSemesters", semesterService.getAll());
		model.addAttribute("allCourses", courseService.getAll());
		model.addAttribute("allPrepTime", prepTimeService.getAll());
		model.addAttribute("allCompHours", compHoursService.getAll());
		model.addAttribute("allFactors", factorService.getAll());
		
		return "FacultyToCourseInSemesterYear/viewFacultyToCourseInSemesterYear";
	}

	// REST API ENDPOINTS:

	/**
	 * This method accepts no parameters and returns all FacultyToCourseInSemesterYear types in the database.
	 * 
	 * @see
	 * 		com.seneca.service.FacultyToCourseInSemesterYearService
	 * @return 
	 * 		HashMap containing the FacultyToCourseInSemesterYear data in JSON
	 */
	@RequestMapping(value = "/api/facultyToCourseInSemesterYear", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	List<Map<String, String>> listGetJSON() {
		List<Map<String, String>> items = new ArrayList<Map<String, String>>();
		for (FacultyToCourseInSemesterYear c : facultyToCourseInSemesterYearService
				.getAll()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("additionAttribute", c.getAdditionAttribute() + "");
			map.put("comphourAllowance", c.getCompHour_allowance() + "");
			map.put("comphourAssigned", c.getCompHour_assigned() + "");
			map.put("sectionNumber", c.getSectionNumber() + "");
			map.put("semesterId", c.getSemester().getSemesterId() + "");
			map.put("year", c.getYear() + "");
			map.put("comphourId", c.getCompHour().getCompHour_id() + "");
			map.put("courseId", c.getCourse().getCourseId() + "");
			map.put("facultyId", c.getFaculty().getFacultyId() + "");
			map.put("prepTypeId", c.getPrepTime().getPrepId() + "");
			items.add(map);
		}
		return items;
	}

	/**
	 * This method is accessed through a POST request and allows the creation of a FacultyToCourseInSemesterYear
	 * 
	 * @see
	 * 		com.seneca.service.FacultyToCourseInSemesterYearService
	 * @param addition_attribute
	 * 		Additional attributed hours to be assigned
	 * @param compHour_allowance
	 * 		To be deleted
	 * @param compHour_assigned
	 * 		The amount of complimentary hours this course is worth
	 * @param section_number
	 * 		The number of sections the course has
	 * @param semester_id
	 * 		Uniquely identifies a Semester object
	 * @param year
	 * 		The year where the course took place
	 * @param compHour_id
	 * 		Uniquely identifies a CompHour object
	 * @param course_id
	 * 		Uniquely identifies a Course object
	 * @param faculty_id
	 * 		Uniquely identifies a Faculty object
	 * @param prepTime_id
	 * 		Uniquely identifies a PrepTime object
	 * @param class_size
	 * 		The size of the class
	 * @return
	 * 		A HashMap containing the FacultyToCourseInSemesterYear id and a message containing
	 * 		the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/facultyToCourseInSemesterYear", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listAddJSON(
			@RequestParam(value = "additionAttribute", required = true) String addition_attribute,
			@RequestParam(value = "comphourAllowance", required = true) String compHour_allowance,
			@RequestParam(value = "comphourAssigned", required = true) String compHour_assigned,
			@RequestParam(value = "sectionNumber", required = true) Integer section_number,
			@RequestParam(value = "semesterId", required = true) Integer semester_id,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "comphourId", required = true) Integer compHour_id,
			@RequestParam(value = "courseId", required = true) Integer course_id,
			@RequestParam(value = "facultyId", required = true) Integer faculty_id,
			@RequestParam(value = "prepTimeId", required = true) Integer prepTime_id,
			@RequestParam(value = "class_size", required = true) Integer class_size,
			@RequestParam(value = "evalFactor1", required = true) String evalFactor1,
			@RequestParam(value = "evalFactor2", required = true) String evalFactor2,
			@RequestParam(value = "evalFactor3", required = true) String evalFactor3,
			@RequestParam(value = "factorId", required = true) Integer factor_id) {
		
		Float eval1 = Float.parseFloat(evalFactor1);
		Float eval2 = Float.parseFloat(evalFactor2);
		Float eval3 = Float.parseFloat(evalFactor3);
		float comphoursAllowance = Float.parseFloat(compHour_allowance);
		float additionAttribute = Float.parseFloat(addition_attribute);
		
		float comphourAssigned = Float.parseFloat(compHour_assigned);
	 FacultyToCourseInSemesterYear fcsyear=	facultyToCourseInSemesterYearService.add(faculty_id, prepTime_id,
				course_id, compHour_id, year, semester_id, section_number,
				comphoursAllowance, additionAttribute, comphourAssigned, class_size, eval1, eval2, eval3, factor_id);
		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		list.put("id", fcsyear.getCisyId() + "");

		return list;
	}

	/**
	 * This method is accessed through a POST request and allows the updating of a FacultyToCourseInSemesterYear
	 * 
	 * @see
	 * 		com.seneca.service.FacultyToCourseInSemesterYearService
	 * @param id
	 * 		Uniquely identifies the object
	 * @param addition_attribute
	 * 		Additional attributed hours to be assigned
	 * @param compHour_allowance
	 * 		To be deleted
	 * @param compHour_assigned
	 * 		The amount of complimentary hours this course is worth
	 * @param section_number
	 * 		The number of sections the course has
	 * @param semester_id
	 * 		Uniquely identifies a Semester object
	 * @param year
	 * 		The year where the course took place
	 * @param compHour_id
	 * 		Uniquely identifies a CompHour object
	 * @param course_id
	 * 		Uniquely identifies a Course object
	 * @param faculty_id
	 * 		Uniquely identifies a Faculty object
	 * @param prepTime_id
	 * 		Uniquely identifies a PrepTime object
	 * @param class_size
	 * 		The size of the class
	 * @return
	 * 		A HashMap containing the FacultyToCourseInSemesterYear id and a message containing
	 * 		the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/facultyToCourseInSemesterYear/{id}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listUpdateJSON(
			@PathVariable("id") Integer id,
			@RequestParam(value = "additionAttribute", required = true) String addition_attribute,
			@RequestParam(value = "comphourAllowance", required = true) String compHour_allowance,
			@RequestParam(value = "comphourAssigned", required = true) String compHour_assigned,
			@RequestParam(value = "sectionNumber", required = true) Integer section_number,
			@RequestParam(value = "semesterId", required = true) Integer semester_id,
			@RequestParam(value = "year", required = true) Integer year,
			@RequestParam(value = "comphourId", required = true) Integer compHour_id,
			@RequestParam(value = "courseId", required = true) Integer course_id,
			@RequestParam(value = "facultyId", required = true) Integer faculty_id,
			@RequestParam(value = "prepTimeId", required = true) Integer prepTime_id,
			@RequestParam(value = "class_size", required = true) Integer class_size,
			@RequestParam(value = "evalFactor1", required = true) String evalFactor1,
			@RequestParam(value = "evalFactor2", required = true) String evalFactor2,
			@RequestParam(value = "evalFactor3", required = true) String evalFactor3,
			@RequestParam(value = "factorId", required = true) Integer factor_id) {

		Float eval1 = Float.parseFloat(evalFactor1);
		Float eval2 = Float.parseFloat(evalFactor2);
		Float eval3 = Float.parseFloat(evalFactor3);
		float comphoursAllowance = Float.parseFloat(compHour_allowance);
		float additionAttribute = Float.parseFloat(addition_attribute);
		float comphourAssigned = Float.parseFloat(compHour_assigned);
		
		facultyToCourseInSemesterYearService.update(id, faculty_id,
				prepTime_id, course_id, compHour_id, year, semester_id,
				section_number, comphoursAllowance, additionAttribute,
				comphourAssigned, class_size, eval1, eval2, eval3, factor_id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");

		return list;
	}

	/**
	 * This method is accessed through a DELETE request and allows the deleting of a FacultyToCourseInSemesterYear
	 * 
	 * @see 
	 * 		com.seneca.service.FacultyToCourseInSemesterYearService
	 * @param id
	 * 		 Uniquely identifies the object
	 * @return A HashMap containing the success of the operation in JSON
	 */
	@RequestMapping(value = "/api/facultyToCourseInSemesterYear/{id}", method = RequestMethod.DELETE, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listDeleteJSON(@PathVariable("id") Integer id) {

		facultyToCourseInSemesterYearService.delete(id);

		Map<String, String> list = new HashMap<String, String>();
		list.put("success", "true");
		return list;
	}
}
