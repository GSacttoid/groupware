package com.example.grp.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.EmpVO;
import com.example.grp.repository.LoginDao;

@Service
public class LoginSrv {

	@Autowired
	LoginDao loginDao;
	
	public int loginCheck(EmpVO evo) {
		return loginDao.loginCheck(evo);
	}
	
	public EmpVO getEmpInfoOne(EmpVO evo, HttpSession httpSession) {
		return loginDao.getEmpInfoOne(evo);
	}
	
	public void logout(HttpSession httpSession) {
		httpSession.invalidate();
	}

}
