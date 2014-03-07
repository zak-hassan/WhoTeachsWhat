package com.seneca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.seneca.service.CompHoursService;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>, Anil Santokhi <anil.d.santokhi@gmail.com>
 * @lastmodified Feb 27, 2014
 * @version 0.0.1
 */

@Controller
public class CompHoursController {

	private CompHoursService chs = new CompHoursService();
	
	@RequestMapping(value = "/updateCompHourType", method = RequestMethod.GET)
	public String update() {
		return "Anil_UpdateCompHourType";
	}

	@RequestMapping(value = "/manageCompHours", method = RequestMethod.GET)
	public String view() {
		return "Anil_ManageCompHours";
	}

	/**
	 * This method accepts data posted from the AddCompHourTypeForm and adds a comp hour type using the appropriate
	 * service method
	 * 
	 * @see 							com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type			The name of the comp hour type
	 * 
	 * @return							A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxAddCompHourType", method = RequestMethod.POST)
	public String ajaxAddCompHourType(
			@RequestParam(value = "comp_hour_type", required = true) String comp_hour_type) {
		
		try {
			chs.addCompHour(comp_hour_type);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		// TODO: Success or failure response to client
		
		return "Anil_ManageCompHours";
	}
	
	/**
	 * This method accepts data posted from the UpdateCompHourTypeForm and updates a comp hour type using the appropriate
	 * service method
	 * 
	 * @see 							com.seneca.service.CompHoursService
	 * 
	 * @param comp_hour_type			The name of the comp hour type
	 * 
	 * @return							A String containing the name of the view to render
	 */
	
	@RequestMapping(value = "/ajaxUpdateCompHourType", method = RequestMethod.POST)
	public String ajaxUpdateCompHourType(
			@RequestParam(value = "comp_hour_type", required = true) String comp_hour_type) {
		
		try {
			chs.updateCompHour(comp_hour_type);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		// TODO: Success or failure response to client
		
		return "Anil_UpdateCompHour";
	}
	
}
