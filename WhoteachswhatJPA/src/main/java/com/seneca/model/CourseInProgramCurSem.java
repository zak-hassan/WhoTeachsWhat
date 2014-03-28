package com.seneca.model;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the CourseInProgramCurSem database table.
 * 
 */
@Entity
@NamedQuery(name="CourseInProgramCurSem.findAll", query="SELECT c FROM CourseInProgramCurSem c")
public class CourseInProgramCurSem implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="cinProgram_id")
	private int id;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id") 
	private Course course;

	//bi-directional many-to-one association to Program
	@ManyToOne
	@JoinColumn(name="program_id") 
	private Program program;

	//bi-directional many-to-one association to CurriculumSemester
	@ManyToOne
	@JoinColumn(name="cs_id") 
	private CurriculumSemester curriculumSemester;

	public CourseInProgramCurSem() {
	}


	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public Program getProgram() {
		return this.program;
	}

	public void setProgram(Program program) {
		this.program = program;
	}

	public CurriculumSemester getCurriculumSemester() {
		return this.curriculumSemester;
	}

	public void setCurriculumSemester(CurriculumSemester curriculumSemester) {
		this.curriculumSemester = curriculumSemester;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((course == null) ? 0 : course.hashCode());
		result = prime
				* result
				+ ((curriculumSemester == null) ? 0 : curriculumSemester
						.hashCode());
		result = prime * result + id;
		result = prime * result + ((program == null) ? 0 : program.hashCode());
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
		CourseInProgramCurSem other = (CourseInProgramCurSem) obj;
		if (course == null) {
			if (other.course != null)
				return false;
		} else if (!course.equals(other.course))
			return false;
		if (curriculumSemester == null) {
			if (other.curriculumSemester != null)
				return false;
		} else if (!curriculumSemester.equals(other.curriculumSemester))
			return false;
		if (id != other.id)
			return false;
		if (program == null) {
			if (other.program != null)
				return false;
		} else if (!program.equals(other.program))
			return false;
		return true;
	}

	public void setId(int id) {
		this.id = id;
	}

}