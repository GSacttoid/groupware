package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.NoticeVO;

@Repository
public class ComNoticeDao {

	@Autowired
	SqlSession sqlSession;
	
	public void setNoticeInsert(NoticeVO nvo) {
		sqlSession.insert("comNotice.setNoticeInsert", nvo);
	}
	
	public List<NoticeVO> getCompanyNotice(int start, int end) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("comNotice.getNoticeList", map);
	}
	
	public List<NoticeVO> getNotice5(){
		return sqlSession.selectList("comNotice.getNotice5");
	}
	
	public int getNoticeTotalCount() {
		return sqlSession.selectOne("comNotice.getNoticeTotalCount");
	}
	
	public void setNoticeDelete(NoticeVO nvo) {
		sqlSession.delete("comNotice.setNoticeDelete", nvo);
	}
	
	public void setNoticeUpdate(NoticeVO nvo) {
		sqlSession.update("comNotice.setNoticeModify", nvo);
	}
	
	public NoticeVO getNoticeOne(NoticeVO nvo) {
		return sqlSession.selectOne("comNotice.getNoticeOne", nvo);
	}
}
