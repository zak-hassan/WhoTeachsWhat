package com.seneca.service;
import javax.security.sasl.AuthenticationException;

import org.springframework.stereotype.Service;

import com.seneca.model.Account;

@Service("accountService")
public class AccountService {
	private Account getAccount(String uname, String pass) {
		Account account= new Account();
		account.setUsername(uname);
		account.setPassword(pass);
		return account;
		//return new Account(uname, pass, "admin");
	}

	public Account login(String uname, String pass)
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
