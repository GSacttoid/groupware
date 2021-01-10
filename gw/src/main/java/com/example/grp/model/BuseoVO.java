package com.example.grp.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BuseoVO {
	private int bid;
	private int buseo_id;
	private String buseo_name;
	private Date buseo_regdate;
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBuseo_regdate() {
		return sdf.format(buseo_regdate);
	}
	public void setBuseo_regdate(Date buseo_regdate) {
		this.buseo_regdate = buseo_regdate;
	}
	
	public int getBuseo_id() {
		return buseo_id;
	}
	public void setBuseo_id(int buseo_id) {
		this.buseo_id = buseo_id;
	}
	public String getBuseo_name() {
		return buseo_name;
	}
	public void setBuseo_name(String buseo_name) {
		this.buseo_name = buseo_name;
	}
	
}
