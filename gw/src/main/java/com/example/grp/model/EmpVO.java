package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class EmpVO {

	private int emp_num;
	private String empBuseoCode;
	private String empBuseoName;
	private String empGradeCode;
	private String empGradeName;
	private String emp_id;
	private String emp_enter;
	private String emp_name;
	private String emp_pwd;
	private String emp_photo;
	private Date emp_regdate;
	private int emp_auth;
	private String emp_confirm;
	private String emp_gender;
	private String emp_birth;
	private String emp_phone;
	private String emp_tel;
	private String emp_company_tel;
	private String emp_height;
	private String emp_weight;
	private String emp_hobby;
	private String emp_speciality;
	private String emp_married;
	private String emp_license;
	private String emp_lang;
	private String emp_comment;
	
	private int ref;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public int getEmp_num() {
		return emp_num;
	}

	public void setEmp_num(int emp_num) {
		this.emp_num = emp_num;
	}

	public String getEmpBuseoCode() {
		return empBuseoCode;
	}

	public void setEmpBuseoCode(String empBuseoCode) {
		this.empBuseoCode = empBuseoCode;
	}

	public String getEmpBuseoName() {
		return empBuseoName;
	}

	public void setEmpBuseoName(String empBuseoName) {
		this.empBuseoName = empBuseoName;
	}

	public String getEmpGradeCode() {
		return empGradeCode;
	}

	public void setEmpGradeCode(String empGradeCode) {
		this.empGradeCode = empGradeCode;
	}

	public String getEmpGradeName() {
		return empGradeName;
	}

	public void setEmpGradeName(String empGradeName) {
		this.empGradeName = empGradeName;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getEmp_enter() {
		return emp_enter;
	}

	public void setEmp_enter(String emp_enter) {
		this.emp_enter = emp_enter;
	}

	public String getEmp_name() {
		return emp_name;
	}

	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}

	public String getEmp_pwd() {
		return emp_pwd;
	}

	public void setEmp_pwd(String emp_pwd) {
		this.emp_pwd = emp_pwd;
	}

	public String getEmp_photo() {
		return emp_photo;
	}

	public void setEmp_photo(String emp_photo) {
		this.emp_photo = emp_photo;
	}

	public String getEmp_regdate() {
		return sdf.format(emp_regdate);
	}

	public void setEmp_regdate(Date emp_regdate) {
		this.emp_regdate = emp_regdate;
	}

	public int getEmp_auth() {
		return emp_auth;
	}

	public void setEmp_auth(int emp_auth) {
		this.emp_auth = emp_auth;
	}

	public String getEmp_confirm() {
		return emp_confirm;
	}

	public void setEmp_confirm(String emp_confirm) {
		this.emp_confirm = emp_confirm;
	}

	public String getEmp_gender() {
		return emp_gender;
	}

	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}

	public String getEmp_birth() {
		return emp_birth;
	}

	public void setEmp_birth(String emp_birth) {
		this.emp_birth = emp_birth;
	}

	public String getEmp_phone() {
		return emp_phone;
	}

	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}

	public String getEmp_tel() {
		return emp_tel;
	}

	public void setEmp_tel(String emp_tel) {
		this.emp_tel = emp_tel;
	}

	public String getEmp_company_tel() {
		return emp_company_tel;
	}

	public void setEmp_company_tel(String emp_company_tel) {
		this.emp_company_tel = emp_company_tel;
	}

	public String getEmp_height() {
		return emp_height;
	}

	public void setEmp_height(String emp_height) {
		this.emp_height = emp_height;
	}

	public String getEmp_weight() {
		return emp_weight;
	}

	public void setEmp_weight(String emp_weight) {
		this.emp_weight = emp_weight;
	}

	public String getEmp_hobby() {
		return emp_hobby;
	}

	public void setEmp_hobby(String emp_hobby) {
		this.emp_hobby = emp_hobby;
	}

	public String getEmp_speciality() {
		return emp_speciality;
	}

	public void setEmp_speciality(String emp_speciality) {
		this.emp_speciality = emp_speciality;
	}

	public String getEmp_married() {
		return emp_married;
	}

	public void setEmp_married(String emp_married) {
		this.emp_married = emp_married;
	}

	public String getEmp_license() {
		return emp_license;
	}

	public void setEmp_license(String emp_license) {
		this.emp_license = emp_license;
	}

	public String getEmp_lang() {
		return emp_lang;
	}

	public void setEmp_lang(String emp_lang) {
		this.emp_lang = emp_lang;
	}

	public String getEmp_comment() {
		return emp_comment;
	}

	public void setEmp_comment(String emp_comment) {
		this.emp_comment = emp_comment;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public SimpleDateFormat getSdf() {
		return sdf;
	}

	public void setSdf(SimpleDateFormat sdf) {
		this.sdf = sdf;
	}
	
	
}
