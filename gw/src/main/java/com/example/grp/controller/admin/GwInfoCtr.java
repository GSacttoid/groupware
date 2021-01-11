package com.example.grp.controller.admin;

import java.text.SimpleDateFormat;
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
import com.example.grp.service.ComSrv;
import com.example.grp.service.EmpSrv;

@Controller
public class GwInfoCtr {
	@Autowired
	EmpSrv eSrv;

	@Autowired
	ComSrv cSrv;
    
	//그룹웨어 정보 / 그룹웨어 사용정보
	@RequestMapping("/admin/gw_info")
	public ModelAndView getGwInfoMain(
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "emp_name") String searchOpt) {
		int TotalEmpCount = eSrv.getTotalEmpCount(searchOpt, words);
		int NewEmpCount = eSrv.getNewEmpCount();
		int ResignEmpCount = eSrv.getResignEmpCount();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String start = sdf.format(cSrv.getGwInfo().getInfo_gw_start());
		String end = sdf.format(cSrv.getGwInfo().getInfo_gw_end());

		ModelAndView mav = new ModelAndView();
		mav.addObject("totalCount", TotalEmpCount);
		mav.addObject("newCount", NewEmpCount);
		mav.addObject("resignCount", ResignEmpCount);
		mav.addObject("gwInfo", cSrv.getGwInfo());
		mav.addObject("start", start);
		mav.addObject("end", end);
		
		mav.setViewName("admin/admin_gw_info/gw_info");
		return mav;
	}
	
	@RequestMapping(value="/gw_info",method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getGwInfo(
			@RequestParam(defaultValue = "") String words, 
			@RequestParam(defaultValue = "emp_name") String searchOpt) {
		int TotalEmpCount = eSrv.getTotalEmpCount(searchOpt, words);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String start = sdf.format(cSrv.getGwInfo().getInfo_gw_start());
		String end = sdf.format(cSrv.getGwInfo().getInfo_gw_end());

		ModelAndView mav = new ModelAndView();
		mav.addObject("totalCount", TotalEmpCount);
		mav.addObject("gwInfo", cSrv.getGwInfo());
		mav.addObject("start", start);
		mav.addObject("end", end);
		
		mav.setViewName("admin/admin_gw_info/gw_service_add");
		return mav;
	}

	
}
