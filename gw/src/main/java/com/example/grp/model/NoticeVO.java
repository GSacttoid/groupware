package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class NoticeVO {

	private int sn_num;
	private String sn_code;
	private String sn_maker;
	private String sn_title;
	private String sn_content;
	private int sn_read;
	private int sn_write;
	private int sn_download;
	private int sn_reply;
	private String sn_type;
	private Date sn_regdate;
	private int sn_count;
	private String sn_files;
	private String sn_files_oriName;
	private String sn_files_url;
	

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	public int getSn_num() {
		return sn_num;
	}
	public void setSn_num(int sn_num) {
		this.sn_num = sn_num;
	}
	public String getSn_code() {
		return sn_code;
	}
	public void setSn_code(String sn_code) {
		this.sn_code = sn_code;
	}
	public String getSn_maker() {
		return sn_maker;
	}
	public void setSn_maker(String sn_maker) {
		this.sn_maker = sn_maker;
	}
	public String getSn_title() {
		return sn_title;
	}
	public void setSn_title(String sn_title) {
		this.sn_title = sn_title;
	}
	public String getSn_content() {
		return sn_content;
	}
	public void setSn_content(String sn_content) {
		this.sn_content = sn_content;
	}
	public int getSn_read() {
		return sn_read;
	}
	public void setSn_read(int sn_read) {
		this.sn_read = sn_read;
	}
	public int getSn_write() {
		return sn_write;
	}
	public void setSn_write(int sn_write) {
		this.sn_write = sn_write;
	}
	public int getSn_download() {
		return sn_download;
	}
	public void setSn_download(int sn_download) {
		this.sn_download = sn_download;
	}
	public int getSn_reply() {
		return sn_reply;
	}
	public void setSn_reply(int sn_reply) {
		this.sn_reply = sn_reply;
	}
	public String getSn_type() {
		return sn_type;
	}
	public void setSn_type(String sn_type) {
		this.sn_type = sn_type;
	}
	public String getSn_regdate() {
		return sdf.format(sn_regdate);
	}
	public void setSn_regdate(Date sn_regdate) {
		this.sn_regdate = sn_regdate;
	}
	public int getSn_count() {
		return sn_count;
	}
	public void setSn_count(int sn_count) {
		this.sn_count = sn_count;
	}
	public String getSn_files() {
		return sn_files;
	}
	public void setSn_files(String sn_files) {
		this.sn_files = sn_files;
	}
	
	public String getSn_files_oriName() {
		return sn_files_oriName;
	}
	public void setSn_files_oriName(String sn_files_oriName) {
		this.sn_files_oriName = sn_files_oriName;
	}
	public String getSn_files_url() {
		return sn_files_url;
	}
	public void setSn_files_url(String sn_files_url) {
		this.sn_files_url = sn_files_url;
	}
	
}
