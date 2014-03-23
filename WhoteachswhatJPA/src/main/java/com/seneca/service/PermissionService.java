package com.seneca.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.AccessLevel;
import com.seneca.repository.AccessLevelDao;

/**
 * This class is a service which contains methods to handle validation, add, update and delete operations for 
 * the application's permissions
 * 
 * @author Anil Santokhi <Anil.D.SantokhI@gmail.com>
 * @lastmodified Feb 26, 2014
 * @version 0.0.1
 */

@Service("permissionService")
public class PermissionService {
	
	@Autowired
	AccessLevelDao accessLevelDao;
	/**
	 * This method accepts a permission id and creates a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission. Must be unique
	 * 
	 * @return					The Permission added
	 */
	public AccessLevel add(String accessName) {
		//TODO: Method implementation
		AccessLevel access = new AccessLevel();
		access.setAccessName(accessName);
		return accessLevelDao.create(access);
	}
	
	/**
	 * This method accepts a permission id and updates a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission to be updated
	 * 
	 * @return					The Permission updated
	 */
	public void update(Integer id, String accessName) {
		AccessLevel access = accessLevelDao.getById(id);
		access.setAccessName(accessName);
		accessLevelDao.update(access);
	}
	
	/**
	 * This method accepts a permission id and deletes a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission to be deleted
	 */
	public void delete(Integer id) {
		accessLevelDao.delete(id);
	}

	public List<AccessLevel> getAll() {
		return accessLevelDao.getAll();
	}
	
	public AccessLevel getOne(Integer id) {
		return accessLevelDao.getById(id);
	}

}