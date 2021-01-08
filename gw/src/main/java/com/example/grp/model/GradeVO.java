package com.example.grp.model;

public class GradeVO {
	private String grade_id;
	private String grade_name;
	private int grade_auth;
	private String grade_regdate;
	
	public int getGrade_auth() {
		return grade_auth;
	}
	public void setGrade_auth(int grade_auth) {
		this.grade_auth = grade_auth;
	}
	public String getGrade_regdate() {
		return grade_regdate;
	}
	public void setGrade_regdate(String grade_regdate) {
		this.grade_regdate = grade_regdate;
	}
	public String getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(String grade_id) {
		this.grade_id = grade_id;
	}
	public String getGrade_name() {
		return grade_name;
	}
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
	
}
