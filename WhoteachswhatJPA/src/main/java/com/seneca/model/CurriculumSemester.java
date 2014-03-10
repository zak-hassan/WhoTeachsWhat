package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the CurriculumSemester database table.
 * 
 */
@Entity
@NamedQuery(name="CurriculumSemester.findAll", query="SELECT c FROM CurriculumSemester c")
public class CurriculumSemester implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="curriculum_id")
	private int curriculumId;

	private String name;

	//bi-directional many-to-one association to CourseInProgramCurSem
	@OneToMany(mappedBy="curriculumSemester", fetch=FetchType.LAZY)
	private List<CourseInProgramCurSem> courseInProgramCurSems;

	public CurriculumSemester() {
	}

	public int getCurriculumId() {
		return this.curriculumId;
	}

	public void setCurriculumId(int curriculumId) {
		this.curriculumId = curriculumId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<CourseInProgramCurSem> getCourseInProgramCurSems() {
		return this.courseInProgramCurSems;
	}

	public void setCourseInProgramCurSems(List<CourseInProgramCurSem> courseInProgramCurSems) {
		this.courseInProgramCurSems = courseInProgramCurSems;
	}

	public CourseInProgramCurSem addCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().add(courseInProgramCurSem);
		courseInProgramCurSem.setCurriculumSemester(this);

		return courseInProgramCurSem;
	}

	public CourseInProgramCurSem removeCourseInProgramCurSem(CourseInProgramCurSem courseInProgramCurSem) {
		getCourseInProgramCurSems().remove(courseInProgramCurSem);
		courseInProgramCurSem.setCurriculumSemester(null);

		return courseInProgramCurSem;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((courseInProgramCurSems == null) ? 0
						: courseInProgramCurSems.hashCode());
		result = prime * result + curriculumId;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
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
		CurriculumSemester other = (CurriculumSemester) obj;
		if (courseInProgramCurSems == null) {
			if (other.courseInProgramCurSems != null)
				return false;
		} else if (!courseInProgramCurSems.equals(other.courseInProgramCurSems))
			return false;
		if (curriculumId != other.curriculumId)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		return true;
	}

}