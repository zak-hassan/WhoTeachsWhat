package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.CoursesInSemester;
import com.seneca.repository.CourseDao;
import com.seneca.repository.CourseInSemesterDao;
import com.seneca.repository.EvalFactorDao;

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
	EvalFactorDao evalFactorDao;

	@Autowired
	CourseDao courseDao;
	

	//CRUD OPERATIONS:
	
	
	public void add(Integer addition_attribute, float e1_ans, float e2_ans,
			float e3_ans, Integer eval_1, Integer eval_2, Integer eval_3,
			Integer total_semesters, Integer year, Integer course_id,
			Integer semester_id) {

		CoursesInSemester course = new CoursesInSemester();
		course.setAdditionAttribute(addition_attribute);
		course.setEval1Ans(e1_ans);
		course.setEval2Ans(e2_ans);
		course.setEval3Ans(e3_ans);
		course.setTotalSection(total_semesters);
		// TODO: GET THE EVALFACTOR DAO & COURSE DAO...
		course.setEvalFactor1(evalFactorDao.getById(eval_1));
		course.setEvalFactor2(evalFactorDao.getById(eval_2));
		course.setEvalFactor3(evalFactorDao.getById(eval_3));

		course.setYear(year);
		course.setCourse(courseDao.getById(course_id));

		// TODO Auto-generated method stub

	}
	

	public CoursesInSemester update(Integer id, Integer addition_attribute,
			float e1_ans, float e2_ans, float e3_ans, Integer eval_1,
			Integer eval_2, Integer eval_3, Integer total_semesters,
			Integer year, Integer course_id, Integer semester_id) {

		CoursesInSemester course = courseInSemesterDao.getById(id);
		course.setAdditionAttribute(addition_attribute);
		course.setEval1Ans(e1_ans);
		course.setEval2Ans(e2_ans);
		course.setEval3Ans(e3_ans);
		course.setTotalSection(total_semesters);
		// TODO: GET THE EVALFACTOR DAO & COURSE DAO...
		course.setEvalFactor1(evalFactorDao.getById(eval_1));
		course.setEvalFactor2(evalFactorDao.getById(eval_2));
		course.setEvalFactor3(evalFactorDao.getById(eval_3));

		course.setYear(year);
		course.setCourse(courseDao.getById(course_id));
		
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
