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

	public List<EmpVO> getEmpList(int start, int end) {
		return eDao.getEmpList(start, end);
	}
	
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
	
	public void setEmpModify(EmpVO evo) {
		eDao.setEmpModify(evo);
	}
	
	public void setEmpResign(EmpVO evo) {
		eDao.setEmpResign(evo);
	}
	
	public void setEmpRegister(EmpVO evo) {
		eDao.setEmpRegister(evo);
	}
	
	public void setAdmin(EmpVO evo) {
		eDao.setAdmin(evo);
	}
	
	public List<EmpVO> getAdminList(int start, int end) {
		return eDao.getAdminList(start, end);
	}
	
	public EmpVO getAdminOne() {
		return eDao.getAdminOne();
	}
	
	public int getAdminCount() {
		return eDao.getAdminCount();
	}
}
