package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Semester;
import com.seneca.repository.SemesterDao;

@Service("semesterService")
public class SemesterService {
	private static final Logger logger = LoggerFactory
			.getLogger(SemesterService.class);

	@Autowired
	private SemesterDao semesterDao;

	// CRUD OPERATIONS:
	public Semester add(String semName) {
		Semester sem = new Semester();
		sem.setSemesterName(semName);
		logger.info("Entering courseDao.create : ");
		semesterDao.create(sem);
		logger.info("Exiting courseDao.create : ");
		return sem;
	}

	public Semester update(Integer id, String semName) {
		Semester sem = semesterDao.getById(id);
		sem.setSemesterName(semName);
		semesterDao.update(sem);
		return sem;
	}

	public void delete(Integer id) {
		semesterDao.delete(id);
	}

	public List<Semester> getAll() {
		return semesterDao.getAll();
	}

	public Semester getOne(Integer id) {
		return semesterDao.getById(id);
	}

}
