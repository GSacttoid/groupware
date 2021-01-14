package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SurveyVO {
	private int survey_id;
	private String survey_status;
	private String survey_buseo;
	private String survey_grade;

	private String survey_way;
	private String survey_view;
	private String survey_result;
	private String survey_startDate;
	private String survey_endDate;
	private String survey_maker;
	private String survey_title;
	private String survey_content;

	private String[] survey_example;
	private String survey_ex_cnt;
	private Date survey_regdate;
	
	private String rdo;

	private int survey_total; //ex_cnt 값을 변환해서 전체 투표 수
	private String survey_ex; //survey_example 값을 변환하여 임시로 저장하는 변수
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public String getSurvey_startDate() {
		return survey_startDate;
	}
	public void setSurvey_startDate(String survey_startDate) {
		this.survey_startDate = survey_startDate;
	}
	public String getSurvey_endDate() {
		return survey_endDate;
	}
	public void setSurvey_endDate(String survey_endDate) {
		this.survey_endDate = survey_endDate;
	}
	public String getSurvey_regdate() {
		return sdf.format(survey_regdate);
	}
	public void setSurvey_regdate(Date survey_regdate) {
		this.survey_regdate = survey_regdate;
	}
	
	public String getSurvey_content() {
		return survey_content;
	}
	public void setSurvey_content(String survey_content) {
		this.survey_content = survey_content;
	}
	
	public String getSurvey_buseo() {
		return survey_buseo;
	}
	public void setSurvey_buseo(String survey_buseo) {
		this.survey_buseo = survey_buseo;
	}
	public String getSurvey_grade() {
		return survey_grade;
	}
	public void setSurvey_grade(String survey_grade) {
		this.survey_grade = survey_grade;
	}
	
	public int getSurvey_id() {
		return survey_id;
	}
	public void setSurvey_id(int survey_id) {
		this.survey_id = survey_id;
	}
	public String getSurvey_status() {
		return survey_status;
	}
	public void setSurvey_status(String survey_status) {
		this.survey_status = survey_status;
	}
	public String getSurvey_way() {
		return survey_way;
	}
	public void setSurvey_way(String survey_way) {
		this.survey_way = survey_way;
	}
	public String getSurvey_view() {
		return survey_view;
	}
	public void setSurvey_view(String survey_view) {
		this.survey_view = survey_view;
	}
	public String getSurvey_result() {
		return survey_result;
	}
	public void setSurvey_result(String survey_result) {
		this.survey_result = survey_result;
	}

	public String getSurvey_maker() {
		return survey_maker;
	}
	public void setSurvey_maker(String survey_maker) {
		this.survey_maker = survey_maker;
	}
	public String getSurvey_title() {
		return survey_title;
	}
	public void setSurvey_title(String survey_title) {
		this.survey_title = survey_title;
	}
	public String[] getSurvey_example() {
		return survey_example;
	}
	public void setSurvey_example(String[] survey_example) {
		this.survey_example = survey_example;
	}
	public String getSurvey_ex_cnt() {
		return survey_ex_cnt;
	}
	public void setSurvey_ex_cnt(String survey_ex_cnt) {
		this.survey_ex_cnt = survey_ex_cnt;
	}
	
	public int getSurvey_total() {
		return survey_total;
	}
	public void setSurvey_total(int survey_total) {
		this.survey_total = survey_total;
	}
	public String getSurvey_ex() {
		return survey_ex;
	}
	public void setSurvey_ex(String survey_ex) {
		this.survey_ex = survey_ex;
	}
	
	public String getRdo() {
		return rdo;
	}
	public void setRdo(String rdo) {
		this.rdo = rdo;
	}
}
