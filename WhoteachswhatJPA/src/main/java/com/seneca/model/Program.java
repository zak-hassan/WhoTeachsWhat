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

	@Column(name="sectionNumber")
	private int totalSemester;

	//bi-directional many-to-one association to CourseInProgramCurSem
	@OneToMany(mappedBy="program", fetch=FetchType.LAZY)
	private List<CourseInProgramCurSem> courseInProgramCurSems;

	//bi-directional many-to-many association to Course
	@ManyToMany(mappedBy="programs", fetch=FetchType.LAZY)
	private List<Course> courses;

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

	public List<Course> getCourses() {
		return this.courses;
	}

	public void setCourses(List<Course> courses) {
		this.courses = courses;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((courseInProgramCurSems == null) ? 0
						: courseInProgramCurSems.hashCode());
		result = prime * result + ((courses == null) ? 0 : courses.hashCode());
		result = prime * result
				+ ((programCode == null) ? 0 : programCode.hashCode());
		result = prime * result + programId;
		result = prime * result
				+ ((programName == null) ? 0 : programName.hashCode());
		result = prime * result + totalSemester;
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
		Program other = (Program) obj;
		if (courseInProgramCurSems == null) {
			if (other.courseInProgramCurSems != null)
				return false;
		} else if (!courseInProgramCurSems.equals(other.courseInProgramCurSems))
			return false;
		if (courses == null) {
			if (other.courses != null)
				return false;
		} else if (!courses.equals(other.courses))
			return false;
		if (programCode == null) {
			if (other.programCode != null)
				return false;
		} else if (!programCode.equals(other.programCode))
			return false;
		if (programId != other.programId)
			return false;
		if (programName == null) {
			if (other.programName != null)
				return false;
		} else if (!programName.equals(other.programName))
			return false;
		if (totalSemester != other.totalSemester)
			return false;
		return true;
	}

}