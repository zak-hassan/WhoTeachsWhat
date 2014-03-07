package com.seneca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * This class is the controller which regulates all faculty operations.
 * 
 * @author Zakeria Hassan <zak.hassan1010@gmail.com>
 * @lastmodified Dec 31, 2013
 * @version 0.0.1
 */

@Controller
public class HelpController {
//	private static final Logger logger = LoggerFactory
//			.getLogger(HelpController.class);

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help() {
	//	logger.info("WTWNavigator: \t /help");
		return "help";
	}
}
