package com.seneca.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.EvalFactor;
import com.seneca.model.Factor;
import com.seneca.repository.FactorDao;

/**
 * This class is the service which regulates all dialog between the course controller and course repository layer.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhI@gmail.com>
 * @lastmodified March 10, 2014
 * @version 0.0.1
 */


@Service("factorService")
public class FactorService {

	private static final Logger logger = LoggerFactory.getLogger(FactorService.class);
	
	@Autowired
	private FactorDao factorDao;
	
	public Factor add(String evalName, Float Factor){
			Factor eval= new Factor();
			eval.setFactorName(evalName);
			eval.setFactorVal(Factor);
			logger.info("Entering courseDao.create : ");
			return factorDao.create(eval);
	}
	
	public Factor update(Integer id, String evalName, Float evalFactor){
		Factor eval= factorDao.getById(id);
		eval.setFactorName(evalName);
		eval.setFactorVal(evalFactor);
		factorDao.update(eval);
		return eval;
	}
	
	public void delete(Integer id) {
		factorDao.delete(id);
	}
	
	public List<Factor> getAll() {
		return factorDao.getAll();
	}
	
	public Factor getOne(Integer id) {
		return factorDao.getById(id);
	}
	
}
