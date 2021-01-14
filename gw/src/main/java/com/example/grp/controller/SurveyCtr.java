package com.example.grp.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.example.grp.model.GradeVO;
import com.example.grp.model.SurveyVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.ComSrv;
import com.example.grp.service.SurveySrv;

@Controller
@RequestMapping("/survey")
public class SurveyCtr {

	@Autowired
	ComSrv cSrv;
	
	@Autowired
	SurveySrv sSrv;
	
	//설문조사 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getSurveyMain() throws ParseException {
		
		List<SurveyVO> surOpenList = sSrv.getSurveyOpen5();
		List<SurveyVO> surCloseList = sSrv.getSurveyClose5();
		int openCount = sSrv.getSurveyOpenCnt();
		int closeCount = sSrv.getSurveyCloseCnt();
		
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
		
		for(int i = 0; i < surCloseList.size(); i++) {
			Date s_date = sdf.parse(surCloseList.get(i).getSurvey_startDate());  //고정배열: list[i], 동적배열: list.get(i)
			Date e_date = sdf.parse(surCloseList.get(i).getSurvey_endDate());
			
			Date today = new Date();
			long chkEndDate = today.getTime() - e_date.getTime() - (1000*60*60*24);
			long chkStartDate = today.getTime() - s_date.getTime() - (1000*60*60*24);
			
			if(chkEndDate>0) {
				surCloseList.get(i).setSurvey_status("설문종료");
				sSrv.setSurveyStatus(surCloseList.get(i));
			}else {
				if(chkStartDate<0) {
					surCloseList.get(i).setSurvey_status("설문대기중");
					sSrv.setSurveyStatus(surCloseList.get(i));
				}else {
					surCloseList.get(i).setSurvey_status("설문진행중");
					sSrv.setSurveyStatus(surCloseList.get(i));
				}
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("surOpenList", surOpenList);
		mav.addObject("surCloseList", surCloseList);
		mav.addObject("openCount", openCount);
		mav.addObject("closeCount", closeCount);
		mav.setViewName("survey/survey_main");

		return mav;
	}
	
	@RequestMapping(value="/survey_insert", method=RequestMethod.GET)
	public ModelAndView getSurvey() {
		List<BuseoVO> buseoList = cSrv.getBuseo();
		List<GradeVO> gradeList = cSrv.getGrade();
		int openCount = sSrv.getSurveyOpenCnt();
		int closeCount = sSrv.getSurveyCloseCnt();
		ModelAndView mav = new ModelAndView();

		mav.addObject("buseoList",buseoList);
		mav.addObject("gradeList",gradeList);
		mav.addObject("openCount", openCount);
		mav.addObject("closeCount", closeCount);
		mav.setViewName("survey/survey_insert");
		return mav;
	}
	
	@RequestMapping(value="/survey_insert", method=RequestMethod.POST)
	@ResponseBody
	public String setSurveyInsert(@ModelAttribute SurveyVO svo) {
		String str = "";
		String num = "";
		for(int i = 0; i < svo.getSurvey_example().length; i++) { //보기 개수
			str += svo.getSurvey_example()[i]+"|";
			num += "0"+"|";
		}
		
		svo.setSurvey_ex(str); //한줄 변환한 값을 _ex 변수에 저장
		svo.setSurvey_ex_cnt(num); //보기의 초기값(0)을 변수에 저장
		
		sSrv.setSurveyInsert(svo);
		return "success";
	}
	
	@RequestMapping("/survey_list/total_ing")
	public ModelAndView getSurveyOpen(@RequestParam(defaultValue = "1") int curPage) throws ParseException {
		int count = sSrv.getSurveyOpenCnt();
		int openCount = sSrv.getSurveyOpenCnt();
		int closeCount = sSrv.getSurveyCloseCnt();
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<SurveyVO> list = sSrv.getSurveyOpen(start, end);
		
		//설문시간관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i = 0; i < list.size(); i++) {
			Date s_date = sdf.parse(list.get(i).getSurvey_startDate());  //고정배열: list[i], 동적배열: list.get(i)
			Date e_date = sdf.parse(list.get(i).getSurvey_endDate());
			
			Date today = new Date();
			long chkEndDate = today.getTime() - e_date.getTime() - (1000*60*60*24);
			long chkStartDate = today.getTime() - s_date.getTime() - (1000*60*60*24);
			
			if(chkEndDate>0) {
				list.get(i).setSurvey_status("설문종료");
				sSrv.setSurveyStatus(list.get(i));
			}else {
				if(chkStartDate<0) {
					list.get(i).setSurvey_status("설문대기중");
					sSrv.setSurveyStatus(list.get(i));
				}else {
					list.get(i).setSurvey_status("설문진행중");
					sSrv.setSurveyStatus(list.get(i));
				}
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("openCount", openCount);
		mav.addObject("closeCount", closeCount);
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
		mav.setViewName("survey/survey_ing");

		return mav;
	}
	
	@RequestMapping("/survey_list/total_end")
	public ModelAndView getSurveyClose(@RequestParam(defaultValue = "1") int curPage) throws ParseException {
		int count = sSrv.getSurveyCloseCnt();
		int openCount = sSrv.getSurveyOpenCnt();
		int closeCount = sSrv.getSurveyCloseCnt();
		
		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<SurveyVO> list = sSrv.getSurveyClose(start, end);
		
		//설문시간관리
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i = 0; i < list.size(); i++) {
			Date s_date = sdf.parse(list.get(i).getSurvey_startDate());  //고정배열: list[i], 동적배열: list.get(i)
			Date e_date = sdf.parse(list.get(i).getSurvey_endDate());
			
			Date today = new Date();
			long chkEndDate = today.getTime() - e_date.getTime() - (1000*60*60*24);
			long chkStartDate = today.getTime() - s_date.getTime() - (1000*60*60*24);
			
			if(chkEndDate>0) {
				list.get(i).setSurvey_status("설문종료");
				sSrv.setSurveyStatus(list.get(i));
			}else {
				if(chkStartDate<0) {
					list.get(i).setSurvey_status("설문대기중");
					sSrv.setSurveyStatus(list.get(i));
				}
				list.get(i).setSurvey_status("설문진행중");
				sSrv.setSurveyStatus(list.get(i));
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("count", count);
		mav.addObject("openCount", openCount);
		mav.addObject("closeCount", closeCount);
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
		mav.setViewName("survey/survey_end");
		
		return mav;
	}
	
	@RequestMapping("/survey_result")
	@ResponseBody
	public SurveyVO getSurveyResult(@RequestParam int survey_id) {
		return sSrv.getSurveyResult(survey_id);
	}
	
	@RequestMapping("/survey_do")
	@ResponseBody
	public void setSurveyDo(@ModelAttribute SurveyVO svo) throws ParseException {
		sSrv.setSurveyDo(svo);
	}
	
	@RequestMapping("/survey_delete")
	@ResponseBody
	public String setSurveyDelete(@ModelAttribute SurveyVO svo) {
		sSrv.setSurveyDelete(svo);
		return "success";
	}
}
