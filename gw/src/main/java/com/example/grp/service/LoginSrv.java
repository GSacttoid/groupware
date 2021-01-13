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
		EmpVO result = loginDao.getEmpInfoOne(evo);
		if(result != null) {
			httpSession.setAttribute("empNum", result.getEmp_num());
			httpSession.setAttribute("empAuth", result.getEmp_auth());
			httpSession.setAttribute("empId", result.getEmp_id());
			httpSession.setAttribute("empName", result.getEmp_name());
			httpSession.setAttribute("empBuseoCode", result.getEmp_buseo());
			httpSession.setAttribute("empBuseoName", result.getEmp_buseo_name());
			httpSession.setAttribute("empGender", result.getEmp_gender());
			httpSession.setAttribute("empGradeCode", result.getEmp_grade());
			httpSession.setAttribute("empGradeName", result.getEmp_grade_name());
			httpSession.setAttribute("empConfirm", result.getEmp_confirm());
		}
		return result;
	}
	
	public void logout(HttpSession httpSession) {
		httpSession.invalidate();
	}

}
