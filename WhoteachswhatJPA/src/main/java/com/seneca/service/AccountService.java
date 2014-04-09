package com.seneca.service;
import java.util.List;

import javax.security.sasl.AuthenticationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seneca.model.AccessLevel;
import com.seneca.model.Account;
import com.seneca.repository.AccessLevelDao;
import com.seneca.repository.AccountDao;

@Service("accountService")
public class AccountService {
	
	@Autowired
	AccountDao accountDao;
	
	@Autowired
	AccessLevelDao accessLevelDao;
	
	

	private Account getAccount(String uname, String pass) {
			Account account= new Account();
			account.setUsername(uname);
			account.setPassword(pass);
		return account;
	}

	public Account login(String uname, String pass) throws AuthenticationException {
		Account account = new Account();
		account.setUsername(uname);
		account.setPassword(pass);
		//List<Account> a = accountDao.checkPassword(account);
		//if (a.size() != 0) {
			//throw new AuthenticationException("Invalid username or password");
		//}
		 if ( "admin".contentEquals(uname) && "admin".contentEquals(pass) ) {
			 return this.getAccount(uname, pass);
		 } else {
		 throw new AuthenticationException("Invalid username or password");
		 }
	}

	public List<Account> getAll() {
		return accountDao.getAll();
	}

	public Account getOne(Integer id) {
		return accountDao.getById(id);
	}

	public void update(Integer id, String uname, Integer level) {
		Account account= accountDao.getById(id);
		account.setUsername(uname);
		account.setPassword("a12345");
		AccessLevel accessLevel=accessLevelDao.getById(level);
		account.setAccessLevel(accessLevel);
		accountDao.update(account);
	}

	public Account add(String uname, Integer level) {
		Account account= new Account();
		account.setUsername(uname);
		account.setPassword("a12345");
		//Long id= level.longValue();
		AccessLevel accessLevel =  accessLevelDao.getById(level); 
		account.setAccessLevel(accessLevel);
		return accountDao.create(account);

	}

	public void delete(Integer id) {
		 accountDao.delete(id);
	}
}
