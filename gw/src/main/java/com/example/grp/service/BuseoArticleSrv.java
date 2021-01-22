package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.ArticleVO;
import com.example.grp.model.BoardVO;
import com.example.grp.model.CommentVO;
import com.example.grp.repository.BuseoArticleDao;

@Service
public class BuseoArticleSrv {

	@Autowired
	BuseoArticleDao aDao;

	public List<ArticleVO> getArticleList(int start, int end, String searchOpt, String words, String menu_code){
		return aDao.getArticleList(start, end, searchOpt, words, menu_code);
	}
	
	public int getArticleCount(String searchOpt, String words, String menu_code) {
		return aDao.getArticleCount(searchOpt, words, menu_code);
	}
	
	public BoardVO getBoardOne(String menu_code) {
		return aDao.getBoardOne(menu_code);
	}
	
	public int setArticle(ArticleVO vo) {
		String subject 	= vo.getSubject();
		String writer 	= vo.getWriter();
		String content 	= vo.getContent();
		
		subject 	= subject.replace("<", "&lt;");
		subject 	= subject.replace("<", "&gt;");
		writer 		= writer.replace("<", "&lt;");
		writer 		= writer.replace("<", "&gt;");
		content 	= content.replace("<", "&lt;");
		content 	= content.replace("<", "&gt;");
		
		subject		= subject.replace(" ", "&nbsp;");
		writer		= writer.replace(" ", "&nbsp;");
		
		content 	= content.replace("\n", "<br />");
		
		vo.setSubject(subject);
		vo.setWriter(writer);
		vo.setContent(content);
		
		return aDao.setArticle(vo);
	}
	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return aDao.getArticleOne(avo);
	}
	
	public void hitUp(ArticleVO avo) {
		aDao.hitUp(avo);
	}
	
	public int setArticleModify(ArticleVO vo) {
		return aDao.setArticleModify(vo);
	}
	
	public int setArticleDelete(int aid, String menu_code) {
		return aDao.setArticleDelete(aid, menu_code);
	}
	
	public int setArticleDeleteAll(int aid, String menu_code) {
		return aDao.setArticleDeleteAll(aid, menu_code);
	}
	
	public ArticleVO getArticleReplyInfo(ArticleVO avo) throws Exception {
		return null;
	}

	
	public int setArticleRef(ArticleVO avo) throws Exception {
		return 0;
	}

	
	public int setArticleReply(ArticleVO avo) throws Exception {
		
		ArticleVO dto = aDao.getArticleReplyInfo(avo);
		avo.setRef(dto.getRef()); //update
		avo.setRe_step(dto.getRe_step());
		avo.setRe_level(dto.getRe_level());
		
		int result = 0;
		
		result += aDao.setArticleRef(avo);
		result += aDao.setArticleReply(avo);
		
		return result;
	}
	
	public void setCommentWrite(CommentVO cvo) {
		aDao.setCommentWrite(cvo);
	}
	
	public List<CommentVO> getCommentList(ArticleVO avo){
		return aDao.getCommentList(avo);
	}
	
	public int getCommentListCount(ArticleVO avo) {
		return aDao.getCommentListCount(avo);
	}
	
	public void setCommentDelete(CommentVO cvo) {
		aDao.setCommentDelete(cvo);
	}
}
