package com.example.grp.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.NoticeVO;
import com.example.grp.model.SurveyVO;
import com.example.grp.service.ComSrv;
import com.example.grp.service.SysNoticeSrv;
import com.example.grp.service.SurveySrv;

@Controller
@RequestMapping("/home")
public class HomeCtr {

	@Autowired
	SysNoticeSrv nSrv;

	@Autowired
	SurveySrv sSrv;
	
	//그룹웨어 홈 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getHomeMain() throws ParseException {
		List<NoticeVO> sysNoticeList = nSrv.getSysNotice5();
		List<NoticeVO> comNoticeList = nSrv.getComNotice5();
		List<SurveyVO> surOpenList = sSrv.getSurveyOpen5();
		int openCount = sSrv.getSurveyOpenCnt();
		//설문시간관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		for(int i = 0; i < surOpenList.size(); i++) {
			Date s_date = sdf.parse(surOpenList.get(i).getSurvey_startDate()); 
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
		ModelAndView mav = new ModelAndView();
		mav.addObject("sysNoticeList", sysNoticeList);
		mav.addObject("comNoticeList", comNoticeList);
		mav.addObject("surOpenList", surOpenList);
		mav.addObject("openCount", openCount);
		mav.setViewName("home/gw_home_main");
		return mav;
	}
}
