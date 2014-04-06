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
	@OneToMany(mappedBy="compHour")
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

}