package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class CommentVO {

	private int cid; 
	private int aid; 
	private String comment;
	private String who;
	private Date regdate;

	private String menu_code;
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", new Locale("ko", "KR"));
	
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getWho() {
		return who;
	}
	public void setWho(String who) {
		this.who = who;
	}
	public String getRegdate() {
		return sdf.format(regdate);
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getMenu_code() {
		return menu_code;
	}
	public void setMenu_code(String menu_code) {
		this.menu_code = menu_code;
	}
	
	
}
