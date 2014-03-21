package com.seneca.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;


/**
 * The persistent class for the ResponsibilityToFaculty database table.
 * 
 */
@Entity
@NamedQuery(name="ResponsibilityToFaculty.findAll", query="SELECT r FROM ResponsibilityToFaculty r")
public class ResponsibilityToFaculty implements Serializable {
	private static final long serialVersionUID = 1L;

	@EmbeddedId
	private ResponsibilityToFacultyPK id;
// insert="false" update="false"
	@Column(name="hours_per_week")
	private float hoursPerWeek;

	private int year;

	//bi-directional many-to-one association to Responsibility
	@ManyToOne
	@JoinColumn(name="responsibility_id",insertable=false, updatable=false)
	private Responsibility responsibility;

	//bi-directional many-to-one association to Faculty
	@ManyToOne
	@JoinColumn(name="faculty_id",insertable=false, updatable=false)
	private Faculty faculty;

	//bi-directional many-to-one association to Semester
	@ManyToOne
	@JoinColumn(name="semester_id",insertable=false, updatable=false)
	private Semester semester;

	public ResponsibilityToFaculty() {
	}

	public ResponsibilityToFacultyPK getId() {
		return this.id;
	}

	public void setId(ResponsibilityToFacultyPK id) {
		this.id = id;
	}

	public float getHoursPerWeek() {
		return this.hoursPerWeek;
	}

	public void setHoursPerWeek(float hoursPerWeek) {
		this.hoursPerWeek = hoursPerWeek;
	}

	public Responsibility getResponsibility() {
		return this.responsibility;
	}

	public void setResponsibility(Responsibility responsibility) {
		this.responsibility = responsibility;
	}

	public Faculty getFaculty() {
		return this.faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public Semester getSemester() {
		return this.semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((faculty == null) ? 0 : faculty.hashCode());
		result = prime * result + Float.floatToIntBits(hoursPerWeek);
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result
				+ ((responsibility == null) ? 0 : responsibility.hashCode());
		result = prime * result
				+ ((semester == null) ? 0 : semester.hashCode());
		result = prime * result + year;
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
		ResponsibilityToFaculty other = (ResponsibilityToFaculty) obj;
		if (faculty == null) {
			if (other.faculty != null)
				return false;
		} else if (!faculty.equals(other.faculty))
			return false;
		if (Float.floatToIntBits(hoursPerWeek) != Float
				.floatToIntBits(other.hoursPerWeek))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (responsibility == null) {
			if (other.responsibility != null)
				return false;
		} else if (!responsibility.equals(other.responsibility))
			return false;
		if (semester == null) {
			if (other.semester != null)
				return false;
		} else if (!semester.equals(other.semester))
			return false;
		if (year != other.year)
			return false;
		return true;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

}