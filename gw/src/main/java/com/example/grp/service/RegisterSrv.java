package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.EmpVO;
import com.example.grp.model.GradeVO;
import com.example.grp.repository.RegisterDao;



@Service
public class RegisterSrv {

	@Autowired
	RegisterDao regDao;
	
	public List<BuseoVO> getBuseo() {
		return regDao.getBuseo();
	}
	
	public List<GradeVO> getGrade() {
		return regDao.getGrade();
	}
	public void setEmpRegister(EmpVO evo) {
		regDao.setEmpRegister(evo);
	}
	
	public int getChkEmpId(String emp_id) {
		return regDao.getChkEmpId(emp_id);
	}

}
