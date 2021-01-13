package com.example.grp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.EmpVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.EmpSrv;

@Controller
@RequestMapping("/address")
public class AddressCtr {
	
	@Autowired
	EmpSrv eSrv;

	//주소록 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getAddressMain(
			@RequestParam(defaultValue = "emp_name") String searchOpt,
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "1") int curPage) {
		int count = eSrv.getTotalEmpCount(searchOpt, words);
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", eSrv.getEmpList(start, end, searchOpt, words));
		mav.addObject("count", count);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		
		mav.setViewName("address/address_main");
		
		return mav;
	}
	
	@RequestMapping(value="/employee_info", method=RequestMethod.GET)
	public ModelAndView empInfo(@ModelAttribute EmpVO evo) {
		EmpVO vo = eSrv.getEmpOne(evo);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", vo);
		mav.setViewName("address/employee_view");
		return mav;
	}
	
	@RequestMapping(value="/employee_my", method=RequestMethod.GET)
	public ModelAndView empMyInfo(@ModelAttribute EmpVO evo) {
		EmpVO vo = eSrv.getEmpOne(evo);

		ModelAndView mav = new ModelAndView();
		mav.addObject("list", vo);
		mav.setViewName("address/employee_my");
		return mav;
	}
}
