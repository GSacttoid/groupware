package com.example.grp.repository;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.grp.model.SurveyVO;

@Repository
public class SurveyDao {

	@Autowired
	SqlSession sqlSession;
	
	public void setSurveyInsert(SurveyVO svo) {
		sqlSession.insert("survey.setSurveyInsert", svo);
	}
	
	public List<SurveyVO> getSurveyOpen(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("survey.getSurveyOpen", map);
	}
	
	public List<SurveyVO> getSurveyOpen5() {
		return sqlSession.selectList("survey.getSurveyOpen5");
	}
	
	public int getSurveyOpenCnt() {
		return sqlSession.selectOne("survey.getSurveyOpenCnt");
	}
	
	public List<SurveyVO> getSurveyClose(int start, int end) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return sqlSession.selectList("survey.getSurveyClose", map);
	}
	
	public List<SurveyVO> getSurveyClose5() {
		return sqlSession.selectList("survey.getSurveyClose5");
	}
	
	public int getSurveyCloseCnt() {
		return sqlSession.selectOne("survey.getSurveyCloseCnt");
	}
	
	public SurveyVO getSurveyResult(int survey_id) {
		return sqlSession.selectOne("survey.getSurveyResult", survey_id);
	}
	
	public void setSurveyDo(SurveyVO svo) {
		sqlSession.update("survey.setSurveyDo", svo);
	}
	
	public void setSurveyStatus(SurveyVO svo) {
		sqlSession.update("survey.setSurveyStatus", svo);
	}
	
	public void setSurveyDelete(SurveyVO svo) {
		sqlSession.delete("survey.setSurveyDelete", svo);
	}
}
