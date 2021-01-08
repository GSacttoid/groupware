package com.example.grp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.EmpVO;
import com.example.grp.repository.RegisterDao;



@Service
public class RegisterSrv {

	@Autowired
	RegisterDao regDao;

	public void setEmpRegister(EmpVO evo) {
		regDao.setEmpRegister(evo);
	}
	
	public int getChkEmpId(String emp_id) {
		return regDao.getChkEmpId(emp_id);
	}

}
