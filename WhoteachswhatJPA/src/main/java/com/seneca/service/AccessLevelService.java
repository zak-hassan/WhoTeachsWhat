package com.seneca.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.AccessLevel;
import com.seneca.repository.AccessLevelDao;

@Service("accessLevelService")
public class AccessLevelService {

	@Autowired
	AccessLevelDao accessLevelDao;
	
	public List<AccessLevel> getAll() {
		// TODO Auto-generated method stub
		return accessLevelDao.getAll();
	}

	public AccessLevel getOne(Integer id) {
		// TODO Auto-generated method stub
		
		return accessLevelDao.getById(id);
		
	}

	public void update(Integer id, String name) {
		// TODO Auto-generated method stub
		AccessLevel accessLevel= accessLevelDao.getById(id);
		accessLevel.setAccessName(name);
	}

	public void add(String name) {
		AccessLevel accessLevel= new AccessLevel();
		accessLevel.setAccessName(name);
	}
	
}
