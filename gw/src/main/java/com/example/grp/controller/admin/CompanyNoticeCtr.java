package com.example.grp.controller.admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.ComNoticeSrv;

@Controller
@RequestMapping("/admin")
public class CompanyNoticeCtr {
	@Autowired
	ComNoticeSrv cSrv;
		
	//그룹웨어 정보 / 시스템 공지사항
	@RequestMapping("/company_notice" )
	public ModelAndView getCompanyNotice(@RequestParam(defaultValue = "1") int curPage) { 
	
		int count = cSrv.getNoticeTotalCount();
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<NoticeVO> list = cSrv.getCompanyNotice(start, end);
	
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
		
		mav.setViewName("admin/admin_community/company_notice");
		return mav;
	}
	
	@RequestMapping(value="/company_notice_insert",method= {RequestMethod.GET, RequestMethod.POST})
	public String getNoticeInsert() {
		return "admin/admin_community/company_notice_insert";
	}
	
	@RequestMapping(value="/company_notice_write", method = RequestMethod.POST)
	@ResponseBody
	public String setNoticeInsert(@ModelAttribute NoticeVO nvo) {
		cSrv.setNoticeInsert(nvo);
		return "success";
	}
	
	@RequestMapping(value="/company_notice_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setNoticeDelete(@ModelAttribute NoticeVO nvo) {
		cSrv.setNoticeDelete(nvo);
		return "success";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	}
	
	@RequestMapping(value="/company_notice_modify", method = RequestMethod.GET)
	public ModelAndView getNoticeModify(@ModelAttribute NoticeVO nvo) {

		ModelAndView mav = new ModelAndView();
		NoticeVO vo = cSrv.getNoticeOne(nvo);
		
		mav.addObject("notice", vo);

		mav.setViewName("admin/admin_community/company_notice_modify");
		return mav;
	}
	
	@RequestMapping(value="/company_notice_modify", method = RequestMethod.POST)
	@ResponseBody
	public String setNoticeUpdate(@ModelAttribute NoticeVO nvo) {
		cSrv.setNoticeUpdate(nvo);
		return "success";
	}

	@RequestMapping(value="/company_notice_view", method = RequestMethod.GET)
	public ModelAndView getNoticeView(@ModelAttribute NoticeVO nvo) {
		cSrv.setHitUp(nvo);
		ModelAndView mav = new ModelAndView();
		
		NoticeVO vo = cSrv.getNoticeOne(nvo);
		mav.addObject("notice", vo);
		mav.setViewName("admin/admin_community/company_notice_view");
		return mav;
	}
	
}
