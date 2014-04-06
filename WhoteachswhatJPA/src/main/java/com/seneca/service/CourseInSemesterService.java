package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Course;
import com.seneca.model.CoursesInSemester;
import com.seneca.repository.CourseDao;
import com.seneca.repository.CourseInSemesterDao;
import com.seneca.repository.EvalFactorDao;
import com.seneca.repository.SemesterDao;

/**
 * This class is the service which regulates all dialog between the course controller and course repository layer.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */


@Service("courseInSemesterService")
public class CourseInSemesterService {

	private static final Logger logger = LoggerFactory.getLogger(CourseInSemesterService.class);
	
	
	@Autowired
	private CourseInSemesterDao courseInSemesterDao;
	
	@Autowired
	private EvalFactorDao evalFactorDao;

	@Autowired
	private CourseDao courseDao;
	
	@Autowired
	private SemesterDao semesterDao;

	//CRUD OPERATIONS:
/*

Table CoursesInSemester
=======================
cis_id, addition_attribute, eval_1_ans, eval_2_ans, eval_3_ans, total_section, year, course_id, eval_1, eval_2, eval_3, semester_id
-----------------------
cis_id           int(11) PK
addition_attribute int(11)
eval_1_ans       float
eval_2_ans       float
eval_3_ans       float
total_section    int(11)
year             int(11)
course_id        int(11)
eval_1           int(11)
eval_2           int(11)
eval_3           int(11)
semester_id      int(11)

*/
	
	public void add(Integer addition_attribute,
			float e1_ans, 
			float e2_ans,
			float e3_ans, 
			Integer eval_1, 
			Integer eval_2, 
			Integer eval_3,
			Integer sectionNumbers, 
			Integer year, 
			Integer course_id,
			Integer semester_id) {
		CoursesInSemester course = new CoursesInSemester();
		course.setAdditionAttribute(addition_attribute);
		course.setEval1Ans(e1_ans);
		course.setEval2Ans(e2_ans);
		course.setEval3Ans(e3_ans);
		course.setTotalSection(sectionNumbers);
		course.setYear(year);
		course.setCourse(courseDao.getById(course_id));
		course.setSemester(semesterDao.getById(semester_id));
		courseInSemesterDao.create(course);
	}
	
	public CoursesInSemester update(Integer id, Integer addition_attribute,
			float e1_ans, float e2_ans, float e3_ans, Integer eval_1,
			Integer eval_2, Integer eval_3, Integer sectionNumbers,
			Integer year, Integer course_id, Integer semester_id) {

		CoursesInSemester course = courseInSemesterDao.getById(id);
		course.setAdditionAttribute(addition_attribute);
		course.setEval1Ans(e1_ans);
		course.setEval2Ans(e2_ans);
		course.setEval3Ans(e3_ans);
		course.setTotalSection(sectionNumbers);
		course.setYear(year);
		course.setCourse(courseDao.getById(course_id));
		course.setSemester(semesterDao.getById(semester_id));
		
		courseInSemesterDao.update(course);
		return course;
	}
	
	


	public void delete(Integer id) {
		courseInSemesterDao.delete(id);
	}

	public List<CoursesInSemester> getAll() {
		return courseInSemesterDao.getAll();
	}

	public CoursesInSemester getOne(Integer id) {
		return courseInSemesterDao.getById(id);
	}



}
