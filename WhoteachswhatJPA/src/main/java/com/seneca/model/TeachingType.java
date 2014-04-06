package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the TeachingType database table.
 * 
 */
@Entity
@NamedQuery(name="TeachingType.findAll", query="SELECT t FROM TeachingType t")
public class TeachingType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int teachingType_id;

	private String teachingType_name;

	//bi-directional many-to-one association to Faculty
	@OneToMany(mappedBy="teachingType")
	private List<Faculty> faculties;

	public TeachingType() {
	}

	public int getTeachingType_id() {
		return this.teachingType_id;
	}

	public void setTeachingType_id(int teachingType_id) {
		this.teachingType_id = teachingType_id;
	}

	public String getTeachingType_name() {
		return this.teachingType_name;
	}

	public void setTeachingType_name(String teachingType_name) {
		this.teachingType_name = teachingType_name;
	}

	public List<Faculty> getFaculties() {
		return this.faculties;
	}

	public void setFaculties(List<Faculty> faculties) {
		this.faculties = faculties;
	}

	public Faculty addFaculty(Faculty faculty) {
		getFaculties().add(faculty);
		faculty.setTeachingType(this);

		return faculty;
	}

	public Faculty removeFaculty(Faculty faculty) {
		getFaculties().remove(faculty);
		faculty.setTeachingType(null);

		return faculty;
	}

}