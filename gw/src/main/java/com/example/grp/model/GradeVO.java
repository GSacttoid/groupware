package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class GradeVO {
	private int gid;
	private int grade_id;
	private String grade_name;
	private int grade_auth;
	private Date grade_regdate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(int grade_id) {
		this.grade_id = grade_id;
	}
	public String getGrade_name() {
		return grade_name;
	}
	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}
	public int getGrade_auth() {
		return grade_auth;
	}
	public void setGrade_auth(int grade_auth) {
		this.grade_auth = grade_auth;
	}
	public String getGrade_regdate() {
		return sdf.format(grade_regdate);
	}
	public void setGrade_regdate(Date grade_regdate) {
		this.grade_regdate = grade_regdate;
	}
	
	
}
