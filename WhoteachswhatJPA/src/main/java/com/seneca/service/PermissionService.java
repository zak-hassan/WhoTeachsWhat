package com.seneca.service;

import org.springframework.stereotype.Service;

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
	
	/**
	 * This method accepts a permission id and creates a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission. Must be unique
	 * 
	 * @return					The Permission added
	 */
	public void addPermission(String permissionId) {
		//TODO: Method implementation
	}
	
	/**
	 * This method accepts a permission id and updates a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission to be updated
	 * 
	 * @return					The Permission updated
	 */
	public void updatePermission(String permissionId) {
		//TODO: Method implementation
	}
	
	/**
	 * This method accepts a permission id and deletes a permission using the appropriate repository method
	 * 
	 * @param permissionId		The name of the permission to be deleted
	 */
	public void deletePermission(String permissionId) {
		//TODO: Method implementation
	}
	
}