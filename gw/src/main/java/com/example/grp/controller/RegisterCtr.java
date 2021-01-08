package com.example.grp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.EmpVO;
import com.example.grp.service.ComSrv;
import com.example.grp.service.RegisterSrv;

@Controller
public class RegisterCtr {
	
	@Autowired
	RegisterSrv regSrv;
	
	@Autowired
	ComSrv cSrv;

	//회원가입 페이지
	@RequestMapping("/gw_register")
	public ModelAndView getRegister() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("logo", cSrv.getComInfo().getLogo_name());
		mav.addObject("logoSub", cSrv.getComInfo().getLogo_sub_name());
		
		mav.setViewName("register/gw_register");
		return mav;
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
