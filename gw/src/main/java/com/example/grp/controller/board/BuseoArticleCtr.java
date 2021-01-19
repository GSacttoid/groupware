package com.example.grp.controller.board;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.grp.model.ArticleVO;
import com.example.grp.model.BoardVO;
import com.example.grp.pager.Pager;
import com.example.grp.service.BoardSrv;
import com.example.grp.service.BuseoArticleSrv;

@Controller
@RequestMapping("/buseo_article")
public class BuseoArticleCtr {

	@Autowired
	BuseoArticleSrv aSrv;
	
	@Autowired
	BoardSrv boardSrv;
	
	@RequestMapping("/article_list")
	public ModelAndView getArticleList(
			@RequestParam(defaultValue = "1") int curPage,
			@RequestParam(defaultValue = "subject") String searchOpt,
			@RequestParam(defaultValue = "") String words, 
			@RequestParam String menu_code) {
		
		int count = aSrv.getArticleCount(searchOpt, words, menu_code);
		
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();

		Pager pager = new Pager(count, curPage);
		
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		BoardVO bvo = aSrv.getBoardOne(menu_code);
		ModelAndView mav = new ModelAndView();

		mav.addObject("list", aSrv.getArticleList( start, end, searchOpt, words, menu_code));
		mav.addObject("count", count);
		mav.addObject("start", start);
		mav.addObject("end", end);
		mav.addObject("searchOpt", searchOpt);
		mav.addObject("words", words);
		mav.addObject("blockBegin", pager.getBlockBegin());
		mav.addObject("blockEnd", pager.getBlockEnd());
		mav.addObject("curBlock", pager.getCurBlock());
		mav.addObject("totalBlock", pager.getTotBlock());
		mav.addObject("prevPage", pager.getPrevPage());
		mav.addObject("nextPage", pager.getNextPage());
		mav.addObject("totalPage", pager.getTotPage());
		mav.addObject("curPage", pager.getCurPage());
		mav.addObject("selected", pager.getCurPage());
		mav.addObject("menu_code", menu_code);
		mav.addObject("menu_color", bvo.getMenu_color());
		mav.addObject("menu_name", bvo.getMenu_name());
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);

		mav.setViewName("board/buseo_menu/article_list");
		return mav;
	}
	
	@RequestMapping(value = "/buseo_article_insert", method = RequestMethod.GET)
	public ModelAndView getArticleInsert(@RequestParam String menu_code) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("menu_code", menu_code);
		
		BoardVO bvo = aSrv.getBoardOne(menu_code);
		mav.addObject("menu_color", bvo.getMenu_color());
		mav.addObject("menu_name", bvo.getMenu_name());
		mav.addObject("menu_maker", bvo.getMenu_maker());
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		
		mav.setViewName("board/buseo_menu/article_insert");
		return mav;
	}
	
	@RequestMapping(value = "/buseo_article_insert", method=RequestMethod.POST)
	public String setArticleDo(
			@ModelAttribute ArticleVO vo,
			@RequestPart MultipartFile files) throws IllegalStateException, IOException {
			
		if (files.isEmpty()) { // 업로드할 파일이 없을 시
			aSrv.setArticle(vo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				vo.setFileName(destinationFileName);
				vo.setFileOriName(fileName);
				vo.setFileUrl(fileUrl);
				aSrv.setArticle(vo);
		}
		
		return "redirect:/buseo_article/article_list?menu_code="+vo.getMenu_code();
	}
	
	@RequestMapping(value = "/buseo_article_modify", method = RequestMethod.GET)
	public ModelAndView getArticleModify(@ModelAttribute ArticleVO vo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		ArticleVO avo = aSrv.getArticleOne(vo);
		BoardVO bvo = aSrv.getBoardOne(vo.getMenu_code());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("modifyArticle", avo);
		mav.addObject("menu_color", bvo.getMenu_color());
		mav.addObject("menu_name", bvo.getMenu_name());
		mav.addObject("menu_code", vo.getMenu_code());
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		
		mav.setViewName("board/buseo_menu/article_modify");
		return mav;
	}
	
	@RequestMapping(value = "/buseo_article_modify", method=RequestMethod.POST)
	public String setArticleModify(
			@ModelAttribute ArticleVO vo,
			@RequestPart MultipartFile files) throws IllegalStateException, IOException {
			
		if (files.isEmpty()) { // 업로드할 파일이 없을 시
			aSrv.setArticleModify(vo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				vo.setFileName(destinationFileName);
				vo.setFileOriName(fileName);
				vo.setFileUrl(fileUrl);
				aSrv.setArticleModify(vo);
		}
		
		return "redirect:/buseo_article/article_list?menu_code="+vo.getMenu_code();
	}
	
	@RequestMapping(value = "/buseo_article_delete", method = RequestMethod.POST)
	@ResponseBody
	public String setArtcileDelete(@ModelAttribute ArticleVO vo) {
		
		ArticleVO avo = aSrv.getArticleOne(vo);
		if( avo.getFileName() != null ) {
			String fileUrl = "c://upload//fileUpload//";
			File file = new File(fileUrl + avo.getFileName());
			if( file.exists() ) {
				file.delete();
			}
		}
		aSrv.setArticleDelete(vo.getAid(), vo.getMenu_code());
		return "success";
	}
	
	@RequestMapping(value = "/buseo_article_delete_all", method = RequestMethod.POST)
	@ResponseBody
	public String setArticleDeleteAll(
			@ModelAttribute ArticleVO vo,
			@RequestParam(value = "chkArr[]") List<String> chkArr) {
		
		int aid;
		
		String fileUrl = "c://upload//fileUpload//";
		File files = null;
		for(String list : chkArr) {
			aid = Integer.parseInt(list);
			vo.setAid(aid);
			vo.setMenu_code(vo.getMenu_code());
			
			ArticleVO avo = aSrv.getArticleOne(vo);
			files = new File(fileUrl + avo.getFileName());
			if( files.exists() ) {
				files.delete();
			}
			aSrv.setArticleDeleteAll(aid, vo.getMenu_code());
		}
		
		return "success";
	}
	
	@RequestMapping(value = "/buseo_article_view", method = RequestMethod.GET)
	public ModelAndView getArticleView(@ModelAttribute ArticleVO vo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		ArticleVO avo = aSrv.getArticleOne(vo);
		BoardVO bvo = aSrv.getBoardOne(vo.getMenu_code());
		ModelAndView mav = new ModelAndView();
		aSrv.hitUp(vo);
		mav.addObject("article", avo);
		mav.addObject("menu_color", bvo.getMenu_color());
		mav.addObject("menu_name", bvo.getMenu_name());
		mav.addObject("menu_code", vo.getMenu_code());
		mav.addObject("menu_read", bvo.getMenu_read());
		mav.addObject("menu_download", bvo.getMenu_download());
		mav.addObject("comMenuList", comMenuList);
		mav.addObject("buseoMenuList", buseoMenuList);
		
		mav.setViewName("board/buseo_menu/article_view");
		
		return mav;
	}
	
	@RequestMapping(value = "/buseo_article_reply", method = RequestMethod.GET)
	public ModelAndView getArticleReply(@ModelAttribute ArticleVO vo) {
		List<BoardVO> comMenuList = boardSrv.getComMenuList();
		List<BoardVO> buseoMenuList = boardSrv.getBuseoMenuList();
		ArticleVO avo = aSrv.getArticleOne(vo);
		BoardVO bvo = aSrv.getBoardOne(vo.getMenu_code());
		
		ModelAndView mav = new ModelAndView();
		
		if( avo != null ) {
			mav.addObject("article", avo);
			mav.addObject("menu_color", bvo.getMenu_color());
			mav.addObject("menu_name", bvo.getMenu_name());
			mav.addObject("menu_code", vo.getMenu_code());
			mav.addObject("menu_reply", bvo.getMenu_reply());
			mav.addObject("comMenuList", comMenuList);
			mav.addObject("buseoMenuList", buseoMenuList);
			
			mav.setViewName("board/buseo_menu/article_reply");
		}

		return mav;
	}
	
	
	@RequestMapping(value = "/buseo_article_reply", method=RequestMethod.POST)
	public String setArticleReply(
			@ModelAttribute ArticleVO vo,
			@RequestPart MultipartFile files) throws Exception {
		
		
		if (files.isEmpty()) { // 업로드할 파일이 없을 시
			aSrv.setArticleReply(vo);
			
		} else {
			String fileName = files.getOriginalFilename();
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File destinationFile;
			String destinationFileName;
			String fileUrl = "c://upload//fileUpload//";

			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile = new File(fileUrl + destinationFileName);
			} while (destinationFile.exists());

				destinationFile.getParentFile().mkdirs();
				files.transferTo(destinationFile);
	
				vo.setFileName(destinationFileName);
				vo.setFileOriName(fileName);
				vo.setFileUrl(fileUrl);
				aSrv.setArticleReply(vo);
		}
		
		return "redirect:/buseo_article/article_list?menu_code="+vo.getMenu_code();
	}
	
	@RequestMapping("/buseo_article_download")
	public void fileDown(
			@ModelAttribute ArticleVO avo,
			HttpServletRequest request, 
			HttpServletResponse response)
			throws Exception {

		request.setCharacterEncoding("UTF-8");
		ArticleVO vo = aSrv.getArticleOne(avo);

		// 파일 업로드된 경로
		try {
			String fileUrl = vo.getFileUrl();
			fileUrl += "/";
			String savePath = fileUrl;
			String fileName = vo.getFileName();

			// 실제 내보낼 파일명
			String oriFileName = vo.getFileOriName();
			InputStream in = null;
			OutputStream os = null;
			File file = null;
			boolean skip = false;
			String client = "";

			// 파일을 읽어 스트림에 담기
			try {
				file = new File(savePath, fileName);
				in = new FileInputStream(file);
			} catch (FileNotFoundException fe) {
				skip = true;
			}

			client = request.getHeader("User-Agent");

			// 파일 다운로드 헤더 지정
			response.reset();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Description", "JSP Generated Data");

			if (!skip) {
				// IE
				if (client.indexOf("MSIE") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
					// IE 11 이상.
				} else if (client.indexOf("Trident") != -1) {
					response.setHeader("Content-Disposition", "attachment; filename=\""
							+ java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
				} else {
					// 한글 파일명 처리
					response.setHeader("Content-Disposition",
							"attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
					response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
				}
				response.setHeader("Content-Length", "" + file.length());
				os = response.getOutputStream();
				byte b[] = new byte[(int) file.length()];
				int leng = 0;
				while ((leng = in.read(b)) > 0) {
					os.write(b, 0, leng);
				}
			} else {
				response.setContentType("text/html;charset=UTF-8");
				System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
			}
			in.close();
			os.close();
		} catch (Exception e) {
			System.out.println("ERROR : " + e.getMessage());
		}

	}
}
