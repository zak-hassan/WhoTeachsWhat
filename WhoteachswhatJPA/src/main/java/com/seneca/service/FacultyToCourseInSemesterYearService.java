package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.FacultyToCourseInSemesterYear;
import com.seneca.repository.CompHourDao;
import com.seneca.repository.CourseDao;
import com.seneca.repository.FacultyDao;
import com.seneca.repository.FacultyToCourseInSemesterYearDao;
import com.seneca.repository.PrepTimeDao;

@Service("facultyToCourseInSemesterYearService")
public class FacultyToCourseInSemesterYearService {

	private static final Logger logger = LoggerFactory
			.getLogger(FacultyToCourseInSemesterYearService.class);

	@Autowired
	FacultyToCourseInSemesterYearDao facultyToCourseInSemesterYearDao;

	@Autowired
	CourseDao courseDao;

	@Autowired
	CompHourDao compHourDao;

	@Autowired
	FacultyDao facultyDao;

	@Autowired
	PrepTimeDao prepTimeDao;

	// CRUD OPERATIONS:
	public FacultyToCourseInSemesterYear add(Integer faculty_id,
			Integer prepType_id, Integer course_id, Integer compHour_id,
			Integer year, Integer semester_id, Integer section_number,
			float comphoursAllowance, float additionAttribute,
			float comphourAssigned) {
		FacultyToCourseInSemesterYear rToFaculty = new FacultyToCourseInSemesterYear();

		rToFaculty.setCourse(courseDao.getById(course_id));
		rToFaculty.setFaculty(facultyDao.getById(faculty_id));
		rToFaculty.setPrepTime(prepTimeDao.getById(prepType_id));
		rToFaculty.setCompHour(compHourDao.getById(compHour_id));
		rToFaculty.setYear(year);
		// TODO: You need to map the semester to a semester id
		rToFaculty.setSemesterId(semester_id);
		rToFaculty.setCompHour_allowance(comphoursAllowance);
		rToFaculty.setAdditionAttribute(additionAttribute);
		rToFaculty.setCompHour_assigned(comphourAssigned);
		facultyToCourseInSemesterYearDao.create(rToFaculty);
		return rToFaculty;
	}

	public FacultyToCourseInSemesterYear update(Integer id, Integer faculty_id,
			Integer prepType_id, Integer course_id, Integer compHour_id,
			Integer year, Integer semester_id, Integer section_number,
			float comphoursAllowance, float additionAttribute,
			float comphourAssigned) {

		FacultyToCourseInSemesterYear rToFaculty = facultyToCourseInSemesterYearDao
				.getById(id);

		// TODO: SET values into rToFaculty

		rToFaculty.setCourse(courseDao.getById(course_id));
		rToFaculty.setFaculty(facultyDao.getById(faculty_id));
		rToFaculty.setPrepTime(prepTimeDao.getById(prepType_id));
		rToFaculty.setCompHour(compHourDao.getById(compHour_id));
		rToFaculty.setYear(year);
		// TODO: You need to map the semester to a semester id
		rToFaculty.setSemesterId(semester_id);
		rToFaculty.setCompHour_allowance(comphoursAllowance);
		rToFaculty.setAdditionAttribute(additionAttribute);
		rToFaculty.setCompHour_assigned(comphourAssigned);

		facultyToCourseInSemesterYearDao.update(rToFaculty);
		return rToFaculty;
	}

	public void delete(Integer id) {
		facultyToCourseInSemesterYearDao.delete(id);
	}

	public List<FacultyToCourseInSemesterYear> getAll() {
		return facultyToCourseInSemesterYearDao.getAll();
	}

}
