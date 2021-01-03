package com.example.grp.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.NoticeVO;

@Repository
public class NoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	public void setNoticeInsert(NoticeVO nvo) {

		sqlSession.insert("notice.setNoticeInsert", nvo);
	}
}
