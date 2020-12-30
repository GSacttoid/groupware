package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/email")
public class EmailCtr {

	//e-mail 메뉴 메인페이지
	@RequestMapping("/main")
	public String getEmailMain() {
		return "email/email_main";
	}
}
