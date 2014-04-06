package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Account database table.
 * 
 */
@Entity
@NamedQuery(name="Account.findAll", query="SELECT a FROM Account a")
public class Account implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="user_id")
	private int UserId;


	private String username;
	private String password;

	//bi-directional many-to-one association to AccessLevel
	@ManyToOne
	@JoinColumn(name="access_id")
	private AccessLevel accessLevel;

	public Account() {
		super();
	}


	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + UserId;
		result = prime * result
				+ ((accessLevel == null) ? 0 : accessLevel.hashCode());
		result = prime * result
				+ ((password == null) ? 0 : password.hashCode());
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
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
		Account other = (Account) obj;
		if (UserId != other.UserId)
			return false;
		if (accessLevel == null) {
			if (other.accessLevel != null)
				return false;
		} else if (!accessLevel.equals(other.accessLevel))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}


	public int getUserId() {
		return UserId;
	}


	public void setUserId(int userId) {
		UserId = userId;
	}


	public AccessLevel getAccessLevel() {
		return accessLevel;
	}


	public void setAccessLevel(AccessLevel accessLevel) {
		this.accessLevel = accessLevel;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public void setPassword(String password) {
		this.password = password;
	}

}