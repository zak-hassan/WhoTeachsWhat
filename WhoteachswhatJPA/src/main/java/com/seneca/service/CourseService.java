package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Course;
import com.seneca.repository.CourseDao;

/**
 * This class is the service which regulates all dialog between the course controller and course repository layer.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */


@Service("courseService")
public class CourseService {

	private static final Logger logger = LoggerFactory.getLogger(CourseService.class);
	
	
	@Autowired
	private CourseDao courseDao;
	
	
	//CRUD OPERATIONS:
	
	
	public Course add(String course_code, String course_name){
		
			Course course= new Course();
			course.setCourseCode(course_code);
			course.setCourseName(course_name);
			logger.info("Entering courseDao.create : ");
			courseDao.create(course);
			logger.info("Exiting courseDao.create : ");
		
		return course;
	}

	
	public Course update(Integer id, String course_code, String course_name) {
		Course course=courseDao.getById(id);
		course.setCourseCode(course_code);
		course.setCourseName(course_name);
		
		courseDao.update(course);
		
		return course;
	}
	
	public void delete(Integer id) {
		courseDao.delete(id);
	}

	public List<Course> getAll() {
		return courseDao.getAll();
	}
	
	public Course getByCourseCode(String course_code) {
		return courseDao.getByCourseCode(course_code);
	}
	
}
