package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeCtr {

	//그룹웨어 홈 메뉴 메인페이지
	@RequestMapping("/main")
	public String getHomeMain() {
		return "home/gw_home_main";
	}
}
