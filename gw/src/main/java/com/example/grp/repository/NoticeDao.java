package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<NoticeVO> getSystemNotice(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("notice.getNoticeList", map);
	}
	
	public int getNoticeTotalCount() {
		return sqlSession.selectOne("notice.getNoticeTotalCount");
	}
}
