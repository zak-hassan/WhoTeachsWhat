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
	
	
	public void add(String R_code, String R_name){
		
		Responsibility r= new Responsibility();
		
			r.setResponsibilityCode(R_code);
			r.setResponsibilityName(R_name);
			responsibilityDao.create(r);
		
	}
	public void update(Long id) {
		Responsibility r = responsibilityDao.getById(id);
		responsibilityDao.update(r);
	}
	
	public void delete(Long id) {
		responsibilityDao.delete(id);
	}

	public List<Responsibility> getAll() {
		return 	responsibilityDao.getAll();
	}
	public Responsibility getOne(Long id) {
		return 	responsibilityDao.getById(id);
	}
	
}
