package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the ResponsibilityToFaculty database table.
 * 
 */
@Embeddable
public class ResponsibilityToFacultyPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="faculty_id", insertable=false, updatable=false)
	private int facultyId;

	@Column(name="responsibility_id", insertable=false, updatable=false)
	private int responsibilityId;

	private int year;

	@Column(name="semester_id", insertable=false, updatable=false)
	private int semesterId;

	public ResponsibilityToFacultyPK() {
	}
	public int getFacultyId() {
		return this.facultyId;
	}
	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}
	public int getResponsibilityId() {
		return this.responsibilityId;
	}
	public void setResponsibilityId(int responsibilityId) {
		this.responsibilityId = responsibilityId;
	}
	public int getYear() {
		return this.year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getSemesterId() {
		return this.semesterId;
	}
	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ResponsibilityToFacultyPK other = (ResponsibilityToFacultyPK) obj;
		if (facultyId != other.facultyId)
			return false;
		if (responsibilityId != other.responsibilityId)
			return false;
		if (semesterId != other.semesterId)
			return false;
		if (year != other.year)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + facultyId;
		result = prime * result + responsibilityId;
		result = prime * result + semesterId;
		result = prime * result + year;
		return result;
	}
}