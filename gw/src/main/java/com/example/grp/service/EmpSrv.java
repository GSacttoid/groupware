package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.EmpVO;
import com.example.grp.model.NoticeVO;
import com.example.grp.repository.EmpDao;
import com.example.grp.repository.NoticeDao;

@Service
public class EmpSrv {

	@Autowired
	EmpDao eDao;
	
	public List<EmpVO> getNewEmp(int start, int end) {
		return eDao.getNewEmp(start, end);
	}
	
	public List<EmpVO> getResignEmp(int start, int end) {
		return eDao.getResignEmp(start, end);
	}
	
	public int getTotalEmpCount() {
		return eDao.getTotalEmpCount();
	}

	public int getNewEmpCount() {
		return eDao.getNewEmpCount();
	}

	public int getResignEmpCount() {
		return eDao.getResignEmpCount();
	}
	
	public void setNewEmpConfirm(int emp_num) {
		eDao.setNewEmpConfirm(emp_num);
	}
	
	public void setEmpDelete(int emp_num) {
		eDao.setEmpDelete(emp_num);
	}
	
	public EmpVO getEmpOne(EmpVO evo) {
		return eDao.getEmpOne(evo);
	}
	
}
