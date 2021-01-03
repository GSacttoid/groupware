package com.example.grp.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.service.NoticeSrv;

@Controller
public class SystemNoticeCtr {
	@Autowired
	NoticeSrv nSrv;
	
	@RequestMapping(value="/notice/system_notice_insert", method = RequestMethod.POST)
	@ResponseBody
	public String setNoticeInsert(NoticeVO nvo) {
		nSrv.setNoticeInsert(nvo);
		return "success";
	}
}
