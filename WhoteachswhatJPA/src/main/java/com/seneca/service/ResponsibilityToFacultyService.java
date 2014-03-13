package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.ResponsibilityToFaculty;
import com.seneca.repository.FacultyDao;
import com.seneca.repository.ResponsibilityDao;
import com.seneca.repository.ResponsibilityToFacultyDao;
import com.seneca.repository.SemesterDao;

@Service("responsibilityToFacultyService")
public class ResponsibilityToFacultyService {

	private static final Logger logger = LoggerFactory
			.getLogger(ResponsibilityToFacultyService.class);

	@Autowired
	ResponsibilityToFacultyDao ResponsibilityToFacultyDao;

	@Autowired
	FacultyDao facultyDao;

	@Autowired
	ResponsibilityDao responsibilityDao;

	@Autowired
	SemesterDao semesterDao;

	// CRUD OPERATIONS:
	public ResponsibilityToFaculty add(Integer facultyId, Integer responsibilityId,  Integer year,
			 Integer semesterId,  Float hours) {
		ResponsibilityToFaculty rToFaculty = new ResponsibilityToFaculty();
		rToFaculty.setFaculty(facultyDao.getById(facultyId) );
		rToFaculty.setResponsibility(responsibilityDao.getById(responsibilityId));
		rToFaculty.setSemester(semesterDao.getById(semesterId));
		rToFaculty.setHoursPerWeek(hours);
		logger.info("Entering courseDao.create : ");
		ResponsibilityToFacultyDao.create(rToFaculty);
		logger.info("Exiting courseDao.create : ");
		return rToFaculty;
	}

	public ResponsibilityToFaculty update(Integer id, Integer facultyId,
			Integer responsibilityId, Integer year, Integer semesterId,
			Float hours) {
		ResponsibilityToFaculty rToFaculty = ResponsibilityToFacultyDao
				.getById(id);
		rToFaculty.setFaculty(facultyDao.getById(facultyId));
		rToFaculty.setResponsibility(responsibilityDao
				.getById(responsibilityId));
		rToFaculty.setSemester(semesterDao.getById(semesterId));
		rToFaculty.setHoursPerWeek(hours);
		ResponsibilityToFacultyDao.update(rToFaculty);
		return rToFaculty;
	}

	public void delete(Integer id) {
		ResponsibilityToFacultyDao.delete(id);
	}

	public List<ResponsibilityToFaculty> getAll() {
		return ResponsibilityToFacultyDao.getAll();
	}


}
