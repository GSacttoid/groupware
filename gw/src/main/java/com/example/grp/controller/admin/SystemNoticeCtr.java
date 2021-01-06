package com.example.grp.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.NoticeSrv;

@Controller
public class SystemNoticeCtr {
	@Autowired
	NoticeSrv nSrv;
		
	//그룹웨어 정보 / 시스템 공지사항
	@RequestMapping("/admin/system_notice" )
	public ModelAndView getSystemNotice(@RequestParam(defaultValue = "1") int curPage) { 
	
		int count = nSrv.getNoticeTotalCount();
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<NoticeVO> list = nSrv.getSystemNotice(start, end);
	
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		
		mav.setViewName("admin/admin_gw_info/gw_system_notice_list");
		return mav;
	}
	
	@RequestMapping(value="/notice/system_notice_insert",method= {RequestMethod.GET, RequestMethod.POST})
	public String getNoticeInsert() {
		return "admin/admin_gw_info/gw_system_notice_insert";
	}
	
	@RequestMapping(value="/notice/system_notice_write", method = RequestMethod.POST)
	@ResponseBody
	public String setNoticeInsert(NoticeVO nvo) {
		nSrv.setNoticeInsert(nvo);
		return "success";
	}
	
	
}
