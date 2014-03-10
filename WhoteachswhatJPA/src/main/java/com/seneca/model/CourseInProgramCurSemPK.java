package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The primary key class for the CourseInProgramCurSem database table.
 * 
 */
@Embeddable
public class CourseInProgramCurSemPK implements Serializable {
	//default serial version id, required for serializable classes.
	private static final long serialVersionUID = 1L;

	@Column(name="course_id")
	private int courseId;

	@Column(name="program_id")
	private int programId;

	@Column(name="cs_id")
	private int csId;

	public CourseInProgramCurSemPK() {
	}
	public int getCourseId() {
		return this.courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getProgramId() {
		return this.programId;
	}
	public void setProgramId(int programId) {
		this.programId = programId;
	}
	public int getCsId() {
		return this.csId;
	}
	public void setCsId(int csId) {
		this.csId = csId;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CourseInProgramCurSemPK other = (CourseInProgramCurSemPK) obj;
		if (courseId != other.courseId)
			return false;
		if (csId != other.csId)
			return false;
		if (programId != other.programId)
			return false;
		return true;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + courseId;
		result = prime * result + csId;
		result = prime * result + programId;
		return result;
	}
}