package com.example.grp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.grp.model.NoticeVO;
import com.example.grp.repository.SysNoticeDao;

@Service
public class SysNoticeSrv {

	@Autowired
	SysNoticeDao nDao;
	
	public void setNoticeInsert(NoticeVO nvo) {
		nDao.setNoticeInsert(nvo);
	}
	
	public List<NoticeVO> getSystemNotice(int start, int end) {
		return nDao.getSystemNotice(start, end);
	}
	
	public List<NoticeVO> getSysNotice5(){
		return nDao.getSysNotice5();
	}

	public List<NoticeVO> getComNotice5(){
		return nDao.getComNotice5();
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
