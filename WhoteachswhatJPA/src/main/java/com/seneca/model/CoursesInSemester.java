package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CoursesInSemester database table.
 * 
 */
@Entity
@NamedQuery(name="CoursesInSemester.findAll", query="SELECT c FROM CoursesInSemester c")
public class CoursesInSemester implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cis_id")
	private int cisId;

	@Column(name="addition_attribute")
	private int additionAttribute;

	@Column(name="eval_1_ans")
	private float eval1Ans;

	@Column(name="eval_2_ans")
	private float eval2Ans;

	@Column(name="eval_3_ans")
	private float eval3Ans;

	@Column(name="total_section")
	private int totalSection;

	private int year;

	//bi-directional many-to-one association to EvalFactor
	@ManyToOne
	@JoinColumn(name="eval_1")
	private EvalFactor evalFactor1;

	//bi-directional many-to-one association to EvalFactor
	@ManyToOne
	@JoinColumn(name="eval_2")
	private EvalFactor evalFactor2;

	//bi-directional many-to-one association to EvalFactor
	@ManyToOne
	@JoinColumn(name="eval_3")
	private EvalFactor evalFactor3;

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

	public int getAdditionAttribute() {
		return this.additionAttribute;
	}

	public void setAdditionAttribute(int additionAttribute) {
		this.additionAttribute = additionAttribute;
	}

	public float getEval1Ans() {
		return this.eval1Ans;
	}

	public void setEval1Ans(float eval1Ans) {
		this.eval1Ans = eval1Ans;
	}

	public float getEval2Ans() {
		return this.eval2Ans;
	}

	public void setEval2Ans(float eval2Ans) {
		this.eval2Ans = eval2Ans;
	}

	public float getEval3Ans() {
		return this.eval3Ans;
	}

	public void setEval3Ans(float eval3Ans) {
		this.eval3Ans = eval3Ans;
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

	public EvalFactor getEvalFactor1() {
		return this.evalFactor1;
	}

	public void setEvalFactor1(EvalFactor evalFactor1) {
		this.evalFactor1 = evalFactor1;
	}

	public EvalFactor getEvalFactor2() {
		return this.evalFactor2;
	}

	public void setEvalFactor2(EvalFactor evalFactor2) {
		this.evalFactor2 = evalFactor2;
	}

	public EvalFactor getEvalFactor3() {
		return this.evalFactor3;
	}

	public void setEvalFactor3(EvalFactor evalFactor3) {
		this.evalFactor3 = evalFactor3;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + additionAttribute;
		result = prime * result + cisId;
		result = prime * result + ((course == null) ? 0 : course.hashCode());
		result = prime * result + Float.floatToIntBits(eval1Ans);
		result = prime * result + Float.floatToIntBits(eval2Ans);
		result = prime * result + Float.floatToIntBits(eval3Ans);
		result = prime * result
				+ ((evalFactor1 == null) ? 0 : evalFactor1.hashCode());
		result = prime * result
				+ ((evalFactor2 == null) ? 0 : evalFactor2.hashCode());
		result = prime * result
				+ ((evalFactor3 == null) ? 0 : evalFactor3.hashCode());
		result = prime * result
				+ ((semester == null) ? 0 : semester.hashCode());
		result = prime * result + totalSection;
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
		CoursesInSemester other = (CoursesInSemester) obj;
		if (additionAttribute != other.additionAttribute)
			return false;
		if (cisId != other.cisId)
			return false;
		if (course == null) {
			if (other.course != null)
				return false;
		} else if (!course.equals(other.course))
			return false;
		if (Float.floatToIntBits(eval1Ans) != Float
				.floatToIntBits(other.eval1Ans))
			return false;
		if (Float.floatToIntBits(eval2Ans) != Float
				.floatToIntBits(other.eval2Ans))
			return false;
		if (Float.floatToIntBits(eval3Ans) != Float
				.floatToIntBits(other.eval3Ans))
			return false;
		if (evalFactor1 == null) {
			if (other.evalFactor1 != null)
				return false;
		} else if (!evalFactor1.equals(other.evalFactor1))
			return false;
		if (evalFactor2 == null) {
			if (other.evalFactor2 != null)
				return false;
		} else if (!evalFactor2.equals(other.evalFactor2))
			return false;
		if (evalFactor3 == null) {
			if (other.evalFactor3 != null)
				return false;
		} else if (!evalFactor3.equals(other.evalFactor3))
			return false;
		if (semester == null) {
			if (other.semester != null)
				return false;
		} else if (!semester.equals(other.semester))
			return false;
		if (totalSection != other.totalSection)
			return false;
		if (year != other.year)
			return false;
		return true;
	}

}