package com.seneca.service;
import javax.security.sasl.AuthenticationException;

import org.springframework.stereotype.Service;

import com.seneca.model.UserAccount;

@Service("accountService")
public class AccountService {
	private UserAccount getAccount(String uname, String pass) {
		return new UserAccount(uname, pass, "admin");
	}

	public UserAccount login(String uname, String pass)
			throws AuthenticationException {
		// TODO: SETUP AN LDAP CALL HERE TO CHECK IF USER IS REGISTERED After
		// checking if user exists in our database;
		 if ( "zak.hassan1010@gmail.com".contentEquals(uname) &&  "a12345".contentEquals(pass) ) {
			 return this.getAccount(uname, pass);
		 } else {
			throw new AuthenticationException("Invalid username or password");
		 }
	}
}
