package com.seneca.service;

import java.util.List;
import com.seneca.model.Course;
import com.seneca.model.Faculty;

/**
 * This class is an interface for the CourseService class
 * 
 * @author 			Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @version 		0.1
 * @since			2014-02-04
 * @lastmodified 	2014-02-05
 *
 */

public interface CourseServiceInterface { // TODO: Javadocs
	/**
	 * Returns a list of faculty members who have taught the passed course
	 * <p>
	 * This method returns a list of faculty members who are associated with the passed course code. Returns
	 * NULL if the list is empty
	 * @param 		courseCode
	 * @return		A list of Faculty members who have taught the course designated by the passed course code
	 */
	List<Faculty> getFacultyByCourseCode(String courseCode);
	
	Course getCourseById(String courseCode); 
	
	List<Course> getCourseByYear(int year);
	
	List<Course> getCourseByYearSemester(int year, String semester);
	
	List<Course> getActiveCourses();
	
}