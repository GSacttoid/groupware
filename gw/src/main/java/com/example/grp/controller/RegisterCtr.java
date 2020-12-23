package com.example.grp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.grp.model.BuseoVO;
import com.example.grp.model.EmpVO;
import com.example.grp.service.RegisterSrv;

@Controller
public class RegisterCtr {
	
	@Autowired
	RegisterSrv regSrv;

	//회원가입 페이지
	@RequestMapping("/gw_register")
	public String getRegister() {
		return "register/gw_register";
	}
	
	//부서 목록 DB에서 가져오기
	@RequestMapping(value="/get_buseo", method=RequestMethod.POST)
	@ResponseBody
	public List<BuseoVO> getBuseo() {
		List<BuseoVO> list = regSrv.getBuseo();
		System.out.println(list);
		return list;
	}
	
	//계정등록
	@RequestMapping(value = "/gw_register", method = RequestMethod.POST)
	public String setEmpRegister(@ModelAttribute EmpVO evo) {
		regSrv.setEmpRegister(evo);
		return "redirect:/";
	}
	
	//emp_id 중복체크
	@RequestMapping(value="/chk_empId", method=RequestMethod.POST)
	@ResponseBody
	public String getChkEmpId(@RequestParam("emp_id") String emp_id) {
		String msg;
		int empIdCheck = regSrv.getChkEmpId(emp_id);
		if( empIdCheck > 0 ) {
			msg = "failure";
		}else {
			msg = "success";
		}
		return msg;
	}
}
