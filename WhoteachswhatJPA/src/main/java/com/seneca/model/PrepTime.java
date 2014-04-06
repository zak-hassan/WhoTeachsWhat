package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the PrepTime database table.
 * 
 */
@Entity
@NamedQuery(name="PrepTime.findAll", query="SELECT p FROM PrepTime p")
public class PrepTime implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="prep_id")
	private int prepId;

	@Column(name="prep_factor")
	private float prepFactor;

	@Column(name="prep_name")
	private String prepName;

	//bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy="prepTime")
	private List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears;

	public PrepTime() {
	}

	public int getPrepId() {
		return this.prepId;
	}

	public void setPrepId(int prepId) {
		this.prepId = prepId;
	}

	public float getPrepFactor() {
		return this.prepFactor;
	}

	public void setPrepFactor(float prepFactor) {
		this.prepFactor = prepFactor;
	}

	public String getPrepName() {
		return this.prepName;
	}

	public void setPrepName(String prepName) {
		this.prepName = prepName;
	}

	public List<FacultyToCourseInSemesterYear> getFacultyToCourseInSemesterYears() {
		return this.facultyToCourseInSemesterYears;
	}

	public void setFacultyToCourseInSemesterYears(List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears) {
		this.facultyToCourseInSemesterYears = facultyToCourseInSemesterYears;
	}

	public FacultyToCourseInSemesterYear addFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().add(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setPrepTime(this);

		return facultyToCourseInSemesterYear;
	}

	public FacultyToCourseInSemesterYear removeFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().remove(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setPrepTime(null);

		return facultyToCourseInSemesterYear;
	}

}