package com.seneca.service;
import org.springframework.stereotype.Service;

import com.seneca.model.CompHour;

@Service("compHoursService")
public class CompHoursService {

	/**
	 * This method accepts a comp hour type and creates a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the comp hour. Must be unique
	 * 
	 * @return					The comp hour added to the system
	 */
	public CompHour addCompHour(String compHourType) {
		//TODO: Method implementation
		
		return null;
	}
	
	/**
	 * This method accepts a comp hour type and updates a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the comp hour to be updated
	 * 
	 * @return					The updated comp hour
	 */
	public CompHour updateCompHour(String compHourType) {
		//TODO: Method implementation
		
		return null;
	}
	
	/**
	 * This method accepts a comp hour type and deletes a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the permission to be deleted
	 */
	public void deleteCompHour(String compHourType) {
		//TODO: Method implementation
	}
}
