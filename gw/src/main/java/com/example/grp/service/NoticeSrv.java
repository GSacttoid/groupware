package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.NoticeVO;
import com.example.grp.repository.NoticeDao;

@Service
public class NoticeSrv {

	@Autowired
	NoticeDao nDao;
	
	public void setNoticeInsert(NoticeVO nvo) {
		nDao.setNoticeInsert(nvo);
	}
	
	public List<NoticeVO> getSystemNotice(int start, int end) {
		return nDao.getSystemNotice(start, end);
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
}
