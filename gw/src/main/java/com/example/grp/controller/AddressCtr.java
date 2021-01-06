package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/address")
public class AddressCtr {

	//전자결재 메뉴 메인페이지
	@RequestMapping("/main")
	public String getAddressMain() {
		return "address/address_main";
	}
}
