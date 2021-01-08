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

import com.example.grp.model.BuseoVO;
import com.example.grp.model.ComVO;
import com.example.grp.model.EmpVO;
import com.example.grp.model.GradeVO;
import com.example.grp.service.ComSrv;
import com.example.grp.service.RegisterSrv;

@Controller
public class CompanyCtr {

	@Autowired
	ComSrv cSrv;
	
	@Autowired
	RegisterSrv regSrv;
	
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
	
	@RequestMapping(value = "/admin/company_info/modify", method = RequestMethod.POST)
	public void setCompanyInfoModify() {
		cSrv.setCompanyInfoModify();
	}
	
	//부서 목록 DB에서 가져오기
	@RequestMapping(value="/get_buseo", method=RequestMethod.POST)
	@ResponseBody
	public List<BuseoVO> getBuseo() {
		List<BuseoVO> list = cSrv.getBuseo();
		return list;
	}
	
	//직급 목록 DB에서 가져오기
	@RequestMapping(value="/get_grade", method=RequestMethod.POST)
	@ResponseBody
	public List<GradeVO> getGrade() {
		List<GradeVO> list = cSrv.getGrade();
		return list;
	}
	
	//회사정보설정 / 부서등록
	@RequestMapping(value="/admin/buseo_insert", method=RequestMethod.GET)
	public ModelAndView getBuseoInsert(@ModelAttribute BuseoVO bvo) {
		ModelAndView mav = new ModelAndView();
		List<BuseoVO> list = cSrv.getBuseo();
		int buseoCnt = cSrv.getBuseoCnt();
		mav.addObject("list", list);
		mav.addObject("buseoCnt", buseoCnt);
		mav.setViewName("admin/admin_com_info/buseo_insert");
		return mav;
	}
	
	@RequestMapping(value="/admin/buseo_insert", method=RequestMethod.POST)
	@ResponseBody
	public String setBuseoInsert(@ModelAttribute BuseoVO bvo) {
		int idChk = cSrv.buseoIdChk(bvo);
		int nameChk = cSrv.buseoNameChk(bvo);
		String msg;

		if(idChk > 0) {
			msg = "failureID";
		}else {
			if(nameChk > 0) {
				msg = "failureNAME";
			}else {
				cSrv.setBuseoInsert(bvo);
				msg = "success";
			}
		}
		return msg;
	}
	
	@RequestMapping(value="/buseo_delete", method=RequestMethod.POST)
	@ResponseBody
	public String setBuseoDelete(@ModelAttribute BuseoVO bvo) {
		cSrv.setBuseoDelete(bvo);
		return "admin/admin_com_info/buseo_insert";
	}
	
	@RequestMapping(value="/buseo_delete_all",method=  RequestMethod.POST)
	@ResponseBody
	public String empDeleteAll(@ModelAttribute BuseoVO bvo, @RequestParam(value = "chkArr[]") List<String> chkArr) {
		int buseo_id;
		for(String list : chkArr) {
			buseo_id = Integer.parseInt(list);
			bvo.setBuseo_id(buseo_id);

			cSrv.setBuseoDelete(bvo);
		}
		return "success";
	}
	
	//회사정보설정 / 직급등록
	@RequestMapping("/admin/grade_insert")
	public ModelAndView getGradeInsert() {
		ModelAndView mav = new ModelAndView();
		List<GradeVO> list = cSrv.getGrade();
		
		mav.addObject("list", list);
		mav.setViewName("admin/admin_com_info/grade_insert");
		return mav;
	}
	
}
