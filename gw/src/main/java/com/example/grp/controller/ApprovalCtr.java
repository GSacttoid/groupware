package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/approval")
public class ApprovalCtr {

	//전자결재 메뉴 메인페이지
	@RequestMapping("/main")
	public String getApprovalMain() {
		return "approval/approval_main";
	}
}
