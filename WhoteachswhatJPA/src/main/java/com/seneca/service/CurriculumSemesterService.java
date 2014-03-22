package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.CurriculumSemester;
import com.seneca.repository.CurriculumSemesterDao;

@Service("curriculumSemesterService")
public class CurriculumSemesterService {
	private static final Logger logger = LoggerFactory
			.getLogger(CurriculumSemesterService.class);

	@Autowired
	private CurriculumSemesterDao curriculumSemesterDao;

	// CRUD OPERATIONS:
	public CurriculumSemester add(String name) {
		CurriculumSemester sem = new CurriculumSemester();
		sem.setName(name);
		logger.info("Entering courseDao.create : ");
		curriculumSemesterDao.create(sem);
		logger.info("Exiting courseDao.create : ");
		return sem;
	}

	public CurriculumSemester update(Integer id, String name) {
		CurriculumSemester sem = curriculumSemesterDao.getById(id);
		sem.setName(name);
		curriculumSemesterDao.update(sem);
		return sem;
	}

	public void delete(Integer id) {
		curriculumSemesterDao.delete(id);
	}

	public List<CurriculumSemester> getAll() {
		return curriculumSemesterDao.getAll();
	}

}
