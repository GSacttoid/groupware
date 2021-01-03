package com.example.grp.service;

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
}
