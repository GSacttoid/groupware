package com.example.grp.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GwInfoCtr {

	@RequestMapping(value="/gw_info",method= {RequestMethod.GET, RequestMethod.POST})
	public String getGwInfo() {
		return "admin/admin_gw_info/gw_service_add";
	}
	
	@RequestMapping(value="/admin_info/admin_insert",method= {RequestMethod.GET, RequestMethod.POST})
	public String setAdminInsert() {
		return "admin/admin_emp_manage/admin_insert";
	}
}
