package com.example.grp.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.EmpVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.EmpSrv;

@Controller
public class EmpCtr {

	@Autowired
	EmpSrv eSrv;
	
	@RequestMapping(value="/new_employee",method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getNewEmp(@RequestParam(defaultValue = "1") int curPage) {
		int count = eSrv.getNewEmpCount();
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", eSrv.getNewEmp(start, end));
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
		
		mav.setViewName("admin/admin_emp_manage/new_employee");
		
		return mav;
	}
	
	@RequestMapping(value="/new_employee/confirm",method=  RequestMethod.POST)
	@ResponseBody
	public String empConfirm(@RequestParam int emp_num) {
		eSrv.setNewEmpConfirm(emp_num);
		return "admin/admin_emp_manage/new_employee";
	}
	
	@RequestMapping(value="/employee_delete",method=  RequestMethod.POST)
	@ResponseBody
	public String empDelete(@RequestParam int emp_num) {
		eSrv.setEmpDelete(emp_num);
		return "admin/admin_emp_manage/new_employee";
	}
	
	@RequestMapping(value="/employee_delete_all",method=  RequestMethod.POST)
	@ResponseBody
	public String empDeleteAll(@ModelAttribute EmpVO evo, @RequestParam(value = "chkArr[]") List<String> chkArr) {
		int emp_num;
		for(String list : chkArr) {
			emp_num = Integer.parseInt(list);
			evo.setEmp_num(emp_num);

			eSrv.setEmpDelete(emp_num);
		}
		return "success";
	}
	
	@RequestMapping(value="/employee_confirm_all",method=  RequestMethod.POST)
	@ResponseBody
	public String empConfirmAll(@ModelAttribute EmpVO evo, @RequestParam(value = "chkArr[]") List<String> chkArr) {
		int emp_num;
		for(String list : chkArr) {
			emp_num = Integer.parseInt(list);
			evo.setEmp_num(emp_num);

			eSrv.setNewEmpConfirm(emp_num);
		}
		return "success";
	}
	
	@RequestMapping(value="/resign_employee",method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getResignEmp(@RequestParam(defaultValue = "1") int curPage) {
		int count = eSrv.getResignEmpCount();
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", eSrv.getResignEmp(start, end));
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
		
		mav.setViewName("admin/admin_emp_manage/resign_employee");
		
		return mav;
	}
	
	@RequestMapping(value="/admin_info/admin_insert",method= {RequestMethod.GET, RequestMethod.POST})
	public String setAdminInsert() {
		return "admin/admin_emp_manage/admin_insert";
	}
	
	@RequestMapping(value="/my_info", method={RequestMethod.GET, RequestMethod.POST})
	public String myInfo() {
		return "register/gw_employee_register";
	}
}

