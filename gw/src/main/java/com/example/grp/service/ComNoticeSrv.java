package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.NoticeVO;
import com.example.grp.repository.ComNoticeDao;

@Service
public class ComNoticeSrv {

	@Autowired
	ComNoticeDao nDao;
	
	public void setNoticeInsert(NoticeVO nvo) {
		nDao.setNoticeInsert(nvo);
	}
	
	public List<NoticeVO> getCompanyNotice(int start, int end) {
		return nDao.getCompanyNotice(start, end);
	}
	
	public List<NoticeVO> getNotice5(){
		return nDao.getNotice5();
	}

	
	public int getNoticeTotalCount() {
		return nDao.getNoticeTotalCount();
	}
	
	public void setNoticeDelete(NoticeVO nvo) {
		nDao.setNoticeDelete(nvo);
	}
	
	public void setNoticeUpdate(NoticeVO nvo) {
		nDao.setNoticeUpdate(nvo);
	}
	
	public NoticeVO getNoticeOne(NoticeVO nvo) {
		return nDao.getNoticeOne(nvo);
	}
	
	public void setHitUp(NoticeVO nvo) {
		nDao.setHitUp(nvo);
	}
}
