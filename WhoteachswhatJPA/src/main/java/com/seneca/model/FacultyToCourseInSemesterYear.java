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

	private int class_size;
	
	@Column(name="eval_1")
	private int eval1;

	@Column(name="eval_1_ans")
	private float eval1Ans;

	@Column(name="eval_2")
	private int eval2;

	@Column(name="eval_2_ans")
	private float eval2Ans;

	@Column(name="eval_3")
	private int eval3;

	@Column(name="eval_3_ans")
	private float eval3Ans;

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

	public int getEval1() {
		return this.eval1;
	}

	public void setEval1(int eval1) {
		this.eval1 = eval1;
	}

	public float getEval1Ans() {
		return this.eval1Ans;
	}

	public void setEval1Ans(float eval1Ans) {
		this.eval1Ans = eval1Ans;
	}

	public int getEval2() {
		return this.eval2;
	}

	public void setEval2(int eval2) {
		this.eval2 = eval2;
	}

	public float getEval2Ans() {
		return this.eval2Ans;
	}

	public void setEval2Ans(float eval2Ans) {
		this.eval2Ans = eval2Ans;
	}

	public int getEval3() {
		return this.eval3;
	}

	public void setEval3(int eval3) {
		this.eval3 = eval3;
	}

	public float getEval3Ans() {
		return this.eval3Ans;
	}

	public void setEval3Ans(float eval3Ans) {
		this.eval3Ans = eval3Ans;
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

	public int getClass_size() {
		return class_size;
	}

	public void setClass_size(int class_size) {
		this.class_size = class_size;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Float.floatToIntBits(additionAttribute);
		result = prime * result + cisyId;
		result = prime * result + class_size;
		result = prime * result
				+ ((compHour == null) ? 0 : compHour.hashCode());
		result = prime * result + Float.floatToIntBits(compHour_allowance);
		result = prime * result + Float.floatToIntBits(compHour_assigned);
		result = prime * result + ((course == null) ? 0 : course.hashCode());
		result = prime * result + eval1;
		result = prime * result + Float.floatToIntBits(eval1Ans);
		result = prime * result + eval2;
		result = prime * result + Float.floatToIntBits(eval2Ans);
		result = prime * result + eval3;
		result = prime * result + Float.floatToIntBits(eval3Ans);
		result = prime * result + factorId;
		result = prime * result + ((faculty == null) ? 0 : faculty.hashCode());
		result = prime * result
				+ ((prepTime == null) ? 0 : prepTime.hashCode());
		result = prime * result + sectionNumber;
		result = prime * result
				+ ((semester == null) ? 0 : semester.hashCode());
		result = prime * result + year;
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
		FacultyToCourseInSemesterYear other = (FacultyToCourseInSemesterYear) obj;
		if (Float.floatToIntBits(additionAttribute) != Float
				.floatToIntBits(other.additionAttribute))
			return false;
		if (cisyId != other.cisyId)
			return false;
		if (class_size != other.class_size)
			return false;
		if (compHour == null) {
			if (other.compHour != null)
				return false;
		} else if (!compHour.equals(other.compHour))
			return false;
		if (Float.floatToIntBits(compHour_allowance) != Float
				.floatToIntBits(other.compHour_allowance))
			return false;
		if (Float.floatToIntBits(compHour_assigned) != Float
				.floatToIntBits(other.compHour_assigned))
			return false;
		if (course == null) {
			if (other.course != null)
				return false;
		} else if (!course.equals(other.course))
			return false;
		if (eval1 != other.eval1)
			return false;
		if (Float.floatToIntBits(eval1Ans) != Float
				.floatToIntBits(other.eval1Ans))
			return false;
		if (eval2 != other.eval2)
			return false;
		if (Float.floatToIntBits(eval2Ans) != Float
				.floatToIntBits(other.eval2Ans))
			return false;
		if (eval3 != other.eval3)
			return false;
		if (Float.floatToIntBits(eval3Ans) != Float
				.floatToIntBits(other.eval3Ans))
			return false;
		if (factorId != other.factorId)
			return false;
		if (faculty == null) {
			if (other.faculty != null)
				return false;
		} else if (!faculty.equals(other.faculty))
			return false;
		if (prepTime == null) {
			if (other.prepTime != null)
				return false;
		} else if (!prepTime.equals(other.prepTime))
			return false;
		if (sectionNumber != other.sectionNumber)
			return false;
		if (semester == null) {
			if (other.semester != null)
				return false;
		} else if (!semester.equals(other.semester))
			return false;
		if (year != other.year)
			return false;
		return true;
	}


}