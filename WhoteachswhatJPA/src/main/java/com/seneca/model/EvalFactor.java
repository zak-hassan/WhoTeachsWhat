package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the EvalFactor database table.
 * 
 */
@Entity
@NamedQuery(name="EvalFactor.findAll", query="SELECT e FROM EvalFactor e")
public class EvalFactor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="eval_id")
	private int evalId;

	@Column(name="eval_factor")
	private float evalFactor;

	@Column(name="eval_name")
	private String evalName;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="evalFactor1", fetch=FetchType.LAZY)
	private List<CoursesInSemester> coursesInSemesters1;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="evalFactor2", fetch=FetchType.LAZY)
	private List<CoursesInSemester> coursesInSemesters2;

	//bi-directional many-to-one association to CoursesInSemester
	@OneToMany(mappedBy="evalFactor3", fetch=FetchType.LAZY)
	private List<CoursesInSemester> coursesInSemesters3;

	public EvalFactor() {
	}

	public int getEvalId() {
		return this.evalId;
	}

	public void setEvalId(int evalId) {
		this.evalId = evalId;
	}

	public float getEvalFactor() {
		return this.evalFactor;
	}

	public void setEvalFactor(float evalFactor) {
		this.evalFactor = evalFactor;
	}

	public String getEvalName() {
		return this.evalName;
	}

	public void setEvalName(String evalName) {
		this.evalName = evalName;
	}

	public List<CoursesInSemester> getCoursesInSemesters1() {
		return this.coursesInSemesters1;
	}

	public void setCoursesInSemesters1(List<CoursesInSemester> coursesInSemesters1) {
		this.coursesInSemesters1 = coursesInSemesters1;
	}

	public CoursesInSemester addCoursesInSemesters1(CoursesInSemester coursesInSemesters1) {
		getCoursesInSemesters1().add(coursesInSemesters1);
		coursesInSemesters1.setEvalFactor1(this);

		return coursesInSemesters1;
	}

	public CoursesInSemester removeCoursesInSemesters1(CoursesInSemester coursesInSemesters1) {
		getCoursesInSemesters1().remove(coursesInSemesters1);
		coursesInSemesters1.setEvalFactor1(null);

		return coursesInSemesters1;
	}

	public List<CoursesInSemester> getCoursesInSemesters2() {
		return this.coursesInSemesters2;
	}

	public void setCoursesInSemesters2(List<CoursesInSemester> coursesInSemesters2) {
		this.coursesInSemesters2 = coursesInSemesters2;
	}

	public CoursesInSemester addCoursesInSemesters2(CoursesInSemester coursesInSemesters2) {
		getCoursesInSemesters2().add(coursesInSemesters2);
		coursesInSemesters2.setEvalFactor2(this);

		return coursesInSemesters2;
	}

	public CoursesInSemester removeCoursesInSemesters2(CoursesInSemester coursesInSemesters2) {
		getCoursesInSemesters2().remove(coursesInSemesters2);
		coursesInSemesters2.setEvalFactor2(null);

		return coursesInSemesters2;
	}

	public List<CoursesInSemester> getCoursesInSemesters3() {
		return this.coursesInSemesters3;
	}

	public void setCoursesInSemesters3(List<CoursesInSemester> coursesInSemesters3) {
		this.coursesInSemesters3 = coursesInSemesters3;
	}

	public CoursesInSemester addCoursesInSemesters3(CoursesInSemester coursesInSemesters3) {
		getCoursesInSemesters3().add(coursesInSemesters3);
		coursesInSemesters3.setEvalFactor3(this);

		return coursesInSemesters3;
	}

	public CoursesInSemester removeCoursesInSemesters3(CoursesInSemester coursesInSemesters3) {
		getCoursesInSemesters3().remove(coursesInSemesters3);
		coursesInSemesters3.setEvalFactor3(null);

		return coursesInSemesters3;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((coursesInSemesters1 == null) ? 0 : coursesInSemesters1
						.hashCode());
		result = prime
				* result
				+ ((coursesInSemesters2 == null) ? 0 : coursesInSemesters2
						.hashCode());
		result = prime
				* result
				+ ((coursesInSemesters3 == null) ? 0 : coursesInSemesters3
						.hashCode());
		result = prime * result + Float.floatToIntBits(evalFactor);
		result = prime * result + evalId;
		result = prime * result
				+ ((evalName == null) ? 0 : evalName.hashCode());
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
		EvalFactor other = (EvalFactor) obj;
		if (coursesInSemesters1 == null) {
			if (other.coursesInSemesters1 != null)
				return false;
		} else if (!coursesInSemesters1.equals(other.coursesInSemesters1))
			return false;
		if (coursesInSemesters2 == null) {
			if (other.coursesInSemesters2 != null)
				return false;
		} else if (!coursesInSemesters2.equals(other.coursesInSemesters2))
			return false;
		if (coursesInSemesters3 == null) {
			if (other.coursesInSemesters3 != null)
				return false;
		} else if (!coursesInSemesters3.equals(other.coursesInSemesters3))
			return false;
		if (Float.floatToIntBits(evalFactor) != Float
				.floatToIntBits(other.evalFactor))
			return false;
		if (evalId != other.evalId)
			return false;
		if (evalName == null) {
			if (other.evalName != null)
				return false;
		} else if (!evalName.equals(other.evalName))
			return false;
		return true;
	}

}