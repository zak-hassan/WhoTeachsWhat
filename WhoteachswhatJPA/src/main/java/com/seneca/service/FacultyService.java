package com.seneca.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Faculty;
import com.seneca.model.TeachingType;
import com.seneca.repository.FacultyDao;
import com.seneca.repository.TeachingTypeDao;
/**
 * Service layer responsible for requesting data from the Persistance Layer (DAO).
 * Note: Don't forget to put @Transactional 
 * @author zakeriahassan
 * 
 * To enable GZIP in JBoss AS 7.1.1Final  
 * -Dorg.apache.coyote.http11.Http11Protocol.COMPRESSION=on
 */


 
@Service("facultyService")
public class FacultyService {
//	private CourseDao courseDao;

	@Autowired
	FacultyDao facultyDao;
	
	@Autowired
	TeachingTypeDao teachingTypeDao;
	
	public List<Faculty> findFacultyByCourse(String course) {
		List<Faculty> faculty = new ArrayList<Faculty>();
//		faculty.add(new Faculty("Ron Tar"));
//		faculty.add(new Faculty("Danny Abestris"));
//		faculty.add(new Faculty("Barb Czegel"));
//		faculty.add(new Faculty("Greg Thomson"));
//		faculty.add(new Faculty("Jim Carey"));
		return faculty;
	}



	public Faculty findFaculty(String name) {
		return null;
	}

	public boolean isEligibleToTeach(Faculty faculty, String course) {
		return false;
	}

	/*
	 *  CRUD OPERATIONS SERVICE METHODS:
	 *  
	 *   add    -       addFaculty(String, String, TeachingType);
	 *   update - 	 	update();
	 *   delete -       delete();
	 *   get    - 		getAllFaculty();
	 *   
	 */
	
	//TODO: Faculty should accept 'TeachingType_id'
	public void addFaculty(String fname, String lname, Integer status) {
		Faculty faculty = new Faculty();
		faculty.setFacultyFirstName(fname);
		faculty.setFacultyLastName(lname);
		TeachingType tType=teachingTypeDao.getById(status);
		faculty.setTeachingType(tType);
		facultyDao.create(faculty);
	}

	public void update(Integer id, String fname, String lname, Integer status) {
		Faculty faculty = facultyDao.getById(id);
		faculty.setFacultyFirstName(fname);
		faculty.setFacultyLastName(lname);
		TeachingType tType=teachingTypeDao.getById(status);
		faculty.setTeachingType(tType);
		
		facultyDao.update(faculty);
	}
	
	public void delete(Integer id) {
	 facultyDao.delete(id);
	}

	public  List<Faculty>  getAllFaculty() {
		return facultyDao.getAll();
	}
}
