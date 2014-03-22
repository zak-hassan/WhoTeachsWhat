package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.PrepTime;
import com.seneca.repository.PrepTimeDao;

/**
 * This class is the service which regulates all dialog between the course
 * controller and course repository layer.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi
 *         <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */

@Service("prepTimeService")
public class PrepTimeService {

	private static final Logger logger = LoggerFactory
			.getLogger(PrepTimeService.class);

	@Autowired
	private PrepTimeDao prepTimeDao;

	// CRUD OPERATIONS:
	public PrepTime add(String prepName, Float prepFactor) {
		PrepTime ptime = new PrepTime();
		ptime.setPrepName(prepName);
		ptime.setPrepFactor(prepFactor);
		logger.info("Entering courseDao.create : ");
		prepTimeDao.create(ptime);
		logger.info("Exiting courseDao.create : ");
		return ptime;
	}

	public PrepTime update(Integer id, String prepName, Float prepFactor) {
		PrepTime ptime = prepTimeDao.getById(id);
		ptime.setPrepName(prepName);
		ptime.setPrepFactor(prepFactor);
		prepTimeDao.update(ptime);
		return ptime;
	}

	public void delete(Integer id) {
		prepTimeDao.delete(id);
	}

	public List<PrepTime> getAll() {
		return prepTimeDao.getAll();
	}

	public PrepTime getById(Integer id) {
		return prepTimeDao.getById(id);

	}

}
