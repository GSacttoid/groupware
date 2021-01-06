package com.example.grp.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.grp.service.NoticeSrv;

@Controller
@RequestMapping("/admin")
public class AdminCtr {
	@Autowired
	NoticeSrv nSrv;
	
	//관리자 메뉴 메인페이지
	@RequestMapping("/main")
	public String getAdminMain() {
		return "admin/gw_admin_main";
	}
	
	//그룹웨어 정보 / 그룹웨어 사용정보
	@RequestMapping("/gw_info")
	public String getGwInfo() {
		return "admin/admin_gw_info/gw_info";
	}
		
	//회사정보설정 / 회사정보관리
	@RequestMapping("/company_info")
	public String getCompanyInfo() {
		return "admin/admin_com_info/company_info";
	}
	
	//회사정보설정 / 부서등록
	@RequestMapping("/buseo_insert")
	public String getBuseoInsert() {
		return "admin/admin_com_info/buseo_insert";
	}
	
	//회사정보설정 / 직급등록
	@RequestMapping("/grade_insert")
	public String getGradeInsert() {
		return "admin/admin_com_info/grade_insert";
	}
	
	//사원 및 관리자 정보 관리 / 사원관리
	@RequestMapping("/employee_list")
	public String getEmpList() {
		return "admin/admin_emp_manage/employee_list";
	}
	
	//사원 및 관리자 정보 관리 / 관리자 정보 관리
	@RequestMapping("/gw_admin_info")
	public String getAdminInfo() {
		return "admin/admin_emp_manage/gw_admin_info";
	}
	
	//커뮤니티 / 공지사항
	@RequestMapping("/company_notice")
	public String getComNoticeList() {
		return "admin/admin_community/company_notice";
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
