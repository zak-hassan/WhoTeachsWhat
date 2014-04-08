package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.EvalFactor;
import com.seneca.repository.EvalFactorDao;

/**
 * This class is the service which regulates all dialog between the course controller and course repository layer.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */


@Service("evalFactorService")
public class EvalFactorService {

	private static final Logger logger = LoggerFactory.getLogger(EvalFactorService.class);
	
	@Autowired
	private EvalFactorDao evalFactorDao;
	
	//CRUD OPERATIONS:
	public EvalFactor add(String evalName){
			EvalFactor eval= new EvalFactor();
			eval.setEvalName(evalName);
			logger.info("Entering courseDao.create : ");
			return evalFactorDao.create(eval);
	}
	
	public EvalFactor update(Integer id, String evalName){
		EvalFactor eval= evalFactorDao.getById(id);
		eval.setEvalName(evalName);
		evalFactorDao.update(eval);
		return eval;
	}
	
	public void delete(Integer id) {
		evalFactorDao.delete(id);
	}
	
	public List<EvalFactor> getAll() {
		return evalFactorDao.getAll();
	}
	
	public EvalFactor getOne(Integer id) {
		return evalFactorDao.getById(id);
	}
	
}
