package com.example.grp.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.service.NoticeSrv;

@Controller
@RequestMapping("/admin")
public class AdminCtr {
	
	@Autowired
	NoticeSrv nSrv;
	
	//관리자 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getAdminMain() {
		List<NoticeVO> list = nSrv.getNotice5();
		List<NoticeVO> comList = nSrv.getComNotice5();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("comList", comList);
		mav.setViewName("admin/gw_admin_main");
		return mav;
	}
	
	//커뮤니티 / 회사메뉴 관리
	@RequestMapping("/company_menu_set")
	public String getMenuComSet() {
		return "admin/admin_community/company_menu_set";
	}
	
	//커뮤니티 / 부서메뉴 관리
	@RequestMapping("/buseo_menu_set")
	public String getMenuBuseoSet() {
		return "admin/admin_community/buseo_menu_set";
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
	@RequestMapping("/approval_set")
	public String getApprovalSet() {
		return "admin/admin_approval/approval_set";
	}
	
	//자료실 설정 / 자료실 설정
	@RequestMapping("/gw_library_set")
	public String getLibrarySet() {
		return "admin/admin_library/gw_library_set";
	}
}
