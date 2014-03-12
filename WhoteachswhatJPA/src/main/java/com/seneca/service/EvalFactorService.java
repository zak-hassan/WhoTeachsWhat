package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Course;
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
	
	
	public EvalFactor add(String evalName, Float evalFactor){
		
			EvalFactor eval= new EvalFactor();
			eval.setEvalName(evalName);
			eval.setEvalFactor(evalFactor);
			logger.info("Entering courseDao.create : ");
			evalFactorDao.create(eval);
			logger.info("Exiting courseDao.create : ");
		
		return eval;
	}

	
	public EvalFactor update(Integer id, String evalName, Float evalFactor){
		EvalFactor eval= evalFactorDao.getById(id);
		eval.setEvalName(evalName);
		eval.setEvalFactor(evalFactor);
		evalFactorDao.update(eval);
		
		return eval;
	}
	
	public void delete(Integer id) {
		evalFactorDao.delete(id);
	}

	public List<EvalFactor> getAll() {
		return evalFactorDao.getAll();
	}
	
	
}
