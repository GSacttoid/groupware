package com.example.grp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardCtr {

	//게시판 메뉴 메인페이지
	@RequestMapping("/main")
	public String getBoardMain() {
		return "board/board_main";
	}
}
