package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;

/**
 * The persistent class for the Faculty database table.
 * 
 */
@Entity
@NamedQuery(name = "Faculty.findAll", query = "SELECT f FROM Faculty f")
public class Faculty implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "faculty_id")
	private int facultyId;

	@Column(name = "faculty_first_name")
	private String facultyFirstName;

	@Column(name = "faculty_last_name")
	private String facultyLastName;

	@Column(name = "hours_to_teach")
	private float hoursToTeach;


	// bi-directional many-to-one association to TeachingType
	@ManyToOne
	@JoinColumn(name = "teachingType_id")
	private TeachingType teachingType;

	// bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy = "faculty", fetch = FetchType.LAZY)
	private List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears;

	// bi-directional many-to-one association to ResponsibilityToFaculty
	@OneToMany(mappedBy = "faculty", fetch = FetchType.LAZY)
	private List<ResponsibilityToFaculty> responsibilityToFaculties;

	public Faculty() {
	}

	public int getFacultyId() {
		return this.facultyId;
	}

	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}

	public String getFacultyFirstName() {
		return this.facultyFirstName;
	}

	public void setFacultyFirstName(String facultyFirstName) {
		this.facultyFirstName = facultyFirstName;
	}

	public String getFacultyLastName() {
		return this.facultyLastName;
	}

	public void setFacultyLastName(String facultyLastName) {
		this.facultyLastName = facultyLastName;
	}

	public float getHoursToTeach() {
		return this.hoursToTeach;
	}

	public void setHoursToTeach(float hoursToTeach) {
		this.hoursToTeach = hoursToTeach;
	}

	public TeachingType getTeachingType() {
		return this.teachingType;
	}

	public void setTeachingType(TeachingType teachingType) {
		this.teachingType = teachingType;
	}

	public List<FacultyToCourseInSemesterYear> getFacultyToCourseInSemesterYears() {
		return this.facultyToCourseInSemesterYears;
	}

	public void setFacultyToCourseInSemesterYears(
			List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears) {
		this.facultyToCourseInSemesterYears = facultyToCourseInSemesterYears;
	}

	public FacultyToCourseInSemesterYear addFacultyToCourseInSemesterYear(
			FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().add(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setFaculty(this);

		return facultyToCourseInSemesterYear;
	}

	public FacultyToCourseInSemesterYear removeFacultyToCourseInSemesterYear(
			FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().remove(
				facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setFaculty(null);

		return facultyToCourseInSemesterYear;
	}

	public List<ResponsibilityToFaculty> getResponsibilityToFaculties() {
		return this.responsibilityToFaculties;
	}

	public void setResponsibilityToFaculties(
			List<ResponsibilityToFaculty> responsibilityToFaculties) {
		this.responsibilityToFaculties = responsibilityToFaculties;
	}

	public ResponsibilityToFaculty addResponsibilityToFaculty(
			ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().add(responsibilityToFaculty);
		responsibilityToFaculty.setFaculty(this);

		return responsibilityToFaculty;
	}

	public ResponsibilityToFaculty removeResponsibilityToFaculty(
			ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().remove(responsibilityToFaculty);
		responsibilityToFaculty.setFaculty(null);

		return responsibilityToFaculty;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((facultyFirstName == null) ? 0 : facultyFirstName.hashCode());
		result = prime * result + facultyId;
		result = prime * result
				+ ((facultyLastName == null) ? 0 : facultyLastName.hashCode());
		result = prime
				* result
				+ ((facultyToCourseInSemesterYears == null) ? 0
						: facultyToCourseInSemesterYears.hashCode());
		result = prime * result + Float.floatToIntBits(hoursToTeach);
		result = prime
				* result
				+ ((responsibilityToFaculties == null) ? 0
						: responsibilityToFaculties.hashCode());
		result = prime * result
				+ ((teachingType == null) ? 0 : teachingType.hashCode());
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
		Faculty other = (Faculty) obj;
		if (facultyFirstName == null) {
			if (other.facultyFirstName != null)
				return false;
		} else if (!facultyFirstName.equals(other.facultyFirstName))
			return false;
		if (facultyId != other.facultyId)
			return false;
		if (facultyLastName == null) {
			if (other.facultyLastName != null)
				return false;
		} else if (!facultyLastName.equals(other.facultyLastName))
			return false;
		if (facultyToCourseInSemesterYears == null) {
			if (other.facultyToCourseInSemesterYears != null)
				return false;
		} else if (!facultyToCourseInSemesterYears
				.equals(other.facultyToCourseInSemesterYears))
			return false;
		if (Float.floatToIntBits(hoursToTeach) != Float
				.floatToIntBits(other.hoursToTeach))
			return false;
		if (responsibilityToFaculties == null) {
			if (other.responsibilityToFaculties != null)
				return false;
		} else if (!responsibilityToFaculties
				.equals(other.responsibilityToFaculties))
			return false;
		if (teachingType == null) {
			if (other.teachingType != null)
				return false;
		} else if (!teachingType.equals(other.teachingType))
			return false;
		return true;
	}

}