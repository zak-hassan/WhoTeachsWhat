package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the CourseToProgram database table.
 * 
 */
@Entity
@NamedQuery(name="CourseToProgram.findAll", query="SELECT c FROM CourseToProgram c")
public class CourseToProgram implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cToP_id;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional one-to-one association to Program
	@OneToOne
	@JoinColumn(name="program_id")
	private Program program;

	public CourseToProgram() {
	}

	public int getCToP_id() {
		return this.cToP_id;
	}

	public void setCToP_id(int cToP_id) {
		this.cToP_id = cToP_id;
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

}