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
	private int cProgCurSem_id;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional many-to-one association to CurriculumSemester
	@ManyToOne
	@JoinColumn(name="curriculumSemester_id")
	private CurriculumSemester curriculumSemester;

	//bi-directional many-to-one association to Program
	@ManyToOne
	@JoinColumn(name="program_id")
	private Program program;

	public CourseInProgramCurSem() {
	}

	public int getCProgCurSem_id() {
		return this.cProgCurSem_id;
	}

	public void setCProgCurSem_id(int cProgCurSem_id) {
		this.cProgCurSem_id = cProgCurSem_id;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public CurriculumSemester getCurriculumSemester() {
		return this.curriculumSemester;
	}

	public void setCurriculumSemester(CurriculumSemester curriculumSemester) {
		this.curriculumSemester = curriculumSemester;
	}

	public Program getProgram() {
		return this.program;
	}

	public void setProgram(Program program) {
		this.program = program;
	}

}