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
	@OneToMany(mappedBy="semester")
	private List<CoursesInSemester> coursesInSemesters;

	//bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy="semester")
	private List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears;

	//bi-directional many-to-one association to ResponsibilityToFaculty
	@OneToMany(mappedBy="semester")
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

	public List<FacultyToCourseInSemesterYear> getFacultyToCourseInSemesterYears() {
		return this.facultyToCourseInSemesterYears;
	}

	public void setFacultyToCourseInSemesterYears(List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears) {
		this.facultyToCourseInSemesterYears = facultyToCourseInSemesterYears;
	}

	public FacultyToCourseInSemesterYear addFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().add(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setSemester(this);

		return facultyToCourseInSemesterYear;
	}

	public FacultyToCourseInSemesterYear removeFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().remove(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setSemester(null);

		return facultyToCourseInSemesterYear;
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

}