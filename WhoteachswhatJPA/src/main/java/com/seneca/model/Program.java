package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Program database table.
 * 
 */
@Entity
@NamedQuery(name="Program.findAll", query="SELECT p FROM Program p")
public class Program implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="program_id")
	private int programId;

	@Column(name="program_code")
	private String programCode;

	@Column(name="program_name")
	private String programName;

	@Column(name="total_semester")
	private int totalSemester;

	//bi-directional many-to-one association to CourseInProgramCurSem
	@OneToMany(mappedBy="program")
	private List<CourseInProgramCurSem> courseInProgramCurSems;

	//bi-directional one-to-one association to CourseToProgram
	@OneToOne(mappedBy="program")
	private CourseToProgram courseToProgram;

	public Program() {
	}

	public int getProgramId() {
		return this.programId;
	}

	public void setProgramId(int programId) {
		this.programId = programId;
	}

	public String getProgramCode() {
		return this.programCode;
	}

	public void setProgramCode(String programCode) {
		this.programCode = programCode;
	}

	public String getProgramName() {
		return this.programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public int getTotalSemester() {
		return this.totalSemester;
	}

	public void setTotalSemester(int totalSemester) {
		this.totalSemester = totalSemester;
	}

	public List<CourseInProgramCurSem> getCourseInProgramCurSems() {
		return this.courseInProgramCurSems;
	}

	public void setCourseInProgramCurSems(List<CourseInProgramCurSem> courseInProgramCurSems) {
		this.courseInProgramCurSems = courseInProgramCurSems;
	}

	public CourseInProgramCurSem addCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().add(courseInProgramCurSem);
		courseInProgramCurSem.setProgram(this);

		return courseInProgramCurSem;
	}

	public CourseInProgramCurSem removeCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().remove(courseInProgramCurSem);
		courseInProgramCurSem.setProgram(null);

		return courseInProgramCurSem;
	}

	public CourseToProgram getCourseToProgram() {
		return this.courseToProgram;
	}

	public void setCourseToProgram(CourseToProgram courseToProgram) {
		this.courseToProgram = courseToProgram;
	}

}