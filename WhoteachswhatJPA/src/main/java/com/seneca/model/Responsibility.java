package com.seneca.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Responsibility database table.
 * 
 */
@Entity
@NamedQuery(name="Responsibility.findAll", query="SELECT r FROM Responsibility r")
public class Responsibility implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="responsibility_id")
	private int responsibilityId;

	@Column(name="responsibility_code")
	private String responsibilityCode;

	@Column(name="responsibility_name")
	private String responsibilityName;

	//bi-directional many-to-one association to ResponsibilityToFaculty
	@OneToMany(mappedBy="responsibility")
	private List<ResponsibilityToFaculty> responsibilityToFaculties;

	public Responsibility() {
	}

	public int getResponsibilityId() {
		return this.responsibilityId;
	}

	public void setResponsibilityId(int responsibilityId) {
		this.responsibilityId = responsibilityId;
	}

	public String getResponsibilityCode() {
		return this.responsibilityCode;
	}

	public void setResponsibilityCode(String responsibilityCode) {
		this.responsibilityCode = responsibilityCode;
	}

	public String getResponsibilityName() {
		return this.responsibilityName;
	}

	public void setResponsibilityName(String responsibilityName) {
		this.responsibilityName = responsibilityName;
	}

	public List<ResponsibilityToFaculty> getResponsibilityToFaculties() {
		return this.responsibilityToFaculties;
	}

	public void setResponsibilityToFaculties(List<ResponsibilityToFaculty> responsibilityToFaculties) {
		this.responsibilityToFaculties = responsibilityToFaculties;
	}

	public ResponsibilityToFaculty addResponsibilityToFaculty(ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().add(responsibilityToFaculty);
		responsibilityToFaculty.setResponsibility(this);

		return responsibilityToFaculty;
	}

	public ResponsibilityToFaculty removeResponsibilityToFaculty(ResponsibilityToFaculty responsibilityToFaculty) {
		getResponsibilityToFaculties().remove(responsibilityToFaculty);
		responsibilityToFaculty.setResponsibility(null);

		return responsibilityToFaculty;
	}

}