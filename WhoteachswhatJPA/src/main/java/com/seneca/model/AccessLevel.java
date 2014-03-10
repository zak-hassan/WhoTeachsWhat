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

	//bi-directional many-to-one association to Faculty
	@OneToMany(mappedBy="accessLevel", fetch=FetchType.LAZY)
	private List<Account> account;

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
		return this.account;
	}

	public void setAccount(List<Account> accounts) {
		this.account = accounts;
	}

	public Account addAccount(Account account) {
		getAccounts().add(account);
		account.setAccessLevel(this);

		return account;
	}

	public Account removeFaculty(Account account) {
		getAccounts().remove(account);
		account.setAccessLevel(null);
		return account;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + accessId;
		result = prime * result
				+ ((accessName == null) ? 0 : accessName.hashCode());
		result = prime * result + ((account == null) ? 0 : account.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AccessLevel other = (AccessLevel) obj;
		if (accessId != other.accessId)
			return false;
		if (accessName == null) {
			if (other.accessName != null)
				return false;
		} else if (!accessName.equals(other.accessName))
			return false;
		if (account == null) {
			if (other.account != null)
				return false;
		} else if (!account.equals(other.account))
			return false;
		return true;
	}

}