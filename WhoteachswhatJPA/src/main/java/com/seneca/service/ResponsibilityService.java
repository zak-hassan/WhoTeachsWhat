package com.seneca.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.Responsibility;
import com.seneca.repository.ResponsibilityDao;

@Service("responsibilityService")
public class ResponsibilityService {

	@Autowired
	ResponsibilityDao responsibilityDao;
	
	//CRUD OPERATIONS:
	
	
	public Responsibility add(String R_code, String R_name) {
		
		Responsibility r= new Responsibility();
		
			r.setResponsibilityCode(R_code);
			r.setResponsibilityName(R_name);
		return responsibilityDao.create(r);
		
	}
	public void update(Integer id) {
		Responsibility r = responsibilityDao.getById(id);
		responsibilityDao.update(r);
	}
	
	public void delete(Integer id) {
		responsibilityDao.delete(id);
	}

	public List<Responsibility> getAll() {
		return 	responsibilityDao.getAll();
	}
	public Responsibility getOne(Integer id) {
		return 	responsibilityDao.getById(id);
	}
	
}
