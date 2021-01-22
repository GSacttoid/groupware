package com.example.grp.controller.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.BoardVO;
import com.example.grp.model.NoticeVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.BoardSrv;
import com.example.grp.service.ComNoticeSrv;
import com.example.grp.service.SysNoticeSrv;

@Controller
@RequestMapping("/notice")
public class NoticeCtr {

	@Autowired
	SysNoticeSrv nSrv;
	
	@Autowired
	ComNoticeSrv cSrv;
	
	@Autowired
	BoardSrv boardSrv;
	
	@RequestMapping("/system_notice")
	public ModelAndView getSystemNotice(@RequestParam(defaultValue = "1") int curPage) { 
	
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		
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
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		
		mav.setViewName("board/system_notice");
		return mav;
	}
	
	@RequestMapping(value="/system_notice_view", method = RequestMethod.GET)
	public ModelAndView getSysNoticeView(@ModelAttribute NoticeVO nvo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		nSrv.setHitUp(nvo);
		ModelAndView mav = new ModelAndView();
		
		NoticeVO vo = nSrv.getNoticeOne(nvo);
		mav.addObject("notice", vo);
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		mav.setViewName("board/system_notice_view");
		return mav;
	}
	
	@RequestMapping("/company_notice")
	public ModelAndView getCompanyNotice(@RequestParam(defaultValue = "1") int curPage) { 
	
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		
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
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		
		mav.setViewName("board/company_notice");
		return mav;
	}
	
	@RequestMapping(value="/company_notice_view", method = RequestMethod.GET)
	public ModelAndView getComNoticeView(@ModelAttribute NoticeVO nvo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		cSrv.setHitUp(nvo);
		ModelAndView mav = new ModelAndView();
		
		NoticeVO vo = cSrv.getNoticeOne(nvo);
		mav.addObject("notice", vo);
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		mav.setViewName("board/company_notice_view");
		return mav;
	}
	
	

}
