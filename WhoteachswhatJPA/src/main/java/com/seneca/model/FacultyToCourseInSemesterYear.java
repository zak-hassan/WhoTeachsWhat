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
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cisy_id")
	private int cisyId;

	@Column(name="addition_attribute")
	private float additionAttribute;

	private float compHour_allowance;

	private float compHour_assigned;

	@Column(name="section_number")
	private int sectionNumber;

	@Column(name="semester_id")
	private int semesterId;

	private int year;

	//bi-directional many-to-one association to Faculty
	@ManyToOne
	@JoinColumn(name="faculty_id")
	private Faculty faculty;

	//bi-directional many-to-one association to Course
	@ManyToOne
	@JoinColumn(name="course_id")
	private Course course;

	//bi-directional many-to-one association to PrepTime
	@ManyToOne
	@JoinColumn(name="prepType_id")
	private PrepTime prepTime;

	//bi-directional many-to-one association to CompHour
	@ManyToOne
	@JoinColumn(name="compHour_id")
	private CompHour compHour;

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

	public int getSectionNumber() {
		return this.sectionNumber;
	}

	public void setSectionNumber(int sectionNumber) {
		this.sectionNumber = sectionNumber;
	}

	public int getSemesterId() {
		return this.semesterId;
	}

	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	public int getYear() {
		return this.year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public Faculty getFaculty() {
		return this.faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	public PrepTime getPrepTime() {
		return this.prepTime;
	}

	public void setPrepTime(PrepTime prepTime) {
		this.prepTime = prepTime;
	}

	public CompHour getCompHour() {
		return this.compHour;
	}

	public void setCompHour(CompHour compHour) {
		this.compHour = compHour;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Float.floatToIntBits(additionAttribute);
		result = prime * result + cisyId;
		result = prime * result
				+ ((compHour == null) ? 0 : compHour.hashCode());
		result = prime * result + Float.floatToIntBits(compHour_allowance);
		result = prime * result + Float.floatToIntBits(compHour_assigned);
		result = prime * result + ((course == null) ? 0 : course.hashCode());
		result = prime * result + ((faculty == null) ? 0 : faculty.hashCode());
		result = prime * result
				+ ((prepTime == null) ? 0 : prepTime.hashCode());
		result = prime * result + sectionNumber;
		result = prime * result + semesterId;
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
		if (semesterId != other.semesterId)
			return false;
		if (year != other.year)
			return false;
		return true;
	}

}