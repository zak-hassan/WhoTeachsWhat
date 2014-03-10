package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the CompHour database table.
 * 
 */
@Entity
@NamedQuery(name="CompHour.findAll", query="SELECT c FROM CompHour c")
public class CompHour implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int compHour_id;

	private String compHour_code;

	private String compHour_name;

	//bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy="compHour", fetch=FetchType.LAZY)
	private List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears;

	public CompHour() {
	}

	public int getCompHour_id() {
		return this.compHour_id;
	}

	public void setCompHour_id(int compHour_id) {
		this.compHour_id = compHour_id;
	}

	public String getCompHour_code() {
		return this.compHour_code;
	}

	public void setCompHour_code(String compHour_code) {
		this.compHour_code = compHour_code;
	}

	public String getCompHour_name() {
		return this.compHour_name;
	}

	public void setCompHour_name(String compHour_name) {
		this.compHour_name = compHour_name;
	}

	public List<FacultyToCourseInSemesterYear> getFacultyToCourseInSemesterYears() {
		return this.facultyToCourseInSemesterYears;
	}

	public void setFacultyToCourseInSemesterYears(List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears) {
		this.facultyToCourseInSemesterYears = facultyToCourseInSemesterYears;
	}

	public FacultyToCourseInSemesterYear addFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().add(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setCompHour(this);

		return facultyToCourseInSemesterYear;
	}

	public FacultyToCourseInSemesterYear removeFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().remove(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setCompHour(null);

		return facultyToCourseInSemesterYear;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((compHour_code == null) ? 0 : compHour_code.hashCode());
		result = prime * result + compHour_id;
		result = prime * result
				+ ((compHour_name == null) ? 0 : compHour_name.hashCode());
		result = prime
				* result
				+ ((facultyToCourseInSemesterYears == null) ? 0
						: facultyToCourseInSemesterYears.hashCode());
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
		CompHour other = (CompHour) obj;
		if (compHour_code == null) {
			if (other.compHour_code != null)
				return false;
		} else if (!compHour_code.equals(other.compHour_code))
			return false;
		if (compHour_id != other.compHour_id)
			return false;
		if (compHour_name == null) {
			if (other.compHour_name != null)
				return false;
		} else if (!compHour_name.equals(other.compHour_name))
			return false;
		if (facultyToCourseInSemesterYears == null) {
			if (other.facultyToCourseInSemesterYears != null)
				return false;
		} else if (!facultyToCourseInSemesterYears
				.equals(other.facultyToCourseInSemesterYears))
			return false;
		return true;
	}

}