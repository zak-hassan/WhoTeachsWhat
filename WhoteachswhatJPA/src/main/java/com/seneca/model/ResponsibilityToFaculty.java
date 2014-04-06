package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the ResponsibilityToFaculty database table.
 * 
 */
@Entity
@NamedQuery(name="ResponsibilityToFaculty.findAll", query="SELECT r FROM ResponsibilityToFaculty r")
public class ResponsibilityToFaculty implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int repToFac_id;

	@Column(name="hours_per_week")
	private float hoursPerWeek;

	private int year;

	//bi-directional many-to-one association to Faculty
	@ManyToOne
	@JoinColumn(name="faculty_id")
	private Faculty faculty;

	//bi-directional many-to-one association to Responsibility
	@ManyToOne
	@JoinColumn(name="responsibility_id")
	private Responsibility responsibility;

	//bi-directional many-to-one association to Semester
	@ManyToOne
	@JoinColumn(name="semester_id")
	private Semester semester;

	public ResponsibilityToFaculty() {
	}

	public int getRepToFac_id() {
		return this.repToFac_id;
	}

	public void setRepToFac_id(int repToFac_id) {
		this.repToFac_id = repToFac_id;
	}

	public float getHoursPerWeek() {
		return this.hoursPerWeek;
	}

	public void setHoursPerWeek(float hoursPerWeek) {
		this.hoursPerWeek = hoursPerWeek;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public Faculty getFaculty() {
		return this.faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public Responsibility getResponsibility() {
		return this.responsibility;
	}

	public void setResponsibility(Responsibility responsibility) {
		this.responsibility = responsibility;
	}

	public Semester getSemester() {
		return this.semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}

}