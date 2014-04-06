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

	private String crossover_course;

	private String old_course;

	//bi-directional many-to-one association to CourseInProgramCurSem
	@OneToMany(mappedBy="course", fetch=FetchType.LAZY)
	private List<CourseInProgramCurSem> courseInProgramCurSems;

	//bi-directional many-to-many association to Program
	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
		name="CourseToProgram"
		, joinColumns={
			@JoinColumn(name="course_id")
			}
		, inverseJoinColumns={
			@JoinColumn(name="program_id")
			}
		)
	private List<Program> programs;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="course", fetch=FetchType.LAZY)
	private List<CoursesInSemester> coursesInSemesters;

	//bi-directional many-to-one association to FacultyToCourseInSemesterYear
	@OneToMany(mappedBy="course", fetch=FetchType.LAZY)
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

	public List<Program> getPrograms() {
		return this.programs;
	}

	public void setPrograms(List<Program> programs) {
		this.programs = programs;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((courseCode == null) ? 0 : courseCode.hashCode());
		result = prime * result + courseId;
		result = prime
				* result
				+ ((courseInProgramCurSems == null) ? 0
						: courseInProgramCurSems.hashCode());
		result = prime * result
				+ ((courseName == null) ? 0 : courseName.hashCode());
		result = prime
				* result
				+ ((coursesInSemesters == null) ? 0 : coursesInSemesters
						.hashCode());
		result = prime
				* result
				+ ((crossover_course == null) ? 0 : crossover_course.hashCode());
		result = prime
				* result
				+ ((facultyToCourseInSemesterYears == null) ? 0
						: facultyToCourseInSemesterYears.hashCode());
		result = prime * result
				+ ((old_course == null) ? 0 : old_course.hashCode());
		result = prime * result
				+ ((programs == null) ? 0 : programs.hashCode());
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
		Course other = (Course) obj;
		if (courseCode == null) {
			if (other.courseCode != null)
				return false;
		} else if (!courseCode.equals(other.courseCode))
			return false;
		if (courseId != other.courseId)
			return false;
		if (courseInProgramCurSems == null) {
			if (other.courseInProgramCurSems != null)
				return false;
		} else if (!courseInProgramCurSems.equals(other.courseInProgramCurSems))
			return false;
		if (courseName == null) {
			if (other.courseName != null)
				return false;
		} else if (!courseName.equals(other.courseName))
			return false;
		if (coursesInSemesters == null) {
			if (other.coursesInSemesters != null)
				return false;
		} else if (!coursesInSemesters.equals(other.coursesInSemesters))
			return false;
		if (crossover_course == null) {
			if (other.crossover_course != null)
				return false;
		} else if (!crossover_course.equals(other.crossover_course))
			return false;
		if (facultyToCourseInSemesterYears == null) {
			if (other.facultyToCourseInSemesterYears != null)
				return false;
		} else if (!facultyToCourseInSemesterYears
				.equals(other.facultyToCourseInSemesterYears))
			return false;
		if (old_course == null) {
			if (other.old_course != null)
				return false;
		} else if (!old_course.equals(other.old_course))
			return false;
		if (programs == null) {
			if (other.programs != null)
				return false;
		} else if (!programs.equals(other.programs))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Course [courseId=" + courseId + ", courseCode=" + courseCode
				+ ", courseName=" + courseName + ", courseInProgramCurSems="
				+ courseInProgramCurSems + ", programs=" + programs
				+ ", coursesInSemesters=" + coursesInSemesters
				+ ", facultyToCourseInSemesterYears="
				+ facultyToCourseInSemesterYears + "]";
	}

	public String getCrossover_course() {
		return crossover_course;
	}

	public void setCrossover_course(String crossover_course) {
		this.crossover_course = crossover_course;
	}

	public String getOld_course() {
		return old_course;
	}
	
	public void setOld_course(String old_course) {
		this.old_course = old_course;
	}
	
}