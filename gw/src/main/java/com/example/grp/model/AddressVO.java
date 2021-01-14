package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class AddressVO {

	private String ma_address;
	private String ma_name;
	private String ma_group;
	private String ma_company;
	private String ma_buseo;
	private String ma_grade;
	private String content;
	private String ma_phone;
	private String ma_tel;
	private Date ma_regdate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String getMa_address() {
		return ma_address;
	}
	public void setMa_address(String ma_address) {
		this.ma_address = ma_address;
	}
	public String getMa_name() {
		return ma_name;
	}
	public void setMa_name(String ma_name) {
		this.ma_name = ma_name;
	}
	public String getMa_group() {
		return ma_group;
	}
	public void setMa_group(String ma_group) {
		this.ma_group = ma_group;
	}
	public String getMa_company() {
		return ma_company;
	}
	public void setMa_company(String ma_company) {
		this.ma_company = ma_company;
	}
	public String getMa_buseo() {
		return ma_buseo;
	}
	public void setMa_buseo(String ma_buseo) {
		this.ma_buseo = ma_buseo;
	}
	public String getMa_grade() {
		return ma_grade;
	}
	public void setMa_grade(String ma_grade) {
		this.ma_grade = ma_grade;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMa_phone() {
		return ma_phone;
	}
	public void setMa_phone(String ma_phone) {
		this.ma_phone = ma_phone;
	}
	public String getMa_tel() {
		return ma_tel;
	}
	public void setMa_tel(String ma_tel) {
		this.ma_tel = ma_tel;
	}
	public String getMa_regdate() {
		return sdf.format(ma_regdate);
	}
	public void setMa_regdate(Date ma_regdate) {
		this.ma_regdate = ma_regdate;
	}

}
