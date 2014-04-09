package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the CoursesInSemester database table.
 * 
 */
@Entity
@NamedQuery(name="CoursesInSemester.findAll", query="SELECT c FROM CoursesInSemester c")
public class CoursesInSemester implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cis_id")
	private int cisId;

	@Column(name="total_section")
	private int totalSection;

	private int year;

	//bi-directional many-to-one association to Course
	@OneToMany(mappedBy="coursesInSemester")
	private List<Course> courses;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional many-to-one association to Semester
	@ManyToOne
	@JoinColumn(name="semester_id")
	private Semester semester;

	public CoursesInSemester() {
	}

	public int getCisId() {
		return this.cisId;
	}

	public void setCisId(int cisId) {
		this.cisId = cisId;
	}

	public int getTotalSection() {
		return this.totalSection;
	}

	public void setTotalSection(int totalSection) {
		this.totalSection = totalSection;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public List<Course> getCourses() {
		return this.courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	public Course addCourse(Course course) {
		getCourses().add(course);
		course.setCoursesInSemester(this);

		return course;
	}

	public Course removeCourse(Course course) {
		getCourses().remove(course);
		course.setCoursesInSemester(null);

		return course;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Semester getSemester() {
		return this.semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}

}