package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Course;
import com.seneca.repository.CourseDao;

@Service("courseService")
public class CourseService {

	private static final Logger logger = LoggerFactory.getLogger(CourseService.class);
	
	
	@Autowired
	private CourseDao courseDao;
	
	public Course addCourse(String course_code, String course_name, String crossover_input, String reference_input){
		boolean valid=true;
		
		//TODO: Replace valid with validation logic
		
	//	if(valid){
			Course course= new Course();
			course.setCourseCode(course_code);
			course.setCourseName(course_name);
			logger.info("Entering courseDao.create : ");
			courseDao.create(course);
			logger.info("Exiting courseDao.create : ");
			

			//courseRepository.persist(course);
			//TODO: if its valid then we will add the course to the database ...
		//}
		
		return null;
	}
	
	public Course updateCourse(String course_code, String course_name, String crossover_input, String reference_input) {
		
		//TODO: Method implementation
		
		return null;
	}
	
	public void deleteCourse(String course_code) {
		//TODO: Method implementation
	}

	public List<Course> allCourses() {
		// TODO Auto-generated method stub
		return 	courseDao.getAll();
	}
	
}
