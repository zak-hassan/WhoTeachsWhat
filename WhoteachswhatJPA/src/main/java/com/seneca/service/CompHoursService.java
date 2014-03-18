package com.seneca.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.CompHour;
import com.seneca.repository.CompHourDao;

@Service("compHoursService")
public class CompHoursService {

	@Autowired
	CompHourDao compHourDao; 
	
	
	/**
	 * This method accepts a comp hour type and creates a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the comp hour. Must be unique
	 * 
	 * @return					The comp hour added to the system
	 */
	public void add( String compHour_code, String compHour_name ) {
		CompHour comphour= new CompHour();
		comphour.setCompHour_code(compHour_code);
		comphour.setCompHour_name(compHour_name);
		compHourDao.create(comphour);

	}
	
	/**
	 * This method accepts a comp hour type and updates a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the comp hour to be updated
	 * 
	 * @return					The updated comp hour
	 */
	public void update(Integer id, String compHour_code, String compHour_name) {
		CompHour c=compHourDao.getById(id);
		if(! compHour_name.isEmpty())
		   c.setCompHour_name(compHour_name);
		if(! compHour_code.isEmpty())
		   c.setCompHour_code(compHour_code);
		compHourDao.update(c);
	}
	
	/**
	 * This method accepts a comp hour type and deletes a comp hour type using the appropriate repository method
	 * 
	 * @param compHourType		The name of the permission to be deleted
	 */
	public void delete(Integer id) {
		compHourDao.delete(id);
	}

	public List<CompHour> getAll() {
		return	compHourDao.getAll();
	}
	
	public CompHour getOne(Integer id) {
		return	compHourDao.getById(id);
	}
	
}
