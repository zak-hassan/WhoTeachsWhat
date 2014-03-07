package com.seneca.controller;

import java.util.HashMap;
import java.util.Map;

import javax.security.sasl.AuthenticationException;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.seneca.model.UserAccount;
import com.seneca.service.AccountService;

@Controller
public class LoginController {
	// public static final Logger logger = LoggerFactory
	// .getLogger(LoginController.class);
	public static final String ACCOUNT_ATTRIBUTE = "account_info";
	// TODO: Check if a user was redirected from an internal page where we would
	// need to redirect the user back to where they came from
	public static final String REDIRECT_URL = "redirected_url";

	// @Autowired
	public AccountService aService = new AccountService();

	// REST
	@RequestMapping(value = "/ajaxLogin", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody
	Map<String, String> listJSON(
			@RequestParam(value = "username", required = true) String uname,
			@RequestParam(value = "password", required = true) String pass,
			HttpSession session) {

		Map<String, String> list = new HashMap<String, String>();
		list.put("Username", uname);
		list.put("success", "true");

		try {	
			UserAccount account = aService.login(uname, pass);
			session.setAttribute(LoginController.ACCOUNT_ATTRIBUTE, account);
			String url = (String) session.getAttribute(LoginController.REDIRECT_URL);
			session.removeAttribute(LoginController.REDIRECT_URL);
			if (url != null && !url.contains("login")) {
				list.put("redirectUrl", url);
			} else {
				list.put("redirectUrl", "welcome");
			}
		} catch (Exception ae) {

			// logger.info("Navigator: Exception occurred!!!");
			// TODO: handle exception

			list.put("exception", ae.getMessage());
			list.put("success", "false");
		}
		return list;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String getLogin(
			@RequestParam(value = "username", required = true) String uname,
			@RequestParam(value = "password", required = true) String pass,
			RedirectAttributes redirect, // HttpRequest request,//
			HttpSession session) throws AuthenticationException {
		// logger.info("WTWNavigator: Parameters: username: " + uname +
		// " Pass: "
		// + pass);
		// TODO: Need to Send this username and password to the LoginService for
		// validation
		try {
			UserAccount account = aService.login(uname, pass);
			session.setAttribute(LoginController.ACCOUNT_ATTRIBUTE, account);

			String url = (String) session.getAttribute(LoginController.REDIRECT_URL);
			session.removeAttribute(LoginController.REDIRECT_URL);
			if (url != null && !url.contains("login")) {
				return "redirect:" + url;
			} else {

			}

			return "redirect:/welcome";

		} catch (Exception ae) {

			// logger.info("Navigator: Exception occurred!!!");
			// TODO: handle exception

			redirect.addFlashAttribute("exception", ae);
			return "redirect:/";
		}
	}

	/*
	 * @ExceptionHandler(AuthenticationException.class) public ModelAndView
	 * handleException(AuthenticationException ae){
	 * 
	 * ModelAndView modelAndView = new ModelAndView();
	 * modelAndView.setViewName("index");
	 * modelAndView.addObject("exception",ae);
	 * 
	 * }
	 */

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String showWelcome() {
		// logger.info("WTWNavigator: \t /welcome ");
		return "welcome";
	}

	// TODO: Logout logic needed here
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "redirect:/";
	}

}
