package com.example.grp.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.ApprovalSetVO;
import com.example.grp.model.BoardVO;
import com.example.grp.model.BuseoVO;
import com.example.grp.model.GradeVO;
import com.example.grp.model.NoticeVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.ApprovalSrv;
import com.example.grp.service.BoardSrv;
import com.example.grp.service.ComSrv;
import com.example.grp.service.SysNoticeSrv;

@Controller
@RequestMapping("/admin")
public class AdminCtr {
	
	@Autowired
	SysNoticeSrv nSrv;
	
	@Autowired
	ComSrv cSrv;
	
	@Autowired
	ApprovalSrv aSrv;
	
	@Autowired
	BoardSrv bSrv;
	
	//관리자 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getAdminMain() {
		List<NoticeVO> list = nSrv.getSysNotice5();
		List<NoticeVO> comList = nSrv.getComNotice5();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("comList", comList);
		mav.setViewName("admin/gw_admin_main");
		return mav;
	}
	
	//커뮤니티 / 회사메뉴 관리
	@RequestMapping("/company_menu_set")
	public ModelAndView getMenuComSet(@RequestParam(defaultValue = "1") int curPage) {
		
		int count = bSrv.getBoardCount();
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<BoardVO> list = bSrv.getBoardList(start, end);

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
		
		mav.setViewName("admin/admin_community/company_menu_set");
		return mav;
	}
	
	//커뮤니티 / 부서메뉴 관리
	@RequestMapping("/buseo_menu_set")
	public ModelAndView getMenuBuseoSet(@RequestParam(defaultValue = "1") int curPage) {
		int count = bSrv.getBuseoBoardCount();
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<BoardVO> buseoMenuList = bSrv.getBuseoBoardList(start, end);
		List<BuseoVO> buseoList = cSrv.getBuseo();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("buseoMenuList", buseoMenuList);
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
		mav.addObject("buseoList",buseoList);
		mav.setViewName("admin/admin_community/buseo_menu_set");
		return mav;
	}
	
	//인사 관리 / 출퇴근 설정
	@RequestMapping("/commute_set")
	public String getCommuteSet() {
		return "admin/admin_hr/commute_set";
	}
	
	//인사 관리 / 휴가종류 설정
	@RequestMapping("/vacation_set")
	public String getVacationSet() {
		return "admin/admin_hr/vacation_set";
	}
	
	//인사 관리 / 휴가일수 설정
	@RequestMapping("/vacation_num_set")
	public String getVacationNumSet() {
		return "admin/admin_hr/vacation_num_set";
	}
	
	//전자 결제 / 전자결제 양식관리
	@RequestMapping("/approval_form")
	public String getApprovalForm() {
		return "admin/admin_approval/approval_form";
	}
	
	//전자 결제 / 전자결제 설정
	@RequestMapping(value = "/approval_set", method = RequestMethod.GET)
	public ModelAndView getApprovalSet() {
		
		ModelAndView mav = new ModelAndView();
		ApprovalSetVO avo = aSrv.getAppSet();
		mav.addObject("list", avo);
		mav.setViewName("admin/admin_approval/approval_set");
		return mav;
	}
	
	@RequestMapping(value = "/approval_set", method = RequestMethod.POST)
	@ResponseBody
	public String setApprovalSet(ApprovalSetVO avo) {
		aSrv.setAppSet(avo);
		return "success";
	}
	
	//자료실 설정 / 자료실 설정
	@RequestMapping("/gw_library_set")
	public String getLibrarySet() {
		return "admin/admin_library/gw_library_set";
	}
}
