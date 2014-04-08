package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the FacultyToCourseInSemesterYear database table.
 * 
 */
@Entity
@NamedQuery(name="FacultyToCourseInSemesterYear.findAll", query="SELECT f FROM FacultyToCourseInSemesterYear f")
public class FacultyToCourseInSemesterYear implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cisy_id")
	private int cisyId;

	@Column(name="addition_attribute")
	private float additionAttribute;

	private float compHour_allowance;

	private float compHour_assigned;

	@Column(name="eval_factor1")
	private float evalFactor1;

	@Column(name="eval_factor2")
	private float evalFactor2;

	@Column(name="eval_factor3")
	private float evalFactor3;

	@Column(name="factor_id")
	private int factorId;

	@Column(name="section_number")
	private int sectionNumber;

	private int year;

	//bi-directional many-to-one association to CompHour
	@ManyToOne
	@JoinColumn(name="compHour_id")
	private CompHour compHour;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional many-to-one association to Faculty
	@ManyToOne
	@JoinColumn(name="faculty_id")
	private Faculty faculty;

	//bi-directional many-to-one association to PrepTime
	@ManyToOne
	@JoinColumn(name="prepType_id")
	private PrepTime prepTime;

	//bi-directional many-to-one association to Semester
	@ManyToOne
	@JoinColumn(name="semester_id")
	private Semester semester;

	public FacultyToCourseInSemesterYear() {
	}

	public int getCisyId() {
		return this.cisyId;
	}

	public void setCisyId(int cisyId) {
		this.cisyId = cisyId;
	}

	public float getAdditionAttribute() {
		return this.additionAttribute;
	}

	public void setAdditionAttribute(float additionAttribute) {
		this.additionAttribute = additionAttribute;
	}

	public float getCompHour_allowance() {
		return this.compHour_allowance;
	}

	public void setCompHour_allowance(float compHour_allowance) {
		this.compHour_allowance = compHour_allowance;
	}

	public float getCompHour_assigned() {
		return this.compHour_assigned;
	}

	public void setCompHour_assigned(float compHour_assigned) {
		this.compHour_assigned = compHour_assigned;
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

	public int getFactorId() {
		return this.factorId;
	}

	public void setFactorId(int factorId) {
		this.factorId = factorId;
	}

	public int getSectionNumber() {
		return this.sectionNumber;
	}

	public void setSectionNumber(int sectionNumber) {
		this.sectionNumber = sectionNumber;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public CompHour getCompHour() {
		return this.compHour;
	}

	public void setCompHour(CompHour compHour) {
		this.compHour = compHour;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Faculty getFaculty() {
		return this.faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public PrepTime getPrepTime() {
		return this.prepTime;
	}

	public void setPrepTime(PrepTime prepTime) {
		this.prepTime = prepTime;
	}

	public Semester getSemester() {
		return this.semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}

}