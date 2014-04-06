package com.seneca.bireports;

public class Swift {
	private String course_code;
	private double teaching_hours;
	private char lang='E';
	private String prep_type;
	private double prep_factor;
	private double prep_attributed_hours;
	private double prep_additional_hours;
	private int class_size;
	// ...  VALIDATE TO MAKE SURE ITS NOT OVER 100 ...
	private int eval_e_percent;
	private int eval_r_percent;
	private int eval_p_percent;
	private double eval_factor;
	private double attr_hours;
	private double additional_attr_hours;
	private double comp_hours_allowed;
	private double comp_hours_assigned;
	private char ref;

	// ... GETTERS ...
	
	
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public double getTeaching_hours() {
		return teaching_hours;
	}
	public void setTeaching_hours(double teaching_hours) {
		this.teaching_hours = teaching_hours;
	}
	public char getLang() {
		return lang;
	}
	public void setLang(char lang) {
		this.lang = lang;
	}
	public String getPrep_type() {
		return prep_type;
	}
	public void setPrep_type(String prep_type) {
		this.prep_type = prep_type;
	}
	public double getPrep_factor() {
		return prep_factor;
	}
	public void setPrep_factor(double prep_factor) {
		this.prep_factor = prep_factor;
	}
	public double getPrep_attributed_hours() {
		return prep_attributed_hours;
	}
	public void setPrep_attributed_hours(double prep_attributed_hours) {
		this.prep_attributed_hours = prep_attributed_hours;
	}
	public double getPrep_additional_hours() {
		return prep_additional_hours;
	}
	public void setPrep_additional_hours(double prep_additional_hours) {
		this.prep_additional_hours = prep_additional_hours;
	}
	public int getClass_size() {
		return class_size;
	}
	public void setClass_size(int class_size) {
		this.class_size = class_size;
	}
	public int getEval_e_percent() {
		return eval_e_percent;
	}
	public void setEval_e_percent(int eval_e_percent) {
		this.eval_e_percent = eval_e_percent;
	}
	public int getEval_r_percent() {
		return eval_r_percent;
	}
	public void setEval_r_percent(int eval_r_percent) {
		this.eval_r_percent = eval_r_percent;
	}
	public int getEval_p_percent() {
		return eval_p_percent;
	}
	public void setEval_p_percent(int eval_p_percent) {
		this.eval_p_percent = eval_p_percent;
	}
	public double getEval_factor() {
		return eval_factor;
	}
	public void setEval_factor(double eval_factor) {
		this.eval_factor = eval_factor;
	}
	public double getAttr_hours() {
		return attr_hours;
	}
	public void setAttr_hours(double attr_hours) {
		this.attr_hours = attr_hours;
	}
	public double getAdditional_attr_hours() {
		return additional_attr_hours;
	}
	public void setAdditional_attr_hours(double additional_attr_hours) {
		this.additional_attr_hours = additional_attr_hours;
	}
	public double getComp_hours_allowed() {
		return comp_hours_allowed;
	}
	public void setComp_hours_allowed(double comp_hours_allowed) {
		this.comp_hours_allowed = comp_hours_allowed;
	}
	public double getComp_hours_assigned() {
		return comp_hours_assigned;
	}
	public void setComp_hours_assigned(double comp_hours_assigned) {
		this.comp_hours_assigned = comp_hours_assigned;
	}
	public char getRef() {
		return ref;
	}
	public void setRef(char ref) {
		this.ref = ref;
	}
	
	
	
	
	
	
}
