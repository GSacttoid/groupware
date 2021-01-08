package com.example.grp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.service.NoticeSrv;

@Controller
@RequestMapping("/home")
public class HomeCtr {

	@Autowired
	NoticeSrv nSrv;
	
	//그룹웨어 홈 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getHomeMain() {
		List<NoticeVO> list = nSrv.getNotice5();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("home/gw_home_main");
		return mav;
	}
}
