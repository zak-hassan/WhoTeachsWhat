package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the AccessLevel database table.
 * 
 */
@Entity
@NamedQuery(name="AccessLevel.findAll", query="SELECT a FROM AccessLevel a")
public class AccessLevel implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="access_id")
	private int accessId;

	@Column(name="access_name")
	private String accessName;

	//bi-directional many-to-one association to Account
	@OneToMany(mappedBy="accessLevel")
	private List<Account> accounts;

	public AccessLevel() {
	}

	public int getAccessId() {
		return this.accessId;
	}

	public void setAccessId(int accessId) {
		this.accessId = accessId;
	}

	public String getAccessName() {
		return this.accessName;
	}

	public void setAccessName(String accessName) {
		this.accessName = accessName;
	}

	public List<Account> getAccounts() {
		return this.accounts;
	}

	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

	public Account addAccount(Account account) {
		getAccounts().add(account);
		account.setAccessLevel(this);

		return account;
	}

	public Account removeAccount(Account account) {
		getAccounts().remove(account);
		account.setAccessLevel(null);

		return account;
	}

}