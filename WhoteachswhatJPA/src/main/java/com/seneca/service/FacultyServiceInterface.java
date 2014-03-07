package com.seneca.service;

import java.util.List;

import com.seneca.model.Faculty;

public interface FacultyServiceInterface {

	List<Faculty> findFacultyByCourse(String course);

	Faculty findFaculty(String name);

	boolean isEligibleToTeach(Faculty faculty, String course);

}
