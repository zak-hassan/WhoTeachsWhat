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
	@OneToMany(mappedBy="prepTime", fetch=FetchType.LAZY)
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((facultyToCourseInSemesterYears == null) ? 0
						: facultyToCourseInSemesterYears.hashCode());
		result = prime * result + Float.floatToIntBits(prepFactor);
		result = prime * result + prepId;
		result = prime * result
				+ ((prepName == null) ? 0 : prepName.hashCode());
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
		PrepTime other = (PrepTime) obj;
		if (facultyToCourseInSemesterYears == null) {
			if (other.facultyToCourseInSemesterYears != null)
				return false;
		} else if (!facultyToCourseInSemesterYears
				.equals(other.facultyToCourseInSemesterYears))
			return false;
		if (Float.floatToIntBits(prepFactor) != Float
				.floatToIntBits(other.prepFactor))
			return false;
		if (prepId != other.prepId)
			return false;
		if (prepName == null) {
			if (other.prepName != null)
				return false;
		} else if (!prepName.equals(other.prepName))
			return false;
		return true;
	}

}