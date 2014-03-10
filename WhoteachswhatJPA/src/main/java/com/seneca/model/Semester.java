package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Semester database table.
 * 
 */
@Entity
@NamedQuery(name="Semester.findAll", query="SELECT s FROM Semester s")
public class Semester implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="semester_id")
	private int semesterId;

	@Column(name="semester_name")
	private String semesterName;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="semester", fetch=FetchType.LAZY)
	private List<CoursesInSemester> coursesInSemesters;

	//bi-directional many-to-one association to ResponsibilityToFaculty
	@OneToMany(mappedBy="semester", fetch=FetchType.LAZY)
	private List<ResponsibilityToFaculty> responsibilityToFaculties;

	public Semester() {
	}

	public int getSemesterId() {
		return this.semesterId;
	}

	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	public String getSemesterName() {
		return this.semesterName;
	}

	public void setSemesterName(String semesterName) {
		this.semesterName = semesterName;
	}

	public List<CoursesInSemester> getCoursesInSemesters() {
		return this.coursesInSemesters;
	}

	public void setCoursesInSemesters(List<CoursesInSemester> coursesInSemesters) {
		this.coursesInSemesters = coursesInSemesters;
	}

	public CoursesInSemester addCoursesInSemester(CoursesInSemester coursesInSemester) {
		getCoursesInSemesters().add(coursesInSemester);
		coursesInSemester.setSemester(this);

		return coursesInSemester;
	}

	public CoursesInSemester removeCoursesInSemester(CoursesInSemester coursesInSemester) {
		getCoursesInSemesters().remove(coursesInSemester);
		coursesInSemester.setSemester(null);

		return coursesInSemester;
	}

	public List<ResponsibilityToFaculty> getResponsibilityToFaculties() {
		return this.responsibilityToFaculties;
	}

	public void setResponsibilityToFaculties(List<ResponsibilityToFaculty> responsibilityToFaculties) {
		this.responsibilityToFaculties = responsibilityToFaculties;
	}

	public ResponsibilityToFaculty addResponsibilityToFaculty(ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().add(responsibilityToFaculty);
		responsibilityToFaculty.setSemester(this);

		return responsibilityToFaculty;
	}

	public ResponsibilityToFaculty removeResponsibilityToFaculty(ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().remove(responsibilityToFaculty);
		responsibilityToFaculty.setSemester(null);

		return responsibilityToFaculty;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((coursesInSemesters == null) ? 0 : coursesInSemesters
						.hashCode());
		result = prime
				* result
				+ ((responsibilityToFaculties == null) ? 0
						: responsibilityToFaculties.hashCode());
		result = prime * result + semesterId;
		result = prime * result
				+ ((semesterName == null) ? 0 : semesterName.hashCode());
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
		Semester other = (Semester) obj;
		if (coursesInSemesters == null) {
			if (other.coursesInSemesters != null)
				return false;
		} else if (!coursesInSemesters.equals(other.coursesInSemesters))
			return false;
		if (responsibilityToFaculties == null) {
			if (other.responsibilityToFaculties != null)
				return false;
		} else if (!responsibilityToFaculties
				.equals(other.responsibilityToFaculties))
			return false;
		if (semesterId != other.semesterId)
			return false;
		if (semesterName == null) {
			if (other.semesterName != null)
				return false;
		} else if (!semesterName.equals(other.semesterName))
			return false;
		return true;
	}

}