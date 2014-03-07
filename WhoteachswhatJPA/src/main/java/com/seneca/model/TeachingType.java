package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TeachingType database table.
 * 
 */
@Entity
@NamedQuery(name="TeachingType.findAll", query="SELECT t FROM TeachingType t")
public class TeachingType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int teachingType_id;

	private String teachingType_name;

	//bi-directional many-to-one association to Faculty
	@OneToMany(mappedBy="teachingType", fetch=FetchType.LAZY)
	private List<Faculty> faculties;

	public TeachingType() {
	}

	public int getTeachingType_id() {
		return this.teachingType_id;
	}

	public void setTeachingType_id(int teachingType_id) {
		this.teachingType_id = teachingType_id;
	}

	public String getTeachingType_name() {
		return this.teachingType_name;
	}

	public void setTeachingType_name(String teachingType_name) {
		this.teachingType_name = teachingType_name;
	}

	public List<Faculty> getFaculties() {
		return this.faculties;
	}

	public void setFaculties(List<Faculty> faculties) {
		this.faculties = faculties;
	}

	public Faculty addFaculty(Faculty faculty) {
		getFaculties().add(faculty);
		faculty.setTeachingType(this);

		return faculty;
	}

	public Faculty removeFaculty(Faculty faculty) {
		getFaculties().remove(faculty);
		faculty.setTeachingType(null);

		return faculty;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((faculties == null) ? 0 : faculties.hashCode());
		result = prime * result + teachingType_id;
		result = prime
				* result
				+ ((teachingType_name == null) ? 0 : teachingType_name
						.hashCode());
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
		TeachingType other = (TeachingType) obj;
		if (faculties == null) {
			if (other.faculties != null)
				return false;
		} else if (!faculties.equals(other.faculties))
			return false;
		if (teachingType_id != other.teachingType_id)
			return false;
		if (teachingType_name == null) {
			if (other.teachingType_name != null)
				return false;
		} else if (!teachingType_name.equals(other.teachingType_name))
			return false;
		return true;
	}

}