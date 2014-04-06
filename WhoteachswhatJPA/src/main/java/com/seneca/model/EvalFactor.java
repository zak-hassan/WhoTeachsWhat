package com.seneca.model;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the EvalFactor database table.
 * 
 */
@Entity
@NamedQuery(name="EvalFactor.findAll", query="SELECT e FROM EvalFactor e")
public class EvalFactor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="eval_id")
	private int evalId;

	@Column(name="eval_name")
	private String evalName;

	@Column(name="factor_val")
	private float factorVal;

	public EvalFactor() {
	}

	public int getEvalId() {
		return this.evalId;
	}

	public void setEvalId(int evalId) {
		this.evalId = evalId;
	}

	public String getEvalName() {
		return this.evalName;
	}

	public void setEvalName(String evalName) {
		this.evalName = evalName;
	}

	public float getFactorVal() {
		return factorVal;
	}

	public void setFactorVal(float factorVal) {
		this.factorVal = factorVal;
	}

}