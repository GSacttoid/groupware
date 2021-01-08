package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.ComVO;
import com.example.grp.model.GradeVO;
import com.example.grp.model.GwVO;
import com.example.grp.repository.ComDao;

@Service
public class ComSrv {

	@Autowired
	ComDao cDao;
	
	public ComVO getComInfo() {
		return cDao.getComInfo();
	}

	public GwVO getGwInfo() {
		
		return cDao.getGwInfo();
	}
	
	public void setCompanyInfoModify() {
		cDao.setCompanyInfoModify();
	}
	
	public List<BuseoVO> getBuseo() {
		return cDao.getBuseo();
	}
	
	public int getBuseoCnt() {
		return cDao.getBuseoCnt();
	}
	
	public void setBuseoInsert(BuseoVO bvo) {
		cDao.setBuseoInsert(bvo);
	}
	
	public int buseoIdChk(BuseoVO bvo) {
		return cDao.buseoIdChk(bvo);
	}
	
	public int buseoNameChk(BuseoVO bvo) {
		return cDao.buseoNameChk(bvo);
	}
	
	public void setBuseoDelete(BuseoVO bvo) {
		cDao.setBuseoDelete(bvo);
	}
	
	public List<GradeVO> getGrade() {
		return cDao.getGrade();
	}
}
