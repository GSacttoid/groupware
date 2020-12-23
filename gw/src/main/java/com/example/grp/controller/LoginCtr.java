package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCtr {
	
	//로그인 페이지
	@RequestMapping("")
	public String getLogin() {
		return "login/gw_login";
	}
	
}
