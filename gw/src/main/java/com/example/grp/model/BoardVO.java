package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {

	private int menu_num;
	private String menu_buseo;
	private String menu_kind;
	private String menu_code;
	private String menu_name;
	private String menu_color;
	private String menu_read;
	private String menu_write;
	private String menu_reply;
	private String menu_download;
	private String menu_maker;
	private Date menu_regdate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	public String getMenu_buseo() {
		return menu_buseo;
	}

	public void setMenu_buseo(String menu_buseo) {
		this.menu_buseo = menu_buseo;
	}
	
	public String getMenu_code() {
		return menu_code;
	}

	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}

	public String getMenu_maker() {
		return menu_maker;
	}

	public void setMenu_maker(String menu_maker) {
		this.menu_maker = menu_maker;
	}
	
	public int getMenu_num() {
		return menu_num;
	}

	public void setMenu_num(int menu_num) {
		this.menu_num = menu_num;
	}

	public String getMenu_kind() {
		return menu_kind;
	}

	public void setMenu_kind(String menu_kind) {
		this.menu_kind = menu_kind;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}

	public String getMenu_color() {
		return menu_color;
	}

	public void setMenu_color(String menu_color) {
		this.menu_color = menu_color;
	}

	public String getMenu_read() {
		return menu_read;
	}

	public void setMenu_read(String menu_read) {
		this.menu_read = menu_read;
	}

	public String getMenu_write() {
		return menu_write;
	}

	public void setMenu_write(String menu_write) {
		this.menu_write = menu_write;
	}

	public String getMenu_reply() {
		return menu_reply;
	}

	public void setMenu_reply(String menu_reply) {
		this.menu_reply = menu_reply;
	}

	public String getMenu_download() {
		return menu_download;
	}

	public void setMenu_download(String menu_download) {
		this.menu_download = menu_download;
	}

	public String getMenu_regdate() {
		return sdf.format(menu_regdate);
	}

	public void setMenu_regdate(Date menu_regdate) {
		this.menu_regdate = menu_regdate;
	}
	
}
