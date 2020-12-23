package com.example.grp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.EmpVO;
import com.example.grp.service.LoginSrv;
import com.example.grp.service.RegisterSrv;


@Controller
public class LoginCtr {
	
	@Autowired
	LoginSrv loginSrv;
	
	//로그인 페이지
	@RequestMapping("/")
	public String getLogin() {
		return "login/gw_login";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute EmpVO evo, HttpSession httpSession) {
		ModelAndView mav = new ModelAndView();
		if( loginSrv.loginCheck(evo) != 0 ) {
			String confirm = loginSrv.getEmpInfoOne(evo, httpSession).getEmp_confirm();
			if( confirm.equals("Y") ) {
				mav.setViewName("/admin/gw_admin_main");
				loginSrv.getEmpInfoOne(evo, httpSession);
			}else {
				mav.addObject("msg", "관리자의 승인이 필요합니다.");
				mav.setViewName("/login/gw_login");
			}
		}else {		
			mav.addObject("msg", "아이디/비밀번호를 확인하세요.");
			mav.setViewName("/login/gw_login");
		}
		return mav;
	}
	
	@RequestMapping("/grp_logout")
	@ResponseBody
	public String grpLogout(HttpSession httpSession) {
		loginSrv.logout(httpSession);
		return "success";
	}
	
}
