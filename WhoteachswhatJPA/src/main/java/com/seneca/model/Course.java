package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Course database table.
 * 
 */
@Entity
@NamedQuery(name="Course.findAll", query="SELECT c FROM Course c")
public class Course implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="course_id")
	private int courseId;

	@Column(name="course_code")
	private String courseCode;

	@Column(name="course_name")
	private String courseName;

	@Column(name="crossover_course")
	private String crossoverCourse;

	@Column(name="eval_factor1")
	private float evalFactor1;

	@Column(name="eval_factor2")
	private float evalFactor2;

	@Column(name="eval_factor3")
	private float evalFactor3;

	@Column(name="old_course")
	private String oldCourse;

	//bi-directional many-to-one association to CoursesInSemester
	@ManyToOne
	@JoinColumn(name="course_in_semester", referencedColumnName="course_id")
	private CoursesInSemester coursesInSemester;

	//bi-directional many-to-one association to CourseInProgramCurSem
	@OneToMany(mappedBy="course")
	private List<CourseInProgramCurSem> courseInProgramCurSems;

	//bi-directional many-to-one association to CourseToProgram
	@OneToMany(mappedBy="course")
	private List<CourseToProgram> courseToPrograms;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="course")
	private List<CoursesInSemester> coursesInSemesters;

	//bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy="course")
	private List<FacultyToCourseInSemesterYear> facultyToCourseInSemesterYears;

	public Course() {
	}

	public int getCourseId() {
		return this.courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public String getCourseCode() {
		return this.courseCode;
	}

	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getCrossoverCourse() {
		return this.crossoverCourse;
	}

	public void setCrossoverCourse(String crossoverCourse) {
		this.crossoverCourse = crossoverCourse;
	}

	public float getEvalFactor1() {
		return this.evalFactor1;
	}

	public void setEvalFactor1(float evalFactor1) {
		this.evalFactor1 = evalFactor1;
	}

	public float getEvalFactor2() {
		return this.evalFactor2;
	}

	public void setEvalFactor2(float evalFactor2) {
		this.evalFactor2 = evalFactor2;
	}

	public float getEvalFactor3() {
		return this.evalFactor3;
	}

	public void setEvalFactor3(float evalFactor3) {
		this.evalFactor3 = evalFactor3;
	}

	public String getOldCourse() {
		return this.oldCourse;
	}

	public void setOldCourse(String oldCourse) {
		this.oldCourse = oldCourse;
	}

	public CoursesInSemester getCoursesInSemester() {
		return this.coursesInSemester;
	}

	public void setCoursesInSemester(CoursesInSemester coursesInSemester) {
		this.coursesInSemester = coursesInSemester;
	}

	public List<CourseInProgramCurSem> getCourseInProgramCurSems() {
		return this.courseInProgramCurSems;
	}

	public void setCourseInProgramCurSems(List<CourseInProgramCurSem> courseInProgramCurSems) {
		this.courseInProgramCurSems = courseInProgramCurSems;
	}

	public CourseInProgramCurSem addCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().add(courseInProgramCurSem);
		courseInProgramCurSem.setCourse(this);

		return courseInProgramCurSem;
	}

	public CourseInProgramCurSem removeCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().remove(courseInProgramCurSem);
		courseInProgramCurSem.setCourse(null);

		return courseInProgramCurSem;
	}

	public List<CourseToProgram> getCourseToPrograms() {
		return this.courseToPrograms;
	}

	public void setCourseToPrograms(List<CourseToProgram> courseToPrograms) {
		this.courseToPrograms = courseToPrograms;
	}

	public CourseToProgram addCourseToProgram(CourseToProgram courseToProgram) {
		getCourseToPrograms().add(courseToProgram);
		courseToProgram.setCourse(this);

		return courseToProgram;
	}

	public CourseToProgram removeCourseToProgram(CourseToProgram courseToProgram) {
		getCourseToPrograms().remove(courseToProgram);
		courseToProgram.setCourse(null);

		return courseToProgram;
	}

	public List<CoursesInSemester> getCoursesInSemesters() {
		return this.coursesInSemesters;
	}

	public void setCoursesInSemesters(List<CoursesInSemester> coursesInSemesters) {
		this.coursesInSemesters = coursesInSemesters;
	}

	public CoursesInSemester addCoursesInSemester(CoursesInSemester coursesInSemester) {
		getCoursesInSemesters().add(coursesInSemester);
		coursesInSemester.setCourse(this);

		return coursesInSemester;
	}

	public CoursesInSemester removeCoursesInSemester(CoursesInSemester coursesInSemester) {
		getCoursesInSemesters().remove(coursesInSemester);
		coursesInSemester.setCourse(null);

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
		facultyToCourseInSemesterYear.setCourse(this);

		return facultyToCourseInSemesterYear;
	}

	public FacultyToCourseInSemesterYear removeFacultyToCourseInSemesterYear(FacultyToCourseInSemesterYear facultyToCourseInSemesterYear) {
		getFacultyToCourseInSemesterYears().remove(facultyToCourseInSemesterYear);
		facultyToCourseInSemesterYear.setCourse(null);

		return facultyToCourseInSemesterYear;
	}

}