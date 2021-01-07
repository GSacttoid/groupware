package com.example.grp.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.grp.model.ComVO;
import com.example.grp.service.ComSrv;

@Controller
public class CompanyCtr {

	@Autowired
	ComSrv cSrv;
	
	//회사정보설정 / 회사정보관리
	@RequestMapping(value = "/admin/company_info", method = RequestMethod.GET)
	public String getCompanyInfo() {
		return "admin/admin_com_info/company_info";
	}
	
	@RequestMapping(value = "/admin/company_info", method = RequestMethod.POST)
	@ResponseBody
	public ComVO getCompany() {
		ComVO cvo = cSrv.getComInfo();
		return cvo;
	}
}
