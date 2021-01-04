package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/email")
public class EmailCtr {

	//e-mail 메뉴 메인페이지
	@RequestMapping("/main")
	public String getEmailMain() {
		return "email/email_list_total";
	}
	
	@RequestMapping("/write_email")
	public String setWriteEmail() {
		return "email/write_email";
	}
	
	@RequestMapping("/email_list")
	public String getEmailList() {
		return "email/email_list";
	}
	
	@RequestMapping("/email_sent")
	public String getEmailSent() {
		return "email/email_sent";
	}
}
