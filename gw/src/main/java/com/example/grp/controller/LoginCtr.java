package com.example.grp.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.EmpVO;
import com.example.grp.model.NoticeVO;
import com.example.grp.model.SurveyVO;
import com.example.grp.service.ComSrv;
import com.example.grp.service.LoginSrv;
import com.example.grp.service.SysNoticeSrv;
import com.example.grp.service.RegisterSrv;
import com.example.grp.service.SurveySrv;


@Controller
public class LoginCtr {
	
	@Autowired
	LoginSrv loginSrv;
	
	@Autowired
	SysNoticeSrv nSrv;
	
	@Autowired
	ComSrv cSrv;
	
	@Autowired
	SurveySrv sSrv;
	
	//로그인 페이지
	@RequestMapping("/")
	public ModelAndView getLogin() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("logo", cSrv.getComInfo().getLogo_name());
		mav.addObject("logoSub", cSrv.getComInfo().getLogo_sub_name());
		
		mav.setViewName("login/gw_login");
		return mav;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView setLogin(@ModelAttribute EmpVO evo, HttpSession httpSession) throws ParseException {
		ModelAndView mav = new ModelAndView();

		if( loginSrv.loginCheck(evo) != 0 ) {
			String confirm = loginSrv.getEmpInfoOne(evo, httpSession).getEmp_confirm();
			if( confirm.equals("Y") ) {
				loginSrv.getEmpInfoOne(evo, httpSession);
				List<NoticeVO> sysNoticeList = nSrv.getSysNotice5();
				List<NoticeVO> comNoticeList = nSrv.getComNotice5();
				List<SurveyVO> surOpenList = sSrv.getSurveyOpen5();
				int openCount = sSrv.getSurveyOpenCnt();
				
				//설문시간관리
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				
				for(int i = 0; i < surOpenList.size(); i++) {
					Date s_date = sdf.parse(surOpenList.get(i).getSurvey_startDate());  //고정배열: list[i], 동적배열: list.get(i)
					Date e_date = sdf.parse(surOpenList.get(i).getSurvey_endDate());
					
					Date today = new Date();
					long chkEndDate = today.getTime() - e_date.getTime() - (1000*60*60*24);
					long chkStartDate = today.getTime() - s_date.getTime();
					
					if(chkEndDate>0) {
						surOpenList.get(i).setSurvey_status("설문종료");
						sSrv.setSurveyStatus(surOpenList.get(i));
					}else {
						if(chkStartDate<0) {
							surOpenList.get(i).setSurvey_status("설문대기중");
							sSrv.setSurveyStatus(surOpenList.get(i));
						}else {
							surOpenList.get(i).setSurvey_status("설문진행중");
							sSrv.setSurveyStatus(surOpenList.get(i));
						}
					}
				}
				
				mav.addObject("sysNoticeList", sysNoticeList);
				mav.addObject("comNoticeList", comNoticeList);
				mav.addObject("surOpenList", surOpenList);
				mav.addObject("openCount", openCount);
				mav.setViewName("home/gw_home_main");
			}else {
				mav.addObject("msg", "관리자의 승인이 필요합니다.");
				mav.setViewName("login/gw_login");
			}
		}else {		
			mav.addObject("msg", "아이디/비밀번호를 확인하세요.");
			mav.setViewName("login/gw_login");
		}
		return mav;
	}
	
	@RequestMapping("/gw_logout")
	@ResponseBody
	public String grpLogout(HttpSession httpSession) {
		loginSrv.logout(httpSession);
		return "success";
	}
	
}
