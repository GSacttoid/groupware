package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.ArticleVO;
import com.example.grp.model.BoardVO;
import com.example.grp.model.CommentVO;

@Repository
public class BuseoArticleDao {

	@Autowired
	SqlSession sqlSession;
	
	public List<ArticleVO> getArticleList(int start, int end, String searchOpt, String words, String menu_code){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("menu_code", menu_code);
		return sqlSession.selectList("buseoArticle.getArticleList", map);
	}
	
	public int getArticleCount(String searchOpt, String words, String menu_code) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("menu_code", menu_code);
		return sqlSession.selectOne("buseoArticle.getArticleCount", map);
	}
	
	public BoardVO getBoardOne(String menu_code) {
		return sqlSession.selectOne("buseoArticle.getBoardOne", menu_code);
	}
	
	public int setArticle(ArticleVO vo) {
		return sqlSession.insert("buseoArticle.setArticle", vo);
	}
	
	public ArticleVO getArticleOne(ArticleVO avo) {
		return sqlSession.selectOne("buseoArticle.getArticleOne", avo);
	}
	
	public void hitUp(ArticleVO avo) {
		sqlSession.update("buseoArticle.hitUp", avo);
	}
	
	public int setArticleModify(ArticleVO vo) {
		return sqlSession.update("buseoArticle.setArticleModify", vo);
	}
	
	public int setArticleDelete(int aid, String menu_code) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("menu_code", menu_code);
		return sqlSession.delete("buseoArticle.setArticleDelete", map);
	}
	
	public int setArticleDeleteAll(int aid, String menu_code) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aid", aid);
		map.put("menu_code", menu_code);
		return sqlSession.delete("buseoArticle.setArticleDeleteAll", map);
	}
	
	/** 게시판 - 답글 정보  조회 */
	public ArticleVO getArticleReplyInfo(ArticleVO avo) throws Exception {
		return sqlSession.selectOne("buseoArticle.getArticleReplyInfo", avo);
	}
	
	/** 게시판 - 답글의 순서 수정 */
	public int setArticleRef(ArticleVO avo) throws Exception {

		return sqlSession.update("buseoArticle.setArticleRef", avo);
	}
	
	/** 게시판 - 답글 등록 */
	public int setArticleReply(ArticleVO avo) throws Exception {
		return sqlSession.insert("buseoArticle.setArticleReply", avo);
	}
	
	
	public void setCommentWrite(CommentVO cvo) {
		sqlSession.insert("comment.setBuseoCommentWrite", cvo);
	}
	
	public List<CommentVO> getCommentList(ArticleVO avo){

		return sqlSession.selectList("comment.getBuseoCommentList", avo);
	}
	
	public int getCommentListCount(ArticleVO avo) {
		return sqlSession.selectOne("comment.getBuseoCommentListCount", avo);
	}
	
	public void setCommentDelete(CommentVO cvo) {
		sqlSession.delete("comment.setBuseoCommentDelete", cvo);
	}
}
