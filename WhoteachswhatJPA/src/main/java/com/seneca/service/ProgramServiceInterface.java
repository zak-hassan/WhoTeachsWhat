package com.seneca.service;

import java.util.List;

import com.seneca.model.Course;
import com.seneca.model.Program;

/**
 * This class is an interface for the ProgramService class
 * 
 * @author 			Anil Santokhi <Anil.D.Santokhi@gmail.com>
 * @version 		0.1
 * @since			2014-02-04
 * @lastmodified 	2014-02-05
 *
 */


public interface ProgramServiceInterface { // TODO: Javadocs
	List<Course> getCourses();
	
	Program getProgramById(String programCode);
	
	Program getProgramByYear(int year); // This is necessary because from 2014 onwards, ICA002 is no longer required
}
