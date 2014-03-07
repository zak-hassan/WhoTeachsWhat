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
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="access_id")
	private int accessId;

	@Column(name="access_name")
	private String accessName;

	//bi-directional many-to-one association to Faculty
	@OneToMany(mappedBy="accessLevel", fetch=FetchType.LAZY)
	private List<Faculty> faculties;

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

	public List<Faculty> getFaculties() {
		return this.faculties;
	}

	public void setFaculties(List<Faculty> faculties) {
		this.faculties = faculties;
	}

	public Faculty addFaculty(Faculty faculty) {
		getFaculties().add(faculty);
		faculty.setAccessLevel(this);

		return faculty;
	}

	public Faculty removeFaculty(Faculty faculty) {
		getFaculties().remove(faculty);
		faculty.setAccessLevel(null);

		return faculty;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + accessId;
		result = prime * result
				+ ((accessName == null) ? 0 : accessName.hashCode());
		result = prime * result
				+ ((faculties == null) ? 0 : faculties.hashCode());
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
		if (faculties == null) {
			if (other.faculties != null)
				return false;
		} else if (!faculties.equals(other.faculties))
			return false;
		return true;
	}

}