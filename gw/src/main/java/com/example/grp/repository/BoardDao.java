package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.BoardVO;

@Repository
public class BoardDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public void setBoard(BoardVO bvo) {
		sqlSession.insert("board.setBoard", bvo);
	}
	
	public List<BoardVO> getBoardList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.getBoardList", map);
	}

	public int getBoardCount() {
		return sqlSession.selectOne("board.getBoardCount");
	}
	
	public void createArticleTbl(String menu_code) {
		String str = "CREATE TABLE com_article_" + menu_code;
		str += "(aid int not null auto_increment primary key,";
		str += "division char(1),";
		str += "subject varchar(300) not null,";
		str += "writer varchar(20) not null,";
		str += "content text,";
		str += "regdate datetime,";
		str += "hit int default 0,";
		str += "fileName varchar(300),";
		str += "fileOriName varchar(300),";
		str += "fileUrl varchar(500),";
		str += "ref int,";
		str += "re_step int,";
		str += "re_level int);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.createArticleTbl", map);

	}
	
	public void createCommentTbl(String menu_code) {
		String str = "CREATE TABLE com_comment_" + menu_code;
		str += "(cid int not null auto_increment primary key,";
		str += "aid int not null,";
		str += "comment text,";
		str += "who varchar(20),";
		str += "regdate datetime);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.createCommentTbl", map);
	}
	
	public void setBoardDelete(String menu_code) {
		sqlSession.delete("board.setBoardDelete", menu_code);
	}

	public void dropArticleTbl(String menu_code) {
		String str = "drop TABLE com_article_" + menu_code;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropArticleTbl", map);
	}

	public void dropCommentTbl(String menu_code) {
		String str = "drop TABLE com_comment_" + menu_code;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropCommentTbl", map);
	}

	public int getBoardCountAll() {
		return sqlSession.selectOne("board.getBoardCountAll");
	}

	public void setBoardDeleteAll(String menu_num) {
		sqlSession.delete("board.setBoardDeleteAll", menu_num);
	}
	
	public int getBoardCheck(String menu_code) {
		return sqlSession.selectOne("board.getBoardExist", menu_code);
	}
	
	
	public void setBuseoBoard(BoardVO bvo) {
		sqlSession.insert("board.setBuseoBoard", bvo);
	}
	
	public List<BoardVO> getBuseoBoardList(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("board.getBuseoBoardList", map);
	}

	public int getBuseoBoardCount() {
		return sqlSession.selectOne("board.getBuseoBoardCount");
	}
	
	public void createBuseoArticleTbl(String menu_code) {
		String str = "CREATE TABLE buseo_article_" + menu_code;
		str += "(aid int not null auto_increment primary key,";
		str += "division char(1),";
		str += "subject varchar(300) not null,";
		str += "writer varchar(20) not null,";
		str += "content text,";
		str += "regdate datetime,";
		str += "hit int default 0,";
		str += "fileName varchar(300),";
		str += "fileOriName varchar(300),";
		str += "fileUrl varchar(500),";
		str += "ref int,";
		str += "re_step int,";
		str += "re_level int);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.createBuseoArticleTbl", map);

	}
	
	public void createBuseoCommentTbl(String menu_code) {
		String str = "CREATE TABLE buseo_comment_" + menu_code;
		str += "(cid int not null auto_increment primary key,";
		str += "aid int not null,";
		str += "comment text,";
		str += "who varchar(20),";
		str += "regdate datetime);";
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.createBuseoCommentTbl", map);
	}
	
	public void setBuseoBoardDelete(String menu_code) {
		sqlSession.delete("board.setBuseoBoardDelete", menu_code);
	}

	public void dropBuseoArticleTbl(String menu_code) {
		String str = "drop TABLE buseo_article_" + menu_code;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropBuseoArticleTbl", map);
	}

	public void dropBuseoCommentTbl(String menu_code) {
		String str = "drop TABLE buseo_comment_" + menu_code;
		Map<String, String> map = new HashMap<String, String>();
		map.put("str", str);
		sqlSession.insert("board.dropBuseoCommentTbl", map);
	}

	public void setBuseoBoardDeleteAll(String menu_num) {
		sqlSession.delete("board.setBuseoBoardDeleteAll", menu_num);
	}
	
	public int getBuseoBoardCheck(String menu_code) {
		return sqlSession.selectOne("board.getBuseoBoardExist", menu_code);
	}
}
