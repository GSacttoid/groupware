package com.example.grp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.BoardVO;
import com.example.grp.model.EmpVO;
import com.example.grp.model.NoticeVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.BoardSrv;
import com.example.grp.service.ComNoticeSrv;
import com.example.grp.service.NoticeSrv;


@Controller
@RequestMapping("/board")
public class BoardCtr {
	@Autowired
	NoticeSrv nSrv;
	
	@Autowired
	ComNoticeSrv cSrv;

	@Autowired
	BoardSrv boardSrv;
		
	//게시판 메뉴 메인페이지
	@RequestMapping("/main")
	public ModelAndView getBoardMain(@ModelAttribute EmpVO evo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		mav.setViewName("board/board_main");
		return mav;
	}
	
	
	//company menu controller
	@RequestMapping(value = "/com_menu_insert", method = RequestMethod.POST)
	@ResponseBody
	public String getBoardInsert(@ModelAttribute BoardVO bvo) {
		boardSrv.setBoard(bvo);
		boardSrv.createArticleTbl(bvo.getMenu_code());
		boardSrv.createCommentTbl(bvo.getMenu_code());
		return "success";
	}
	
	@RequestMapping(value = "/com_board_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDelete(@RequestParam String menu_code) {
		//System.out.println(empNum);
		boardSrv.setBoardDelete(menu_code);
		boardSrv.dropArticleTbl(menu_code);
		boardSrv.dropCommentTbl(menu_code);
		return "success";
	}
	
	@RequestMapping(value = "/com_menu_delete_all", method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		for(String menu_num : chkArr) {
			boardSrv.setBoardDeleteAll(menu_num);
			boardSrv.dropArticleTbl(menu_num);
			boardSrv.dropCommentTbl(menu_num);
		}
		return "success";
	}
	
	@RequestMapping(value = "/menu_check", method = RequestMethod.POST)
	@ResponseBody
	public String menuCheck(@RequestParam String menu_code) {
		int result = boardSrv.getBoardCheck(menu_code);
		String msg;
		if( result > 0 ) msg = "failure";
		else msg = "success";
		return msg;
	}

	//buseo menu controller
	@RequestMapping(value = "/buseo_menu_insert", method = RequestMethod.POST)
	@ResponseBody
	public String getBuseoBoardInsert(@ModelAttribute BoardVO bvo) {
		boardSrv.setBuseoBoard(bvo);
		boardSrv.createBuseoArticleTbl(bvo.getMenu_code());
		boardSrv.createBuseoCommentTbl(bvo.getMenu_code());
		return "success";
	}
	
	@RequestMapping(value = "/buseo_board_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setBuseoBoardDelete(@RequestParam String menu_code) {
		boardSrv.setBuseoBoardDelete(menu_code);
		boardSrv.dropBuseoArticleTbl(menu_code);
		boardSrv.dropBuseoCommentTbl(menu_code);
		return "success";
	}
	
	@RequestMapping(value = "/buseo_menu_delete_all", method = RequestMethod.POST)
	@ResponseBody
	public String setBuseoBoardDeleteAll(@RequestParam(value = "chkArr[]") List<String> chkArr) {
		for(String menu_num : chkArr) {
			boardSrv.setBuseoBoardDeleteAll(menu_num);
			boardSrv.dropBuseoArticleTbl(menu_num);
			boardSrv.dropBuseoCommentTbl(menu_num);
		}
		return "success";
	}
	
	@RequestMapping(value = "/buseo_menu_check", method = RequestMethod.POST)
	@ResponseBody
	public String buseoMenuCheck(@RequestParam String menu_code) {
		int result = boardSrv.getBuseoBoardCheck(menu_code);
		String msg;
		if( result > 0 ) msg = "failure";
		else msg = "success";
		return msg;
	}
	
}
