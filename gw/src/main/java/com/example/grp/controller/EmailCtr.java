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
	
	@RequestMapping("/email_temp")
	public String getEmailTemp() {
		return "email/email_temp";
	}
	
	@RequestMapping("/email_keep")
	public String getEmailKeep() {
		return "email/email_keep";
	}
	
	@RequestMapping("/email_myself")
	public String getEmailMyself() {
		return "email/email_myself";
	}
	
	@RequestMapping("/email_spam")
	public String getEmailSpam() {
		return "email/email_spam";
	}
	
	@RequestMapping("/email_trash")
	public String getEmailTrash() {
		return "email/email_trash";
	}
	
	@RequestMapping("/email_address")
	public String getEmailAddress() {
		return "email/email_address";
	}
	
	@RequestMapping("/email_set")
	public String getEmailSet() {
		return "email/email_set";
	}
}
