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
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="responsibility_id")
	private int responsibilityId;

	@Column(name="responsibility_code")
	private String responsibilityCode;

	@Column(name="responsibility_name")
	private String responsibilityName;

	//bi-directional many-to-one association to ResponsibilityToFaculty
	@OneToMany(mappedBy="responsibility", fetch=FetchType.LAZY)
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime
				* result
				+ ((responsibilityCode == null) ? 0 : responsibilityCode
						.hashCode());
		result = prime * result + responsibilityId;
		result = prime
				* result
				+ ((responsibilityName == null) ? 0 : responsibilityName
						.hashCode());
		result = prime
				* result
				+ ((responsibilityToFaculties == null) ? 0
						: responsibilityToFaculties.hashCode());
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
		Responsibility other = (Responsibility) obj;
		if (responsibilityCode == null) {
			if (other.responsibilityCode != null)
				return false;
		} else if (!responsibilityCode.equals(other.responsibilityCode))
			return false;
		if (responsibilityId != other.responsibilityId)
			return false;
		if (responsibilityName == null) {
			if (other.responsibilityName != null)
				return false;
		} else if (!responsibilityName.equals(other.responsibilityName))
			return false;
		if (responsibilityToFaculties == null) {
			if (other.responsibilityToFaculties != null)
				return false;
		} else if (!responsibilityToFaculties
				.equals(other.responsibilityToFaculties))
			return false;
		return true;
	}

}