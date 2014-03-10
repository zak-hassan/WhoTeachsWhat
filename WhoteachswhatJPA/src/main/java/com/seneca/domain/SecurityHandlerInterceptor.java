package com.seneca.domain;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import com.seneca.controller.LoginController;
import com.seneca.model.Account;

public class SecurityHandlerInterceptor extends HandlerInterceptorAdapter {

	public static String REQUESTED_URL = "url";
	public static String ACCOUNT_ATTRIBUTE = null;

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		Account account = (Account) WebUtils.getSessionAttribute(request,
				LoginController.ACCOUNT_ATTRIBUTE);
		  //UNComment this to get validation
		String requestUrl = request.getRequestURI().substring(
				request.getContextPath().length());
		try {

			if (!"/".equals(requestUrl) && !"/login".equals(requestUrl) &&  !"/ajaxLogin".equals(requestUrl)
					&& !requestUrl.startsWith("/static")) {
				if (account == null) {
					// Retrieve and store the original URL.
					String url = request.getRequestURI().toString();
					WebUtils.setSessionAttribute(request, LoginController.REDIRECT_URL, url);
					throw new AuthenticationException(
							"Authentication required.");
				}

			}
		} catch (AuthenticationException ae) {
			// TODO: handle exception
			request.setAttribute("exception", ae);
			response.sendRedirect(request.getRequestURI().substring(0,
					request.getContextPath().length()));
		}
		return true;
	}

	@ExceptionHandler(AuthenticationException.class)
	public ModelAndView handleException(AuthenticationException ae) {

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		modelAndView.addObject("exception", ae);

		return modelAndView;
	}
}
