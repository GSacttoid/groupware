package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.BoardVO;
import com.example.grp.repository.BoardDao;


@Service
public class BoardSrv {

	@Autowired
	BoardDao boardDao;

	public List<BoardVO> getBoardList(int start, int end) {
		return boardDao.getBoardList(start, end);
	}

	public int getBoardCount() {
		return boardDao.getBoardCount();
	}
	
	public void setBoard(BoardVO bvo) {
		boardDao.setBoard(bvo);
	}

	public void createArticleTbl(String menu_code) {
		boardDao.createArticleTbl(menu_code);
	}

	public void createCommentTbl(String menu_code) {
		boardDao.createCommentTbl(menu_code);
	}
	
	public void setBoardDelete(String menu_code) {
		boardDao.setBoardDelete(menu_code);
	}

	public void dropArticleTbl(String menu_code) {
		boardDao.dropArticleTbl(menu_code);
	}
	
	public void dropCommentTbl(String menu_code) {
		boardDao.dropCommentTbl(menu_code);
	}

	
	public int getBoardCountAll() {
		return boardDao.getBoardCountAll();
	}

	public void setBoardDeleteAll(String menu_code) {
		boardDao.setBoardDeleteAll(menu_code);
	}
	
	public int getBoardCheck(String menu_code) {
		return boardDao.getBoardCheck(menu_code);
	}
	
	

	public List<BoardVO> getBuseoBoardList(int start, int end) {
		return boardDao.getBuseoBoardList(start, end);
	}

	public int getBuseoBoardCount() {
		return boardDao.getBuseoBoardCount();
	}
	
	public void setBuseoBoard(BoardVO bvo) {
		boardDao.setBuseoBoard(bvo);
	}

	public void createBuseoArticleTbl(String menu_code) {
		boardDao.createBuseoArticleTbl(menu_code);
	}

	public void createBuseoCommentTbl(String menu_code) {
		boardDao.createBuseoCommentTbl(menu_code);
	}
	
	public void setBuseoBoardDelete(String menu_code) {
		boardDao.setBuseoBoardDelete(menu_code);
	}

	public void dropBuseoArticleTbl(String menu_code) {
		boardDao.dropBuseoArticleTbl(menu_code);
	}
	
	public void dropBuseoCommentTbl(String menu_code) {
		boardDao.dropBuseoCommentTbl(menu_code);
	}

	
	public void setBuseoBoardDeleteAll(String menu_code) {
		boardDao.setBuseoBoardDeleteAll(menu_code);
	}
	
	public int getBuseoBoardCheck(String menu_code) {
		return boardDao.getBuseoBoardCheck(menu_code);
	}
}
